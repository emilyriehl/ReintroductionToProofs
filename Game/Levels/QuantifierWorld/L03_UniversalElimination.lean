import Game.Metadata

World "QuantifierWorld"
Level 3

Title "Universal Elimination"

Introduction "Let `P : A → Prop` be a predicate over a type `A`.

Suppose we have a proof `h : ∀ x : A, P x` that for all `x : A`, `P x` is true.

Then if we are given any particular `a : A`. We can use `h` to provide a proof of `P a`.

How?

Recall that we can think of proofs of universally quantified statements as *dependent functions*. So `h` can be thought of as a function that takes `x : A` to a proof `h x : P x` of the proposition `P x`.

In particular, `h a : P a` is our desired proof."

/-- For all `w x y z : A` if `w = x ` and `x = y` and `y = z` then `w = z`. -/
Statement {A : Type} {P : A → Prop} (a : A) (h : ∀ x : A, P x) : P a := by
  exact h a

Conclusion "This explains the *elimination rule* for universally quantified statements."
