import Game.Metadata

World "FunctionWorld"
Level 6

Title "Composition revisited"

/--
For types `A`, `B`, and `C`, the function `comp : (B → C) → (A → B) → (A → C)` takes a function `f : A → B` and a function `g : B → C` to the composite function `comp g f : A → C` defined to take `a : A` to the element `g (f a) : C`.
-/
DefinitionDoc comp as "comp"

Introduction "Recall that given functions `f : A → B` and `g : B → C` there is a *composite function* from `A` to
`C`. It is defined to be the function that sends `x : A` first to the element `f a : B` and then
to the element `g (f a) : C`.

Define composition as a multivariable function `comp : (B → C) → (A → B) → (A → C)`. We think of composition as the function that takes `g : B → C` and `f : A → B` to the composite function `comp g f : A → C`. It can also be thought of a function that takes `g`, `f`, and `a : A` to the term `g (f a) : A`."

Statement {A B C : Type}: (B → C) → (A → B) → (A → C) := by
  Hint (hidden := true) "To define a function with multiple variables you can apply the intro tactic twice, for instance by typing `intro g f` or even `intro g f a`."
  intro g f a
  Hint (hidden := true) "Now that the goal is an element of type `{C}` there are several ways to proceed. You can use `exact` or `apply`."
  exact g (f a)

Conclusion "Can you solve this level in one line by using `exact fun g f a ↦ ?` with the appropriate thing in place of the `?`?"

NewDefinition comp
