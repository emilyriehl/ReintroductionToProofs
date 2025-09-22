import Game.Metadata

World "ClassicalWorld"
Level 4

Title "Negating Conjunction"

Introduction "We have seen that `¬ P ∨ ¬ Q` implies `¬ (P ∧ Q)`.

But we were not able to prove constructively that `¬ (P ∧ Q)` implies `¬ P ∨ ¬ Q`, since we cannot tell whether `P` or `Q` is the false proposition.

However, we can prove this using classical logic.

Recall that in classical logic, we may assume the *law of excluded middle*, i.e., that `P ∨ ¬ P` is true for any proposition.

In particular, in the middle of your proof, you can type `have := em P` to introduce `P ∨ ¬ P` as a hypothesis.

Can you use this to prove the desired implication?
"

section
open Classical

/-- In classical logic, `¬ (P ∧ Q)` implies `¬ P ∨ ¬ Q`. -/
Statement {P Q : Prop} : ¬ (P ∧ Q) → ¬ P ∨ ¬ Q := by
  Hint (hidden := true) "What is the outermost logical connective?"
  intro npq
  have lem := em P
  Hint (hidden := true) "Now might be a good time to case split on the hypothesis `{lem}`."
  rcases lem with p | np
  Hint (hidden := true) "Because  `{p} : P`, it is clear that the strategy is to try to prove `¬ Q`. You can focus on this goal by `apply Or.inr`."
  apply Or.inr
  intro nq
  Hint (hidden := true) "What can you prove with `{p}` and `{nq}`?"
  Hint (hidden := true) "Try `have pq : P ∧ Q := ⟨{p} , {nq}⟩`."
  have pq : P ∧ Q := ⟨p , nq⟩
  apply npq
  exact pq
  exact Or.inl np

end

Conclusion "Combined with what we know already, we have established a logical equivalence between  `¬ (P ∧ Q)` and `¬ P ∧ ¬ Q` in classical logic."
