import Game.Metadata

World "TypeWorld"
Level 6

Title "Type of Propositions"

Introduction "Lean also has a built in type of propositions denoted `Prop`, which is now one of the types in the library of definitions.

In the empty context, `Prop` contains propositions like `True`, which is the true proposition, with canonical proof `⟨⟩ : True`. This can now be found in the library of definitions.

In this level, we consider the context given by two propositions `P` and `Q` together with a proof `p : P` of `P`.

Thus, `P` is a proposition that we have assumed to be true, while `Q` is a proposition that may or may not be true.

Under these assumptions, either `P` or `Q` define elements of `Prop`. Use the `Retry` button to solve this level in multiple ways.

Note that elements of `Prop` are considered to be at a smaller universe level than elements of `Type` and indeed we have `Prop : Type`.
"

/-- The type of propositions `Prop` contains propositions like `True`. -/
Statement (P Q : Prop) (p : P) : Prop := by
  exact Q

Conclusion "Move on to Function World to meet your first type forming operation."

/-- The type `Prop` is the type of propositions. -/
DefinitionDoc «Prop» as "Prop" in "Type"

/-- The proposition `True` has a canonical element `⟨⟩ : True`, which may be typed using '\<' and '\>'. -/
DefinitionDoc True as "True" in "Prop"

NewDefinition «Prop» True
