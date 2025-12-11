import Game.Metadata

World "BooleanWorld"
Level 1

Title "Negation"

Introduction "Recall the type `Bool` of booleans has two elements denoted `false : Bool` and `true : Bool`.

In this level, our aim is to define a function `Bool → Bool` that encodes the logical operation of negation, i.e., sends `false` to `true` and `true` to `false`.

You can do this by introducing a generic boolean by typing `intro b`. Then use the tactic `cases b` to define the output of the function.

Note the first case provided by Lean is the case of `false` while the second case is the case of `true`.

Try toggling to editor mode and perhaps add a few blank lines at the bottom to see if you can see what case you are in.

Alternatively, if you prefer to stay in typewriter mode, type `cases h : b` to add hypotheses `h : b = false` in the first case and `h : b = true` in the second case, which makes it clearer which case is listed first.

Note this level comes with two pre-defined goals: the first is to define the negation function `Bool → Bool` and the second is to check that your definition is correct by calculating the values of the function you defined on the booleans `true` and `false`.
"

/-- The negation function `not : Bool → Bool` sends the boolean `false` to `true` and `true` to `false`. -/
Statement (preamble := refine let f := ?f; ⟨f, ?eq⟩) :
  ∃ f : Bool → Bool, f true = false ∧ f false = true := by
  Hint "Your first objective is to define the negation function."
  intro b
  cases b
  exact true
  exact false
  Hint "Now you are asked to check that the function `f : Bool → Bool` that you just defined actually *is* the negation function. Specifically, you are asked to check that `f true = false ∧ f false = true`."
  constructor
  rfl
  rfl

Conclusion "Lean has a built in name `not` for this function. It is now in your library."

/-- The negation function `Bool.not : Bool → Bool` sends the boolean `false` to `true` and `true` to `false`. -/
DefinitionDoc Bool.not as "not" in "Bool"

/-- There is an element of type `Bool` called `Bool.false`. -/
DefinitionDoc Bool.false as "false" in "Bool"

/-- There is an element of type `Bool` called `Bool.true`. -/
DefinitionDoc Bool.true as "true" in "Bool"


NewDefinition Bool.not Bool.false Bool.true
