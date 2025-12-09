import Game.Metadata

World "TypeWorld"
Level 2

Title "Proofs"

Introduction "In this level, we consider a proposition `P` in place of a type `A`.

When a proposition `P` has an element `p : P` we think of `p` as a *proof* that the proposition `P` is true.

This is why the context for this level lists `p : P` as an assumption rather than an object. The presence of the element `p : P` corresponds to the assumption that the proposition `P` is true.

In summary, the context for this level collectively asserts that `P` is a proposition and `p` is a proof of `P`. In particular, our assumptions imply that the proposition `P` is true.

Our goal, which is displayed to the right of the vertical line, is to prove the proposition `P`.

We know that `P` is true because we have assumed that `P` is true. So the tactic `assumption` can be used to tell Lean that `P` is true by assumption.
"

/-- Under the hypothesis that we have a proposition `P` and a proof `p : P`, we may conclude that `P` is true. -/
Statement {P : Prop} (p : P) : P := by
  Hint (hidden := true) "Type `assumption` to tell Lean to use the assumption that `P` is true to conclude that `P` is true."
  assumption

Conclusion "In the next level, we will learn a new tactic, which allows us to be more precise about which assumption is being used."
