import Game.Metadata

World "FunctionWorld"
Level 3

Title "Composing functions"

Introduction "Given functions `f : A → B` and `g : B → C` there is a *composite function* from `A` to
`C`. It is defined to be the function that sends `x : A` first to the element `f a : B` and then
to the element `g (f a) : C`."

Statement {A B C : Type} (g : B → C) (f : A → B) : A → C := by
  Hint (hidden := true) "To define a function from `{A}` to `{C}`, type `intro x` to introduce an
  arbitrary element of type `{A}`."
  intro x
  Hint (hidden := true) "Now that the goal is an element of type `{C}` there are several ways to proceed. You can use `exact` or `apply`."
  exact g (f x)

Conclusion "Can you solve this level in one line by using `exact fun x ↦ ?` with the appropriate thing in place of the `?`?"
