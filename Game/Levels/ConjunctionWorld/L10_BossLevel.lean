import Game.Metadata

World "ConjunctionWorld"
Level 10

Title "Boss Level"

Introduction
"
For the Boss Level of Conjunction World, the task is to prove a complicated implication.

After introducing all of the allowed hypotheses, you may find it helpful to prove that some intermediate propositions are true using the `have` tactic.

Good luck!
"

/-- If `P`, `R → S ∧ T`, `U → P → R`, `(U → Y) → Z`, `W ∧ T ∧ V → X ∧ Y`, and `S → V ∧ W` are true, then `Z` is true. -/
Statement {P Q R S T U V W X Y Z : Prop} : P → (R → S ∧ T) → (U → P → R) → ((U → Y) → Z) → (W ∧ T ∧ V → X ∧ Y) → (S → V ∧ W) → Z := by
  intro p h k l g f
  apply l
  intro u
  exact (g ⟨(f (h (k u p)).1).2, (h (k u p)).2 , (f (h (k u p)).1).1⟩).2

Conclusion "Next move on to `Function World` to learn about types and functions."
