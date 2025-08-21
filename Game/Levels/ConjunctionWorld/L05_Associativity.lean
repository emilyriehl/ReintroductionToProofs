import Game.Metadata

World "ConjunctionWorld"
Level 5

Title "Associativity"

Introduction "For propositions `P`, `Q`, and `R`, `(P ∧ Q) ∧ R` is true if and only if `P ∧ (Q ∧ R)` is true.

Lean likes to drop parentheses whenever possible so uses `P ∧ Q ∧ R` as an abbreviation for `P ∧ (Q ∧ R)`. While it's difficult to remember this convention, at least the two possible statements are logically equivalent!

Given a proof `h : (P ∧ Q) ∧ R`, we obtain proofs `h.1 : P ∧ Q` and `h.2 : R`. From the first of these,
we obtain further proofs `h.1.1 : P` and `h.1.2 : Q`.
"

Statement {P Q R : Prop} : (P ∧ Q) ∧ R ↔ P ∧ (Q ∧ R) := by
  constructor
  intro h
  constructor
  Hint (hidden := true) "Think carefully about what `{h}` proves and what proofs can be extracted from this."
  Hint (hidden := true) "Note the `.1` and `.2` notation can be iterated."
  exact h.1.1
  Hint (hidden := true) "What tactics can be used to break a goal involving conjunction into subgoals?"
  constructor
  exact h.1.2
  exact h.2
  intro k
  Hint (hidden := true) "What tactics can be used to break a goal involving conjunction into subgoals?"
  constructor
  Hint (hidden := true) "What tactics can be used to break a goal involving conjunction into subgoals?"
  constructor
  Hint (hidden := true) "Think carefully about what `{k}` proves and what proofs can be extracted from this."
  exact k.1
  Hint (hidden := true) "Note the `.1` and `.2` notation can be iterated."
  exact k.2.1
  exact k.2.2

Conclusion "Transition here."

/- Use these commands to add items to the game's inventory. -/
