import Game.Levels.NaturalNumbersWorld.L05_PredecessorOfSuccessor

World "NaturalNumbersWorld"
Level 6

Title "Defining Addition"

Introduction "Addition is a binary function on natural numbers, meaning it has type `+ : ℕ → ℕ → ℕ`.

In Lean, the addition function is defined *by recursion* &mdash; i.e., by the elimination rule for `ℕ` or by the constructive form of induction &mdash; on its second variable.

This means that for an arbitrary natural number `m` &mdash; the first variable &mdash; we define a function `m + : ℕ → ℕ` by cases, that is by specifying values for

* `m + 0` and
* `m + succ k` for an arbitrary natural number `k`.

For the first equation, we define `m + 0 = m`. Since this is part of the definition of what it means to add zero on the right, we have `rfl : m + 0 = m`.

For the second equation, we must find a formula for `m + succ k` using `m`, `k`, the successor function, and previously defined values of the function `m + : ℕ → ℕ`.

In particular, by the time we are looking to calculate `m + succ k` we have already defined `m + k`. So we can use this to give the definition `m + succ k = succ (m + k)`. Since this is part of the definition of what it means to add zero on the right, we have `rfl : m + succ k = succ (m + k)`.

In this level you are asked to verify the defining equations for the addition function, which is now in your library. Note Lean likes to write `k.succ` for `succ k`.
"

open Nat

/-- For all natural numbers `m` and `n`, `n + 0 = n` and `m + (succ n) = succ (m + n)`. -/
Statement : (∀ n : ℕ, (n + 0 = n)) ∧ (∀ m n : ℕ, m + (succ n) = succ (m + n)) := by
  Hint (hidden := true) "The goal asks you to prove two theorems, so start with `constructor`."
  constructor
  intro n
  rfl
  intro m n
  rfl

Conclusion "The theorems `Nat.add_zero : ∀ n : ℕ, n + 0 = n` and `Nat.add_succ : ∀ m n : ℕ, m + succ n = succ (m + n)` are now in your library for later use."

TheoremTab "ℕ"

/--
For `n : ℕ`, `Nat.add_zero n` is the proof that `n + 0 = n`.
-/
TheoremDoc Nat.add_zero as "add_zero" in "ℕ"

/--
For `m n : ℕ`, `Nat.add_succ m n` is the proof that `m + (succ n) = succ (m + n)`.
-/
TheoremDoc Nat.add_succ as "add_succ" in "ℕ"

NewTheorem Nat.add_zero Nat.add_succ

/--
The binary addition function `ℕ → ℕ → ℕ` is called `Nat.add m n`, with notation `m + n`. This is the usual sum of natural numbers, defined via the following two hypotheses:

`add_zero m : m + 0 = m`

`add_succ m n : m + succ n = succ (m + n)`

Other theorems about naturals, such as `add_assoc a b c : (a + b) + c = a + (b + c)`, are proved by induction using these two basic theorems."
-/
DefinitionDoc Nat.add as "+" in "ℕ"

NewDefinition Nat.add
