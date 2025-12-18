import Game.Metadata

World "NegationWorld"
Level 2

Title "Negation"

Introduction "Given a proposition `P`, the *negation* of `P` &mdash; abbreviated `¬ P` &mdash; is defined to be the proposition `P → False`.

If we have a proof of `¬ P` and also a proof of `P` then we get something very strange: a proof of `False`!

This can be expressed in various different ways, as we shall see over the next few levels.

In this level, we encode this statement in the way that allows for the simplest proof.

In subsequent levels, we shall express this tautology in several logically equivalent forms.
"

/-- For any proposition `P`, if `¬ P` and `P` are both true, then we obtain a proof of `False`. -/
Statement {P : Prop} : ¬ P → P → False := by
  Hint (hidden := true) "The goal is to prove an implication. What tactic can be used to get started?"
  intro np
  Hint (hidden := true) "The goal is to prove an implication. What tactic can be used to get started?"
  intro p
  Hint (hidden := true) "We have an assumption `{np} : P → False`. What can be done with a proof of implication?"
  exact np p

Conclusion "There are various ways to solve this level. You might enjoy searching for a shorter proof. For instance, there is a proof that takes just line and involves eight characters."

/--
`¬ P`, read as &ldquo; not `P`&rdquo; is an abbreviation for `P → False`. Use `\neg` to type `¬`.
-/
DefinitionDoc neg as "¬" in "Logic"

NewDefinition neg
