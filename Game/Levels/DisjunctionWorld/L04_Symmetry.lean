import Game.Metadata

World "DisjunctionWorld"
Level 4

Title "Symmetry"

Introduction "
We can improve our understanding of the symmetry of disjunction as follows.

For propositions `P` and `Q`, `P ∨ Q` is true if and only if `Q ∨ P` is true."

/-- `P ∨ Q` is true if and only if `Q ∨ P` is true. -/
Statement {P Q : Prop} : P ∨ Q ↔ Q ∨ P := by
  Hint (hidden := true) "What is the outermost logical connective?"
  constructor
  Hint (hidden := true) "The goal is an implication you've already proven. You can use `exact` together with the name of that result, to solve this goal in one line. Alternatively, you can just prove it again."
  exact Or.symm
  Hint (hidden := true) "The goal is an implication you've already proven. You can use `exact` together with the name of that result, to solve this goal in one line. Alternatively, you can just prove it again."
  exact Or.symm

Conclusion "Did you give the same proof twice? If so, why does this make sense? If not, could you have done this? In fact, we gave a name `Or.symm` to the proof given in the previous level, as you can see in the list of theorems to the right. Try typing `exact Or.symm` at an appropriate place in your proof."

/- Use these commands to add items to the game's inventory. -/
