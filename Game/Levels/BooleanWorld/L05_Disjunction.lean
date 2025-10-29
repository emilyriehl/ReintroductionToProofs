import Game.Metadata

World "BooleanWorld"
Level 5

Title "Disjunction"

Introduction "We have seen that the logical operation of negation can be encoded as a function `not : Bool → Bool`.

We have also defined a function `and : Bool → Bool → Bool` that encodes the logical operation of conjunction.

In this level, we will define a function `Bool → Bool → Bool` that encodes the logical operation of disjunction.

Again, this level comes with two pre-defined goals: the first is to define the disjunction function `Bool → Bool → Bool` and the second is to check that your definition is correct by calulating the values of the function you defined on explicit pairs of booleans.
"

/-- There is a function `or : Bool → Bool → Bool` that captures the logical operation of conjunction. -/
Statement (preamble := refine let f := ?f; ⟨f, ?eq⟩) :
    ∃ f: Bool → Bool → Bool,
    f true true = true ∧
    f false true = true ∧
    f true false = true ∧
    f false false = false := by
  -- first, define the function
  intro x y
  Hint (hidden := true) "Recall `cases h : {x}` and `cases k :
  cases {y}` may make it clearer which cases are which."
  cases x
  cases y
  exact false
  exact true
  exact true
  -- now prove that you defined the right thing
  exact ⟨rfl, rfl, rfl, rfl⟩

Conclusion "Was it necessary to consider all four cases of two boolean elements or can you define this function by considering fewer cases? The function `or` is now in your library."

/-- The function `or : Bool → Bool → Bool` captures the logical operation of conjunction. -/
DefinitionDoc Bool.or as "or" in "Bool"

NewDefinition Bool.or
