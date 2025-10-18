import Game.Metadata

World "NaturalNumbersWorld"
Level 2

Title "Normal Forms"

Introduction "
By definition"

open Nat

/-- Explicit numerals `1`, `2`, `3`, `4`, and so on are defined as repeated successors of the previous numerals. -/
Statement : 5 * (3 + 4) = (4 + 3) * 5 := by
  rfl

Conclusion "You can click on `retry` to attempt a different proof. Try typing `assumption` instead."
