import Game.Metadata

World "ImplicationWorld"
Level 8

Title "Modus Ponens Again"

Introduction "Modus ponens tells us that under hypotheses `p : P` and `h : P → Q` then `Q` is true.

In fact there is another syntax that may be used to write this proof. In Lean, we may write `h p : Q` for the proof of `Q` obtained by applying the hypothesis `h : P → Q` to the proof `p : P`.

Can you see why the following theorem is another form of modus ponens?"

/-- If `P` is true, then if `P → Q` is true, then `Q` is true. -/
Statement {P Q : Prop} : P → (P → Q) → Q := by
  intro p
  intro h
  Hint "Since `{h} {p} : {Q}` It is possible to solve this level with `exact {h} {p}`."
  apply h
  exact p

Conclusion "Now we are ready for the boss level!"
