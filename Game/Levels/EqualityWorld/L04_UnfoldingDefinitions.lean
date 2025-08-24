import Game.Metadata
import Game.Levels.FunctionWorld.L07_SwappingInputs

World "EqualityWorld"
Level 4

Title "Unfolding definitions"

open Function

Introduction "Consider a function `f : A → B → C`. We've defined a corresponding function `swap f : B → A → C` by exchanging the order of the inputs. That is for any `b : B` and `a : A` the terms `(swap f) b a : C` and `f a b : C` are equal by definition.

Thus, reflexivity again proves that `(swap f) b a = f a b`. But for Lean to understand, this we must first tell Lean to unfold our definition of `swap`.
"

Statement {A B C : Type} (f : A → B → C) (a : A) (b : B) : (swap f) b a = f a b := by
  Hint "Type `unfold swap` or `unfold Function.swap` to ask Lean to reduce `(swap f) b a` using the definition of `swap` we provided in Function World."
  unfold swap
  rfl

Conclusion "The tactic `unfold` can be used to unfold user-defined names using their original definitions."

NewTactic unfold
