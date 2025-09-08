import Game.Metadata

World "ProductWorld"
Level 10

Title "Boss Level"

Introduction "The objective of this Boss Level is to define a function that takes give variables as inputs and has three
variables as outputs.

This function is defined as a composite &mdash; in a much more complicated sense than we have seen thusfar &mdash; of the given functions.

Can you do it?
"

/-- Given functions of types `B × D → M`, `E → Y × N`, `A → M → X`, and `C → N → Z`, there is a function from the product type `A × B × C × D × E` to the product type `X × Y × Z`. -/
Statement {A B C D E M N X Y Z : Type} :
  (B × D → M) → (E → Y × N) → (A → M → X) → (C → N → Z) → (A × B × C × D × E → X × Y × Z):= by
  intro f g h k p
  have a := p.1
  have b := p.2.1
  have c := p.2.2.1
  have d := p.2.2.2.1
  have e := p.2.2.2.2
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

Conclusion "Move on to Disjunction World to learn about another logical operation."

-- "You may be wondering about the relationship between terms `p : A × B` and `⟨p.1, p.2⟩ : A × B`. To be able to answer this and similar questions, move on to Euuality World."

-- Conclusion "Congratulations! In the next world, we'll introduce another type forming operation that
-- is *dual* to product types in a certain sense."
