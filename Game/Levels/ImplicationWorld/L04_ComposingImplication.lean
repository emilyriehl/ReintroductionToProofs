import Game.Metadata

World "ImplicationWorld"
Level 4

Title "Composing Implication"

Introduction "Now we are in the setting of three proposition variables `P`, `Q`, and `R` with several hypotheses.

The first assumption provides a proof `p` that the proposition `P` is true.

The second provides a proof `h1` that the implication `P → Q` is true.

The final hypothesis provides a proof `h2` that `Q → R` is true. Our goal is to conclude that `R` is true.

This can be proven either backwards &mdash; by using the `apply` tactic &mdash; or forwards &mdash; by directly constructing proofs out of our hypothesis.

But it is also possible to work forwards with the `have` tactic, which is now in your library.

The `have` tactic can be used to add new hypotheses provided you can supply a proof.

For example, given assumptions `p : P` and `h1 : P → Q`, type `have q : Q := h1 p` to add a proof `q : Q` defined by `h1 p`.

If you like, you can use the `have` tactic again to add a proof of `R` to the assumptions, by typing `have r : R := h2 q` to add a proof `r : R` defined by `h2 q`.

The `have` tactic often makes proofs longer but it also makes them easier to read and easier to find.

Practice using both forwards and backwards reasoning to solve this level.
"

/-- If `P` is true, `P → Q` is true, and `Q → R` is true, then `R` is true. -/
Statement {P Q R : Prop} (p : P) (h1 : P → Q) (h2 : Q → R) : R := by
  Hint (hidden := true) "In the presence of a hypothesis `h : S → T`, the tactic `apply h` reduces the problem of proving `T` to the problem of proving `S`. Can this be used here?"
  apply h2
  Hint (hidden := true) "In the presence of a hypothesis `h : S → T`, the tactic `apply h` reduces the problem of proving `T` to the problem of proving `S`. Can this be used here?"
  apply h1
  Hint (hidden := true) "If the goal is to prove `S` and we have a hypothesis `s : S`, the tactic `exact s` supplies the required proof."
  exact p

Conclusion "We've seen that an implication `h : P → Q` can be applied in the presense of a proof `p : P` to provide a proof of the proposition `Q`. This explains how implications are *used* in proofs of other statements. In the next level, we will see how implications can be *proven*."

/-- The `have` tactic can be used to add new hypotheses provided you can supply a proof. For example, given assumptions `p : P` and `h : P → Q`, type `have q : Q := h p` to add a proof `q : Q` defined by `h p`. -/
TacticDoc «have»

NewTactic «have»
