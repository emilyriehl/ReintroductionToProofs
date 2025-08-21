import Game.Metadata

World "ConjunctionWorld"
Level 2

Title "Using And"

Introduction "A hypothesis `h : P ∧ Q` provides explicit proofs of both `P` and `Q` which are denoted by `h.1 : P` and `h.2 : Q`."

Statement {P Q : Prop} (h : P ∧ Q) : P ∧ Q := by
  Hint "This can be solved in two ways. Can you find them both?"
  constructor
  Hint (hidden := true) "Now the goal is just to prove `P`. Type `exact {h}.1` to supply this proof."
  exact h.1
  Hint (hidden := true) "Now Lean reminds you of the other goal, which is to prove `Q`. Type `exact {h}.2` to supply this proof."
  exact h.2

Conclusion "If this is your first time solving this level, delete your proof, and try to find another solution."

/- Use these commands to add items to the game's inventory. -/
