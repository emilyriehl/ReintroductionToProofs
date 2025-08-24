import Game.Metadata

World "ConjunctionWorld"
Level 3

Title "Symmetry"

/--
Given a hypothesis `h : P ∧ Q` for some propositions `P` and `Q`, `And.symm h` is a proof of `Q ∧ P`.
-/
TheoremDoc And.symm as "symm" in "And"

Introduction "If `P ∧ Q` is true, then `Q ∧ P` is too.

In other words, `P ∧ Q` implies `Q ∧ P`, as is expressed by the proposition `P ∧ Q → Q ∧ P` which is implicitly parenthesized as `(P ∧ Q) → (Q ∧ P)`."

/-- `P ∧ Q` implies `Q ∧ P`. -/
Statement {P Q : Prop} : P ∧ Q → Q ∧ P := by
  Hint (hidden := true) "In a compound proposition, the outermost logical connective (the one applied last in forming the proposition) often determines the overall proof strategy."
  intro h
  constructor
  Hint (hidden := true) "Note the goal window in the interactive theorem prover keeps track of exactly what proposition you are trying to prove."
  exact h.2
  Hint (hidden := true) "Note the goal window in the interactive theorem prover keeps track of exactly what proposition you are trying to prove."
  exact h.1

Conclusion "The proof you have just constructed is now recorded as a theorem in the library to the right.

In fact `P ∧ Q` is true if and only if `Q ∧ P` is true, as we will now demonstrate."

TheoremTab "And"

NewTheorem And.symm
