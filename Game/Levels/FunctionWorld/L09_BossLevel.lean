import Game.Metadata

World "FunctionWorld"
Level 9

Title "Boss Level"


Introduction "For the function Boss Level, we consider an arbitrary pair of types, which we call `V` and `F` &mdash; for *vector space* and *field* respectively &mdash; because the function to be defined below has a connection to linear algebra that is not explained here.

Can you define it?
"

/-- Given a function of type `((((V → F) → F) → F) → F)` there is a canonically defined function of type `(V → F) → F`. -/
Statement {F V : Type} : ((((V → F) → F) → F) → F) → ((V → F) → F) := by
  intro μ
  intro φ
  apply μ
  intro α
  apply α
  exact φ

Conclusion "Move on to Product World to meet a second type forming operation."
