import Game.Metadata

World "ImplicationWorld"
Level 1

Title "By Assumption"

Introduction "An interative theorem prover &mdash; in this case Lean &mdash; helps the user &mdash; this means you &mdash; keep track of the state of a proof.

In the `Active Goal` window, Lean keeps track of the `objects` and `assumptions` &mdash; which together define the hypotheses of a mathematical statement &mdash; as well as the `goal` &mdash; meaning the thing we are trying to prove.

Our first mathematical theorem is about an arbitrary proposition `P` which can be any well-formed mathematical statement.

The hypothesis `p : P`  can be thought of as providing a *proof* `p` that the proposition `P` is true. Our objective is to conclude that `P` is true, given this hypothesis.

This is true by assumption, and you can type `assumption` to tell Lean this.

But it is a bit more precise to tell Lean this is true by the assumption `p` which can be done by typing `exact p`.

Note both `assumption` and `exact` are *tactics* that are built into Lean. You can now find them in the tactic library on the upper right."

/-- If the proposition `P` is true, then `P` is true.-/
Statement {P : Prop} (p : P) : P := by
  Hint "To use the hypothesis `{p}` to reach this conclusion type `exact {p}`."
  exact p

Conclusion "You can click on `retry` to attempt a different proof. Try typing `assumption` instead."

/-- The `assumption` tactic tries to solve the main goal using a hypothesis of compatible type, or else fails. -/
TacticDoc assumption


NewTactic assumption
-- NewTheorem Prop.modus_ponens
-- NewDefinition Nat Add Eq
