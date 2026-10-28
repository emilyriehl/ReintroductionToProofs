import Game.Levels.TypeWorld.L03_ExactElements

World "TypeWorld"
Level 4

Title "Unit Type"

Introduction "The previous levels involved type variables or proposition variables.

But there are other specific types or propositions that exist in the empty context. In other words, these types are globally defined.

One example is the unit type `Unit` which has a canonical element, written `() : Unit`. The notation `⟨⟩ : Unit` denotes the same element and also works.

Here our goal has type `Unit`. We cannot solve this goal with the tactic `assumption` because we have not made any assumptions!

But we can solve this level with the tactic `exact` by typing the name of the canonical element: `exact ()`. Alternatively, `exact ⟨⟩` also works; type `\\<>` to produce the angle brackets `⟨⟩`.
"

/-- The unit type `Unit` has a canonical element `()`. -/
Statement : Unit := by
  exact ()

Conclusion "The unit type can be found in the library of definitions in the folder `Type`."

/-- The unit type `Unit` has a single canonical element, written `()`. The notation `⟨⟩`, typed `\<>`, denotes the same element. -/
DefinitionDoc Unit as "Unit" in "Type"

NewDefinition Unit
