import Game.Metadata

World "TypeWorld"
Level 6

Title "Type of Propositions"

Introduction "Lean also has a built in type of propositions denoted `Prop`.

In the empty context, it contains propositions like `True`, which is the true proposition, with canonical proof `⟨⟩ : True`. This can now be found in the library of definitions.

In this level we consider the context given by two propositions `P` and `Q` together with a proof `p : P` of `P`.

Under these assumptions, either `P` or `Q` define elements of `Prop`.

Note that elements of `Prop` are considered to be at a smaller universe level than elements of `Type` and indeed we have `Prop : Type`.
"

/-- The type of propositions `Prop` contains propositions like `True`. -/
Statement (P Q : Prop) (p : P) : Prop := by
  exact Q

Conclusion "The type `Prop` can also be found in the library of definitions."

/-- The type `Prop` is the type of propositions. -/
DefinitionDoc Type.Prop as "Prop" in "Type"

/-- The type `Prop` is the type of propositions. -/
DefinitionDoc Type.Prop as "Prop" in "Type"


/-- The proposition `True` has a canonical element `⟨⟩ : True`, which may be typed using '\\<' and '\\>'. -/
DefinitionDoc Prop.True as "True" in "Prop"

NewDefinition Type.Prop Prop.True
