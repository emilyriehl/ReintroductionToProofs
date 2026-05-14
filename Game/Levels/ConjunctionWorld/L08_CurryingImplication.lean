import Game.Levels.ConjunctionWorld.L07_MoreCompoundImplication
import Game.Levels.ConjunctionWorld.L06_CompoundImplication
import Game.Levels.ConjunctionWorld.L07_MoreCompoundImplication

World "ConjunctionWorld"
Level 8

Title "Currying Implication"

Introduction "We now establish a logical equivalence between `P ∧ Q → R` and `P → Q → R`.

This is why implications of the form `P → (Q → R)` are so much more common than implications of the form `(P → Q) → R`.

The two implications that comprise this logical equivalence are referred to as *currying* and *uncurrying* because they are the logical analogs of the currying and uncurrying operations on functions of two variables.

Note the two implications proven in the previous two levels have been added to the theorem library, should you wish to use them. Their full names are `And.curry` and `And.uncurry`.
"

/-- `P ∧ Q → R` is true if and only if `P → Q → R` is true. -/
Statement {P Q R : Prop} : (P ∧ Q → R) ↔ (P → Q → R) := by
  Hint (hidden := true) "What is the outermost logical connective? What tactic is used to prove statements of this form?"
  constructor
  exact And.curry
  exact And.uncurry

Conclusion "In the next level, we will meet the universal property of conjunctions."
