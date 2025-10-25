import Game.Metadata

World "BooleanWorld"
Level 4

Title "Conjunction Symmetry"

Introduction "For any booleans `x y : Bool`, `and x y = and y x`, capturing the symmetry of conjunction.

Note Lean has an alternate notation `x && y` for `and x y`.
"

/-- The function `and : Bool → Bool → Bool` is symmetric. -/
Statement (x y : Bool) : and x y = and y x := by
  Hint (hidden := true) "Recall `cases h : x` and `cases k :
  cases y` may make it clearer which cases are which."
  cases x
  cases y
  rfl
  rfl
  cases y
  rfl
  rfl

Conclusion "This proof can be written in one line as `cases x <;> cases y <;> rfl` where the `<;>` means &ldquo;do the following in all cases&rdquo;."
