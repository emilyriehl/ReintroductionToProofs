import Game.Levels.EquivalenceWorld.L06_MoreComponentFunctions

World "EquivalenceWorld"
Level 7

Title "Boss Level"

Introduction "For the Boss Level of Equivalence World you are asked to establish an equivalence between a priori unrelated types.

One of these is the coproduct of the unit type `Unit` with itself. Recall the unit type has a canonical element `() : Unit`.

The other is the type of booleans `Bool` which has two canonical elements `false true : Bool`.

Be careful how you define the functions `Unit ⊕ Unit → Bool` and `Bool → Unit ⊕ Unit`. If you make a wrong choice, you will not be able to solve the rest of this level.
"

/-- The types `Unit ⊕ Unit` and `Bool` are equivalent. -/
Statement : Unit ⊕ Unit ≃ Bool := by
  Hint (hidden := true) "Type `constructor` to split the goal up into the four proof obligations."
  constructor
  intro x
  cases x
  exact false
  exact true
  intro b
  cases b
  left
  exact ()
  right
  exact ()
  intro x
  cases x
  rfl
  rfl
  intro b
  cases b
  rfl
  rfl

Conclusion "The equivalence between the types `Unit ⊕ Unit` and `Bool` has to do with the fact that both are examples of *inductive types*. In the next world, we will finally properly introduce another inductive type, namely the type `ℕ` of natural numbers."
