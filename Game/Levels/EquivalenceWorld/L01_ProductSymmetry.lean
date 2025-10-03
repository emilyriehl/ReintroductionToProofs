import Game.Metadata

World "EquivalenceWorld"
Level 1

Title "Product Symmetry"

Introduction "This is probably a bad idea
"

/-- For any types `A` and `B`, the product types `A × B` and `B × A` are equivalent. -/
Statement {A B : Type} : (A × B) ≃ (B × A) := by
  Hint "Type `constructor` to split the goal up into the four proof obligations."
  constructor
  intro p
  exact ⟨p.2, p.1⟩
  intro p
  exact ⟨p.2, p.1⟩
  intro p
  rfl
  intro p
  rfl

Conclusion "This is probably a bad idea"
