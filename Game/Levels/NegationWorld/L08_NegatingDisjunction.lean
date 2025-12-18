import Game.Metadata

World "NegationWorld"
Level 8

Title "Negating Disjunction"

Introduction "In this level, we will study the proposition `¬ (P ∨ Q)`.

How would we disprove the implication `P ∨ Q`?

What does it mean for `P ∨ Q` to be false?

Recall, if `P` is true, then we can prove `P ∨ Q`. Similarly, if `Q` is true, we can prove `P ∨ Q`.

So if `P ∨ Q` is false, then both `P` and `Q` must be false.

In this level, we will show that `¬ (P ∨ Q)` is logically equivalent to `¬ P ∧ ¬ Q`.

If you have forgotten the meaning of logical equivalence, denoted `↔`, you can look it up in the library.
"

/-- For any propositions `P` and `Q`, the propositions `¬ (P ∨ Q)` and `¬ P ∧ ¬ Q` are logically equivalent. -/
Statement {P Q : Prop} : ¬ (P ∨ Q) ↔ ¬ P ∧ ¬ Q := by
  Hint (hidden := true) "Here the `↔` is the outermost logical connective. If you've forgotten what this means, you can look it up in the library."
  constructor
  intro nor
  Hint (hidden := true) "Here the `∧` is the outermost logical connective. How do you prove conjunctions?"
  constructor
  intro p
  Hint (hidden := true) "What can you do with the hypothesis `{nor}`?"
  apply nor
  Hint (hidden := true) "Look at the theorems about `Or` if you have forgotten how to tell Lean about the relationship between `P` and `P ∨ Q`."
  apply Or.inl
  exact p
  intro q
  Hint (hidden := true) "What can you do with the hypothesis `{nor}`?"
  apply nor
  Hint (hidden := true) "Look at the theorems about `Or` if you have forgotten how to tell Lean about the relationship between `P` and `P ∨ Q`."
  apply Or.inr
  exact q
  intro andn
  intro pq
  rcases pq with p | q
  Hint (hidden := true) "What proofs can you extract from the hypothesis `{andn}`?"
  exact andn.1 p
  exact andn.2 q

Conclusion "Have another look at Level 5 of Disjunction World, discussing the universal property of disjunction. How are these statements related?"
