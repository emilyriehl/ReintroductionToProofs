import Game.Levels.NaturalNumbersWorld.L07_AddingSuccessors

World "NaturalNumbersWorld"
Level 8

Title "Commuting Addition"

Introduction "
Using the theorems we have proven so far, we can now prove a serious theorem about the natural numbers, namely the commutativity of addition.

That is, we will show that for all natural numbers `m` and `n`, `m + n = n + m`.

This can be proven by induction on either variable, though you may find one variable easier than the other.

Good luck!
"

open Nat

/-- For all natural numbers `m n`, `m + n = n + m`. -/
Statement : ∀ m n : ℕ, m + n = n + m := by
  intro m n
  induction n with k hk
  rw [Nat.zero_add]
  rfl
  rw [add_succ]
  rw [hk]
  rw [succ_add]
  rfl

Conclusion "This proves the theorem `Nat.add_comm : ∀ m n : ℕ, m + n = n + m`, which is now in your library."

/--
For `m n : Nat`, `Nat.add_comm m n` is the proof that `m + n = n + m`.
-/
TheoremDoc Nat.add_comm as "add_comm" in "ℕ"

NewTheorem Nat.add_comm
