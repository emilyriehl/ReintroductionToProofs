import Game.Metadata

World "NaturalNumberWorld"
Level 1

Title "Numerals"

Introduction "
By definition"

open Nat

/-- Explicit numerals `1`, `2`, `3`, `4`, and so on are defined as repeated successors of the previous numerals. -/
Statement : (1 = succ 0) ∧ (2 = succ 1) ∧ (3 = succ 2) ∧ (4 = succ 3) ∧ (1729 = succ 1728):= by
  constructor
  rfl
  constructor
  rfl
  constructor
  rfl
  constructor
  rfl
  rfl

Conclusion "You can click on `retry` to attempt a different proof. Try typing `assumption` instead."
