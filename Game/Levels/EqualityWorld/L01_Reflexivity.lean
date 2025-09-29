import Game.Metadata

World "EqualityWorld"
Level 1

Title "Reflexivity"

Introduction "Let `A` be a type with an element `a : A`. Then the proposition `a = a` is always true
because there is a proof `rfl : a = a` witnessing the *reflexivity* of equality.

In Lean, `rfl` is a name for an element of the type `a = a`. So to produce a proof of `a = a`, you
can type `exact rfl`. As a shorthand, Lean also defines a tactic called `rfl` that is shorthand for
`exact rfl`. So you can solve the goal by typing simply `rfl`.
"

/--
For a type `A` and element `a : A`, the proposition `a = a` is true because there is a proof
`rfl : a = a` witnessing the reflexivity of equality.
-/
TheoremDoc rfl as "rfl" in "Eq"

Statement {A : Type} {a : A} : a = a := by
  rfl

/-- The tactic `rfl` tries to solve a goal whose type is an equality where the left hand side and right hand side are equal by definition. -/
TacticDoc rfl

NewTheorem rfl
NewTactic rfl

Conclusion "In summary, a basic axiom of equality is *reflexivity*:
for any `a : A`, `a = a` is always true."
