import Mathlib.Tactic.ExtendDoc
import Mathlib.Tactic.Constructor

open Lean Meta Elab Tactic


namespace Game

@[inherit_doc Lean.Parser.Tactic.constructor]
macro (name := constructor) "constructor" : tactic =>
  `(tactic| fconstructor)

extend_docs Game.constructor after "The variant used in the ReintroductionToProofs game is called
`fconstructor` in Mathlib. The only difference is the real `constructor` sorts
the goals in a way not ideal for the game."
