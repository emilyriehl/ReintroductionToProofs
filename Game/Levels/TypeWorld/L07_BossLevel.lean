import Game.Levels.TypeWorld.L06_TypeOfTypes

World "TypeWorld"
Level 7

Title "Boss Level"

Introduction "
Each world will end with a `Boss Level`, which is intended to be more challenging than the levels that came before.

It is not so easy to design a challenging exercise involving only the tactics `assumption` and `exact` but nevertheless, we will end with a puzzle that you may find interesting.

Your task in this level, like in the previous level, is to define an element in the type `Type`.

In the previous level, you were asked to do this in the empty context. Here our context contains certain assumptions which could potentially be used to make your task easier.

You are allowed, if you insist, to solve this level in the same way you solved the previous level. But we challenge you to define a different element of the type `Type` than you used previously.
"

/-- The elements of the type `Type` of types are types at the lowest universe level. -/
Statement (P Q R : Prop) (q : Q) (r : R) : Type := by
  exact Prop

Conclusion "Note that elements of `Prop` are considered to be at a smaller universe level than elements of `Type`, which is why we have `Prop : Type`. Now move on to Function World to meet your first type forming operation."
