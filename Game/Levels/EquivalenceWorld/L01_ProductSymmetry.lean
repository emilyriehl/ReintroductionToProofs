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
  Hint "Now Lean wants you to define a function `A × B → B × A`."
  intro p
  exact ⟨p.2, p.1⟩
  Hint "Now Lean wants you to define a function `B × A → A × B`."
  intro p
  exact ⟨p.2, p.1⟩
  Hint "Now Lean wants you to check that the first function followed by the second function yields the identity function at every element `p : A × B`. Start with `intro p`."
  intro p
  Hint (hidden := true) "When in doubt, recall the introduction rule for equality types."
  rfl
  Hint "Now Lean wants you to check that the second function followed by the first function yields the identity function at every element `p : A × B`. Start with `intro p`."
  intro p
  Hint (hidden := true) "When in doubt, recall the introduction rule for equality types."
  rfl

Conclusion "In the next level, we will see that coproduct types are similarly symmetric."

/-- For types `A` and `B`, `A ≃ B` is the type of equivalences between `A` and `B`. Its elements have the form `⟨f, g, α, β⟩ : A ≃ B` where `f : A → B`, `g : B → A`, `α : ∀ a : A, g (f a) = a`, and `β : ∀ b : B, f (g b) = b`. -/
DefinitionDoc Equiv as "≃" in "Equiv"


NewDefinition Equiv
