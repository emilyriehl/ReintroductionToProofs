import Game.Levels.BooleanWorld.L02_DoubleNegation

World "BooleanWorld"
Level 3

Title "Conjunction"

Introduction "We have seen that the logical operation of negation can be encoded as a function `not : Bool → Bool`.

We can similarly define a function `Bool → Bool → Bool` that encodes the logical operation of conjunction.

Again, this level comes with two pre-defined goals: the first is to define the conjunction function `Bool → Bool → Bool` and the second is to check that your definition is correct by calculating the values of the function you defined on explicit pairs of booleans.
"

/-- There is a function `and : Bool → Bool → Bool` that captures the logical operation of conjunction. -/
Statement (preamble := refine let f := ?f; ⟨f, ?eq⟩) :
    ∃ f: Bool → Bool → Bool,
    f true true = true ∧
    f false true = false ∧
    f true false = false ∧
    f false false = false := by
  -- first, define the function
  intro x y
  Hint (hidden := true) "If you are using typewriter mode, try `cases h : {x}` to add hypotheses `h : {x} = false` and `h : {x} = true` that clarify which case you are in. Similarly, try `cases k : {y}` whenever you are ready to consider cases on the second boolean variable. Alternatively, you can define the function on one line with `match {x} , {y} with | ? , ? => exact ? | ? , ? => exact ? | ? , ? => exact ? | ? , ? => exact ?` replacing each `?` with appropriate boolean elements."
  cases x
  exact false
  cases y
  exact false
  exact true
  Hint "Now you are asked to check that the function `f : Bool → Bool → Bool` that you just defined actually *is* the conjunction function. Specifically, you are asked to check that `f true true = true ∧ f false true = false ∧ f true false = false ∧ f false false = false`."
  -- now prove that you defined the right thing
  exact ⟨rfl, rfl, rfl, rfl⟩

Conclusion "Was it necessary to consider all four cases of two boolean elements or can you define this function by considering fewer cases? If using the tactic `match`, try replacement one of the input booleans with `_` to indicate that the value does not matter. The function `and` is now in your library."

/-- The function `and : Bool → Bool → Bool` captures the logical operation of conjunction. -/
DefinitionDoc Bool.and as "and" in "Bool"

NewDefinition Bool.and
