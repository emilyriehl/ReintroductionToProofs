import Game.Metadata

World "CoproductWorld"
Level 3

Title "Component Functions"

Introduction "Consider a function `f : A ⊕ B → C` mapping out of a coproduct type.

By composing with the function `Sum.inl : A → A ⊕ B` we obtain a function `g : A → C` which can be thought of as one of the two *component functions* associated to `f`.

The other component function is defined by composing `f : A ⊕ B → C` with the function `Sum.inr : B → A ⊕ B` to obtain a function `h : B → C`.

Since a *single* function of type `A ⊕ B → C` decomposes into a pair of functions of types `A → C` and `B → C`, we will define a function from the function type `A ⊕ B → C` into the product of the function types `(A → C) × (B → C)`.
"

Statement {A B C : Type} : (A ⊕ B → C) → (A → C) × (B → C) := by
  Hint (hidden := true) "Use the `intro` tactic to define a term in a function type."
  intro f
  Hint (hidden := true) "Now the goal is a product type. The `constructor` tactic will split into two subgoals, defining the functions `{A} → {C}` and `{B} → {C}` respectively."
  constructor
  exact fun a ↦ f (Sum.inl a)
  exact fun b ↦ f (Sum.inr b)

Conclusion "We've seen that functions out of a coproduct can be split into component functions. Similarly, component functions `g : A → C` and `h : B → C` can be assembled into a function of type `A ⊕ B → C`, as we will explore in the next level."
