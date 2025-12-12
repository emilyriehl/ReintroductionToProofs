import Game.Metadata

World "EmptyWorld"
Level 5

Title "Product With Empty"

Introduction "Recall that for any types `A` and `B`, there is a *product type* denoted `A × B`.

In particular, for any type `A`, we may form the product `A × Empty` with the empty type.

Elements of product types are pairs of elements, one from the first type and one from the second type.

But the empty type does not have any elements! So this means the product `A × Empty` cannot have any elements either.

More precisely, the type `A × Empty` is *equivalent* to the empty type in a sense we cannot yet make precise.

But we can at least show that there are functions `Empty → A × Empty` and `A × Empty → Empty`, which as discussed in a previous level, indicates that `A × Empty` cannot have any elements either.
"

/-- For any type `A`, there are functions in both directions between the types `Empty` and `A × Empty`. -/
Statement {A : Type} : (Empty → A × Empty) × (A × Empty → Empty) := by
  Hint (hidden := true) "What is the logical structure of this type?"
  constructor
  Branch
    intro x
    Hint (hidden := true) "Try `cases {x}` to ask Lean to consider all possible cases involving an element `{x} : Empty`."
    cases x
    exact Prod.snd
  Hint (hidden := true) "Have a look at the library of definitions for a function whose domain is the empty type."
  exact Empty.elim
  Hint (hidden := true) "How do you construct elements of a function type?"
  Branch
    intro x
    Hint (hidden := true) "Can you extract the second component of the element `{x} : A × Empty`?"
    exact x.2
  exact Prod.snd

Conclusion "If your answer does not use the functions `Empty.elim` and `Prod.snd`, you might have fun trying to solve this level again using them in appropriate places."
