import Game.Metadata

World "FunctionWorld"
Level 5

Title "Multivariable functions"


Introduction "An element of type `A → B → C`, which abbreviates the type `A → (B → C)`, can be thought of as a function of two variables. Given `f : A → B → C` and `a : A`, then `f a : B → C` is a function from `B` to `C`. Then given `b : B` we can apply the function `f a` to get an element `f a b : C`.
"

Statement {A B C : Type} (a : A) (f : A → B → C) : B → C := by
  intro b
  Hint (hidden := true) "You can use the tactic `exact` by supplying `{f}` with two arguments, in the correct order, with spaces in between (but no parentheses). Alternatively you can use the tactic `apply`."
  apply f
  Hint "Since `{f}` is a function with two variables, after `apply {f}` we now have two goals, where we need to supply first an element of type `{A}` and then an element of type `{B}`."
  exact a
  Hint (hidden := true) "Both `exact b` and `assumption` can be used here."
  exact b

Conclusion "This level can be solved by starting with `exact` or starting with `intro`. If you start with `intro`, then you can continue with `exact` or with `apply`. If this is your first time solving this level, try to find a different solution."
