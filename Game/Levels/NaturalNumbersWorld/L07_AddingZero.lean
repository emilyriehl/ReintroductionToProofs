import Game.Levels.NaturalNumbersWorld.L06_DefiningAddition

World "NaturalNumbersWorld"
Level 7

Title "Adding Zero"

Introduction "
The addition function `+ : ℕ → ℕ → ℕ` is defined by the equations

* `add_zero n : n + 0 = n` and
* `add_succ m n : m + succ n = succ (m + n)`.

It is of course also true that `0 + n = n` for all natural numbers `n`, but this equation does not hold by definition.

Instead you have to prove it by induction!

Good luck.
"

open Nat

/-- For all natural numbers `n`, `n + 0 = n` and `0 + n = n`. -/
Statement : ∀ n : ℕ, (n + 0 = n) ∧ (0 + n = n) := by
  intro n
  Hint (hidden := true) "The statement is a conjunction so use `constructor` to break into subgoals."
  constructor
  rfl
  Hint (hidden := true) "To use the principle of mathematical induction, type `indunction n with k hk`."
  induction n with k hk
  rfl
  Hint "It would be nice if we could use the hypothesis `{hk}` to replace the `0 + {k}` in the goal with the element `{k}`, but the parentheses in the left-hand side of the goal equation are not a match for this. Lean thinks that the left hand side is of the form `0 + succ {k}`. Do we have any theorems that can be used to rewrite this into something else?"
  Hint (hidden := true) "To apply the theorem `Nat.add_succ` type `rw [add_succ]`."
  rw [add_succ]
  Hint (hidden := true) "Now you can rewrite along the hypothesis `{hk}`."
  rw [hk]
  rfl


Conclusion "The second half of this proves the theorem `Nat.zero_add : ∀ n : ℕ, 0 + n = n`, which is now in your library."

/--
For `n : ℕ`, `Nat.zero_add n` is the proof that `0 + n = n`.
-/
TheoremDoc Nat.zero_add as "zero_add" in "ℕ"

NewTheorem Nat.zero_add

DisabledTheorem Nat.zero_add
