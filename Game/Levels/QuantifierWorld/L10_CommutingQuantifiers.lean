import Game.Metadata

World "QuantifierWorld"
Level 10

Title "Commuting Quantifiers"

Introduction "Consider a family of propositions that depends on elements drawn from two separate types:

`P : A → B → Prop`

In this level, we will compare the two statements

`∀ x : A, ∃ y : B, P x y` and
`∃ z : B, ∀ w : A, P w z`.

We will see that the second statement implies the first.

The converse implication is not true in general. Can you see why?
"

/-- Given a family of propositions `P : A → B → Prop`, `∃ z : B, ∀ w : A, P w z`implies `∀ x : A, ∃ y : B, P x y` -/
Statement {A B : Type} (P : A → B → Prop) : (∃ z : B, ∀ w : A, P w z) → ∀ x : A, ∃ y : B, P x y := by
  intro h
  intro a
  rcases h with ⟨b, hb⟩
  use b
  exact hb a

Conclusion "In the next levels, we will study the effect of negating existential and universal quantifiers."
