import Game.Levels.AdvancedFunctionWorld

World "NaturalNumbersWorld"
Level 1

Title "Numerals"

Introduction "How do we construct examples of natural numbers?

By the introduction rules:

* There is a natural number `0 : ℕ`.
* There are natural numbers obtained by applying the function `succ : ℕ → ℕ`.

Familiar *numerals* are defined by repeated applications of the successor function to the natural number `0`. For example:
* `1 = succ 0`
* `2 = succ (succ 0)`
* `3 = succ (succ (succ 0))`
* `4 = succ (succ (succ (succ 0)))`
and so on.

As all of these are definitions, the equalities in this level can be proven with `rfl`.
"

open Nat

/-- Explicit numerals `1`, `2`, `3`, `4`, and so on are defined as repeated successors of the previous numerals. -/
Statement : (1 = succ 0) ∧ (2 = succ 1) ∧ (3 = succ 2) ∧ (4 = succ 3) ∧ (9223372036854775809 = succ 9223372036854775808):= by
  Hint (hidden := true) "What is the outermost logical connective?"
  constructor
  rfl
  constructor
  rfl
  constructor
  rfl
  constructor
  rfl
  rfl

Conclusion "You can avoid the repeated applications of the `constructor` tactic by solving this level with `exact ⟨rfl, rfl, rfl, rfl, rfl⟩`. In the next level, we will encounter other equalities between natural numbers that can be proven with `rfl`."
