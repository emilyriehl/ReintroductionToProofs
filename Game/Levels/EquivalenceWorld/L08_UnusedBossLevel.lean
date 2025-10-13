import Game.Metadata

World "EquivalenceWorld"
Level 8

Title "Boss Level"

Introduction "For the Boss Level of Equivalence World you are asked to establish an equivalence between a priori unrelated types.

One of these is the coproduct of the unit type `Unit` with itself. Recall the unit type has a canonical element `() : Unit`.

The other is the type of booleans `Bool` which has two canonical elements `false true : Bool`.

Be careful how you define the functions `Unit ⊕ Unit → Bool` and `Bool → Unit ⊕ Unit`. If you make a wrong choice, you will not be able to solve the rest of this level.
"

/-- Both the empty type and an arbitrary inhabited proposition `P` satisfy equivalences of the form `P ≃ (P → Empty) → Empty` -/
Statement  : (Empty ≃ ((Empty → Empty) → Empty)) × (∀ P : Type, P → (∀ x y : P, x = y) → P ≃ ((P → Empty) → Empty)) := by
  constructor
  constructor
  exact fun x q ↦ q x
  exact fun h ↦ h id
  intro a
  cases a
  intro b
  ext i
  apply Empty.elim
  exact b i
  intro P p h
  constructor
  exact fun x q ↦ q x
  exact fun _ ↦ p
  intro x
  apply h
  intro h
  ext np
  apply Empty.elim
  exact h np

Conclusion "The equivalence between the types `Unit ⊕ Unit` and `Bool` has to do with the fact that both are examples of *inductive types*. In the next world, we will finally properly introduce another inductive type, namely the type `ℕ` of natural numbers."
