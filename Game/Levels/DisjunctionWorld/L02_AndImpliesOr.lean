import Game.Metadata

World "DisjunctionWorld"
Level 2

-- /--
-- For propositions `P` and `Q`, `Or.byAnd` is a proof that `P ∧ Q → Q ∨ P`.
-- -/
-- TheoremDoc Or.byAnd as "byAnd" in "Or"

Title "And Implies Or"

Introduction "The proposition `P ∧ Q` is *stronger* than the proposition `P ∨ Q` because `P ∧ Q → P ∨ Q` is true in general, but the implication `P ∨ Q → P ∧ Q` does not necessarily hold.

Note the implication `P ∧ Q → P ∨ Q` holds because the mathematical or is *inclusive*, meaning that if `P` and `Q` are both true, then `P ∨ Q` is true, and in fact can be proven in two different ways."

/-- `P ∧ Q` implies `P ∨ Q`. -/
Statement {P Q : Prop} : P ∧ Q → P ∨ Q := by
  Hint (hidden := true) "What is the outermost logical connective?"
  intro h
  Branch
    left
    Hint (hidden := true) "How can we convert `{h}` into a proof of the goal?"
    Hint (hidden := true) "Recall that if `{h} : {P} ∧ {Q}` then `{h}.1 : {P}` and `{h}.2 : {Q}`."
    exact h.1
  Branch
    right
    Hint (hidden := true) "How can we convert `{h}` into a proof of the goal?"
    Hint (hidden := true) "Recall that if `{h} : {P} ∧ {Q}` then `{h}.1 : {P}` and `{h}.2 : {Q}`."
    exact h.2
  exact Or.inl h.1

Conclusion "If this is your first time solving this level, delete your code and prove the same theorem another way."

-- NewTheorem Or.byAnd
