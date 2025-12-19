import Game.Levels.ProductWorld.L01_Pairing

World "ProductWorld"
Level 2

Title "First Projection"

Introduction "The elimination rules for product types tell us which elements can be constructed from an element `p : A × B`.

There are two elimination rules: from an element `p : A × B`, we may extract an element of `A`, thought of as its first component, and also an element of `B`, thought of as its second component.

In Lean, the elements defined by projecting from `p : A × B` are denoted `p.1 : A` and `p.2 : B` or `p.fst : A` and `p.snd : B`.

These rules define *projection functions* of type `A × B → A` and `A × B → B`, which take an element `p : A × B` and return the corresponding components from `A` and `B` respectively.

Your task in this level is to define the first projection function.
"

/-- Define the canonical function projecting from a product type to its first argument. -/
Statement {A B : Type} : A × B → A:= by
  Hint (hidden := true) "The goal is a term of a function type so type `intro p` to give yourself a term `p : A × B`."
  intro p
  Hint (hidden := true) "Now type `exact {p}.1` to return the first projection."
  exact p.1

Conclusion "Lean uses the name `Prod.fst : A × B → A` for the function you have just defined. This function has been added to the library of definitions."

/--
For any types `A` and `B`, `Prod.fst : A × B → A` is the function that sends `p : A × B` to its first coordinate `p.1 : A`.
-/
DefinitionDoc Prod.fst as "Prod.fst" in "Prod"

NewDefinition Prod.fst
