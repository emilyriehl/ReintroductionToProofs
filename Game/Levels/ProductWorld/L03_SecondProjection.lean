import Game.Metadata

World "ProductWorld"
Level 3

Title "Second Projection"

Introduction "The product type comes with *projection functions* of type `A × B → A` and `A × B → B` which take an element `p : A × B` and return the corresponding components from `A` and `B` respectively.

In Lean, the corresponding projection from `p : A × B` are denoted `p.1 : A` and `p.2 : B`."


Statement {A B : Type} : A × B → B := by
  Hint (hidden := true) "The goal is a term of a function type so type `intro p` to give yourself a term `p : A × B`."
  intro p
  Hint (hidden := true) "Now type `exact {p}.2` to return the first projection."
  exact p.2

Conclusion "In the next level, we'll use the projection functions to prove symmetry of product types."
