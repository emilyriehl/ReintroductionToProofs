import Game.Metadata

World "TypeWorld"
Level 5

Title "Type of Types"

Introduction "Lean has a built in type of types denoted `Type`.

More precisely &mdash; to avoid a contradiction known as *Russell's paradox* &mdash; Lean has a hierarchy of built in types of types denoted `Type u` parametrized by *universe levels* `u`.

Here `Type` is a synonym for `Type 0`, which is the type of types at the smallest universe level.

The goal in this level is to define an element of the type `Type` of types.

Note `exact Type` will not work, because the type `Type` belongs to the type of types in a larger universe. Try this and see what happens.

However, we have introduced a type that is small enough to define an element of `Type`. Use this to solve this level.
"

/-- The elements of the type `Type` of types are types at the lowest universe level. -/
Statement : Type := by
  Hint (hidden := true) "In the previous level, we introduced the type `Unit`. This is an element of the type `Type`, so you can solve this level by typing `exact Unit`."
  exact Unit

Conclusion "The type `Type` can also be found in the library of definitions."

/-- The type `Type` is the type of types at the smallest universe level. -/
DefinitionDoc Type.Type as "Type" in "Type"

NewDefinition Type.Type
