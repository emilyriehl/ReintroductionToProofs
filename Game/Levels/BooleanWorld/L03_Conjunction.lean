import Game.Metadata

World "BooleanWorld"
Level 3

Title "Conjunction"

Introduction "We have seen that the logical operation of negation can be encoded as a function `not : Bool → Bool`.

We can similarly define a function `Bool → Bool → Bool` that encodes the logical operation of conjunction.
"

/-- There is a function `and : Bool → Bool → Bool` that captures the logical operation of conjunction. -/
Statement : Bool → Bool → Bool := by
  intro x y
  cases x
  exact false
  cases y
  exact false
  exact true

Conclusion "Was it necessary to consider all four cases of two boolean elements or can you define this function by considering fewer cases? The function `and` is now in your library."

/-- The function `and : Bool → Bool → Bool` captures the logical operation of conjunction. -/
DefinitionDoc Bool.and as "and" in "Bool"

NewDefinition Bool.and
