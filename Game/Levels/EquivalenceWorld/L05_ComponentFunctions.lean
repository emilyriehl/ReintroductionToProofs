import Game.Metadata

World "EquivalenceWorld"
Level 5

Title "Component Functions"

Introduction "Another equivalence of types captures the full universal property of product types.

Namely the type of functions `X → A × B` into a product type is equivalent to the type of functions

`(X → A) × (X → B)`

defined by taking the product of two function types.
"

/-- For any types `X`, `A`, and `B`, the types `X → A × B` and `(X → A) × (X → B)` are equivalent. -/
Statement {X A B : Type} : (X → A × B) ≃ (X → A) × (X → B) := by
  Hint (hidden := true) "Type `constructor` to split the goal up into the four proof obligations."
  constructor
  Hint (hidden := true) "This function is in the library. Rather than redefine it, can you use it?"
  intro f
  constructor
  intro x
  exact (f x).1
  intro x
  exact (f x).2
  intro fg
  intro x
  exact ⟨fg.1 x, fg.2 x⟩
  intro f
  rfl
  intro f
  rfl

Conclusion "In the next level, we will prove a similar universal property for coproduct types."
