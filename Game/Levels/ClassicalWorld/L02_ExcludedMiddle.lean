import Game.Metadata

World "ClassicalWorld"
Level 2

Title "Excluded Middle"

Introduction "Double negation elimination implies the law of excluded middle.

That is, using the strategy of proof by contradiction, we can prove that `P ∨ ¬ P` holds for any proposition `P`.

Start the proof with `apply byContradiction` and see how the goal transforms.

Then see if you can complete the rest.
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

Conclusion "Lean has a built-in name `Classical.em P  : P ∨ ¬ P` for *the law of excluded middle* at the proposition `P`. In Classical World, classical reasoning techniques are open, so you can solve this level by typing `exact em P`.

Note that in contrast to `byContradiction : ¬ ¬ P → P`, the proposition `P` is an *explicit argument* of the function `em`. So `exact em` will not work.

This is because when you are applying proof by contradiction, it is usually clear from context which proposition `P` is involved, whereas when you are appealing to the law of excluded middle, this is often not so clear."

/--
For any proposition `P`, `Classical.em P : P ∨ ¬ P ` proves that `P` or `¬ P` is true.
-/
TheoremDoc Classical.em as "em" in "Classical"

NewTheorem Classical.em
