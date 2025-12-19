import Game.Levels.FunctionWorld.L06_MultivariableFunctions

World "FunctionWorld"
Level 7

Title "Flipping Inputs"

Introduction "Recall that an element of type `A → B → C` can be thought of as a function of two variables.

Given `f : A → B → C`, `a : A`, and `b : B`, `f a b : C` denotes `f` applied first to `a` and then to `b`.

From a function of type `A → B → C`, we can define a function of type `B → A → C` by exchanging the order of the variables that are input into the function.

Here the goal is a multivariable function type that takes three inputs &mdash; of types `A → B → C` and `B` and `A` &mdash; and returns one ouput, of type `C`. If you like, you can start with `intro f b a` to introduce all three variables at once.
"

/-- From a function of two variables, define another function of two variables, where the inputs are swapped. -/
Statement {A B C : Type} : (A → B → C) → (B → A → C) := by
  Hint (hidden := true) "When in doubt, start defining a function by using the tactic `intro` followed by your preferred variable name."
  intro f
  Hint (hidden := true) "When in doubt, start defining a function by using the tactic `intro` followed by your preferred variable name."
  intro b
  Hint (hidden := true) "When in doubt, start defining a function by using the tactic `intro` followed by your preferred variable name."
  intro a
  Hint (hidden := true) "Look carefully at the order of the arguments of `{f}`."
  exact f a b

Conclusion "Note that for a particular multvariable function `f : A → B → C`, its type dictates that the variable of type `A` must be supplied before the variable of type `B`. But as observed in this level, we can then define a corresponding function `flip f : B → A → C` which encodes the same information."

/-- For any types `A`, `B`, and `C` and function `f : A → B → C`, `flip f : B → A → C` is the function that carries `b : B` and `a : A` to `f a b : C`. -/
DefinitionDoc flip as "flip" in "Function"

NewDefinition flip
