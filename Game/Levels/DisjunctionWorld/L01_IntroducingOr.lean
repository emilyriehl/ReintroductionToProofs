import Game.Metadata

World "DisjunctionWorld"
Level 1

Title "Introducing Or"

Introduction "To prove a disjunction `P ∨ Q` it suffices to supply a proof of either `P` or of `Q`.

Thus under the hypothesis that `P` and `Q` are both true, there are two ways to prove `P ∨ Q`: one using `p : P` and one using `q : Q`.

Note `exact p` or `exact q` won't work as these are proofs of different propositions."

/--
For propositions `P` and `Q`, the `left` tactic converts a goal of `P ∨ Q` to a goal of `P`.
-/
TacticDoc left as "left" in "Or"

/--
For propositions `P` and `Q`, the `right` tactic converts a goal of `P ∨ Q` to a goal of `Q`.
-/
TacticDoc right as "right" in "Or"

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

Conclusion "If this is your first time solving this level, delete your code and prove the same theorem another way."

/- Use these commands to add items to the game's inventory. -/
NewTactic left right
