import Game.Metadata

World "ImplicationWorld"
Level 5

Title "Proving Assumption"

Introduction "To prove an implication `S → T` one needs to give a construction of a proof of `T` from a proof of `S`. As we will see in the following example, it is not necessary to actually *use* the assumption that `S` is true after introducing it."

Statement {P Q : Prop} (p : P) : Q → P := by
  Hint (hidden := true) "To prove an implication, which in this case has the form `{Q} → {P}`, type `intro q` to introduce an assumption `q : {Q}` --- assuming the first proposition is true --- and update the goal to `{P}` --- asking for a proof that the second proposition is true using this new assumption.

  It is also possible to type simply `intro` in which case Lean will automatically generate a name for the proof of `{Q}`."
  intro
  Hint (hidden := true) "Now the goal is to prove `{P}` using *any* of our given hypotheses. Which tactic can be used to supply this proof?"
  exact p

Conclusion "Let us now explore other implications that are provable with this strategy."

/- Use these commands to add items to the game's inventory. -/

-- NewTactic intro
-- NewTheorem Prop.modus_ponens
-- NewDefinition Nat Add Eq
