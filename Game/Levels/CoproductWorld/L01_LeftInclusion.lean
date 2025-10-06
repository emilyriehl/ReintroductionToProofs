import Game.Metadata

World "CoproductWorld"
Level 1

Title "Left Inclusion"

Introduction "For types `A` and `B`, the coproduct type `A ⊕ B` has two kinds of elements. The first kind can be thought of as copies of elements `a : A` included into the coproduct `A ⊕ B` *on the left*.

Lean has a built in function called `Sum.inl : A → A ⊕ B`.

If the goal is to produce an element of `A ⊕ B`, typing `apply Sum.inl` will convert this to a goal of producing an element of `A`. The tactic `left` has the same effect.
"

/--
For types `A` and `B`, the function `Sum.inl : A → A ⊕ B` can be used to include elements of type `A` as elements of the coproduct type `A ⊕ B`.
-/
DefinitionDoc Sum.inl as "inl" in "Sum"

/-- For any `a : A`, there is an element `Sum.inl a : A ⊕ B`. -/
Statement {A B : Type} (a : A) : A ⊕ B := by
  Hint "To use the built in function `Sum.inl : A → A ⊕ B` to change the goal from `A ⊕ B` to `A` type `apply Sum.inl`."
  apply Sum.inl
  exact a

NewDefinition Sum.inl

Conclusion "We'll now study the second type of element of in a coproduct type."
