import Game.Levels.QuantifierWorld.L02_MoreTransitivity

World "QuantifierWorld"
Level 3

Title "Universal Elimination"

Introduction "Let `P : A → Prop` be a predicate over a type `A`.

Suppose we have a proof `h : ∀ x : A, P x` that for all `x : A`, `P x` is true.

Then if we are given any particular `a : A`. We can use `h` to provide a proof of `P a`.

How?

Recall that we can think of proofs of universally quantified statements as *dependent functions*.

Thus, `h` can be thought of as a function that takes `x : A` to a proof `h x : P x` of the proposition `P x`.

We say that `h` is a *dependent* function because the element `h x` proves the proposition `P x`, while the element `h y` proves a different proposition, namely `P y`.

In particular, `h a : P a` is our desired proof of the proposition `P a`."

/-- Suppose the predicate `P : A → Prop` holds for all `x : A`. Then for any particular element `a : A`, `P a` is true. -/
Statement {A : Type} {P : A → Prop} (a : A) (h : ∀ x : A, P x) : P a := by
  Hint (hidden := true) "To apply the proof `h` at the specific element `a`, type `exact h a`. Alternatively, you can start with `apply h`."
  exact h a

Conclusion "This explains the *elimination rule* for universally quantified statements. Like the elimination for function types, it corresponds to evaluating the proof `h : ∀ x : A, P x` at a specific element `a : A`."
