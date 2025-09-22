import Game.Metadata

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
  Hint (hidden := true) "Try `have p : P := {pnq}.1` to add a proof of `P` to your assumptions."
  have p : P := pnq.1
  Hint (hidden := true) "What can we prove with the hypotheses `{i}` and `{p}`?"
  Hint (hidden := true) "Try `have q : Q := {i} {p}` to add a proof of `Q` to your assumptions."
  have q : Q := i p
  Hint (hidden := true) "What else can we prove with the hypothesis `{pnq}`?"
  Hint (hidden := true) "Try `have nq : ¬ Q := {pnq}.2` to add a proof of `¬ Q` to your
  assumptions, where `\\neg` is used to type `¬`."
  have nq : ¬ Q := pnq.2
  Hint (hidden := true) "What is the logical structure of the type of `{nq}`?"
  Hint (hidden := true) "Try `apply {nq}`."
  apply nq
  exact q

Conclusion "The converse implication is more subtle, and will be addressed in the next world."
