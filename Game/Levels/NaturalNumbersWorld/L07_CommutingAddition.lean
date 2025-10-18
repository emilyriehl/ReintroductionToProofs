import Game.Metadata

World "NaturalNumbersWorld"
Level 7

Title "Commuting Addition"

Introduction "
By definition"

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
