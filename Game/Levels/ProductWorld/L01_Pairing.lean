import Game.Metadata

World "ProductWorld"
Level 1

Title "Pairing"

Introduction "Given an element `a : A` and an element `b : B` there is a corresponding element of the product type `A × B` that is denoted by `⟨a , b⟩ : A × B`.

This element should be thought of as an *ordered pair* whose first component is the element `a : A` and whose second element is the element `b : B`.

This can be input directly by typing `exact ⟨a,b⟩' using '\\\\<' and '\\\\>' to type the angle brackets; note the spacing around the angle brackets and the commas is not important.

Alternatively, you can apply the `constructor` tactic which allows you to first input the first component and then input the second component."

/-- By pairing any element `a : A` with any element `b : B`, there is an element `⟨a, b⟩ : A × B`. -/
Statement {A B : Type} (a : A) (b : B) : A × B := by
  constructor
  Hint (hidden := true) "Now Lean asks you to supply an element of type `{A}`. Which tactic applies here?"
  exact a
  Hint (hidden := true) "Now Lean asks you to supply an element of type `{B}`. Which tactic applies here?"
  exact b

Conclusion "If this is your first time solving this level, go back and solve it another way."

-- Note if you start with the `constructor` tactic you can then use `assumption`. Why does this work?"
