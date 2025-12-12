import Game.Metadata

World "ProductWorld"
Level 10

Title "Boss Level"

Introduction "The objective of this Boss Level is to define a function that takes five variables as inputs and has three
variables as outputs by combining the data of four simpler functions.

This function is defined as a composite &mdash; in a much more complicated sense than we have seen thusfar &mdash; of the given functions.

Can you do it?

The `let` tactic, which is now in your library, may be helpful for making partial progress.
"

/-- Given functions of types `B × D → M`, `E → Y × N`, `A → M → X`, and `C → N → Z`, there is a function from the product type `A × B × C × D × E` to the product type `X × Y × Z`. -/
Statement {A B C D E M N X Y Z : Type} :
  (B × D → M) → (E → Y × N) → (A → M → X) → (C → N → Z) → (A × B × C × D × E → X × Y × Z):= by
  intro f g h k p
  let a := p.1
  let b := p.2.1
  let c := p.2.2.1
  let d := p.2.2.2.1
  let e := p.2.2.2.2
  constructor
  apply h
  exact a
  apply f
  constructor
  exact b
  exact d
  constructor
  exact (g e).1
  apply k
  exact c
  exact (g e).2

Conclusion "The `let` tactic can also be used to decompose an element of a product type into its components. For example, using an element `p : A × B × C × D × E`, typing `let ⟨a, b, c, d, e⟩ := p` will add elements `a : A`, `b : B`, `c : C`, `d : D`, and `e : E` to your context.

Move on to Conjunction World to learn about the logical operation that is analogous to product types."

-- "You may be wondering about the relationship between terms `p : A × B` and `⟨p.1, p.2⟩ : A × B`. To be able to answer this and similar questions, move on to Euuality World."

-- Conclusion "Congratulations! In the next world, we'll introduce another type forming operation that
-- is *dual* to product types in a certain sense."
