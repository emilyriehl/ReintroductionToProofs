import Game.Metadata

World "FunctionWorld"
Level 9

Title "Boss Level"


Introduction "For the function Boss Level, we consider an arbitrary pair of types, which we call `V` and `K` because the function to be defined below has a connection to linear algebra that is not explained here. Can you define it?
"

Statement {K V : Type} : ((((V → K) → K) → K) → K) → ((V → K) → K) := by
  intro μ
  intro φ
  apply μ
  intro α
  apply α
  exact φ

Conclusion "Move on to Product World to meet a second type forming operation."
