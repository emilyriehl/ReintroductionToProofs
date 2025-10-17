-- import Game.Levels.NegationWorld.L01_ExFalso
-- import Game.Levels.NegationWorld.L02_Negation
-- import Game.Levels.NegationWorld.L03_DoubleNegation
-- import Game.Levels.NegationWorld.L04_Noncontradiction
-- import Game.Levels.NegationWorld.L05_Absurd
-- import Game.Levels.NegationWorld.L06_ModusTollens
-- import Game.Levels.NegationWorld.L07_NegatingImplication
-- import Game.Levels.NegationWorld.L08_NegatingDisjunction
-- import Game.Levels.NegationWorld.L09_NegatingConjunction
-- import Game.Levels.NegationWorld.L10_TripleNegation
-- import Game.Levels.NegationWorld.L11_BossLevel

World "NaturalNumbersWorld"
Title "Natural Numbers World"

Introduction "In this world, we will introduce the type `ℕ` of natural numbers.

In traditional foundations, the natural numbers are characterized by a series of axioms discovered roughly contemporaneously by Dedekind and Peano that are commonly called the *Peano postulates*. There are five axioms:

1. There is a natural number `0 : ℕ` called *zero*.
2. There is a function `succ : ℕ → ℕ` that sends any natural number to its *successor*.
3. The successor function is injective: `∀ m n : ℕ, succ m = succ n → m = n`.
4. Zero is not the successor of any natural number: `¬ (∃ n : ℕ, succ n = 0)`.
5. The principle of mathematical induction.
"
