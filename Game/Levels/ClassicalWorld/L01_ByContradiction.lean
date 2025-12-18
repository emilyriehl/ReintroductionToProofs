import Game.Metadata

World "ClassicalWorld"
Level 1

Title "By Contradiction"

Introduction "Let `P` be a proposition.

We have learned that there is a default strategy to prove `¬ P`, i.e., that `P` implies `False`.

The strategy is to start by assuming we have a proof `p : P`, in other words, assuming that `P` is true.

Then the goal is to derive an element of `False`, also known as a *contradiction*.

This proof strategy is fully compatible with constructive mathematics.

There is a related, by distinct, strategy in classical logic that can be used to prove a proposition `P` assuming called &ldquo;proof by contradiction&rdquo;. Here one assumes we have a proof `np : ¬ P`, in other words, assuming that `P` is false.

The goal is again to derive an element of `False`, also known as a contradiction.

Such a proof &mdash; assuming `np : ¬ P` and then deriving an element of `False` &mdash; constructs an element of `¬ ¬ P`.

In classical logic, there is an implication `¬ ¬ P → P`, which is why &ldquo;proof by contradiction&rdquo; can be used to ultimately prove that `P` is true.

To prove `¬ ¬ P → P` in Lean, type `exact byContradiction` to tell Lean that we are appealing to the proof by contradiction strategy."

section
open Classical

/-- In classical logic, for any proposition `P`, `¬ ¬ P` implies `P`. -/
Statement {P : Prop} : ¬ ¬ P → P := by
  exact byContradiction

end

Conclusion "Lean has a built-in name `Classical.byContradiction : ¬ ¬ P → P` for this implication, which is also called *double negation elimination*. In the source files for Classical World, we have told that we want to use classical reasoning (by opening the `Classical` namespace), which is why typing `exact byContradiction` suffices to solve this level."

TheoremTab "Classical"

/--
For any proposition `P`, `Classical.byContradiction : ¬ ¬ P → P` proves that if `P` is not false, then `P` is true.
-/
TheoremDoc Classical.byContradiction as "byContradiction" in "Classical"

NewTheorem Classical.byContradiction
