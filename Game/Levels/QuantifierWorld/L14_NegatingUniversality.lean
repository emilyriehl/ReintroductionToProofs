import Game.Metadata

World "QuantifierWorld"
Level 14

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
  Hint (hidden := true) "The goal is still an implication, so try another `intro`."
  intro na
  Hint (hidden := true) "To apply the hypothesis `{na}` it would help to have a specific element of `A` to apply it to. Can you see where this might come from?"
  rcases en with ⟨a, ha⟩
  exact ha (na a)

Conclusion "The converse implication is classical but not constructive as you will show in the Boss Level."
