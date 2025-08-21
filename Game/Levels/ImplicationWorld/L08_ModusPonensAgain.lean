import Game.Metadata

World "ImplicationWorld"
Level 8

Title "Modus Ponens Again"

Introduction "Modus ponens tells us that under hypotheses `p : P` and `h : P → Q` then `Q` is true. Can you see why the following theorem is another form of modus ponens?"

Statement {P Q : Prop} : P → (P → Q) → Q := by
  intro p
  intro h
  apply h
  exact p

Conclusion "Now we are ready for the boss level!"

/- Use these commands to add items to the game's inventory. -/

-- NewTactic intro
-- NewTheorem Prop.modus_ponens
-- NewDefinition Nat Add Eq
