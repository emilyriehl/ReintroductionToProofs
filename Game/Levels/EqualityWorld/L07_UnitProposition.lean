import Game.Levels.EqualityWorld.L06_ApplyingFunctions

World "EqualityWorld"
Level 7

Title "Unit Proposition"

Introduction "Recall from Type World that Lean has a built in unit type `Unit` that contains just one element denoted `⟨⟩ : Unit`.

The unit type is a proposition, meaning that it has at most one element.

More precisely, if `x y : Unit` are elements of the unit type, then we can prove `x = y` by a definitional equality, aka, by reflexivity.
"

/-- The unit type is a proposition: for `x y : Unit`, `x = y`. -/
Statement {x y : Unit} : x = y  := by
  rfl

Conclusion "In the next level, we will prove that the empty type is also a proposition."
