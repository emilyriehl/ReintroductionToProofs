import Game.Metadata

World "FunctionWorld"
Level 2

Title "Using Functions"

Introduction "Given a function `f : A → B` and any element `a : A`. You can apply the function `f` to `a` to obtain an element `f a : B` of type `B`."

Statement {A B : Type} (a : A) (f : A → B) : B := by
  Hint "The syntax for the application of the function `{f} : {A} → {B}` on the element `{a} : {A}` is just `{f} {a}`. So type `exact {f} {a}` to obtain an element of type `B`."
  exact f a

Conclusion "There is another way to solve this level. Start with `apply f` and see what happens. Have you seen a construction like this before?"

-- NewDefinition Function.id?
