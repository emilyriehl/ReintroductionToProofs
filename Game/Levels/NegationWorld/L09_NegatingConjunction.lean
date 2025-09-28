import Game.Metadata

World "NegationWorld"
Level 9

Title "Negating Conjunction"

Introduction "In this level, we will study the proposition `¬ (P ∧ Q)`.

How would we disprove the implication `P ∧ Q`?

What does it mean for `P ∧ Q` to be false?

On the one hand, it suffices for just `P` to be false.

On the other hand, it suffices for just `Q` to be false.

That is, if either `P` or `Q` is false, then `P ∧ Q` is false.

In this level, we will prove that `¬ P ∨ ¬ Q` implies `¬ (P ∧ Q)`.
"

/-- For any propositions `P` and `Q`, if `P` is false or `Q` is false then `P ∧ Q` is false. -/
Statement {P Q : Prop} : ¬ P ∨ ¬ Q → ¬ (P ∧ Q) := by
  intro hyp
  Hint (hidden := true) "What proof technique is available when you have a hypothesis like `{hyp}`?"
  rcases hyp with np | nq
  Hint (hidden := true) "What is the logical structure of the goal?"
  intro pq
  Hint (hidden := true) "What can we prove with the hypothesis `{pq}`?"
  Hint (hidden := true) "How can we apply the hypothesis `{np}`?"
  apply np
  exact pq.1
  Hint (hidden := true) "What is the logical structure of the goal?"
  intro pq
  Hint (hidden := true) "What can we prove with the hypothesis `{pq}`?"
  Hint (hidden := true) "How can we apply the hypothesis `{nq}`?"
  apply nq
  exact pq.2

Conclusion "The converse implication is more subtle because if `P ∧ Q` is false we don't know which of `P` or `Q` is false. This will be addressed in the next world."
