import Game.Levels.AdvancedFunctionWorld.L04_ComposingSurjectivity

World "AdvancedFunctionWorld"
Level 5

Title "Injectivity"

Introduction "Recall that every function is *well-defined*. For any function `f : A → B`, we have proven that `∀ x y : A, x = y → f x = f y`.

A function `f : A → B` is *injective* if for every `x y : A`, `f x = f y` implies `x = y`.

This condition says that any output element of `f` has a unique corresponding input. Note it is not necessary that any element of `B` is an output of an injective function. Instead, injectivity asserts that if two elements of `A` have the same output, then those elements must be equal.

Unlike well-definedness, the statement `∀ x y : A, f x = f y → x = y` is true for some functions `f` but false for others.

In this level, we will show that the function `not : Bool → Bool` is injective.

Recall that when `b : Bool`, Lean writes `! b` for `not b`.
"

/-- The function `not : Bool → Bool` is surjective. -/
TheoremDoc ReintroductionToProofs.Bool.not_injective as "not_injective" in "Bool"

namespace ReintroductionToProofs

/-- The function `not : Bool → Bool` is injective. -/
Statement Bool.not_injective : ∀ x y : Bool, not x = not y → x = y := by
  Hint (hidden := true) "To prove a universally quantified statement, start with `intro` to introduce arbitrary elements of type `Bool`. "
  intro x y
  Hint (hidden := true) "You should also introduce the hypothesis `! {x} = ! {y}`. Here Lean writes `! {x}` for `not {x}`, where `not : Bool → Bool` is the boolean negation function."
  intro p
  Hint (hidden := true) "This result can be proven in cases. Try `cases {x}` followed by `cases {y}`. You can pass to both cases at once by typing `cases {x} <;> cases {y}`"
  cases x <;> cases y
  rfl
  Hint (hidden := true) "{p} is a contradictory hypothesis, and so `cases {p}` will close the goal"
  cases p
  Hint (hidden := true) "This case is similar to the previous one. Can you figure out how to solve it?"
  apply False.elim
  have eq : false = true := p
  have neq : ¬ (false = true) := Bool.noConfusion
  exact neq eq
  rfl

Conclusion "In the next levels, we will study general properties of injective functions."

/-- A function `f : A → B` is *injective* if `∀ x y : A, x = y → f x = f y`. -/
DefinitionDoc Function.injective as "injective" in "Function"

NewDefinition Function.injective

end ReintroductionToProofs
