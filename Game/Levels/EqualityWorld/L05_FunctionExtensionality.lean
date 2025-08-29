import Game.Metadata
import Game.Levels.FunctionWorld

World "EqualityWorld"
Level 5

Title "Function Extensionality"

open Function

Introduction "Consider a function `f : A → B → C`. We've defined a corresponding function `swap f : B → A → C` by exchanging the order of the inputs. Applying this construction twice, we obtain `swap (swap f) : A → B → C`. How does this compare with the original function `f`?

In general, two functions `f g : X → Y` are *equal* just when `f x = g x` for all inputs `x : X`. This rule is called *function extensionality*.

When faced with a goal of the form `f = g` where `f` and `g` are functions belonging to the type `X → Y`, the tactic `ext x` will reduce to the problem of proving `f x = g x` for a generic variable `x : X`.
"

Statement {A B C : Type} (f : A → B → C) : swap (swap f) = f := by
  Hint "Type `ext a b` to reduce to the problem of proving that `(swap (swap f)) a b = f a b` for generic elements `a : A` and `b : B`."
  ext a b
  Hint (hidden := true) "This is true by definition, but Lean does not necessarily recall how `swap` was defined. Type `unfold swap` to unfold this definition."
  unfold swap
  rfl

Conclusion "Let us see what else can be proven with function extensionality."

NewTactic ext
