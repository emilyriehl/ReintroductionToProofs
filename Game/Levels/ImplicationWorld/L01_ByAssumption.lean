import Game.Metadata

World "ImplicationWorld"
Level 1

Title "By Assumption"

Introduction "An interative theorem prover &mdash; in this case Lean &mdash; helps the user &mdash; this means you &mdash; keep track of the state of a proof. In the `Active Goal` window, Lean keeps track of the `objects` and `assumptions` &mdash; which together define the hypotheses of a mathematical statement &mdash; as well as the `goal` &mdash; meaning the thing we are trying to prove."

/-- Assuming the proposition `P` is true, prove `P`.-/
Statement {P : Prop} (p : P) : P := by
  Hint "Our first mathematical theorem is about an arbitrary proposition `{P}` which can be any well-formed mathematical statement. The hypothesis `{p} : {P}`  can be thought of as providing a proof `{p}` that the proposition `{P}` is true. Our objective is to conclude that `{P}` is true, given this hypothesis. To use the hypothesis `{p}` to reach this conclusion type `exact {p}`."
  exact p

Conclusion "Congratulations!"

/- Use these commands to add items to the game's inventory. -/

NewTactic exact
-- NewTheorem Prop.modus_ponens
-- NewDefinition Nat Add Eq
