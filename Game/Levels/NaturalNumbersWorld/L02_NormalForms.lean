import Game.Metadata

World "NaturalNumbersWorld"
Level 2

Title "Normal Forms"

Introduction "
More complicated arithmetic equations involving numerals also hold by definition: for example `1 + 5 = 2 * 3`

This is because these elements on both the left-hand and right-hand sides reduce to a common *normal form*, an explicit numeral of the form `succ (succ (succ (succ (succ (succ 0))))`.

"

open Nat

/-- Arithmetic equations involving explicit numerals such as `12 + 23 = 5 * (4 + 3)` hold by `rfl`. -/
Statement : (2 + 2 = 4) ∧ (1 + 5 = 2 * 3) ∧ (12 + 23 = 5 * (4 + 3)) ∧ (2 * 5 = 5 * 2) ∧ ((3 + 1) + 2 = 2 + (1 + 3)) := by
  Hint (hidden := true) "What is the outermost logical connective?"
  exact ⟨rfl, rfl, rfl, rfl, rfl⟩

Conclusion "Can you solve this level in one line?"
