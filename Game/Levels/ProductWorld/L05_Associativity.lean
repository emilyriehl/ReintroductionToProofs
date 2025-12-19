import Game.Levels.ProductWorld.L04_Symmetry

World "ProductWorld"
Level 5

Title "Associativity"


Introduction "Given three types `A`, `B`, and `C`, the product type construction may be iterated to define types `(A × B) × C` and `A × (B × C)`.

A term `p : (A × B) × C` has projections `p.1 : A × B` and `p.2 : C`. Then `p.1 : A × B` has further projections `p.1.1 : A` and `p.1.2 : B`.

A term `q : A × (B × C)` has projections `q.1 : A` and `q.2 : B × C`. Then `q.2 : B × C` has further projections `q.2.1 : B` and `q.2.2 : C`.

Use this to define a *pair* of functions, the first of type `((A × B) × C) → (A × (B × C))` and the second of type `(A × (B × C)) → ((A × B) × C)`. That is, define a single element of type

`(((A × B) × C) → (A × (B × C))) × ((A × (B × C)) → ((A × B) × C))`

These functions indicate that the product types `(A × B) × C` and `A × (B × C)` are closely related.

By convention, the notation `A × B × C` is an abbreviation for the product type `A × (B × C)`.

Lean also provides a shorthand notation for elements of `A × B × C` that is not available for elements of `(A × B) × C`.

Given `a : A`, `b : B`, and `c : C`, we may write `⟨a,b,c⟩ : A × B × C` to abbreviate `⟨a, ⟨b,c⟩⟩ : A × (B × C)`.
"

/-- Product types are associative: for types `A`, `B`, and `C`, there are canonical functions in each direction between the types `(A × B) × C` and `A × (B × C)`. -/
Statement {A B C : Type} : (((A × B) × C) → (A × (B × C))) × ((A × (B × C)) → ((A × B) × C)) := by
  Hint (hidden := true) "The goal is a product of function types, so to define an element you need to define two different functions. Each will take some work, so start with the `constructor` tactic to split one goal into two goals."
  constructor
  Hint (hidden := true) "Now the goal is a function type. What tactic is used to define functions?"
  intro p
  exact ⟨p.1.1, p.1.2, p.2⟩
  intro p
  exact ⟨⟨p.1, p.2.1⟩, p.2.2⟩

Conclusion "Are function types associative? Why or why not?"
