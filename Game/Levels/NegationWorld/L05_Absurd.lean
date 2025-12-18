import Game.Metadata

World "NegationWorld"
Level 5

Title "Absurd"

Introduction "In the last level we proved the *law of noncontradiction*: `¬ (P ∧ ¬ P)`.

In this level, we will see that it is possible to prove any proposition `Q` from the hypothesis that both `P` and `¬ P` are true.

In other words, `P → ¬ P → Q` is always true.

If we swapped order of the hypotheses, a similar proof would also show that `¬ P → P → Q` is true. In other words, if `P` is false, then `P → Q` is always true.

The proof requires a bit of cleverness, but you can ask for a few hints if you get stuck.

While not necessary to solve this level, it is also possible to use the tactic `exfalso` which is now in your library. The tactic `exfalso` reduces the goal of proving a proposition `Q` to the goal of proving `False` by applying the proof of the implication `False.elim : Empty → Q`.
"

/-- It is possible to prove any proposition `Q` from the hypothesis that both `P` and `¬ P` are true. -/
Statement {P Q : Prop} : P → ¬ P → Q := by
  intro p np
  Hint (hidden := true) "What is the logical structure of the type of `{np}`?"
  Hint (hidden := true) "If you like, you can add a proof of `False` to your assumption list by `have := {np} {p}`."
  Hint (hidden := true) "This might be a useful time to apply one of the theorems proven earlier in Negation World."
  apply False.elim
  exact np p

Conclusion "Lean has a built in name `absurd` for the theorem you have just proven, so this level may be solved with `exact absurd`. This has been added to the theorem library."

/--
For any propositions `P` and `Q`, `absurd` proves that `P → ¬ P → Q`. So if `p : P` and `np : ¬ P`,
then `absurd p np` supplies a proof of any proposition.
-/
TheoremDoc absurd as "absurd" in "False"

NewTheorem absurd

/--
If the goal is to prove a proposition `P`, then the tactic `exfalso` applies the implication `False.elim : False → P` to reduce to the goal of proving `False`.
-/
TacticDoc exfalso

NewTactic exfalso
