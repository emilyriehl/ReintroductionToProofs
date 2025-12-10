import Game.Metadata

World "ImplicationWorld"
Level 2

Title "Modus Ponens"

Introduction "Now we are in the setting of two proposition variables `P` and `Q` with two hypotheses. The first assumption provides a proof `p` that the proposition `P` is true. The second provides a proof `h` that the implication `P → Q` is true.

It follows from both of these facts that `Q` is also true and we can construct a proof by applying the hypothesis `h` to the proof `p`.

This line of reasoning has the Latin name *modus ponens*.
"

/-- If `P` is true and `P → Q` is true, then `Q` is true. -/
Statement {P Q : Prop} (p : P) (h : P → Q) : Q := by
  Hint "The hypothesis `{h}` can be used to convert a proof of `{P}` into a proof of `{Q}`. This can be thought of as a step that reduces the problem of proving `{Q}` to the problem of proving `{P}`. To apply this hypothesis type `apply {h}`."
  apply h
  Hint "Now your goal is a proof of `{P}`. Can you figure out how to finish the proof? If you need a reminder, click the button `Show more help!`"
  Hint (hidden := true) "Type `exact {p}` to tell Lean that `{p}` is a proof of `{P}`."
  exact p

Conclusion "Does this proof of modus ponens feel familiar?"
