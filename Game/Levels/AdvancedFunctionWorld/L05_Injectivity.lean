import Game.Metadata

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

/-- The function `neg : Bool → Bool` is injective. -/
Statement : ∀ x y : Bool, not x = not y → x = y := by
  Hint (hidden := true) "To prove a universally quantified statement, start with `intro` to introduce arbitrary elements of type `Bool`. "
  intro x y
  Hint (hidden := true) "You should also introduce the hypothesis `! {x} = ! {y}`. Here Lean writes `! {x}` for `not {x}`, where `not : Bool → Bool` is the boolean negation function."
  intro p
  Hint (hidden := true) "This result can be proven in cases. Try `cases {x}` followed by `cases {y}`. You can pass to both cases at once by typing `cases {x} <;> cases {y}`"
  cases x <;> cases y
  rfl
  Hint "This case is considerably more difficult than the previous one because your goal is to prove that `false = true`. But you may recall from Boolean world that we can prove `¬ (false = true) := Bool.noConfusion` and `¬ (true = false) := Bool.noConfusion`. This suggests that the only way we will be able to prove `false = true` is by finding a contradition among our hypothesis. To set up this proof strategy, type `apply False.elim`.   "
  apply False.elim
  Hint "Now where does the contradiction come from? We have exactly one hypothesis, namely `{p} : not false = not true`. Recall that `not false = true` and `not true = false`, with both of these equalities by definition. Thus `{p}` is also a proof of `true = false`. You can add this to your context by `have eq : true = false := p`."
  have eq : true = false := p
  Hint "To get the contradiction, you should now add a proof of the negation of `{eq}`. You can do this with `neq : ¬ (true = false) := Bool.noConfusion`."
  have neq : ¬ (true = false) := Bool.noConfusion
  Hint "Revisit Negation World to remind yourself how to get an element of `False` from `{eq}` and `{neq}`."
  exact neq eq
  Hint "This case is similar to the previous one. Can you figure out how to solve it?"
  apply False.elim
  have eq : false = true := p
  have neq : ¬ (false = true) := Bool.noConfusion
  exact neq eq
  rfl

Conclusion "In the next levels, we will study general properties of injective functions."
