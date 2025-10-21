import Game.Metadata

World "AdvancedFunctionWorld"
Level 2

Title "Surjectivity"

Introduction "Recall that every function is *total*. For any function `f : A → B`, we have proven that
`∀ x : A, ∃ y : B, f x = y`.

A function `f : A → B` is *surjective* if for every `y : B` there exists some `x : A` so that `f x = y`.

Unlike totality, the statement `∀ y : B, ∃ x : A, f x = y` is true for some functions but false for others.

In this level, we will show that the function `not : Bool → Bool` is surjective.
"

/-- The function `neg : Bool → Bool` is surjective. -/
Statement : ∀ b : Bool, ∃ x : Bool, not x = b := by
  Hint (hidden := true) "To prove a universally quantified statement, start with `intro` to introduce an arbitrary element of type `Bool`. "
  intro b
  Hint "Here Lean writes `! x` for `not x`, where `not : Bool → Bool` is the boolean negation function."
  Hint (hidden := true) "Now you must give an explicit element `x : Bool`, so that `not x = {b}`. To do this, you need to know which boolean `{b}` is! Use `cases {b}` for this."
  cases b
  use true
  rfl
  use false
  rfl

Conclusion "In the next level, we will study general properties of surjective functions."
