import Game.Metadata

World "ConjunctionWorld"
Level 1

Title "Introducing And"

Introduction "To prove a conjunction `P ∧ Q` we need to supply a proof of both `P` and `Q`."

/--
The `constructor` tactic can be used when the goal is a conjunction (among other settings to be introduced later) to split the goal into cases.
-/

TacticDoc constructor


Statement {P Q : Prop} (p : P) (q : Q) : P ∧ Q := by
  Hint "Use the tactic `constructor` to ask Lean to break up the goal into steps, of first proving `{P}` and then proving `{Q}`."
  constructor
  Hint (hidden := true) "Now the goal is just to prove `P`. Type `exact {p}` to supply this proof."
  exact p
  Hint (hidden := true) "Now Lean reminds you of the other goal, which is to prove `Q`. Which tactic applies here?"
  exact q

Conclusion "Alternatively, you can type `exact ⟨p,q⟩' using '\\\\<' and '\\\\>' to type the angle braces."

/- Use these commands to add items to the game's inventory. -/

NewTactic constructor
-- NewTheorem Prop.modus_ponens
-- NewDefinition Nat Add Eq
