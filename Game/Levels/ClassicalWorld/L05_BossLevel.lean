import Game.Metadata

World "ClassicalWorld"
Level 5

Title "Boss Level"

Introduction "In Negation World, we proved that for any proposition `P`: `P ∨ ¬ P → (¬ ¬ P → P)`

In other words, we showed that the law of excluded middle implies double negation elimination.

We now show that converse: that double negation elimination implies the law of excluded middle. More
precisely, if we assume that `¬ ¬ P → P` for all propositions `P`, then we can show that `P ∨ ¬ P` for
all proposition `P`.

While the proof will feel like an application of classical logic, using the strategy of proof by contradiction, in
fact the proof can be understood as a proof in constructive mathematics.

This is because we are arguing under the assumption that double negation elimination holds, which means
we are working in a setting where the strategy of proof by contradiction applies.

Good luck!
"

section
open Classical

/-- In classical logic, for any proposition `P`, `P` is true or `¬ P` is true. -/
Statement {P : Prop} : P ∨ ¬ P := by
  apply byContradiction
  intro nlem
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

Conclusion "In the next world, we will finally introduce the slippery topic of equality."
