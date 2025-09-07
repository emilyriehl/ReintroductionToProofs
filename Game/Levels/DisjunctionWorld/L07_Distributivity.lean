import Game.Metadata

World "DisjunctionWorld"
Level 7

Title "Distributivity"

Introduction "What does it mean if `P ∧ (Q ∨ R)` holds?

Then certainly `P` is true and also `Q ∨ R` is true.

So we can conclude that `P ∧ Q` is true or `P ∧ R` is true, demonstrating the following logical equivalence."

/-- Conjunction distributes over disjunction: `P ∧ (Q ∨ R)` and `(P ∧ Q) ∨ (P ∧ R)` are logically equivalent. -/
Statement {P Q R : Prop} : P ∧ (Q ∨ R) ↔ (P ∧ Q) ∨ (P ∧ R) := by
  Hint (hidden := true) "What is the outermost logical connective?"
  constructor
  Hint (hidden := true) "What is the outermost logical connective?"
  intro h
  Hint "Recall that `{h}.1 : {P}` and `{h}.2 : {Q} ∨ {R}`. We can introduce these as named variables in the context by typing `have p := {h}.1` and `have qr := {h}.2` where `p` and `qr` are variable names you get to pick. This allows you to case split on an explicitly named variable. Alternatively, type `cases {h}.2`, or use `rcases` to name your own variables."
  have p := h.1
  have q := h.2
  cases q
  apply Or.inl
  constructor
  assumption
  assumption
  apply Or.inr
  constructor
  assumption
  assumption
  intro h
  cases h
  constructor
  exact h_1.1
  apply Or.inl
  exact h_1.2
  exact ⟨h_1.1, Or.inr h_1.2⟩

Conclusion "This proves the that conjunction distributes over disjunction. A more involved form of distributivity appears in the next level."
