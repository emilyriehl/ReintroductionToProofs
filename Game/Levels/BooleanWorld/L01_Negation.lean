import Game.Levels.NegationWorld
import Game.Levels.EqualityWorld

World "BooleanWorld"
Level 1

Title "Negation"

Introduction "Recall the type `Bool` of booleans has two elements denoted `false : Bool` and `true : Bool`.

In this level, our aim is to define a function `Bool → Bool` that encodes the logical operation of negation, i.e., sends `false` to `true` and `true` to `false`.

You can start to define this function in the usual way, by typing `intro b`. Lean will then update the goal to ask you to supply an element of type `Bool`. But which element should you pick?

The correct answer depends on whether `b` is `false` or `true`. The type of Booleans is an example of an *inductive type*, which is
similar to a coproduct type, and thus you can type `cases b` to split into the two possible cases.

Note the first case provided by Lean is the case of `false` while the second case is the case of `true`.

Unfortunately, it is difficult to see which case is which in typewriter mode. Try toggling to editor mode and perhaps add a few blank lines at the bottom to see if you can see what case you are in.

Alternatively, if you prefer to stay in typewriter mode, you can avoid the `cases` tactic and define the entire function at once in one line.

After `intro b`, try typing `match b with | false => exact ? | true => exact ?` where each `?` should be replaced by the appropriate element of `Bool`.

Note this level comes with two pre-defined goals: the first is to define the negation function `Bool → Bool` and the second is to check that your definition is correct by calculating the values of the function you defined on the booleans `true` and `false`.
"

/-- The negation function `not : Bool → Bool` sends the boolean `false` to `true` and `true` to `false`. -/
Statement (preamble := refine let f := ?f; ⟨f, ?eq⟩) :
  ∃ f : Bool → Bool, f true = false ∧ f false = true := by
  Hint "Your first objective is to define the negation function."
  intro b
  match b with
  | false => exact true
  | true => exact false
  Hint "Now you are asked to check that the function `f : Bool → Bool` that you just defined actually *is* the negation function. Specifically, you are asked to check that `f true = false ∧ f false = true`."
  constructor
  rfl
  rfl

Conclusion "Lean has a built in name `not` for this function. It is now in your library."

/-- The type `Bool` is the type of booleans. It contains two elements, denoted `false` and `true`. -/
DefinitionDoc Bool as "Bool" in "Type"

/-- The negation function `Bool.not : Bool → Bool` sends the boolean `false` to `true` and `true` to `false`. -/
DefinitionDoc Bool.not as "not" in "Bool"

/-- There is an element of type `Bool` called `Bool.false`. -/
DefinitionDoc Bool.false as "false" in "Bool"

/-- There is an element of type `Bool` called `Bool.true`. -/
DefinitionDoc Bool.true as "true" in "Bool"

NewDefinition Bool Bool.not Bool.false Bool.true

/-- The tactic `match` can be used to define a function by cases. For example, in the context of an
element `b : Bool`, `match b with | false => ? | true => ?` splits the construction into the case where `b` is false followed by the case where `b` is true. Here both `?` should be replaced by the appropriate sequence of tactics for each case, using semicolons if more than one tactic is needed. In the context of `x y : Bool`,
`match x y with | false, false => ? | false, true => ? | true, false => ? | true, true => ?` splits into the four possible cases. -/
TacticDoc «match»

NewTactic «match»
