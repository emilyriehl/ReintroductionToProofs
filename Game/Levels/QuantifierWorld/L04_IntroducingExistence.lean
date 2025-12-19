import Game.Levels.QuantifierWorld.L03_UniversalElimination

World "QuantifierWorld"
Level 4

Title "Introducing Existence"

Introduction "Let `P : A → Prop` be a predicate over a type `A`.

To prove the proposition `∃ x : A, P x` it suffices to find any element `a : A` so that `P a` holds.

If you have a proof `p_a : P a`, then the same notation used for conjunctions and product types can be used to define an element `⟨a, p_a⟩ : ∃ x : A, P x`.

Here the element `⟨a, p_a⟩` can be thought of as a *dependent pair*, where the type `P a` of the right component `p_a : P a` depends on the left component `a : A`.

Recall the function `and : Bool → Bool → Bool` capturing the logical notion of conjunction. Lean uses alternate notation `x && y = and x y`.

Recall also the function `or : Bool → Bool → Bool` capturing the logical notion of disjunction. Lean uses the alternate notation `x || y = or x y`

In this level, you are asked to prove that there exists some boolean `b : B` so that `b && b = b || b`.

The tactic `use` is used to introduce proofs of existentially quantified predicates.

If the goal is to prove `∃ x : A, P x`, one can type `use a` referencing a specific element `a : A` to reduce the goal to proving `P a`.
"

/-- There is some boolean `b` so that `b && b = b || b` -/
Statement : ∃ b : Bool, (b && b) = (b || b) := by
  Hint "Type `use` followed by the name of an element of `Bool` that you believe will satisfy the predicate."
  use false
  Hint "Now you are asked to prove a special case of the indexed family of propositions, where the indexing element `b` is specialized to the element you provided."
  rfl

Conclusion "The next level will give more practice with the existential quantifier."

/--
For goals of the form `∃ (x : A), P x` the tactic `use` can be used to provide an element `a : A` which will satisfy `P a`. For multiple constructors like `∃ (x y : A), P x y`, you can provide comma-separated values: `use a, a'`.

Note that the version of the `use` tactic for this game is somewhat weaker than the real one in Mathlib, which automatically tries to solve the remaining goal.-/
TacticDoc use

NewTactic use
