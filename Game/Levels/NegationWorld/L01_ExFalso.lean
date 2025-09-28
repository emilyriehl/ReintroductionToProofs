import Game.Metadata

World "NegationWorld"
Level 1

Title "Ex Falso"

Introduction "The proposition `False` has no elements &mdash; there are no proofs of &ldquo;false.&rdquo;.

Consequently, for any other proposition `P`, the implication `False → P` is true.

The task in this level is to prove this.

The proposition `False` is really just another name for the empty type `Empty`, so the same constructions explored in Empty World can be used to prove propositions involving `False`.
"

/-- For any proposition `P`, the implication `False → P` is true. -/
Statement {P : Prop} : False → P := by
  Hint (hidden := true) "The goal is an implication. What tactic can be used to start a proof?"
  intro p
  Hint "Type `cases {p}` to ask Lean to consider all possible cases involving a proof of false. As there are no cases, this will complete the proof."
  cases p

Conclusion "Lean has a built-in name `False.elim : Empty → P` for the theorem you have just proven. Thus `exact False.elim` will also solve this level. This theorem has been added to the library."

TheoremTab "False"

/--
For any proposition `P`, `False.elim : False → P` proves that `False` implies `P`.
-/
TheoremDoc False.elim as "elim" in "False"

NewTheorem False.elim
