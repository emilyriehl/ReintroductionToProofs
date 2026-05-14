import Game.Levels.FunctionWorld.L02_UsingFunctions

World "FunctionWorld"
Level 3

Title "Using Functions Backwards"

Introduction "
The context and goal for this level is identical to the previous level. We are given types `A` and `B`, a function `f : A → B` and an element `a : A`. The goal is to define an element of type `B`.

Lean has another tactic called `apply`, which can be used in the presence of a function to transform the goal. If `f : A → B` is part of the context and the goal is to define an element of type `B` then `apply f` will update the goal to ask instead for an element of type `A`.

This proof strategy asks Lean to solve the initial goal by applying the function `f` to the element you provide next.

Try using the `apply` tactic to solve this level.
"

/-- Given a function `f : A → B` and an element `a : A`, there is an element `f a : B` obtained by evaluating the function `f` at `a`. -/
Statement {A B : Type} (a : A) (f : A → B) : B := by
  Hint (hidden := true) "Start with `apply f` to apply the function `f` to transform your goal."
  apply f
  exact a

Conclusion "While the tactics used in this level and the previous one are different, both solutions ultimately tell Lean to use the element `f a : B` built by applying the function `f` to the element `a`."


/-- The `apply` tactic can be used when the goal matches the conclusion of an implication or the output type of a function. For example if the goal is `Q` and there is a hypothesis `h : P → Q`, then `apply h` updates the goal to `P`. If the goal is `T` and there is a hypothesis `e : R → S → T`, then `apply e` produces two subgoals, one each for `R` and `S`. -/
TacticDoc apply

NewTactic apply
