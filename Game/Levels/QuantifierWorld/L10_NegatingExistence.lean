import Game.Metadata

World "QuantifierWorld"
Level 10

Title "Negating Existence"

Introduction "How would you disprove a statement of the form

`∃ x : A, P x`?

To do this, it is necessary to show that for *every* `a : A`, `P a` is not true.

That is, it is necessary to prove

`∀ x : A, ¬ (P x)`.

In this level we will prove `∀ x : A, ¬ (P x)` implies
`¬ (∃ x : A, P x)` and conversely.
"

/-- Given a family of propositions `P : A → Prop`,  `∀ x : A, ¬ (P x)` is logically equivalent to `¬ (∃ x : A, P x)` -/
Statement {A : Type} (P : A → Prop) : (∀ x : A, ¬ (P x)) ↔ ¬ (∃ x : A, P x) := by
  constructor
  intro na
  intro ne
  rcases ne with ⟨a, ha⟩
  have npa := na a
  exact npa ha
  intro ne
  intro a pa
  apply ne
  use a
  exact pa

Conclusion "In the next level, we will learn about negating universal quantifiers."
