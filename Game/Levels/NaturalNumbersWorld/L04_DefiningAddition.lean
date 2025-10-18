import Game.Metadata

World "NaturalNumbersWorld"
Level 4

Title "Defining Addition"

Introduction "Addition is a binary function on natural numbers, meaning it type `+ : Nat → Nat → Nat`.

In Lean, the addition function is defined *by recursion*, meaning by the constructive form of induction, on its second variable.

This means that for an arbitrary natural number `m` &mdash; the first variable &mdash; we define a function `m + : Nat → Nat` by cases, that is by specifying values for

* `m + 0` and
* `m + succ n` for an arbitrary natural number `n`.

For the first equation, we define `m + 0 = m`. Since this is part of the definition of what it means to add zero on the right, we have `rfl : m + 0 = m`.

For the second equation, we must find a formula for `m + succ n` using `m`, `n`, the successor function, and previously defined values of the function `m + : Nat → Nat`.

In particular, by the time we are looking to calculate `m + succ n` we have already defined `m + n`. So we can use this and give the definition `m + succ n = succ (m + n)`. Since this is part of the definition of what it means to add zero on the right, we have `rfl : m + succ n = succ (m + n)`.
"

open Nat

/-- For all natural numbers `m` and `n`, `n + 0 = n` and `m + (succ n) = succ (m + n)`. -/
Statement : (∀ n : Nat, (n + 0 = n)) ∧ (∀ m n : Nat, m + (succ n) = succ (m + n)) := by
  constructor
  intro n
  rfl
  intro m n
  rfl

Conclusion "The theorems `add_zero : ∀ n : Nat, n + 0 = n` and `add_succ : ∀ m n : Nat, m + succ n = succ (m + n)` are now in your library."

TheoremTab "Nat"

/--
For `n : Nat`, `add_zero n` is the proof that `n + 0 = n`.
-/
TheoremDoc Nat.add_zero as "add_zero" in "Nat"

/--
For `m n : Nat`, `add_succ m n` is the proof that `m + (succ n) = succ (m + n)`.
-/
TheoremDoc Nat.add_succ as "add_succ" in "Nat"

NewTheorem Nat.add_zero Nat.add_succ
