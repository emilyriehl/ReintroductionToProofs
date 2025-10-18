import Game.Levels.NaturalNumbersWorld.L01_Numerals
import Game.Levels.NaturalNumbersWorld.L02_NormalForms
import Game.Levels.NaturalNumbersWorld.L03_Induction
import Game.Levels.NaturalNumbersWorld.L04_DefiningAddition
import Game.Levels.NaturalNumbersWorld.L05_AddingZero

World "NaturalNumbersWorld"
Title "Natural Numbers World"

Introduction "In this world, we will introduce the type `ℕ` of natural numbers.

In traditional foundations, the natural numbers are characterized by a series of axioms discovered roughly contemporaneously by Dedekind and Peano that are commonly called the *Peano postulates*. There are five axioms:

  1. There is a natural number `0 : ℕ` called *zero*.

  2. There is a function `succ : ℕ → ℕ` that sends any natural number to its *successor*.

  3. The successor function is injective: `∀ m n : ℕ, succ m = succ n → m = n`.

  4. Zero is not the successor of any natural number: `¬ (∃ n : ℕ, succ n = 0)`.

  5. The principle of mathematical induction (about more which below).

In type theory, the type `ℕ` of natural numbers is instead characterized by introduction and elimination rules.


"
