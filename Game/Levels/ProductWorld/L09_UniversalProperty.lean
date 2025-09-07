import Game.Metadata

World "ProductWorld"
Level 9

Title "Universal property"

Introduction "We've seen that functions `f : X → A × B` into product types can be decomposed into component functions `fun x ↦ (f x).1 : X → A` and `fun x ↦ (f x).2 : X → B`.

We'll now consider the reversed process, defining a function into a product type from a pair of component functions.

To that end consider an arbitrary pair of functions `g : X → A` and `h : X → B` that have the same domain type `X` but are otherwise unrelated.

These functions can be combined to define a single function of type `X → A × B` whose component functions are defined by `g` and `h`, respectively.
"

/-- Combine a pair of functions `g : X → A` and `h : X → A` into a single function from `X` to the product type `A × B`. -/
Statement {X A B : Type} : (X → A) × (X → B) → (X → A × B):= by
  Hint (hidden := true) "The goal is a function type, so start with `intro`."
  intro f
  Hint (hidden := true) "The goal is a still function type, so continue with `intro`."
  intro x
  Hint (hidden := true) "The goal is a product type, so `constructor` can be used to break the goal into pieces."
  constructor
  Hint (hidden := true) "What sort of type does `{f}` belong to? Can we extract other elements from an element of this type?"
  Hint (hidden := true) "What type does `{f}.1` belong to? Is this useful?"
  exact f.1 x
  Hint (hidden := true) "What type does `{f}.2` belong to? Is this useful?"
  exact f.2 x

Conclusion "The *universal property* of the product is the correspondence between functions `X → A × B` into a product and pairs of functions `(X → A) × (X → B)`.

We are now ready for the boss level of Product World."
