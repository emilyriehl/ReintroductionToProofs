import Game.Levels.NaturalNumbersWorld.L09_CommutingAddition

World "NaturalNumbersWorld"
Level 10
Title "Successor Injectivity"

Introduction "
In this level, we will prove the third Peano axiom using the introduction and elimination rules for the type of natural numbers.

Your objective is to show that the successor function is injective: `∀ m n : ℕ, succ m = succ n → m = n`.

There are several ways to make use of the function `pred : ℕ → ℕ` to prove this, either by applying results from the library or by stating and proving helpful lemmas.
"

open Nat

/-- The successor function is injective. -/
TheoremDoc ReintroductionToProofs.Nat.succ_injective as "succ_injective" in "ℕ"

namespace ReintroductionToProofs

open Nat

/-- The successor function is injective. -/
Statement Nat.succ_injective : ∀ m n : ℕ, succ m = succ n → m = n := by
  apply Function.Injective.of_comp succ pred
  rw [pred_comp_succ]
  intro x y p
  exact p

Conclusion "One of several options is to start the proof with `apply Function.Injective.of_comp succ pred`, specializing a general result from Advanced Function World to this particular case. You are now ready for the Boss Level."

end ReintroductionToProofs
