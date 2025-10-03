import Game.Metadata

World "QuantifierWorld"
Level 6

Title "Introducing Existence"

Introduction "Let `P : A → Prop` be a predicate over a type `A`.

To prove the proposition `∃ x : A, P x` it suffices to find any element `a : A` so that `P a` holds.

Recall the function `and : Bool → Bool → Bool` capturing the logical notion of conjunction. Lean uses alternate notation `x && y = and x y`.

Recall also the function `or : Bool → Bool → Bool` capturing the logical notion of disjunction. Lean uses the alternate notation `x || y = or x y`

In this level, you are asked to prove that there exists some boolean `b : B` so that `b && b = b || b`.

The tactic `exists` is used to introduce proves of existentially quantified predicates.
"

/-- There is some boolean `b` so that `b && b = b || b` -/
Statement : ∃ b : Bool, (b && b) = (b || b) := by
  Hint "Type `exists` followed by the name of an element of `Bool` that you believe will satisfy the predicate. In some cases, such as this one, Lean will automatically be able to fill in the rest of the proof."
  exists false

Conclusion "The next level will give more practice with the existential quantifier. "

NewTactic use
