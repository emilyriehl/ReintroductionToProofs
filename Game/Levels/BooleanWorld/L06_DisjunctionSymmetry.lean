import Game.Metadata

World "BooleanWorld"
Level 6

Title "Disjunction Symmetry"

Introduction "For any booleans `x y : Bool`, `or x y = or y x`, capturing the symmetry of disjunction.

Note Lean has an alternate notation `x || y` for `or x y`.
"

/-- The function `or : Bool → Bool → Bool` is symmetric. -/
Statement (x y : Bool) : or x y = or y x := by
  cases x <;> cases y <;> rfl

Conclusion "This proof can be written in one line as `cases x <;> cases y <;> rfl` where the `<;>` means &ldquo;do the following in all cases&rdquo;."
