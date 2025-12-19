import Game.Levels.QuantifierWorld

World "AdvancedFunctionWorld"
Level 1

Title "Total Functions"

Introduction "Recall from equality world that a function `f : A → B` must be *well-defined*.

That is if `x y : A` and `x = y`, then `f x = f y`.

In this level, we will state and prove a second defining property of functions.

A function `f : A → B` must necessarily be &ldquo;total&rdquo;, rather than &ldquo;partially-defined&rdquo;.

To say a function is *total* means that for each `a : A` there is some `b : B` so that `f a` equals `b`.

Your task this level is to prove this.
"

/-- A function `f : A → B` must be *total* meaning for each `a : A` there is some `b : B` so
that `f a = b`. -/
Statement {A B : Type} (f : A → B) : ∀ a : A, ∃ b : B, f a = b := by
  intro a
  use f a
  rfl

Conclusion "We will now study properties that hold of some functions, but not all functions."
