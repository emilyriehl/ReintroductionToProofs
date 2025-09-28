import Game.Metadata

World "ClassicalWorld"
Level 3

Title "Contrapositive"

Introduction "We have seen that the implication `P → Q` implies the implication `¬ Q → ¬ P`.

The implication `¬ Q → ¬ P` is called the *contrapositive* of `P → Q`.

In classical logic, these two statements are logically equivalent.

That means, arguing classically, we can prove that `¬ Q → ¬ P` implies `P → Q`.

Can you figure out how to prove this?
"

section
open Classical

/-- In classical logic, `¬ Q → ¬ P` implies `P → Q`. -/
Statement {P Q : Prop} : (¬ Q → ¬ P) → (P → Q) := by
  Hint (hidden := true) "What is the outermost logical connective?"
  intro i
  Hint (hidden := true) "What is the outermost logical connective?"
  intro p
  Hint (hidden := true) "Now that you are stuck, it is a good time to try classical reasoning. Try `apply byContradiction` and see how this transforms the goal."
  apply byContradiction
  Hint (hidden := true) "What is the outermost logical connective?"
  intro nq
  Hint (hidden := true) "What can you prove using `{i}` and `{nq}`?"
  Hint (hidden := true) "Think about where the contradiction will ultimately arise from."
  exact (i nq) p

end

Conclusion "Combined with what we know already, we have established a logical equivalence between the implications `P → Q` and `¬ Q → ¬ P` in classical logic."
