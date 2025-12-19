import Game.Levels.TypeWorld.L04_UnitType

World "TypeWorld"
Level 5

Title "Type of Propositions"

Introduction "Lean has a built in type of propositions denoted `Prop`.

In the empty context, `Prop` contains propositions like `True`, which is the true proposition, with canonical proof `⟨⟩ : True`.

In this level, we consider the context given by two propositions `P` and `Q` together with a proof `p : P` of `P`.

Thus, `P` is a proposition that we have assumed to be true, while `Q` is a proposition that may or may not be true.

Under these assumptions, either `P` or `Q` define elements of `Prop`. Use the `Retry` button to solve this level in multiple ways.
"

/-- The type of propositions `Prop` contains propositions like `True`. -/
Statement (P Q : Prop) (p : P) : Prop := by
  exact Q

Conclusion "The proposition `True` and the type `Prop` are now in your library of definitions."

/-- The type `Prop` is the type of propositions. -/
DefinitionDoc «Prop» as "Prop" in "Type"

/-- The proposition `True` has a canonical element `⟨⟩ : True`, which may be typed using '\<' and '\>'. -/
DefinitionDoc True as "True" in "Prop"

NewDefinition «Prop» True
