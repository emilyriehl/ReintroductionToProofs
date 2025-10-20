import Game.Metadata

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
*principle of mathematical recursion*. It applies to an arbitrary family of types `P : ℕ → Type` and
asserts that

`P 0 → (∀ k : ℕ, P k → P (succ k)) → (∀ n : ℕ, P n)`

The meaning is now slightly different as the arrows should be read as functions rather than implication.
This says that:

* given an element `p_0 : P 0`
* and a function that for all `k : ℕ` defines a function `p_succ k : P k → P (succ k)`

then there is a function that for all `n : ℕ` chooses an element of type `P n`.

This is easiest to understand in the case of a constant type family `fun _ ↦ A : ℕ → Type` defined using a type `A`.

Now recursion asserts that `A → (∀ k : ℕ, A → A) → (ℕ → A)`. This says that:

* given an element `f_0 : A`
* and a function that for all `k : ℕ` defines a function `f_succ k : A → A`

then we may recursively define a function `ℕ → A`. We define the function `f : ℕ → A` by specifying that
* `f 0 = f_0` and
* `f (succ k) = (f_succ k) (f k)`.

In this level, your objective is to define a particular function `pred : ℕ → ℕ` by recursion so that
* `pred 0 = 0` and
* `pred (succ k) = k`.
"

open Nat

/-- There is a function `pred : ℕ → ℕ` that sends `0` to `0` and `succ n` to `n`. -/
Statement : ∃ f : ℕ → ℕ, (f 0 = 0) ∧ (∀ n : ℕ, f (succ n) = n) := by
  Hint "Use the tactic `constructor` to split the level into two goals, the first of which is to define the function `pred : ℕ → ℕ`."
  constructor
  Hint (hidden := true) "Use `intro n` to start your definition."
  intro n
  Hint "To define the function `pred : Nat → Nat` by induction on `{n}`, type `induction {n} with k predk`."
  induction n with k predk
  Hint "We now have two goals. The first goal asks you to define the value of `pred 0`."
  exact 0
  Hint "The second goal asks you to define the value of `pred (succ {k})`. To make this definition, you have access to the natural number `{k} : Nat` as well as the value `{predk} : Nat` of the function `pred {k}` (which is why we suggested `predk` for the variable name)."
  exact k
  Hint "To check that your function was defined correctly, we ask you to calculate its values on `0` and on successors. Hopefully you will be able to solve the goals with `rfl`."
  Hint (hidden := true) "While the goal is complicated to read, the outermost logical connective is a conjunction."
  constructor
  Hint "Here `Nat.recAux 0 (fun k predk => k)` is Lean's name for the function you just defined. Your are asked to show that its value at `0` equals `0`."
  rfl
  Hint (hidden := true) "Start with `intro n` to prove the universally quantified statement."
  intro n
  Hint "Here `Nat.recAux 0 (fun k predk => k)` is Lean's name for the function you just defined. Your are asked to calculate its value at `{n}.succ` i.e., at `succ n`."
  rfl

Conclusion "This defines a function `Nat.pred : ℕ → ℕ` which is now in your library."

/--
The function `Nat.pred : ℕ → ℕ` is defined by recursion to send `0` to `0` and `succ n` to `n`.
-/
DefinitionDoc Nat.pred as "pred" in "ℕ"

NewDefinition Nat.pred
