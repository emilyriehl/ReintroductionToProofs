import Game.Levels.ImplicationWorld.L05_ProvingImplication

World "ImplicationWorld"
Level 6

Title "Proving Implied Assumption"

Introduction "To prove an implication `S → T` one needs to give a construction of a proof of `T` from a proof of `S`. As we will see in the following example, it is not necessary to actually *use* the assumption that `S` is true after introducing it.

In this level we will consider two propositions `P` and `Q` and assume that the proposition `P` is true.

It follows that `Q → P` is true, no matter whether `Q` is true or false. Can you prove this?"

/-- If `P` is true, then for any proposition `Q`, `Q → P` is always true. -/
Statement {P Q : Prop} (p : P) : Q → P := by
  Hint (hidden := true) "To prove an implication, which in this case has the form `{Q} → {P}`, type `intro q` to introduce an assumption `q : {Q}` and update the goal to `{P}`."
  intro
  Hint (hidden := true) "Now the goal is to prove `{P}` using *any* of our given hypotheses. Which tactic can be used to supply this proof?"
  exact p

Conclusion "The proof of an implication constructs a function which converts a proof of the first proposition into a proof of the second function. Try solving this level again by typing `exact fun _ ↦ p
`, using `\\mapsto` to type the `↦` symbol.
"
