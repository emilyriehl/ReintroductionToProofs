import Game.Metadata

World "ConjunctionWorld"
Level 3

Title "Symmetry"

/--
Given a hypothesis `h : P ∧ Q` for some propositions `P` and `Q`, `And.symm h` is a proof of `Q ∧ P`.
-/
TheoremDoc And.symm as "symm" in "And"

Introduction "If `P ∧ Q` is true, then `Q ∧ P` is too.

In other words, `P ∧ Q` implies `Q ∧ P`, as is expressed by the proposition `P ∧ Q → Q ∧ P` which is implicitly parenthesized as `(P ∧ Q) → (Q ∧ P)`.

In a compound proposition such as `P ∧ Q → Q ∧ P`, formed by iteratively applying logical connectives, the outermost logical connective (the one applied last in forming the proposition) often determines the overall proof strategy.

Can you prove this?"

/-- `P ∧ Q` implies `Q ∧ P`. -/
Statement {P Q : Prop} : P ∧ Q → Q ∧ P := by
  Hint (hidden := true) "Start by identifying the outermost logical connective and use the tactic corresponding to its introduction rule."
  intro h
  constructor
  Hint (hidden := true) "Note the goal window in the interactive theorem prover keeps track of exactly what proposition you are trying to prove."
  exact h.2
  Hint (hidden := true) "Note the goal window in the interactive theorem prover keeps track of exactly what proposition you are trying to prove."
  exact h.1

Conclusion "The proof you have just constructed is now recorded as a theorem called `And.symm` in the library to the right.

In fact `P ∧ Q` is true if and only if `Q ∧ P` is true, as we will now demonstrate."

TheoremTab "And"

NewTheorem And.symm

DisabledTheorem And.symm
