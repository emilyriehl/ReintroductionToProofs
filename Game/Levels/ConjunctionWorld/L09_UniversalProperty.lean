import Game.Metadata

World "ConjunctionWorld"
Level 9

Title "Universal Property"

Introduction "The task in this level is to show another logical equivalence,
this time between the conjoined implications `(P → Q) ∧ (P → R)` and the implication `P → Q ∧ R`.

The proof will require a new idea, which previews the next level. We've seen that for propositions `S` and `T`,
`S → (S → T) → T` can be proven by introducing hypotheses `s : S` and `h : S → T`, at which point the goal is to prove `T`.
Then applying the hypothesis `h` reduces the goal to proving `S` which we know is true by `s`. In fact, the element
`h s : T` is a proof of `T`, namely the proof constructed by applying the hypothesis `h` to the hypothesis `s`.
"

Statement {P Q R : Prop} : (P → Q) ∧ (P → R) ↔ P → Q ∧ R := by
  constructor
  intro gh p
  constructor
  apply gh.1
  exact p
  apply gh.2
  exact p
  intro h
  constructor
  intro p
  Hint "We can apply the proof `{h} : P → Q ∧ R` to the proof `{p}: P` to obtain `{h} {p} : Q ∧ R`. How can these be used to prove the goal?"
  exact (h p).1
  intro p
  Hint "We can apply the proof `{h} : P → Q ∧ R` to the proof `{p}: P` to obtain `{h} {p} : Q ∧ R`. How can these be used to prove the goal?"
  exact (h p).2

Conclusion "Now we are ready for the boss level."

/- Use these commands to add items to the game's inventory. -/
