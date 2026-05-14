import Game.Levels.NaturalNumbersWorld.L03_Induction

World "NaturalNumbersWorld"
Level 4

Title "Recursion"

Introduction "
Recall the principle of mathematical induction, which applies to an arbitrary family of propositions
`P : ℕ → Prop` and asserts that

`P 0 → (∀ k : ℕ, P k → P (succ k)) → (∀ n : ℕ, P n)`

That is, to prove `∀ n : ℕ, P n` it suffices to verify:
* the base case `P 0` and
* the inductive step `∀ k : ℕ, P k → P (succ k)`.

The full elimination rule of the type of natural numbers is known in traditional foundations as the
*principle of mathematical recursion*. It applies to an arbitrary family of types `P : ℕ → Type` and defines an element of type

`P 0 → (∀ k : ℕ, P k → P (succ k)) → (∀ n : ℕ, P n)`

The meaning is now slightly different as the arrows should be read as functions rather than implication.

This says that:

* given an element `p_0 : P 0`
* and a function that for all `k : ℕ` defines a function `p_succ k : P k → P (succ k)`

then there is a function that for all `n : ℕ` chooses an element of type `P n`.

This is easiest to understand in the case of a constant type family `fun _ ↦ A : ℕ → Type` defined using a type `A`.

Now recursion defines a function of type `A → (ℕ → A → A) → (ℕ → A)`. This says that:

* given an element `f_0 : A`
* and a function `f_succ : ℕ → A → A`

then we may recursively define a function `ℕ → A`.

We define the function `f : ℕ → A` by specifying that
* `f 0 = f_0` and
* `f (succ k) = f_succ k (f k)`.
Formally speaking, these equalities comprise the *computation rules* for the natural numbers type.

In this level, your objective is to define a particular function `pred : ℕ → ℕ` by recursion so that
* `pred 0 = 0` and
* `pred (succ k) = k`.

In Lean, a function of type `ℕ → A` can be defined recursively using the syntax `fun n ↦ match n with | zero => ? | succ k => ?` where each `?` is replaced by an appropriate element of `A`.

For example, using the data of `f_0 : A` and `f_succ : ℕ → A → A`, the corresponding recursively defined function is

`fun n ↦ match n with | zero => f_0 | succ k => f_succ k (f k)`.
"

open Nat

/-- There is a function `pred : ℕ → ℕ` that sends `0` to `0` and `succ n` to `n`. -/
Statement : ∃ f : ℕ → ℕ, (f 0 = 0) ∧ (∀ n : ℕ, f (succ n) = n) := by
  Hint (hidden := true) "Use the tactic `constructor` to split the level into two goals, the first of which is to define the function `pred : ℕ → ℕ`."
  constructor
  Hint (hidden := true) "Now your goal is to define a function of type `ℕ → ℕ`. Lean will accept any function of this type, but be careful. If you define a *different* function than the predecessor function, the properties you will be asked to prove later will not hold."
  Hint (hidden := true) "Use `intro n` to start your definition."
  intro n
  Hint (hidden := true) "To define the function `pred : Nat → Nat` by recursion type `match n with | zero => exact ? | succ k => exact ?` replacing the first `?` with the value of `pred zero` and the second `?` with the value of `pred (succ k)`."
  match n with | zero => exact zero | succ k => exact k
  Hint (hidden := true) "To check that your function was defined correctly, we ask you to calculate its values on `0` and on successors. Hopefully you will be able to solve the goals with `rfl`."
  Hint (hidden := true) "While the goal is complicated to read, the outermost logical connective is a conjunction."
  constructor
  Hint "Here you are asked to show that the value of the function you have just defined at `0` equals `0`."
  rfl
  Hint (hidden := true) "Start with `intro n` to prove the universally quantified statement."
  intro n
  Hint "Here you are asked to show that the value of the function you have just defined at `{n}.succ`, i.e., at `succ {n}`, equals `{n}`."
  rfl

Conclusion "The function `Nat.pred : ℕ → ℕ` that you have just defined is now in your library as well as the theorem `Nat.pred_succ n : Nat.pred (succ n) = n`."

/--
The function `Nat.pred : ℕ → ℕ` is defined by recursion to send `0` to `0` and `succ n` to `n`.
-/
DefinitionDoc Nat.pred as "pred" in "ℕ"

NewDefinition Nat.pred

/--
For all natural numbers `n`, `Nat.pred_succ n` proves that `Nat.pred (succ n) = n`.
-/
TheoremDoc Nat.pred_succ as "pred_succ" in "ℕ"

NewTheorem Nat.pred_succ
