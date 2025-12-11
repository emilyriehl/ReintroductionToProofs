import Game.Metadata

World "DisjunctionWorld"
Level 9

Title "Disjunction Boss Level"

Introduction "We've now reached the Boss Level in the Disjunction World.

This level illustrates that proofs by cases can be somewhat delicate.

Have fun!
"

/-- If `T ∨ U → V ∧ Y` and `Q → P → T` and `Y → Q → W` and
`(V ∧ W) ∨ (X ∧ Y) → Z` and `(R → S → U) ∧ (V → R → X)` then  `P ∧ (Q ∨ R) ∧ S` implies `Z`. -/
Statement {P Q R S T U V W X Y Z : Prop} : (T ∨ U → V ∧ Y) → (Q → P → T) → (Y → Q → W) →
((V ∧ W) ∨ (X ∧ Y) → Z) → (R → S → U) ∧ (V → R → X) →  P ∧ (Q ∨ R) ∧ S →
Z := by
  intro f g h j k pqrs
  apply j
  rcases pqrs with ⟨p, q | r , s⟩
  apply Or.inl
  have t := g q p
  have ⟨v, y⟩ := f (Or.inl t)
  have w := h y q
  exact ⟨v, w⟩
  apply Or.inr
  have u := k.1 r s
  have ⟨v, y⟩ := f (Or.inr u)
  have x := k.2 v r
  exact ⟨x, y⟩

Conclusion "The next topic in our study of propositional logic is *negation*, which is used to assert that a proposition is false rather than true. But to help us understand it, move on to Empty World to learn about the empty type."
