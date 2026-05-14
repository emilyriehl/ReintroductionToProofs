import Game.Levels.ImplicationWorld.L02_ModusPonens

World "ImplicationWorld"
Level 3

Title "Applying Implication"

Introduction "We just proved modus ponens using backwards reasoning.

We were given proofs `p : P` and `h : P → Q` were true and argued that it follows that `Q` is also true.

To show this, we used the proof `h` of the implication `P → Q` to argue that to prove that `Q` is true it suffices to prove that `P` is true.

We then noted that the element `p : P` proves that `P` is true.

Lean also has a syntax that allows us to directly construct a proof of `Q` out of the proofs `p : P` and `h : P → Q`.

The proof `h` can be thought of as a *function* that converts proofs of `P` into proofs of `Q`.

In particular, we can apply the function `h` to the proof `p` to obtain a proof of `Q` denoted by `h p`.

Thus, you can solve this level, proving modus ponens again, simply by typing `exact h p`.
"

/-- If `P` is true and `P → Q` is true, then `Q` is true. -/
Statement {P Q : Prop} (p : P) (h : P → Q) : Q := by
  Hint (hidden := true) "Type `exact h p` to tell Lean that `h p : Q` is a proof of `Q`."
  exact h p

Conclusion "Does this proof of modus ponens feel familiar?"
