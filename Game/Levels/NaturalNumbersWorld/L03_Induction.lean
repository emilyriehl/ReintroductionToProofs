import Game.Levels.NaturalNumbersWorld.L02_NormalForms

World "NaturalNumbersWorld"
Level 3

Title "Induction"

Introduction "The *principal of mathematical induction* &mdash; also known as the elimination rule for the type of natural numbers &mdash; is a strategy for proving statements of the form

`∀ n : ℕ, P n`

where `P : ℕ → Prop` is a predicate on the natural numbers &mdash; also known as a family of propositions.

The formal statement of this principle is given by the axiom:

`∀ P : ℕ → Prop, P 0 → (∀ k : ℕ, P k → P (succ k)) → (∀ n : ℕ, P n)`

In plain language it says

&ldquo;for any predicate `P` on the natural numbers, if `P 0` is true, and if `P k` implies `P (succ k)` for all natural numbers `k`, then `∀ n : ℕ, P n` is true.&rdquo;

That is, we can prove `∀ n : ℕ, P n` after verifying two things:

* the *base case*: proving that `P 0` is true
* the *inductive step*: proving that for any `k : ℕ`, `P k` implies `P (succ k)`.

By combining these hypothesis, from the fact that `P 0` is true and `P 0 → P 1` is true, we can conclude that `P 1` is true. Then from the fact that `P 1 → P 2` is true, we can conclude that `P 2` is true. Then from the fact that `P 2 → P 3` is true, we can conclude that `P 3` is true. And so on.

In this level, we will use induction to prove that every natural number is even or odd.
"

open Nat

/-- Every natural number is even or odd. -/
Statement : ∀ n : ℕ , (∃ m : ℕ, n = 2 * m) ∨ (∃ m : ℕ, n = 2 * m + 1) := by
  Hint (hidden := true) "The goal is a universally quantified statement. Start with `intro n` to consider an arbitrary natural number `n`."
  intro n
  Hint "To start a proof by induction in Lean, type `induction {n} with k hk`. This will split the goal into two cases: proving the base case and the inductive step."
  induction n with k hk
  Hint "You are first asked to prove the base case assuming the natural number `n` from the original statement is `0`. Thus your goal is to prove `(∃ m : ℕ, 0 = 2 * m) ∨ (∃ m : ℕ, 0 = 2 * m + 1)`. Use the tactic `left` to indicate that you'd like to prove the left-hand statement or `right` to indicate that you'd like to prove the right-hand statement."
  left
  Hint (hidden := true) "To prove the existential quantifier, type `use ??` with an explicit numeral in the place of `??` to supply a well-chosen value of `m`."
  use 0
  Hint (hidden := true) "Recall arithmetical equations involving numerals can be proven with `rfl`."
  rfl
  Hint "Now that you have completed the base case, the next goal is to prove the inductive step. Here `{k}` is an arbitrary natural number and you are given a hypothesis that the predicate is true for `{k}`, i.e., that `{hk} : (∃ m, {k} = 2 * m) ∨ ∃ m, {k} = 2 * m + 1`. Your goal is to prove that the analogous result holds for `{k} + 1`, aka, the successor of `k`. Type `rcases {hk} with even | odd` to split into cases depending on whether or not `{k}` is even or odd."
  rcases hk with even | odd
  Hint (hidden := true) "Use the tactic `left` to indicate that you'd like to prove the left-hand statement or `right` to indicate that you'd like to prove the right-hand statement."
  right
  Hint (hidden := true) "Type `rcases {even} with ⟨d, hd⟩` to decompose the hypothesis."
  rcases even with ⟨d, hd⟩
  Hint (hidden := true) "Type `use ??` with a well-chosen element in place of the `??`."
  use d
  Hint (hidden := true) "This equality does not hold by definition, so `rfl` fails. But your context has a new hypothesis that can help."
  rw [hd]
  rfl
  Hint (hidden := true) "Type `rcases {odd} with ⟨d, hd⟩` to decompose the hypothesis."
  rcases odd with ⟨d, hd⟩
  Hint (hidden := true) "Use the tactic `left` to indicate that you'd like to prove the left-hand statement or `right` to indicate that you'd like to prove the right-hand statement."
  left
  Hint (hidden := true) "Type `use ??` with a well-chosen element in place of the `??`."
  use d + 1
  Hint (hidden := true) "This equality does not hold by definition, so `rfl` fails. But your context has a new hypothesis that can help."
  rw [hd]
  rfl

Conclusion "The `induction` tactic is now in your library.

It is a bit surprising that the last equation `2 * d + 1 + 1 = 2 * (d + 1)` holds by `rfl`. This has to do with the way that addition and multiplication are defined in Lean. We will explore the definition of addition in a future level."

/--
## Summary

If `n : ℕ` is an object, and the goal mentions `n`, then `induction n with d hd`
attempts to prove the goal by induction on `n`, with the inductive
variable in the successor case being `d`, and the inductive hypothesis being `hd`.

### Example:
If the goal is
```
0 + n = n
```

then

`induction n with d hd`

will turn it into two goals. The first is `0 + 0 = 0`;
the second has an assumption `hd : 0 + d = d` and goal
`0 + succ d = succ d`.

Note that you must prove the first
goal before you can access the second one.
-/
TacticDoc induction

NewTactic induction
