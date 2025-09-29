import Game.Metadata

World "EqualityWorld"
Level 8

Title "Empty Proposition"

Introduction "Recall the empty type `Empty` which has no elements.

The empty type is also a proposition: if `x y : Empty`, then `x = y`. Can you prove this?
"

/-- The empty type is a proposition: for `x y : Empty`, `x = y`. -/
Statement {x y : Empty} : x = y  := by
  Hint (hidden := true) "Use the `cases` tactic to consider all possible cases for elements of `Empty`."
  cases x

Conclusion "In the next level, we will see that the equality type is itself a proposition."
