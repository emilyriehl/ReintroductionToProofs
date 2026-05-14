import Game.Levels.NaturalNumbersWorld.L10_SuccessorInjectivity

World "NaturalNumbersWorld"
Level 11
Title "Boss Level"

Introduction "
For the Boss Level of Natural Numbers World you are challenged to prove the fifth Peano axiom, that zero is not the successor of any natural numbers.

For guidance, revisit the proof that `¬ (true = false)` from Boolean World.

Good luck!
"

open Nat


namespace ReintroductionToProofs

open Nat

/-- Zero is not the successor of any natural number. -/
Statement : ¬ (∃ n : ℕ, succ n = 0) := by
  intro hyp
  let ⟨n, hn⟩ := hyp
  let P : ℕ → Prop := fun n ↦ match n with | zero => False | succ k => True
  let tr : P n.succ → P 0 := by intro x; rw [← hn]; exact x
  apply tr
  exact ⟨⟩

Conclusion "There is one remaining level in our game. Move on to Dependent World to encounter type forming operations that take as input families of types, the *dependent types* of dependent type theory."

end ReintroductionToProofs
