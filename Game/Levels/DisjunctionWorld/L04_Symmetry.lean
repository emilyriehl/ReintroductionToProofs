import Game.Metadata

World "DisjunctionWorld"
Level 4

Title "Symmetry"

Introduction "For propositions `P` and `Q`, `P ∨ Q` is true if and only if `Q ∨ P` is true."

Statement {P Q : Prop} : P ∨ Q ↔ Q ∨ P := by
  Hint (hidden := true) "What is the outermost logical connective?"
  constructor
  Hint (hidden := true) "The goal is an implication you've already proven. You can use `exact` together with the name of that result, to solve this goal in one line. Alternatively, you can just prove it again."
  exact Or.symm
  Hint (hidden := true) "The goal is an implication you've already proven. You can use `exact` together with the name of that result, to solve this goal in one line. Alternatively, you can just prove it again."
  exact Or.symm

Conclusion "This proves the symmetry of disjunction."

/- Use these commands to add items to the game's inventory. -/
