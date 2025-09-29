import Game.Metadata

World "EqualityWorld"
Level 5

Title "Transitivity"

Introduction "We've seen that equality is *reflexive*, meaning that `x = x` for any element `x : A`.

We've also proven that equality is *symmetric*: if `x = y` then `y = x`.

In this level, we will prove that equality is *transitive*: if `x = y` and `y = z`, then `x = z`.
"

/-- Equality is transivite: if `x = y` and `y = z` then `x = z`. -/
Statement {A : Type} {x y z : A} (p : x = y) (q : y = z) : x = z  := by
  rw [← q, ← p]

Conclusion "Try solving the goal by rewriting in both directions. You can also experiment with multiple rewrites at once. Why does `rw [p, q]` work but `rw [q, p]` not? Why does `rw [← q, ← p]` work but `rw [← p, ← q]` not?"
