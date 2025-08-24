import Game.Metadata

World "ProductWorld"
Level 5

Title "Associativity"


Introduction "Given three types `A`, `B`, and `C`, the product type construction may be iterated to define types `(A × B) × C` and `A × (B × C)`, the latter of which is abbreviated `A × B × C`.

A term `p : (A × B) × C` has projections `p.1 : A × B` and `p.2 : C`. Then `p.1 : A × B` has further projections `p.1.1 : A` and `p.1.2 : B`.

Use this to define a *pair* of functions, the first of type `((A × B) × C) → (A × (B × C))` and the second of type `(A × (B × C)) → ((A × B) × C)`. That is, define a single element of type

`(((A × B) × C) → (A × (B × C))) × ((A × (B × C)) → ((A × B) × C))`
"

Statement {A B C : Type} : (((A × B) × C) → (A × (B × C))) × ((A × (B × C)) → ((A × B) × C)) := by
  Hint "The goal is a product of function types, so to define an element you need to define two different functions. Each will take some work, so start with the `constructor` tactic to split one goal into two goals."
  constructor
  Hint (hidden := true) "Now the goal is a function type. What tactic is used to define functions?"
  intro p
  exact ⟨p.1.1, p.1.2, p.2⟩
  intro p
  exact ⟨⟨p.1, p.2.1⟩, p.2.2⟩


Conclusion "Note some shorthands are available for `A × B × C` but not for `(A × B) × C`. In particular, given `a : A`, `b : B`, and `c : C`, we may write `⟨a,b,c⟩ : A × B × C` to abbreviate `⟨a, ⟨b,c⟩⟩ : A × (B × C)`."
