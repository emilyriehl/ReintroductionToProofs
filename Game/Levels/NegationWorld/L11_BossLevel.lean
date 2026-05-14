import Game.Levels.NegationWorld.L10_TripleNegation

World "NegationWorld"
Level 11

Title "Boss Level"

Introduction "The Boss Level of Negation World previews the next world by studying the relationship between two *classical* tautologies that we have not been able to prove involving a proposition `P`.

One statement we have not been able to prove is called *double negation elimination*: `¬ ¬ P → P`.

Double negation elimination asserts that if `P` is not false, then `P` must be true.

Another statement we have not been able to prove is called *law of excluded middle*: `P ∨ ¬ P`.

The law of excluded middle asserts that either `P` is true or `P` is false.

In Classical World, we'll explore why these statements fall outside the realm of *constructive logic*.

But what we *can* prove constructively is that for any proposition `P`, the law of excluded middle for `P` implies double negation elimination for `P`.

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
