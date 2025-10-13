import Game.Metadata

World "QuantifierWorld"
Level 15

Title "Boss Level"

Introduction "We have just proven an implication

`(∃ x : A, ¬ (P x)) → ¬ (∀ x : A, P x)`.

Use classical logic to prove the converse implication.
"

open Classical

/-- Given a family of propositions `P : A → Prop`, using classical logic, `¬ (∀ x : A, P x)` implies `∃ x : A, ¬ (P x)`.  -/
Statement {A : Type} (P : A → Prop) : ¬ (∀ x : A, P x) → (∃ x : A, ¬ (P x)) := by
  intro na
  apply byContradiction
  intro ne
  apply na
  intro a
  have p := em (P a)
  rcases p with pa | npa
  assumption
  apply False.elim
  apply ne
  use a
  assumption

Conclusion "Move on to Equivalence World to finally answer the question of what it means for two types to be the same in a sense that generalizes logical equivalence of propositions."
