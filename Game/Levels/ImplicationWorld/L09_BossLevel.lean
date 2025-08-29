import Game.Metadata

World "ImplicationWorld"
Level 9

Title "Boss Level"

Introduction "Each world will end with a `Boss Level`, which is intended to be more challenging than the levels that came before. Have fun with this.

While it is not necessary to solve this level, you may enjoy experimenting with the new `have` tactic that is now added to the tactic library.

The `have` tactic can be used to add new hypotheses provided you can supply a proof. For example, given assumptions `p : P` and `h : P → Q`, type `have q : Q := h p` to add a proof `q : Q` defined by `h p`.

To delete a proof (or proof attempt) and start over click on the button labelled `</>` in the upper right hand corner to enter `editor mode`. Then delete all the lines of your first proof (or proof attempt). Clicking on `>_` takes you back to `typewriter mode`."

/-- If `S → X`, `T → W`, `R → Y`, `W → Q`, `U → S`, `Y → T`, `X → V`, `Q → U`, `V → Z` and `P → R` are true then `P` implies `Z`. -/
Statement {P Q R S T U V W X Y Z : Prop} : (S → X) → (T → W) → (R → Y) → (W → Q) → (U → S) → (Y → T) → (X → V) → (Q → U) → (V → Z) → (P → R)
    → P → Z := by
  Hint (hidden := true) "Multiple hypothesis can be introduced at once by writing `intro h1 h2 h3` etc. You might consider using names that will help you remember which propositions each hypothesis proves!"
  intro sx
  intro tw
  intro ry
  intro wq
  intro us
  intro yt
  intro xv
  intro qu
  intro vz
  intro pr
  intro p
  apply vz
  apply xv
  apply sx
  apply us
  apply qu
  apply wq
  apply tw
  apply yt
  apply ry
  apply pr
  exact p

Conclusion "Next move on to Conjunction World to meet our second logical connective."

/- Use these commands to add items to the game's inventory. -/

/-- The `have` tactic can be used to add new hypotheses provided you can supply a proof. For example, given assumptions `p : P` and `h : P → Q`, type `have q : Q := h p` to add a proof `q : Q` defined by `h p`. -/
TacticDoc «have»

NewTactic «have»

-- NewTactic intro
-- NewTheorem Prop.modus_ponens
-- NewDefinition Nat Add Eq
