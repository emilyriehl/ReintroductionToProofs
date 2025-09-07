import Game.Metadata

World "ProductWorld"
Level 2

Title "First Projection"

Introduction "The product type comes with *projection functions* of type `A × B → A` and `A × B → B` which take an element `p : A × B` and return the corresponding components from `A` and `B` respectively.

In Lean, the elements defined by projecting from `p : A × B` are denoted `p.1 : A` and `p.2 : B`."

/-- Define the canonical function projecting from a product type to its first argument. -/
Statement {A B : Type} : A × B → A:= by
  Hint (hidden := true) "The goal is a term of a function type so type `intro p` to give yourself a term `p : A × B`."
  intro p
  Hint (hidden := true) "Now type `exact {p}.1` to return the first projection."
  exact p.1

Conclusion "The projection function `A × B → B` is defined similarly."
