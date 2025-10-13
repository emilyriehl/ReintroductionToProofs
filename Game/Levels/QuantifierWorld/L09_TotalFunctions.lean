import Game.Metadata

World "QuantifierWorld"
Level 9

Title "Total Functions"

Introduction "A function `f : A → B` must necessarily be &ldquo;total&rdquo;, rather than &ldquo;partially-defined&rdquo;.

To say a function is *total* means that for each `a : A` there is some `b : B` so that `f a` equals `b`.

Your task this level is to prove this.
"

/-- A function `f : A → B` must be *total* meaning for each `a : A` there is some `b : B` so
that `f a = b`. -/
Statement {A B : Type} (f : A → B) : ∀ a : A, ∃ b : B, f a = b := by
  intro a
  use f a
  rfl

Conclusion "In the next level, we will learn how to use a hypothesis involving an existential quantifier."
