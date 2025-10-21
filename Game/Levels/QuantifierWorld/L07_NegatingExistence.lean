import Game.Metadata

World "QuantifierWorld"
Level 7

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
  Hint (hidden := true) "Recall the meaning of `↔`. What tactic breaks this goal into its components?"
  constructor
  intro na
  intro ne
  Hint (hidden := true) "How can you use the hypothesis `{ne}`?"
  rcases ne with ⟨a, ha⟩
  have npa := na a
  Hint (hidden := true) "There are various ways to use `{na}` and `{npa}` to get a contradiction."
  exact npa ha
  intro ne
  intro a
  Hint (hidden := true) "The goal is still an implication, so try another `intro`."
  intro pa
  Hint (hidden := true) "The hypothesis `{ne}` is a proof that `(∃ x, P x) → False`. So try `apply {ne}`."
  apply ne
  use a
  exact pa

Conclusion "In the next level, we will learn about negating universal quantifiers."
