import Game.Levels.BooleanWorld.L07_DeMorgan

World "BooleanWorld"
Level 8

Title "Not Equal"

Introduction "We will now finally prove an example that two elements of a type are distinct, demonstrating that
the two booleans are not equal:

`¬ (false = true)`.

The proof is quite delicate, so let us explain how it works.

We are asked to prove a negation so suppose we have `p : false = true`. We would like to derive a contradiction, that is an element of `False`.

The key ingredient is to use a function `P : Bool → Prop` defined to send the boolean `false` to the proposition `False` and the boolean `true` to the proposition `True`.

Using this we can define a function `True → False`, i.e., a function `P true → P false` by introduction a hypothesis `x : P true` then rewriting along the equality `p` to change the goal from `P false` to `P true`, then returning `x : P true`.

Applying this function to the element `⟨⟩ : True` returns an element of `False`, a contradiction.

Use the hints to step through this proof.

Alternatively, type `exact Bool.noConfusion` to solve this level with Lean's built in proof that `¬ (false = true)`.
"

/-- The elements `false : Bool` and `true : Bool` are not equal. -/
Statement : ¬ (false = true) := by
  Hint (hidden := true) "Start with `intro p`."
  intro p
  Hint (hidden := true) "Define a function `Bool → Prop` by `let P : Bool → Prop := by intro b ; match b with | false => exact False | true => exact True`."
  let P : Bool → Prop := by intro b ; match b with | false => exact False | true => exact True
  Hint (hidden := true) "Define a function `P true → P false` by `let tr : P true → P false := by intro x ; rw [p] ; exact x
 `. In editor mode, start with `let tr : P true → P false := by` then continue with each of the three tactics on three subsequent lines. This way you can see how the goal evolves with each step in the construction."
  let tr : P true → P false := by intro x ; rw [p] ; exact x
  Hint (hidden := true) "By the definition of the family of propositions `P : Bool → Prop`, the function `tr : P true → P false` is a function `tr : True → False`. In particular, if we apply `tr` to an element of `True`, we get an element of `False`, which is what we want."
  Hint (hidden := true) "Type `exact tr ⟨⟩` to return an element of `False` defined using the function `tr` and the element `⟨⟩ : True`."
  exact tr ⟨⟩

Conclusion "We have added the theorem `Bool.noConfusion` to the library."

/-- `Bool.noConfusion` proves `¬ (false = true)` or `¬ (true = false)` for booleans. -/
TheoremDoc Bool.noConfusion as "noConfusion" in "Bool"

NewTheorem Bool.noConfusion

/-- The proposition `False` has no elements. -/
DefinitionDoc False as "False" in "Prop"

NewDefinition False
