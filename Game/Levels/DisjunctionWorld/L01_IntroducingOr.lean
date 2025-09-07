import Game.Metadata

World "DisjunctionWorld"
Level 1

Title "Introducing Or"

Introduction "To prove a disjunction `P ∨ Q` it suffices to supply a proof of either `P` or of `Q`.

Thus under the hypothesis that `P` and `Q` are both true, there are two ways to prove `P ∨ Q`: one using `p : P` and one using `q : Q`.

Note `exact p` or `exact q` won't work as these are proofs of different propositions."

/--
For propositions `P` and `Q`, `Or.inl` is a proof that `P → (P ∨ Q)`.
-/
TheoremDoc Or.inl as "inl" in "Or"

/--
For propositions `P` and `Q`, `Or.inr` is a proof that `Q → (P ∨ Q)`.
-/
TheoremDoc Or.inr as "inr" in "Or"

Statement {P Q : Prop} (p : P) (q : Q) : P ∨ Q := by
  Hint "You have two choices: to reduce to the case of proving the left proposition or to reduce to the case of proving the right proposition. Type `apply Or.inl` to tell Lean you'd like too prove the left proposition or type `apply Or.inr` to tell Lean you'd like to prove the right proposition."
  Branch
    apply Or.inl
    Hint (hidden := true) "What is the goal now?"
    exact p
  Branch
    apply Or.inr
    Hint (hidden := true) "What is the goal now?"
    exact q
  exact Or.inl p

Conclusion "If this is your first time solving this level, delete your code and prove the same theorem another way."

/- Use these commands to add items to the game's inventory. -/
NewTheorem Or.inl Or.inr
