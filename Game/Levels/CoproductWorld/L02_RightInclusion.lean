import Game.Metadata

World "CoproductWorld"
Level 2

Title "Right Inclusion"

Introduction "For types `A` and `B`, the coproduct type `A ⊕ B` has two kinds of elements. The second kind can be thought of as copies of elements `b : A` included into the coproduct `A ⊕ B` *on the right*.

Lean has a built in function called `Sum.inr : B → A ⊕ B`.

If the goal is to produce an element of `A ⊕ B`, typing `apply Sum.inr` will convert this to a goal of producing an element of `B`. The tactic `right` has the same effect.

Note that `Sum.inl, Sum.inr : A → A ⊕ A` are *different functions* (as long as the type `A` has at least one element) in a way we will be able to make more precise later.
"

/--
For types `A` and `B`, the function `Sum.inr : B → A ⊕ B` can be used to include elements of type `B` as elements of the coproduct type `A ⊕ B`.
-/
DefinitionDoc Sum.inr as "inr" in "Sum"

/-- For any `b : B`, there is an element `Sum.inr b : A ⊕ B`. -/
Statement {A B : Type} (b : B) : A ⊕ B := by
  Hint "To use the built in function `Sum.inr : B → A ⊕ B` to change the goal from `A ⊕ B` to `B` type `apply Sum.inr`."
  apply Sum.inr
  exact b

NewDefinition Sum.inr

Conclusion "We'll now study how hypothesis `x : A ⊕ B` can be used."
