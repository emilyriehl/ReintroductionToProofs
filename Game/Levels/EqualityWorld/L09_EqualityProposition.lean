import Game.Metadata

World "EqualityWorld"
Level 9

Title "Equality Proposition"

Introduction "Given any type `A` and any elements `x y : A`, the *equality type* defines a type `x = y`.

This type is also a proposition, meaning that it has at most one element.

Put more precisely, if `p q : x = y` are two proofs that `x` equals `y`, then definitionally we have that `p = q`.
"

/-- The equality type is a proposition: for `x y : A` if `p q : x = y` then `p = q` -/
Statement {A : Type} {x y : A} (p q : x = y) : p = q  := by
  rfl

Conclusion "We are now ready for the Boss Level of Equality World."
