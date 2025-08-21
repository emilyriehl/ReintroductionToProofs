import Game.Metadata

World "ConjunctionWorld"
Level 8

Title "Currying Implication"

Introduction "We now establish a logical equivalence between `P ∧ Q → R` and `P → Q → R`.

This is why implications of the form `P → (Q → R)` are so much more common than implications of the form `(P → Q) → R`.

The name `Currying` will be explained in a future level.
"

Statement {P Q R : Prop} : (P ∧ Q → R) ↔ (P → Q → R) := by
  Hint (hidden := true) "What is the outermost logical connective? What tactic is used to prove statements of this form?"
  constructor
  intro h p q
  exact h ⟨p, q⟩
  intro h pq
  exact h pq.1 pq.2

Conclusion "In the next level we'll meet the universal property of conjunctions."

/- Use these commands to add items to the game's inventory. -/
