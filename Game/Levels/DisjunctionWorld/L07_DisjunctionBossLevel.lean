import Game.Metadata

World "DisjunctionWorld"
Level 7

Title "Disjunction Boss Level"

Introduction "We've now reached the boss level in the disjunction world. If `P ∨ Q` holds and `R ∨ S` holds then at least one of the following four propositions holds: `P ∧ R` or `P ∧ S` or `Q ∧ R` or `Q ∧ S`. Demonstrate the following logical equivalence."

Statement {P Q R S : Prop} : (P ∨ Q) ∧ (R ∨ S) ↔ (P ∧ R) ∨ (P ∧ S) ∨ (Q ∧ R) ∨ (Q ∧ S) := by
  Hint (hidden := true) "What is the outermost logical connective?"
  constructor
  intro h
  have pq := h.1
  have rs := h.2
  cases pq
  cases rs
  Hint (hidden := true) "The implicit parentheses in the goal are to the right `(P ∧ R) ∨ ((P ∧ S) ∨ ((Q ∧ R) ∨ (Q ∧ S)))`."
  Hint (hidden := true) "Thus the outermost logical connective is the `∨` combining `P ∧ R` and `(P ∧ S) ∨ ((Q ∧ R) ∨ (Q ∧ S))`."
  apply Or.inl
  apply And.intro
  assumption
  assumption
  Hint (hidden := true) "The implicit parentheses in the goal are to the right `(P ∧ R) ∨ ((P ∧ S) ∨ ((Q ∧ R) ∨ (Q ∧ S)))`."
  Hint (hidden := true) "Thus the outermost logical connective is the `∨` combining `P ∧ R` and `(P ∧ S) ∨ ((Q ∧ R) ∨ (Q ∧ S))`."
  apply Or.inr
  apply Or.inl
  apply And.intro
  assumption
  assumption
  Hint (hidden := true) "This completes the proof in the case where `P ∨ Q` holds because `P` holds. Now we've started the case where `Q` holds, which requires another case split over the proof `{rs} : {R} ∨ {S}`."
  cases rs
  apply Or.inr
  apply Or.inr
  apply Or.inl
  apply And.intro
  assumption
  assumption
  apply Or.inr
  apply Or.inr
  apply Or.inr
  apply And.intro
  assumption
  assumption
  intro h
  cases h
  constructor
  apply Or.inl
  exact h_1.1
  apply Or.inl
  exact h_1.2
  cases h_1
  constructor
  apply Or.inl
  exact h.1
  apply Or.inr
  exact h.2
  cases h
  constructor
  apply Or.inr
  exact h_1.1
  apply Or.inl
  exact h_1.2
  constructor
  apply Or.inr
  exact h_1.1
  apply Or.inr
  exact h_1.2

Conclusion "Congratulations!"
