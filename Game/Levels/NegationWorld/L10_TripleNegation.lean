import Game.Metadata

World "NegationWorld"
Level 10

Title "Triple Negation"

Introduction "This level contains another tautology whose proof you have seen before.

We will show that for any proposition `P`, if `P` is not not false, then `P` is false.

That is, we will prove `¬ ¬ ¬ P → ¬ P`.

In fact, for any proposition `P`, its negation `¬ P` and its triple negation `¬ ¬ ¬ P` are logically equivalent.

So we will prove this too.
"

/-- For any proposition `P`, `¬ P` is logically equivalent to `¬ ¬ ¬ P`. -/
Statement {P : Prop} : ¬ P ↔ ¬ ¬ ¬ P := by
  constructor
  Hint (hidden := true) "Does this goal seem familiar? If not, it's okay to just follow your nose and let the logical structure guide you."
  intro np
  intro nnp
  exact nnp np
  intro nnnp
  Hint (hidden := true) "What is the logical form of the goal?"
  intro p
  Hint (hidden := true) "What can you do with hypothesis `{nnnp}`?"
  apply nnnp
  Hint (hidden := true) "What is the logical form of the goal?"
  intro np
  Hint (hidden := true) "How can you use `{p}` and `{np}` to get a contradiction?"
  apply np
  exact p

Conclusion "Does either proof in this logical equivalence seem familiar? Do they both seem familar?"
