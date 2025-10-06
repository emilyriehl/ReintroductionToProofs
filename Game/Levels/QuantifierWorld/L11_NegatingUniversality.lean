import Game.Metadata

World "QuantifierWorld"
Level 11

Title "Negating Universality"

Introduction "How would you disprove a statement of the form

`∀ x : A, P x`?

To do this, it would suffice to find a single `a : A` so that `P a` is not true.

That is, it would suffice to prove

`∃ x : A, ¬ (P x)`.

In this level we will prove `∃ x : A, ¬ (P x)` implies
`¬ (∀ x : A, P x)`.
"

/-- Given a family of propositions `P : A → Prop`,  `∃ x : A, ¬ (P x)` implies `¬ (∀ x : A, P x)` -/
Statement {A : Type} (P : A → Prop) : (∃ x : A, ¬ (P x)) → ¬ (∀ x : A, P x)  := by
  intro en
  intro na
  rcases en with ⟨a, ha⟩
  exact ha (na a)

Conclusion "The reverse implication is classical but not constructive as you will show in the Boss Level."
