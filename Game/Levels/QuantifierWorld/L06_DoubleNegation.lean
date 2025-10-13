import Game.Metadata

World "QuantifierWorld"
Level 6

Title "Double Negation"

Introduction "Recall the function `not : Bool → Bool` that is defined to send the boolean `false` to `true` and to send the boolean `true` to `false`.

In Boolean World, we proved that `b = not (not b)` for any boolean `b : Bool`.

In this world, we will apply that result to prove that `id = not ∘ not` as functions `Bool → Bool`.
"

/-- The function `id : Bool → Bool` equals the composite of the function `not : Bool → Bool` with itself. -/
Statement : id = not ∘ not := by
  Hint (hidden := true) "Type `ext` to apply function extensionality or `ext b` to apply function extensionality with `b : Bool` the chosen variable."
  ext b
  Hint (hidden := true) "As our previous theorem is not in the library, we'll have to reprove it. Recall `rfl` only applies for *definitional* equalities, and we only have this for certain cases of Booleans. Try `cases {b}`."
  cases b
  rfl
  rfl

Conclusion "We are now ready to move on to the existential quantifier."
