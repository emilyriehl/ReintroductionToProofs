import Game.Metadata

World "ImplicationWorld"
Level 7

Title "On Parentheses"

Introduction "For propositions `P`, `Q`, and `R`, the propositions `(P → Q) → R` and `P → (Q → R)` are not the same. The first asserts that `R` is true assuming `P → Q`. The second asserts that `Q → R` is true assuming `P`, or equivalently, that `R` is true assuming `P` and also assuming `Q`.

Mathematical statements of this second form `P → (Q → R)` are much more common. Thus the shorthand `P → Q → R` implicitly refers to `P → (Q → R)`, not to the other parenthesization. More generally, `P → Q → R → S → T` refers to `P → (Q → (R → (S → T)))`. Explicit parentheses must be used to express statements with any other parenthesizations."

Statement {P Q R : Prop} : (P → Q) → (Q → R) → (P → R) := by
  Hint "As the goal is to prove an implication, the tactic `intro` can be used to introduce a hypothesis and update the goal. Before using this tactic, try to figure out which hypothesis will be assumed and what the goal will be, using the discussion about the implicit parenthesization above."
  intro h1
  Hint (hidden := true) "As the goal is to prove an implication, the tactic `intro` can be used to introduce a hypothesis and update the goal. Before using this tactic, try to figure out which hypothesis will be assumed and what the goal will be, using the discussion about the implicit parenthesization above."
  intro h2
  Hint (hidden := true) "As the goal is to prove an implication, the tactic `intro` can be used to introduce a hypothesis and update the goal. Before using this tactic, try to figure out which hypothesis will be assumed and what the goal will be, using the discussion about the implicit parenthesization above."
  intro p
  Hint (hidden := true) "Now you can start to apply some hypotheses to reduce the goal to one of your assumptions. Which tactic can be used here?"
  apply h2
  apply h1
  exact p

Conclusion "Let us now explore other implications that are provable with this strategy."

/- Use these commands to add items to the game's inventory. -/

-- NewTactic intro
-- NewTheorem Prop.modus_ponens
-- NewDefinition Nat Add Eq
