import Game.Metadata

World "DisjunctionWorld"
Level 8

Title "More Distributivity"

Introduction "A more involved form of distributivity is also true.

If `P ∨ Q` holds and `R ∨ S` holds then at least one of the following four propositions holds: `P ∧ R` or `P ∧ S` or `Q ∧ R` or `Q ∧ S`.

Demonstrate the following logical equivalence."

/-- `(P ∨ Q) ∧ (R ∨ S)` holds if and only if `(P ∧ R) ∨ (P ∧ S) ∨ (Q ∧ R) ∨ (Q ∧ S)` holds. -/
Statement {P Q R S : Prop} : (P ∨ Q) ∧ (R ∨ S) ↔ (P ∧ R) ∨ (P ∧ S) ∨ (Q ∧ R) ∨ (Q ∧ S) := by
  Hint (hidden := true) "What is the outermost logical connective?"
  constructor
  intro h
  Hint (hidden := true) "What can you conclude from the hypothesis `{h}`?"
  Hint (hidden := true) "Try `have pq : P ∨ Q := {h}.1`."
  have pq := h.1
  Hint (hidden := true) "Try `have rs : R ∨ S := {h}.2`."
  have rs := h.2
  cases pq
  cases rs
  Hint (hidden := true) "The implicit parentheses in the goal are to the right `(P ∧ R) ∨ ((P ∧ S) ∨ ((Q ∧ R) ∨ (Q ∧ S)))`."
  Hint (hidden := true) "Thus the outermost logical connective is the `∨` combining `P ∧ R` and `(P ∧ S) ∨ ((Q ∧ R) ∨ (Q ∧ S))`."
  apply Or.inl
  constructor
  assumption
  assumption
  Hint (hidden := true) "The implicit parentheses in the goal are to the right `(P ∧ R) ∨ ((P ∧ S) ∨ ((Q ∧ R) ∨ (Q ∧ S)))`."
  Hint (hidden := true) "Thus the outermost logical connective is the `∨` combining `P ∧ R` and `(P ∧ S) ∨ ((Q ∧ R) ∨ (Q ∧ S))`."
  apply Or.inr
  apply Or.inl
  constructor
  assumption
  assumption
  Hint (hidden := true) "This completes the proof in the case where `P ∨ Q` holds because `P` holds. Now we've started the case where `Q` holds, which requires another case split over the proof `{rs} : {R} ∨ {S}`."
  cases rs
  apply Or.inr
  apply Or.inr
  apply Or.inl
  constructor
  assumption
  assumption
  apply Or.inr
  apply Or.inr
  apply Or.inr
  constructor
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

Conclusion "We are now ready for the Boss Level of Disjunction World."
