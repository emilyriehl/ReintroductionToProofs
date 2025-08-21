import Game.Metadata

World "ImplicationWorld"
Level 3

Title "Composing Implication"

Introduction "Now we are in the setting of three proposition variables `P`, `Q`, and `R` with several hypotheses. The first assumption provides a proof `p` that the proposition `P` is true. The second provides a proof `h1` that the implication `P → Q` is true. The final hypothesis provides a proof `h2` that `Q → R` is true. Our goal is to conclude that `R` is true.

If you need help, click the button `Show more help!` for reminders/hints."

Statement {P Q R : Prop} (p : P) (h1 : P → Q) (h2 : Q → R) : R := by
  Hint (hidden := true) "In the presence of a hypothesis `h : S → T`, the tactic `apply h` reduces the problem of proving `T` to the problem of proving `S`. Can this be used here?"
  apply h2
  Hint (hidden := true) "In the presence of a hypothesis `h : S → T`, the tactic `apply h` reduces the problem of proving `T` to the problem of proving `S`. Can this be used here?"
  apply h1
  Hint (hidden := true) "If the goal is to prove `S` and we have a hypothesis `s : S`, the tactic `exact s` supplies the required proof."
  exact p

Conclusion "Congratulations!"

/- Use these commands to add items to the game's inventory. -/

-- NewTactic apply
-- NewTheorem Prop.modus_ponens
-- NewDefinition Nat Add Eq
