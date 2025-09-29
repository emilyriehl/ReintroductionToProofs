import Game.Metadata

World "BooleanWorld"
Level 7

Title "DeMorgan"

Introduction "The DeMorgan laws for booleans take the form of equalities

`not (and x y) = or (not x) (not y)` and

`not (or x y) = and (not x) (not y)`

for all booleans `x y : Bool`.

In Lean's alternate notation the first equality is

`!(x && y) = !x || !y`

while the second equality is

`!(x || y) = !x && !y`.

The objective of this level is to prove these equalities.
"

/-- The DeMorgan equalities relate the operations of conjunction, disjunction, and negation on booleans. -/
Statement (x y : Bool) : (not (and x y) = or (not x) (not y)) ∧ (not (or x y) = and (not x) (not y)) := by
  Hint (hidden := true) "What is the outermost logical connective?"
  constructor
  cases x <;> cases y <;> rfl
  cases x <;> cases y <;> rfl

Conclusion "Can you figure out how you would state other logical equivalences involving true values in a similar fashion?"
