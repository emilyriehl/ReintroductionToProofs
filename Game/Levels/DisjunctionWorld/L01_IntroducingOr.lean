import Game.Metadata

World "DisjunctionWorld"
Level 1

Title "Introducing Or"

Introduction "To prove a disjunction `P ∨ Q` it suffices to supply a proof of either `P` or of `Q`.

Thus under the hypothesis that `P` and `Q` are both true, there are two ways to prove `P ∨ Q`: one using `p : P` and one using `q : Q`.

Note `exact p` or `exact q` won't work as these are proofs of different propositions.
"

/-- There are two ways to prove `P ∨ Q` from the given hypotheses. Can you find them both?-/
Statement {P Q : Prop} (p : P) (q : Q) : P ∨ Q := by
  Hint "You have two choices: to reduce to the case of proving the left proposition or to reduce to the case of proving the right proposition. Type `left` to tell Lean you'd like to prove the left proposition or type `right` to tell Lean you'd like to prove the right proposition."
  Branch
    left
    Hint (hidden := true) "What is the goal now?"
    exact p
  Branch
    right
    Hint (hidden := true) "What is the goal now?"
    exact q
  left; exact p

Conclusion "If this is your first time solving this level, delete your code and prove the same theorem another way. You can also use the proofs of the implications `Or.inl : P → P ∨ Q` and `Or.inr : Q → P ∨ Q` that are now in the library."


/-- For propositions `P` and `Q`, `Or.inl` is a proof that `P → (P ∨ Q)`. -/
DefinitionDoc Or.inl as "inl" in "Or"

/-- For propositions `P` and `Q`, `Or.inr` is a proof that `Q → (P ∨ Q)`. -/
DefinitionDoc Or.inr as "inl" in "Or"

NewDefinition Or.inl Or.inr
