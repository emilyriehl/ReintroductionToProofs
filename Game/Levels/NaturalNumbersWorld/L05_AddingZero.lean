import Game.Metadata

World "NaturalNumbersWorld"
Level 5

Title "Adding Zero"

Introduction "
By definition"

open Nat

/-- For all natural numbers `n`, `n + 0 = n` and `0 + n = n`. -/
Statement : ∀ n : ℕ, (n + 0 = n) ∧ (0 + n = n) := by
  intro n
  constructor
  rfl
  induction n with m hm
  rfl
  rw [add_succ]
  rw [hm]
  rfl


Conclusion "The second half of this proves the theorem `Nat.zero_add : ∀ n : ℕ, 0 + n = n`, which is now in your library."

/--
For `n : ℕ`, `Nat.zero_add n` is the proof that `0 + n = n`.
-/
TheoremDoc Nat.zero_add as "zero_add" in "ℕ"

NewTheorem Nat.zero_add
