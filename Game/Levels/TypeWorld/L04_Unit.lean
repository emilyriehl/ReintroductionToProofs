import Game.Metadata

World "TypeWorld"
Level 4

Title "Unit"

Introduction "The previous levels involved type variables or proposition variables.

But there are other specific types or propositions that exist in the empty context. In other words, these types are globally defined.

One example is the unit type `Unit` which has a canonical element `⟨⟩ : Unit`.

Here our goal has type `Unit`. We cannot solve this goal with the tactic `assumption` because we have not made an assumptions!

But we can solve this level with the tactic `exact` by typing the name of the canonical element.

Use '\\\\<' and '\\\\>' to type the angle brackets '`⟨⟩`'.
"

/-- The unit type `Unit` has a canonical element `⟨⟩`. -/
Statement : Unit := by
  exact ⟨⟩

Conclusion "The unit type can be found in the library of definitions in the folder `Type`."

/-- The unit type `Unit` has a single canonical element `⟨⟩`, which may be typed using '\\<' and '\\>'. -/
DefinitionDoc Unit as "Unit" in "Type"

NewDefinition Unit
