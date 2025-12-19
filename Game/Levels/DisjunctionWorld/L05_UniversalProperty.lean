import Game.Levels.DisjunctionWorld.L04_Symmetry

World "DisjunctionWorld"
Level 5

Title "Universal Property"

Introduction "
What must be true in order to have `P ∨ Q → R`?

On the one hand, if `P ∨ Q → R` is true, then `P → R` is true, because `P` implies `P ∨ Q`, which implies `R`.

Similar reasoning shows that if `P ∨ Q → R` is true, then `Q → R` is true.

Conversely, if *either* `P → R` or `Q → R` are true, this does not necessarily imply that `P ∨ Q → R` is true. Can you see why?

However, if *both* `P → R` and `Q → R` are true, then `P ∨ Q → R` is true, as you can argue using the strategy of proof by cases.

The aim of this level is to establish a logical equivalence between `P ∨ Q → R` and `(P → R) ∧ (Q → R)`."

/-- `P ∨ Q → R` is true if and only if `(P → R) ∧ (Q → R)` is true. -/
Statement {P Q R : Prop} : (P ∨ Q → R) ↔ (P → R) ∧ (Q → R) := by
  Hint (hidden := true) "What is the outermost logical connective?"
  constructor
  intro h
  constructor
  intro p
  Hint (hidden := true) "Try applying the hypothesis `{h}`."
  apply h
  exact Or.inl p
  intro q
  Hint (hidden := true) "Try applying the hypothesis `{h}`."
  apply h
  exact Or.inr q
  intro h
  intro k
  rcases k with p | q
  Hint (hidden := true) "What implications can you extract from `{h}`?"
  apply h.1
  exact p
  apply h.2
  exact q

Conclusion "This logical equivalence captures the *universal property* of disjunction, explaining how the mathematical or is used in a proof."
