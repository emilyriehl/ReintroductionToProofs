import Game.Metadata

World "EqualityWorld"
Level 10

Title "Boss Level"

Introduction "Stay tuned for a more interesting Boss Level.
"

/-- The equality type is a proposition: for `x y : A` if `p q : x = y` then `p = q` -/
Statement {A B C : Type} {a a' : A} {b b' : B} (f g : A × B → C) (p : a = a') (q : b = b') (r : f = g) : f ⟨a, b⟩ = g ⟨a', b'⟩ := by
  rw [r, p, q]

Conclusion "The equality type tells us what it means for two *elements* of the same type to be the same. Move on to Equivalence World to learn what it means for two *types* to be the same."
