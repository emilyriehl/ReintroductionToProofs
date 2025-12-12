import Game.Metadata

World "EqualityWorld"
Level 2

Title "Paired Projections"

Introduction "Consider an element in a product type `p : A × B`. Using the projections, we obtain terms
`p.1 : A` and `p.2 : B`. These can then be paired back to form an element `⟨p.1, p.2⟩ : A × B` in the product type.

What is the relationship between `p` and `⟨p.1, p.2⟩`?

Firstly, both of these are elements of the same type, namely `A × B`. Thus, there is a mathematically meaningful proposition
`p = ⟨p.1, p.2⟩` because in general it makes mathematical sense to ask whether `x = y` whenever `x` and `y` are both terms belonging to the same type.

In this case one of the *computation rules* for product types tells us that the proposition
 `p = ⟨p.1, p.2⟩` is true, essentially by definition of the projection and pairing functions associated to products. Thus the proof is again by reflexivity and we have `rfl : p = ⟨p.1, p.2⟩`.

Note Lean uses `p.fst` and `p.snd` as synonyms for `p.1` and `p.2` respectively."

/-- A term `p : A × B` in a product type is definitionally equal to the pairing of its projections `⟨p.1, p.2⟩`. -/
Statement {A B : Type} (p : A × B) : p = ⟨p.1, p.2⟩ := by
  rfl

Conclusion "In summary, `rfl` can also be used to prove propositions of the form `x = y` when `x` and `y` are equal *by definition* (rather than by a more complicated chain of reasoning)."
