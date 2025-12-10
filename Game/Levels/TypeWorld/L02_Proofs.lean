import Game.Metadata

World "TypeWorld"
Level 2

Title "Proofs"

Introduction "In this level, we consider a proposition `P` in place of a type `A`.

When a proposition `P` has an element `p : P` we think of `p` as a *proof* that the proposition `P` is true.

The context for this level collectively asserts that `P` is a proposition and `p` is a proof of `P`. In particular, our assumptions imply that the proposition `P` is true.

As we will see, it is useful to have an explicit name `p` for the proof that `P` is true. When we reference the truth of the proposition `P` to prove other propositions, we will do so by referring to the element `p`.

Our goal, which is displayed to the right of the vertical line, is to prove the proposition `P`.

We know that `P` is true because we have assumed that `P` is true. So the tactic `assumption` can be used to tell Lean that `P` is true by assumption.
"

/-- Under the hypothesis that we have a proposition `P` and a proof `p : P`, we may conclude that `P` is true. -/
Statement {P : Prop} (p : P) : P := by
  Hint (hidden := true) "Type `assumption` to tell Lean to use the assumption that `P` is true to conclude that `P` is true."
  assumption

Conclusion "In the next level, we will learn a new tactic, which allows us to be more precise about which assumption is being used."
