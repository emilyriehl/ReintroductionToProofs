import Game.Levels.NaturalNumbersWorld.L07_AddingZero

World "NaturalNumbersWorld"
Level 8

Title "Adding Successors"

Introduction "
The addition function `+ : ℕ → ℕ → ℕ` is defined by the equations

* `add_zero n : n + 0 = n` and
* `add_succ m n : m + succ n = succ (m + n)`.

It is of course also true that `succ m + n = succ (m + n)` for all natural numbers `m` and `n`, but this equation does not hold by definition.

Instead you have to prove it by induction!

Good luck.
"

open Nat

/-- For all natural numbers `m n`, `m + succ n = succ (m + n)` and `succ m + n = succ (m + n)`. -/
Statement : ∀ m n : ℕ, m + succ n = succ (m + n) ∧ succ m + n = succ (m + n)  := by
  intro m n
  constructor
  rfl
  Hint "You can apply induction on either variable `{m}` or `{n}`. It will be easiest, however, to induct on the same variable we used to define the addition function."
  induction n with k hk
  rfl
  rw [add_succ]
  rw [hk]
  rw [← add_succ]
  rfl

Conclusion "The second half of this proves the theorem `Nat.succ_add : ∀ m n : ℕ, succ m + n = succ (m + n)`, which is now in your library."

/--
For `m n : Nat`, `Nat.succ_add m n` is the proof that `(succ m) + n = succ (m + n)`.
-/
TheoremDoc Nat.succ_add as "succ_add" in "ℕ"

NewTheorem Nat.succ_add

DisabledTheorem Nat.succ_add
