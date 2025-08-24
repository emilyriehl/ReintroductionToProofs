import Game.Metadata

World "FunctionWorld"
Level 7

Title "Swapping inputs"

/--
The `swap` function exchanges the inputs of a function of two variables. For a function with two variables `f : A → B → C`, `Function.swap f : B → A → C` is the function that sends `b : B` and `a : A` to `f a b : C`.
-/
DefinitionDoc Function.swap as "Function.swap"

Introduction "An element of type `A → B → C` can be thought of as a function of two variables. Given `f : A → B → C`, `a : A`, and `b : B`, `f a b : C` denotes `f` applied first to `a` and then to `b`. From a function of type `A → B → C`, we can define a function of type `B → A → C` by swapping the order of the input variables.
"

Statement Function.swap {A B C : Type} : (A → B → C) → (B → A → C) := by
  Hint (hidden := true) "When in doubt, start defining a function by using the tactic `intro` followed by your preferred variable name."
  intro f
  Hint (hidden := true) "When in doubt, start defining a function by using the tactic `intro` followed by your preferred variable name."
  intro b
  Hint (hidden := true) "When in doubt, start defining a function by using the tactic `intro` followed by your preferred variable name."
  intro a
  Hint (hidden := true) "Look carefully at the order of the arguments of `{f}`."
  exact f a b

Conclusion "This level can be solved by starting with `exact` or starting with `intro`. If you start with `intro`, then you can continue with `exact` or with `apply`. If this is your first time solving this level, try to find a different solution."

NewDefinition Function.swap
