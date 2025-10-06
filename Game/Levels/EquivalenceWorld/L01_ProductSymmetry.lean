import Game.Metadata

World "EquivalenceWorld"
Level 1

Title "Product Symmetry"

Introduction "Recall that for any types `A` and `B`, we may form their *product type* `A × B`.

We proved that there are canonical functions `A × B → B × A` and `B × A → A × B`.

In this level, we will see that these functions define an equivalence between the type `A × B` and the type `B × A`. This gives a more complete account of the symmetry of the product.

To define this equivalence, we need four pieces of data. Start by typing `constructor` to ask Lean to ask you about each piece of data one at a time.
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

Conclusion "In the next level, we will see that coproduct types are similarly symmetric."
