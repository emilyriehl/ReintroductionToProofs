import Game.Levels.CoproductWorld.L07_Distributivity

World "CoproductWorld"
Level 8

Title "Boss level"


Introduction "For the Boss Level, your task is to:

* break apart a function from a coproduct type into a product type into four separate component functions and

* then reassemble four component functions to a single function from a coproduct type into a product type.

Good luck!
"

/-- A function of type `A ⊕ B → C × D` can be broken into component functions of type `(A → C) × (B → C) × (A → D) × (B → D)` and conversely the component functions assemble into a function from the coproduct type to the product type. -/
Statement {A B C D : Type} : ((A ⊕ B → C × D) → (A → C) × (B → C) × (A → D) × (B → D)) × ((A → C) × (B → C) × (A → D) × (B → D) → (A ⊕ B → C × D)) := by
  constructor
  intro f
  exact ⟨fun a ↦ (f (Sum.inl a)).1, fun b ↦ (f (Sum.inr b)).1, fun a ↦ (f (Sum.inl a)).2, fun b ↦ (f (Sum.inr b)).2⟩
  intro p
  rcases p with ⟨f, g, h, k⟩
  intro x
  rcases x with a | b
  exact ⟨f a, h a⟩
  exact ⟨g b, k b⟩

Conclusion "Next move on to Disjunction World to study the logical operation that is analogous to coproduct types."
