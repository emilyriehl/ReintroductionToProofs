import Game.Metadata

World "NaturalNumbersWorld"
Level 5

Title "Adding Zero"

Introduction "
By definition"

open Nat

/-- For all natural numbers `n`, `n + 0 = n` and `0 + n = n`. -/
Statement : ∀ n : Nat, (n + 0 = n) ∧ (0 + n = n) := by
  intro n
  constructor
  rfl
  induction n with m hm
  rfl
  rw [add_succ]
  rw [hm]
  rfl


Conclusion "The second half of this proves the theorem `zero_add : ∀ n : Nat, 0 + n = n`, which is now in your library."


/--
For `n : Nat`, `zero_add n` is the proof that `0 + n = n`.
-/
TheoremDoc Nat.zero_add as "zero_add" in "Nat"

NewTheorem Nat.zero_add
