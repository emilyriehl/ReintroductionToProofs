import Game.Metadata

World "NegationWorld"
Level 11

Title "Boss Level"

Introduction "The Boss Level of Negation World previews the next world by studying the relationship between two *classical* tautologies that we have not been able to prove involving a proposition `P`.

One statement we have not been able to prove is called *double negation elimination*: `¬ ¬ P → P`.

Another statement we have not been able to prove is called *law of excluded middle*: `P ∨ ¬ P`.

What we *can* prove is that law of excluded middle implies double negation elimination.

Have fun!
"

/-- The law of excluded middle implies double negation elimination: for any proposition `P`, `P ∨ ¬ P` implies `¬ ¬ P → P`. -/
Statement {P : Prop} : P ∨ ¬ P → (¬ ¬ P → P) := by
  intro hyp
  intro nnp
  rcases hyp with p | np
  exact p
  exact absurd np nnp

Conclusion "Move on to Classical World to better understand the statements involving negation that we have not been able to prove thus far."
