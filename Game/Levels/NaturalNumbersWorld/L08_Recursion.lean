import Game.Metadata

World "NaturalNumbersWorld"
Level 8

Title "Recursion"

Introduction "
By definition"

open Nat

/-- There is a function `pred : ℕ → ℕ` that sends `0` to `0` and `succ n` to `n`. -/
Statement : ℕ → ℕ := by
  intro n
  Hint "To define the function `pred : Nat → Nat` by induction on `n`, type `induction n with k predk`."
  induction n with k predk
  Hint "We now have two goals. The first goal asks you to define the value of `pred 0`."
  exact 0
  Hint "The second goal asks you to define the value of `pred (succ {k})`. To make this definition, you have access to the natural number `{k} : Nat` as well as the value `{predk} : Nat` of the function `pred {k}` (which is why we suggested `predk` for the variable name)."
  exact k

Conclusion "This defines a function `Nat.pred : ℕ → ℕ` which is now in your library."


/--
The function `Nat.pred : ℕ → ℕ` is defined by recursion to send `0` to `0` and `succ n` to `n`.
-/
DefinitionDoc Nat.pred as "pred" in "ℕ"

NewDefinition Nat.pred
