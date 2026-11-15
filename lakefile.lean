import Lake
open Lake DSL

-- Using this assumes that each dependency has a tag of the form `v4.X.0`.
def leanVersion : String := s!"v{Lean.versionString}"

/--
Use the GameServer from a `leangame` folder lying next to the game on your local computer.
Activated with `lake update -R -Kleangame.local --keep-toolchain`.
-/
def LocalGameServer : Dependency := {
  name := `GameServer
  scope := "hhu-adam"
  src? := DependencySrc.path "../leangame/server/lean"
  version := .none
  opts := ∅
}

/--
For development of the game server itself, the GameServer dependency needs to come from within the repo.
Activated with `lake update -R -Kleangame.testgame  --keep-toolchain`.
-/
def TestGameServer : Dependency := {
  name := `GameServer
  scope := "hhu-adam"
  src? := DependencySrc.path "../server/lean"
  version := .none
  opts := ∅
}

/--
Use the GameServer version from github.
Deactivate local version with `lake update -R`.
-/
def RemoteGameServer : Dependency := {
  name := `GameServer
  scope := "hhu-adam"
  src? := DependencySrc.git "https://github.com/hhu-adam/GameServer.git" leanVersion .none
  version := .git leanVersion
  opts := ∅
}

/-
Choose GameServer dependency depending on whether `-Kleangame.local` or `-Kleangame.testgame` has been passed to `lake`.
-/
open Lean in
#eval (do
  let gameServerName := if get_config? leangame.testgame |>.isSome then
      ``TestGameServer
    else if get_config? leangame.local |>.isSome then
      ``LocalGameServer
    else
      ``RemoteGameServer
  modifyEnv (fun env => Lake.packageDepAttr.ext.addEntry env gameServerName)
  : Elab.Command.CommandElabM Unit)

-- Game-specific dependencies (preserved during the GameSkeleton migration).
require "leanprover-community" / mathlib @ git leanVersion

package Game where
  /- Used in all cases. -/
  leanOptions := #[
    /- linter warnings might block the player. (IMPORTANT) -/
    ⟨`linter.all, false⟩,
    /- to display the values of let declarations, like `:= 42` (IMPORTANT)  -/
    ⟨`pp.showLetValues, true⟩,
    /- make all assumptions always accessible. -/
    ⟨`tactic.hygienic, false⟩]
  /- Used when calling `lake build`. -/
  moreLeanArgs := #[
    -- TODO: replace with `lean4game.verbose`
    "-Dtrace.debug=false"]
  /- Used when opening a file in VSCode or when playing the game. -/
  moreServerOptions := #[
    -- TODO: replace with `lean4game.verbose`
    ⟨`trace.debug, true⟩]

@[default_target]
lean_lib Game
