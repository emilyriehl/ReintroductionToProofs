import Game.Metadata

World "CoproductWorld"
Level 5

Title "Symmetry"

Introduction "The coproduct type, like the product type, is *symmetric*, and in particular has a canonical map `swap : A ⊕ B → B ⊕ A`. Your task in this level is to define it.
"

Statement {A B : Type} : (A ⊕ B → B ⊕ A) := by
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


Conclusion "We will see later that the composite of the swap function with itself is the identity."
