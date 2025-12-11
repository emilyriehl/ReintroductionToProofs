import Game.Metadata

World "CoproductWorld"
Level 5

Title "Symmetry"

Introduction "The coproduct type, like the product type, is *symmetric*, and in particular has a canonical map of type `A ⊕ B → B ⊕ A`. Your task in this level is to define it.

Use the elimination rule for coproduct types and the associated tactics `cases` or `rcases` to map out of the type `A ⊕ B`.

Then use the introduction rules for coproduct types and the associated tactics `left` and `right` to map into the type `B ⊕ A`.
"

/-- For any types `A` and `B`, there is a canonical function of type `A ⊕ B → B ⊕ A`. -/
Statement {A B : Type} : A ⊕ B → B ⊕ A := by
  Hint (hidden := true) "Use the `intro` tactic to define a term in a function type."
  intro x
  Hint (hidden := true) "Use either `cases {x}` or `rcases {x} with a | b` to consider the possible cases for the variable `{x} : A ⊕ B`."
  rcases x with a | b
  Hint (hidden := true) "Which function might be useful to apply here?"
  apply Sum.inr
  exact a
  Hint (hidden := true) "Which function might be useful to apply here?"
  apply Sum.inl
  exact b


Conclusion "The same construction defines a function of type `B ⊕ A → A ⊕ B`, demonstrating the symmetry of the coproduct."
