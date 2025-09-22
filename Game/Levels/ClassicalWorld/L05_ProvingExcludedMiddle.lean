import Game.Metadata

World "ClassicalWorld"
Level 5

Title "Proving Excluded Middle"

Introduction "In Negation World, we proved that for any proposition `P`: `P ∨ ¬ P → (¬ ¬ P → P)`

In other words, we showed that the law of excluded middle implies double negation elimination.

We now show that converse: that double negation elimination implies the law of excluded middle. More
precisely, if we assume that `¬ ¬ P → P` for all propositions `P`, then we can show that `P ∨ ¬ P` for
all proposition `P`.

While the proof will feel like an application of classical logic, using the strategy of proof by contradiction, in
fact the proof can be understood as a proof in constructive mathematics.

This is because we are arguing under the assumption that double negation elimination holds, which means
we are working in a setting where the strategy of proof by contradiction applies.

You can solve this level immediately with `exact em P` but try starting with `apply byContradiction` instead and see if you can argue without appealing to the law of excluded middle.
"

section
open Classical

/-- In classical logic, for any proposition `P`, `P` is true or `¬ P` is true. -/
Statement {P : Prop} : P ∨ ¬ P := by
  apply byContradiction
  intro nlem
  Hint (hidden := true) "Recall that `¬(P ∨ ¬ P)` is logically equivalent to `¬ P ∧ ¬ ¬ P`. Can you use `{nlem}` to prove `¬P`? And then can you used `{nlem}` to prove `¬ ¬ P`?"
  have lem : ¬ P ∧ ¬ ¬ P := by
    constructor
    intro p
    apply nlem
    exact Or.inl p
    intro np
    apply nlem
    exact Or.inr np
  exact lem.2 lem.1

end

Conclusion "We are now ready for the Boss Level of Classical World."
