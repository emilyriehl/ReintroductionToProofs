import Game.Metadata

World "NaturalNumbersWorld"
Level 6

Title "Adding Successors"

Introduction "
By definition"

open Nat

/-- For all natural numbers `m n`, `m + succ n = succ (m + n)` and `succ m + n = succ (m + n)`. -/
Statement : ∀ m n : ℕ, m + succ n = succ (m + n) ∧ succ m + n = succ (m + n)  := by
  intro m n
  induction n with k hk
  constructor
  rfl
  rfl
  constructor
  rfl
  rw [add_succ m.succ]
  rw [hk.2]
  rw [← add_succ m k]
  rfl

Conclusion "The second half of this proves the theorem `Nat.succ_add : ∀ m n : ℕ, succ m + n = succ (m + n)`, which is now in your library."


/--
For `m n : Nat`, `Nat.succ_add m n` is the proof that `(succ m) + n = succ (m + n)`.
-/
TheoremDoc Nat.succ_add as "succ_add" in "ℕ"

NewTheorem Nat.succ_add
