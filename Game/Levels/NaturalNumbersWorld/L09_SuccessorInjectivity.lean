import Game.Levels.NaturalNumbersWorld.L08_CommutingAddition

World "NaturalNumbersWorld"
Level 9

Title "Successor Injectivity"

Introduction "
In this level, we will prove the third Peano axiom using the introduction and elimination rules for the type of natural numbers.

Your objective is to show that the successor function is injective: `∀ m n : ℕ, succ m = succ n → m = n`.


"

open Nat

/-- The successor function is injective -/
Statement : ∀ m n : ℕ, succ m = succ n → m = n := by
  intro m n h
  rw [← Nat.pred_succ m, ← Nat.pred_succ n, h]
  rfl

Conclusion "The redundancy of the final Peano axiom, that zero is not a successor, is harder to prove."

/--
For `m n : Nat`, `Nat.add_comm m n` is the proof that `m + n = n + m`.
-/
TheoremDoc Nat.add_comm as "add_comm" in "ℕ"

NewTheorem Nat.add_comm
