import Game.Metadata

World "ImplicationWorld"
Level 4

Title "Proving Implication"

Introduction "To prove an implication `P → Q` one needs to give a construction of a proof of `Q` from a hypothesized proof of `P`.

In particular, to prove that `P → Q` it suffices to assume that we have a proof `p : P` &mdash; even if `P` is false and such a proof does not exist &mdash; in which case the new goal is to find a proof of `Q`.

When the goal has the form `P → Q`, type `intro p` to introduce an assumption `p : P` and update the goal to proving `Q` &mdash; asking for a proof that `Q` is true under the assumption that `P` is true.

In this level, we will see that for any proposition `P`, `P → P` is true. Indeed, this is the case even if `P` itself is false!"

/-- For any proposition `P`, `P` implies `P` is true. -/
Statement {P : Prop} : P → P := by
  Hint "When the goal has the form `{P} → {P}`, type `intro p` to introduce an assumption `p : {P}` and update the goal to `{P}`.

  It is also possible to type simply `intro` in which case Lean will automatically generate a name for the proof of `{P}`."
  intro p
  Hint (hidden := true) "Now the goal is to prove `{P}` assuming `{p} : {P}`. Which tactic can be used to supply this proof?"
  exact p

Conclusion "Let us now explore other implications that are provable with this strategy."

/- Use these commands to add items to the game's inventory. -/

NewTactic intro
-- NewTheorem Prop.modus_ponens
-- NewDefinition Nat Add Eq
