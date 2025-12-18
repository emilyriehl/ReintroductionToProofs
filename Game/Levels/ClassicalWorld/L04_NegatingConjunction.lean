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
  Hint (hidden := true) "Type `have lemP : P ∨ ¬ P := em P` or `have lemP := em P` to appeal to the law of excluded middle for `P`. Alternatively, you can appeal to the law of excluded middle for `Q` or for any other proposition."
  Branch
    have lem := em Q
    Hint (hidden := true) "Now might be a good time to case split on the hypothesis `{lem}`."
    rcases lem with q | nq
    Hint (hidden := true) "Because  `{q} : Q`, it is unlikely that you will be able to prove `¬ Q`. So instead try to prove `¬ P`. You can focus on this goal by using the tactic `left`."
    left
    intro p
    exact npq ⟨p,q⟩
    right
    assumption
  have lem := em P
  Hint (hidden := true) "Now might be a good time to case split on the hypothesis `{lem}`."
  rcases lem with p | np
  Hint (hidden := true) "Because  `{p} : P`, it is unlikely that you will be able to prove `¬ P`. So instead try to prove `¬ Q`. You can focus on this goal by using the tactic `right`."
  right
  intro nq
  Hint (hidden := true) "What can you prove with `{p}` and `{nq}`?"
  Hint (hidden := true) "Try `have pq : P ∧ Q := ⟨{p} , {nq}⟩` or try `apply {npq}`."
  have pq : P ∧ Q := ⟨p , nq⟩
  apply npq
  exact pq
  exact Or.inl np

end

Conclusion "Combined with what we know already, we have established a logical equivalence between  `¬ (P ∧ Q)` and `¬ P ∧ ¬ Q` in classical logic."
