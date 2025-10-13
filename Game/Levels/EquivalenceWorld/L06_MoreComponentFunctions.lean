import Game.Metadata

World "EquivalenceWorld"
Level 6

Title "More Component Functions"

Introduction "Another equivalence of types captures the full universal property of coproduct types.

Namely the type of functions `A ⊕ B → C` out of a coproduct type is equivalent to the type of functions

`(A → C) × (B → C)`

defined by taking the product of two function types.
"

/-- For any types ``A`, `B`, and `C`, the types `A ⊕ B → C` and `(A → C) × (B → C)` are equivalent. -/
Statement {A B C : Type} : (A ⊕ B → C) ≃ (A → C) × (B → C) := by
  Hint (hidden := true) "Type `constructor` to split the goal up into the four proof obligations."
  constructor
  Hint (hidden := true) "This function is in the library. Rather than redefine it, can you use it?"
  intro f
  constructor
  exact f ∘ Sum.inl
  exact f ∘ Sum.inr
  intro f
  intro p
  rcases p with a | b
  exact f.1 a
  exact f.2 b
  intro f
  Hint (hidden := true) "This is not a definitional equality, so requires the use of function extensionality. Use the tactic `ext` to reduce this to proving the componentwise equality of functions."
  ext
  cases x
  rfl
  rfl
  intro f
  rfl

Conclusion "We are now ready for the Boss Level of Equivalence World."
