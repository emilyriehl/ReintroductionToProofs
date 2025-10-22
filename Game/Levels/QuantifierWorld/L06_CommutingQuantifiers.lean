import Game.Metadata

World "QuantifierWorld"
Level 6

Title "Commuting Quantifiers"

Introduction "Consider a family of propositions that depends on elements drawn from two separate types:

`P : A → B → Prop`

In this level, we will compare the two statements

`∀ x : A, ∃ y : B, P x y` and
`∃ z : B, ∀ w : A, P w z`.

We will see that the second statement implies the first.

The converse implication is not true in general. Can you see why?

To solve this level, you will need to use a hypothesis involving an existential quantifier,
which in this case will have the form:

`h : ∃ z : B, ∀ w : A, P w z`

We would like to decompose the hypothesis `h` into a pair of elements: firstly an element `b : B`
and secondly a proof `hb : ∀ w : A, P w b`. Note that the element `b` gets substituted for the variable `z` in the family of propositions `∀ w : A, P w z`.

We can think of the proof `h` as being given by this pair of data `⟨b, hb⟩ : ∃ z : B, ∀ w : A, P w z`. Indeed `h = ⟨b, hb⟩`.

To extract this data from the proof `h`, type `rcases h with ⟨b, hb⟩` to replace `h` by the pair of assumptions `b : B` and `hb : ∀ w : A, P w b`.
"

/-- Given a family of propositions `P : A → B → Prop`, `∃ z : B, ∀ w : A, P w z`implies `∀ x : A, ∃ y : B, P x y` -/
Statement {A B : Type} (P : A → B → Prop) : (∃ z : B, ∀ w : A, P w z) → ∀ x : A, ∃ y : B, P x y := by
  intro h
  intro a
  Hint "Type `rcases {h} with ⟨b, hb⟩` to replace `{h}` by the pair of assumptions `b : B` and
  `hb : ∀ w : A, P w b`."
  rcases h with ⟨b, hb⟩
  use b
  exact hb a

Conclusion "In the next levels, we will study the effect of negating existential and universal quantifiers."
