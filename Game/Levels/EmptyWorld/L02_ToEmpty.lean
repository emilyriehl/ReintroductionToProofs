import Game.Metadata

World "EmptyWorld"
Level 2

Title "To Empty"

Introduction "We have seen that any type `A` has a function from the empty type `Empty.elim : Empty → A`.

By contrast, if there is a function `f : A → Empty` from `A` to the empty type `Empty` then `A` must be very special: this is only possible if `A` is *equivalent* to the empty type.

We do not have all the tools needed to define equivalence of types just yet, so in this level we observe something else.

We will see that if there is a function `f : A → Empty` and if there is an element `a : A`, then we get an element of the empty type, which is very strange indeed!

Can you construct this element?
"

/-- For any type `A`, if there is a function `f : A → Empty` and there is an element `a : A`, then there is an element of the `Empty` type. -/
Statement {A : Type} : (A → Empty) → A → Empty := by
  Hint (hidden := true) "The goal is a function type. What tactic can be used to define an element?"
  intro f
  Hint (hidden := true) "The goal is a function type. What tactic can be used to define an element?"
  intro a
  Hint (hidden := true) "We have an assumption `{f} : A → Empty`. What can be done with an element of a function type?"
  exact f a

Conclusion "In summary, something very strange happens if the types `A` and `A → Empty` both have elements."
