import Game.Metadata

World "ClassicalWorld"
Level 6

Title "Boss Level"

Introduction "In Negation World, we proved that for any propositions `P` and `Q`:

`P ∧ ¬ Q → ¬ (P → Q)`.

The objective of the Boss Level is to prove the converse implication.

Good luck!
"

section
open Classical

/-- In classical logic, for any propositions `P` and `Q`, `¬ (P → Q)` implies `P ∧ ¬ Q`. -/
Statement {P Q : Prop} : ¬ (P → Q) → P ∧ ¬ Q := by
  intro ni
  have lemQ := em Q
  rcases lemQ with q | nq
  have c := ni (fun _ ↦ q)
  exact False.elim c
  have lemP := em P
  rcases lemP with p | np
  exact ⟨p, nq⟩
  have i : P → Q := fun p ↦ False.elim (np p)
  exact absurd i ni

end

Conclusion "In the next world, we will finally introduce the slippery topic of equality."
