import Game.Metadata

World "EqualityWorld"
Level 10

Title "Boss Level"

Introduction "Stay tuned for a more interesting Boss Level.
"

/-- Functions out of product types are well-defined. -/
Statement {A B C : Type} {a a' : A} {b b' : B} (f g : A × B → C) (p : a = a') (q : b = b') (r : f = g) : f ⟨a, b⟩ = g ⟨a', b'⟩ := by
  rw [r, p, q]

Conclusion "We will meet some further applications of the equality type in Boolean World. Head there next."

-- "The equality type tells us what it means for two *elements* of the same type to be the same. Move on to Equivalence World to learn what it means for two *types* to be the same."
