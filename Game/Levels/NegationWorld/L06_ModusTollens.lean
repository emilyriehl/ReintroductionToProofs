import Game.Levels.NegationWorld.L05_Absurd

World "NegationWorld"
Level 6

Title "Modus Tollens"

Introduction "In this level, we will study the relationship between an implication `P → Q` and its *contrapositive*, which is the statement `¬ Q → ¬ P`.

The objective in this level is to prove that `P → Q` implies `¬ Q → ¬ P`.

In fact, the construction of this proof should feel very familiar!

The other direction of implication is considerably more subtle and will be discussed in Classical World.
"

/-- For any propositions `P` and `Q`, if `P → Q` holds then `¬ Q → ¬ P` also holds. -/
Statement {P Q : Prop} : (P → Q) → ¬ Q → ¬ P := by
  intro h nq
  Hint (hidden := true) "What is the logical structure of the goal?"
  intro p
  Hint (hidden := true) "What is the logical structure of the type of `{nq}`?"
  apply nq
  apply h
  exact p

Conclusion "Where have you seen this construction before? Can you solve this level in a different way?"
