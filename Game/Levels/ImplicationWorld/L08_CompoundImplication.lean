import Game.Metadata

World "ImplicationWorld"
Level 8

Title "Compound Implications"

Introduction "The goal in the previous level was to prove a compound implication.

Your proof might have started with `intro pq qr p` to introduce the three hypothesis:

* `pq : P → Q`,
* `qr : Q → R`, and
* `p : P`.

This then updates the goal to prove the proposition `R`.

The `apply` tactic can be used to reason backwards, first using the proof that `Q` implies `R`, then using the proof that `P` implies `R`, and finally using the proof of `P`.

But it is also possible to work forwards with the `have` tactic.

The `have` tactic can be used to add new hypotheses provided you can supply a proof. For example, given assumptions `p : P` and `pq : P → Q`, type `have q : Q := pq p` to add a proof `q : Q` defined by `pq p`.

If you like, you can use the `have` tactic again to add a proof of `R` to the assumptions, by typing `have r : R := qr q` to add a proof `r : R` defined by `qr q`.

After introducing your hypotheses using any variable names you like, prove the same result again by working forwards instead of backwards.
"

/-- If `P → Q`, then if `Q → R`, then `P → R`. -/
Statement {P Q R : Prop} : (P → Q) → (Q → R) → (P → R) := by
  intro pq qr p
  have q := pq p
  have r := qr q
  exact r

Conclusion "The `have` tactic often makes proofs longer but it also makes them easier to read and easier to find. It can now be found in your library."

/-- The `have` tactic can be used to add new hypotheses provided you can supply a proof. For example, given assumptions `p : P` and `h : P → Q`, type `have q : Q := h p` to add a proof `q : Q` defined by `h p`. -/
TacticDoc «have»

NewTactic «have»
