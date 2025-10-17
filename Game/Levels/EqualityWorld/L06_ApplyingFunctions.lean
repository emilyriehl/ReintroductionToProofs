import Game.Metadata

World "EqualityWorld"
Level 6

Title "Applying Functions"

Introduction "Suppose `f : A → B` is a function.

Let `x y : A` be elements and suppose `p : x = y`.

Then part of what it means for the function `f` to be *well-defined* is that `f x = f y`.

Can you prove this?
"

/-- Functions are well-defined: if `f : A → B` and `x y : A` are equal, then `f x = f y`. -/
Statement {A B : Type} {x y : A} (f : A → B) (p : x = y) : f x = f y  := by
  rw [p]
  rfl

Conclusion "For a function `f : A → B` between types, elements `x y : A`, and a proof `p : x = y`, then `congrArg f p : f x = f y`. This theorem has been added to the library."

/--
For a function `f : A → B` between types, elements `x y : A`, and a proof `p : x = y`, then `congrArg f p : f x = f y`.
-/
TheoremDoc congrArg as "congrArg" in "Eq"

NewTheorem congrArg
