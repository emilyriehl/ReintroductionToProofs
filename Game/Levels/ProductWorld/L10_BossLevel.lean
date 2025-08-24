import Game.Metadata

World "ProductWorld"
Level 10

Title "Boss Level"

Introduction "The objective is to define a function that takes 5 variables as inputs and has three
variables as outputs as a composite &mdash; in a much more complicated sense than we have seen thusfar &mdash; of the given functions. Can you do it?
"

Statement {A B C D E M N X Y Z : Type} :
  (B × D → M) → (E → Y × N) → (A → M → X) → (C → N → Z) → (A × B × C × D × E → X × Y × Z):= by
  intro f g h k p
  rcases p with ⟨a, b, c, d, e⟩
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
