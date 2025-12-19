import Game.Levels.EquivalenceWorld.L02_CoproductSymmetry

World "EquivalenceWorld"
Level 3

Title "Swapping Inputs"

Introduction "Function types are *not* symmetric: when `A` is non-empty, the types `Empty → A` and `A → Empty` are not equivalent.

However in the case of functions with multiple variables, the input variables can be exchanged.

In this level, you will show that the types `A → B → C` and `B → A → C` are equivalent.
"

/-- For any types `A`, `B`, and `C`, the function types `A → B → C` and `B → A → C` are equivalent. -/
Statement {A B C : Type} : (A → B → C) ≃ (B → A → C) := by
  Hint (hidden := true) "Type `constructor` to split the goal up into the four proof obligations."
  constructor
  intro f b a
  exact f a b
  intro f a b
  exact f b a
  intro f
  rfl
  intro f
  rfl

Conclusion "In the next level, we will establish another equivalence involving function types."
