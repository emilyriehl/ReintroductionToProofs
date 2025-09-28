import Game.Metadata

World "ClassicalWorld"
Level 2

Title "Excluded Middle"

Introduction "The *law of excluded middle* asserts that for any proposition `P`, either `P` is true or `P` is false.

In other words, for any proposition `P`, `P ∨ ¬ P` is always true.

Lean has a built-in name `Classical.em P  : P ∨ ¬ P` for *the law of excluded middle* at the proposition `P`. In Classical World, classical reasoning techniques are open, so you can refer to this proof by typing `em P : P ∨ ¬ P`.

Note that in contrast to `byContradiction : ¬ ¬ P → P`, the proposition `P` is an *explicit argument* of the function `em`. So if you type just `em`, Lean will ask which proposition you have in mind.

This is because when you are applying proof by contradiction, it is usually clear from context which proposition `P` is involved, whereas when you are appealing to the law of excluded middle, this is often not so clear.

See if you can use the law of excluded middle to prove that for any propositions `P` and `Q` one
of the following four conjunctions holds.
"

section
open Classical

/-- In classical logic, for any propositions `P` and `Q`, `P ∧ Q` is true or `P ∧ ¬ Q` is true or `¬ P ∧ Q` is true or `¬ P and ¬ Q` is true. -/
Statement {P Q : Prop} : (P ∧ Q) ∨ (P ∧ ¬ Q) ∨ (¬ P ∧ Q) ∨ (¬ P ∧ ¬ Q) := by
  Hint "To use the law of excluded middle in your proof, type `have lemP : P ∨ ¬ P := em P` to add an assumption that `P ∨ ¬ P` is true."
  have lemP := em P
  Hint (hidden := true) "To use the law of excluded middle in your proof, type `have lemQ : Q ∨ ¬ Q := em Q` to add an assumption that `Q ∨ ¬ Q` is true."
  have lemQ := em Q
  Hint (hidden := true) "What can you do with these assumptions?"
  rcases lemP with p | np
  rcases lemQ with q | nq
  exact Or.inl ⟨p, q⟩
  exact Or.inr (Or.inl ⟨p, nq⟩)
  rcases lemQ with q | nq
  exact Or.inr (Or.inr (Or.inl ⟨np, q⟩))
  exact Or.inr (Or.inr (Or.inr ⟨np, nq⟩))

end

Conclusion "The classical tautology `Classical.em P : P ∨ ¬ P` has been added to your library of theorems and can be used by calling `em _`, with the desired proposition replacing the `_`, whenever classical reasoning is open."

/--
For any proposition `P`, `Classical.em P : P ∨ ¬ P ` proves that `P` or `¬ P` is true.
-/
TheoremDoc Classical.em as "em" in "Classical"

NewTheorem Classical.em
