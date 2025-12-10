import Game.Metadata

World "FunctionWorld"
Level 2

Title "Using Functions"

Introduction "
The *elimination rule* for function types explains how functions can be used to define elements of other types.

Given a function `f : A → B` and any element `a : A`. You can apply the function `f` to `a` to obtain an element `f a : B` of type `B`.

Like many programming languages, Lean uses juxtaposition, with a space in between, to denote function application. So `f a` is the Lean notation  for the element of `B` obtained by applying the function `f` to the element `a`.

In this level, the context contains the elements `a : A` and `f : A → B` and the goal is to define an element of type `B`.
"

/-- Given a function `f : A → B` and an element `a : A`, there is an element `f a : B` obtained by evaluating the function `f` at `a`. -/
Statement {A B : Type} (a : A) (f : A → B) : B := by
  Hint (hidden := true) "The syntax for the application of the function `f : A → B` to an element `a : A` is just `f a`. So to solve this level, type `exact f a` to obtain an element of type `B`."
  exact f a

Conclusion "In the next level, we will introduce another tactic that can be used to solve this goal."
