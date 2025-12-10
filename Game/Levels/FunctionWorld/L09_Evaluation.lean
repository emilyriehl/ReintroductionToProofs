import Game.Metadata

World "FunctionWorld"
Level 9

Title "Evaluation"

/--
For types `A` and `B`, the evaluation function has type `A → (A → B) → B`, meaning that for `a : A`, `ev a` has type `(A → B) → B`.
-/
DefinitionDoc ev as "ev"

Introduction "While an element of type `A → (B → C)`, more commonly written as `A → B → C`, is a function of two variables, an element of type `(A → B) → C` is instead a function that takes a function `f : A → B` as input and returns an element of type `C`.

For example, if we are given `a : A`, then it is possible to define a function of type `(A → B) → B` which is called *evaluation* at `a : A`. Given `f : A → B`, we return `f a : B`.

Your task in this level is to define the evaluation function.
"

/-- Define the *evaluation* function that takes `a : A` and `f : A → B` to `f a : B`. -/
Statement {A B : Type} : A → (A → B) → B := by
  Hint (hidden := true) "When in doubt, start defining a function by using the tactic `intro` followed by your preferred variable name."
  intro a
  Hint (hidden := true) "When in doubt, start defining a function by using the tactic `intro` followed by your preferred variable name."
  intro f
  exact f a

Conclusion "The evaluation function has type `ev : A → (A → B) → B` and is defined by the formula `fun a f ↦ f a`. By swapping variables, we can also think of evaluation as defining a function `(A → B) → A → B` where this latter function is defined by `fun f a ↦ f a`."

-- NewDefinition ev
