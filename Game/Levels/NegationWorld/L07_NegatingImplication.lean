import Game.Levels.NegationWorld.L06_ModusTollens

World "NegationWorld"
Level 7

Title "Negating Implication"

Introduction "In this level, we will study the proposition `¬ (P → Q)`.

How would we disprove the implication `P → Q`?

What does it mean for `P → Q` to be false?

The implication asserts that if `P` is true then `Q` must be true as well.

So if we show that `P` is true but `Q` is false, this would disprove the implication.

In this level, we will prove that `P ∧ ¬ Q` implies `¬ (P → Q)`. That is, if `P` is true and `Q` is false, then `P → Q` is not true.
"

/-- For any propositions `P` and `Q`, if `P` is true and `Q` is false, then `P → Q` is not true. -/
Statement {P Q : Prop} : P ∧ ¬ Q → ¬ (P → Q) := by
  intro pnq
  Hint (hidden := true) "What is the logical structure of the goal?"
  intro i
  Hint (hidden := true) "What can we prove with the hypothesis `{pnq}`?"
  Hint (hidden := true) "You can use `have ⟨p, nq⟩ := {pnq}` to apply the elimination rule for conjunctions to obtain a proof `p` of `P` and a proof `nq` of `¬ Q`."
  have ⟨p, nq⟩ := pnq
  Hint (hidden := true) "What is the logical structure of the type of `{nq}`?"
  Hint (hidden := true) "Try `apply {nq}`."
  apply nq
  Hint (hidden := true) "What can we prove with the hypotheses `{i}` and `{p}`?"
  Hint (hidden := true) "Try `have q : Q := {i} {p}` to add a proof of `Q` to your assumptions."
  have q := i p
  exact q

Conclusion "The converse implication is more subtle, and will be addressed in the Classical World."
