import Game.Metadata

World "BooleanWorld"
Level 8

Title "Not Equal"

Introduction "We will now finally prove an example of an *non equality* of terms, demonstrating that

`¬ (false = true)`

for the two booleans.

The proof is quite delicate, so let us explain how it works.

We are asked to prove a negation so suppose we have `p : false = true`. We would like to derive a contradiction, that is an element of `False`.

The key ingredient is to use a function `P : Bool → Prop` defined to send the boolean `false` to the proposition `False` and the boolean `true` to the proposition `True`.

Using this we can define a function `True → False`, i.e., a function `P true → P false` by introduction a hypothesis `x : P true` then rewriting along the equality `p` to change the goal from `P false` to `P true`, then returning `x : P true`.

Applying this function to the element `⟨⟩ : True` returns an element of `False`, a contradiction.

If you like, use the hints to step through this proof.

Alternatively, type `exact Bool.noConfusion` to solve this level with Lean's built in proof that `¬ (false = true)`.
"

/-- There is a function that realizes a boolean as a type, defined to send `false` to `Empty` and `true` to `Unit`. -/
Statement : ¬ (false = true) := by
  Hint "Start with `intro p`."
  intro p
  Hint "Define a function `Bool → Prop` by `  let P : Bool → Prop := by intro b ; cases b ; exact False ; exact True
`."
  let P : Bool → Prop := by intro b ; cases b ; exact False ; exact True
  Hint "Define a function `P true → P false` by `have tr : P true → P false := by intro x ; rw [p] ; exact x
 `."
  have tr : P true → P false := by intro x ; rw [p] ; exact x
  Hint "Type `exact tr ⟨⟩` to return an element of `False` defined using the function `tr` and the element `⟨⟩ : True`."
  exact tr ⟨⟩

Conclusion "We have added the theorem `Bool.noConfusion` to the library."

/-- `Bool.noConfusion` proves `¬ (false = true)` or `¬ (true = false)` for booleans. -/
TheoremDoc Bool.noConfusion as "noConfusion" in "Bool"

NewTheorem Bool.noConfusion

/-- The `let` tactic is like `have`, but for creating elements of types rather than proofs of propositions. The `let` tactic will add new elements to your context provided you can define them. For example, given elements `a : A` and `b : B`, you can type `let p : A × B := ⟨a, b⟩` to add their pair to the context or type `let f : A → B := fun _ ↦ b` to add the constant function at `b` to the context.
-/
TacticDoc «let»

NewTactic «let»
