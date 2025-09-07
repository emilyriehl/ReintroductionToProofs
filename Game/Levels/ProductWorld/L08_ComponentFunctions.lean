import Game.Metadata

World "ProductWorld"
Level 8

Title "Component Functions"

Introduction "We've seen that a function `f : A × B → C` out of a product can be regarded as a function of two variables `curry f : A → B → C`.

How should we think about a function into a product?

Given a function `f : X → A × B` from a type `X` into a product type `A × B` one can define a pair of functions with types `X → A` and `X → B` that for `x : X` record the values `(f x).1 : A` and `(f x).2 : B` defined by projecting the pair `f x : A × B` to its components.

These might be called the *component functions* associated to `f : X → A × B`.

Define a function that extracts the component functions associated to a function into a product.
"

/-- A function into a product type has a pair of component functions. -/
Statement {X A B : Type} : (X → A × B) → (X → A) × (X → B) := by
  Hint (hidden := true) "The goal is a function type, so start with `intro`."
  intro f
  Hint (hidden := true) "The goal is a product type. You can use `constructor` to split into two goals, defining each component function separately."
  constructor
  Hint (hidden := true) "The goal is a function type, so start with `intro`."
  intro x
  Hint (hidden := true) "What is the type of the term `{f} {x}`? If you're not sure, you can type `exact {f} {x}` and read the error message to find out."
  Hint (hidden := true) "If this is not the term you want, how can you use it to define the correct term?"
  exact (f x).1
  Hint (hidden := true) "The goal is a function type, so start with `intro`."
  intro x
  Hint (hidden := true) "What is the type of the term `{f} {x}`? If you're not sure, you can type `exact {f} {x}` and read the error message to find out."
  Hint (hidden := true) "If this is not the term you want, how can you use it to define the correct term?"
  exact (f x).2

Conclusion "We've seen that functions `f : X → A × B` into product types can be decomposed into component functions `fun x ↦ (f x).1 : X → A` and `fun x ↦ (f x).2 : X → B`.

We'll now consider the reversed process, defining a function into a product type from a pair of component functions."
