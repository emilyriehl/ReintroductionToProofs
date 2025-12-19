import Game.Levels.EqualityWorld.L03_ProjectedPairs

World "EqualityWorld"
Level 4

Title "Symmetry"

Introduction "We've already seen that equality is *reflexive*, meaning that `x = x` for any element `x : A`.

In this level, we will prove that equality is also symmetric: if `x = y` then `y = x`.

To prove the implication `x = y → y = x` we may assume that we have a proof `p : x = y`. This allows us to appeal to the elimination rule of equality types to prove our goal that `y = x` also holds.

To do this, we will make use of the `rw` tactic, pronounced &ldquo;rewrite,&rdquo; which is the primary way we will use a hypothesis of the form `p : x = y`.

If we have a hypothesis `p : x = y`, then `rw [p]` will look for the first instance of the element `x` in the goal type and change it to `y`.

In the case here, the goal is to show that `y = x`, so rewriting along `p` will change the goal to `y = y`, which is easier to prove.

This tactic can be used in two directions: `rw [← p]` &mdash; using `\\l` to type `←` &mdash; will look for the first instance of a `y` in the goal and replace it with `x`. Thus typing `rw [← p]` instead of `rw [p]` will change the goal to `x = x`.

Try solving this level using both directions of rewriting.
"

/-- Equality is symmetric: if `x = y` then `y = x`. -/
Statement {A : Type} {x y : A} (p : x = y) : y = x  := by
  rw [p]
  Hint (hidden := true) "Note that the goal is now to prove `y = y`. What tactic applies?"
  rfl

/-- Given a hypothesis `p : x = y`, the tactic `rw [p]` will replace each `x` in the goal by `y`. Writing `rw [← p]` will replace the each `y` in the goal by `x`. This is a slightly less powerful version than the `rw` tactic in Mathlib, which will attempt to close the goal with `rfl`. -/
TacticDoc rw

Conclusion "We will now explore other applications of the tactic `rw`."

NewTactic rw
