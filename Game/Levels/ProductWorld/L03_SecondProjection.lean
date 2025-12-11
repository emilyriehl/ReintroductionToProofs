import Game.Metadata

World "ProductWorld"
Level 3

Title "Second Projection"

Introduction "
The elimination rules for product types can be understood as defining *projection functions* of type `A × B → A` and `A × B → B` which take an element `p : A × B` and return the corresponding components from `A` and `B` respectively.

In Lean, the elements defined by projecting from `p : A × B` are denoted `p.1 : A` and `p.2 : B` or `p.fst : A` and `p.snd : B`.

Your task in this level is to define the second projection function.
"

/-- Define the canonical function projecting from a product type to its second argument. -/
Statement {A B : Type} : A × B → B := by
  Hint (hidden := true) "The goal is a term of a function type so type `intro p` to give yourself a term `p : A × B`."
  intro p
  Hint (hidden := true) "Now type `exact {p}.2` to return the first projection."
  exact p.2

Conclusion "Lean uses the name `Prod.snd : A × B → B` for the function you have just defined. This function has been added to the library of definitions.

In the next level, we'll use the projection functions to prove symmetry of product types."

/--
For any types `A` and `B`, `Prod.snd : A × B → B` is the function that sends `p : A × B` to its second coordinate `p.2 : B`.
-/
DefinitionDoc Prod.snd as "Prod.snd" in "Prod"

NewDefinition Prod.snd
