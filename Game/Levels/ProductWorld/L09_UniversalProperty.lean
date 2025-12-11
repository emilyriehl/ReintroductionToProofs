import Game.Metadata

World "ProductWorld"
Level 9

Title "Universal property"

Introduction "We've seen that functions `f : X → A × B` into product types can be decomposed into component functions `fun x ↦ (f x).1 : X → A` and `fun x ↦ (f x).2 : X → B`.

We'll now consider the reversed process, defining a function into a product type from a pair of component functions.

To that end consider an arbitrary pair of functions `g : X → A` and `h : X → B` that have the same domain type `X` but are otherwise unrelated.

These functions can be combined to define a single function of type `X → A × B` whose component functions are defined by `g` and `h`, respectively.

Your task in this level is to define the operation that produces a function into a product type from a pair of component functions.

While it is not strictly necessary to solve this level, we use this opportunity to introduce the `let` tactic. The `let` tactic is similar to the `have` tactic from Implication World, but it is used for creating elements of types rather than proofs of propositions.

Suppose your context contains an element `p : (X → A) × (X → B)`. Using this element it is possible to define functions of type `X → A` and `X → B`. The `let` tactic can be used to add these to your context with explicit names.

Typing `let g : X → A := p.1` will add the function defined by the first component of `p` to your context and give it the name `g`. Similarly, typing `let h : X → B := p.2` will add the function defined by the second component of `p` to your context and give it the name `h`.

Practice using the `let` tactic while solving this level.
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

We are now ready for the Boss Level of Product World."

/-- The `let` tactic is like `have`, but for creating elements of types rather than proofs of propositions. The `let` tactic will add new elements to your context provided you can define them. For example, given elements `a : A` and `b : B`, you can type `let p : A × B := ⟨a, b⟩` to add their pair to the context or type `let f : A → B := fun _ ↦ b` to add the constant function at `b` to the context.
-/
TacticDoc «let»

NewTactic «let»
