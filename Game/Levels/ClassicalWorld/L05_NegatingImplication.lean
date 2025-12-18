import Game.Metadata

World "ClassicalWorld"
Level 5

Title "Negating Implication"

Introduction "In Negation World, we proved that for any propositions `P` and `Q`:

`P ∧ ¬ Q → ¬ (P → Q)`.

Our aim in this level is to prove the converse implication using classical reasoning.

Good luck!
"

section
open Classical

/-- In classical logic, for any propositions `P` and `Q`, `¬ (P → Q)` implies `P ∧ ¬ Q`. -/
Statement {P Q : Prop} : ¬ (P → Q) → P ∧ ¬ Q := by
  intro ni
  have lemP := em P
  rcases lemP with p | np
  constructor
  exact p
  intro q
  apply ni
  exact fun _ ↦ q
  exfalso
  apply ni
  intro p
  exact absurd p np


end

Conclusion "As an extra challenge, can you solve this level by appealing to the law of excluded middle only once? Alternatively, move on to the Boss Level of Classical World."
