import Game.Metadata

World "ImplicationWorld"
Level 5

Title "Proving Implied Assumption"

Introduction "To prove an implication `S → T` one needs to give a construction of a proof of `T` from a proof of `S`. As we will see in the following example, it is not necessary to actually *use* the assumption that `S` is true after introducing it."

/-- If `P` is true, then for any proposition `Q`, `Q → P` is always true. -/
Statement {P Q : Prop} (p : P) : Q → P := by
  Hint (hidden := true) "To prove an implication, which in this case has the form `{Q} → {P}`, type `intro q` to introduce an assumption `q : {Q}` and update the goal to `{P}`.

  It is also possible to type simply `intro` in which case Lean will automatically generate a name for the proof of `{Q}`."
  intro
  Hint (hidden := true) "Now the goal is to prove `{P}` using *any* of our given hypotheses. Which tactic can be used to supply this proof?"
  exact p

Conclusion "Let us now explore other implications that are provable with this strategy."
