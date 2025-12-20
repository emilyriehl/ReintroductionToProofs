import Game.Levels.NaturalNumbersWorld.L09_CommutingAddition

World "NaturalNumbersWorld"
Level 10
Title "Successor Injectivity"

Introduction "
In this level, we will prove the third Peano axiom using the introduction and elimination rules for the type of natural numbers.

Your objective is to show that the successor function is injective: `∀ m n : ℕ, succ m = succ n → m = n`.
"

open Nat

namespace ReintroductionToProofs

open Nat

/-- The successor function is injective -/
Statement : ∀ m n : ℕ, succ m = succ n → m = n := by
  apply Function.Injective.of_comp (g := pred)
  rw [pred_comp_succ]
  intro x y p
  exact p

Conclusion "The redundancy of the final Peano axiom, that zero is not a successor, is harder to prove."

end ReintroductionToProofs
