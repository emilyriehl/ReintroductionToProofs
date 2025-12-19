import Game.Levels.ClassicalWorld.L05_NegatingImplication

World "ClassicalWorld"
Level 6

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

You can solve this level immediately with `exact em P` &mdash; evading the boss &mdash; but try starting with `apply byContradiction` instead and see if you can argue without appealing to the law of excluded middle.

You might wish to prove a few lemmas in the middle of this proof. We have seen that this can be done by typing `have np : ¬ P := ?` if you can supply the full name of the proof in place of the `?`.

Alternatively, switch into editor mode and type `have np : ¬ P := by` and then move down to the next line. You'll see that Lean has replaced the overall goal by a local goal, in this case to prove the proposition `¬ P` from the hypotheses in your context. This allows you to give a multi-line tactic proof.
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

Conclusion "If you used editor mode to prove some lemmas in the middle of this proof, it is good practice to indent the lines that form the proof of the lemma following the `have np : ¬ P := by`. This makes it more clear which steps are used to prove the lemma and which are used to prove the main goal. Go next to Equality World where we will finally introduce the slippery notion of mathematical equality."
