import Game.Metadata

World "ImplicationWorld"
Level 6

Title "Proving Assumed Implication"

Introduction "There are two ways to prove that `P → Q` under the assumption given below. Can you find them both?

To delete a proof (or proof attempt) and start over, you might find it helpful to click on the button labelled `</>` in the upper right hand corner to enter `editor mode`. Then delete all the lines of your first proof (or proof attempt). Clicking on `>_` takes you back to `typewriter mode`.

You can also delete a proof attempt in line by line in `typewriter mode` using the `retry` button to the right of that line."


Statement {P Q : Prop} (h : P → Q) : P → Q := by
  Hint (hidden := true) "Which tactics can be used to prove `{P} → {Q}` with our given assumptions?"
  Branch
    intro p
    Hint (hidden := true) "Now the goal is to prove `{Q}` using the hypotheses `{h} : {P} → {Q}` and `{p} : {P}`. Is this a problem we have seen before?"
    apply h
    exact p
  exact h

Conclusion "Let us now explore other implications that are provable with this strategy."

/- Use these commands to add items to the game's inventory. -/

-- NewTactic intro
-- NewTheorem Prop.modus_ponens
-- NewDefinition Nat Add Eq
