import Game.Metadata

World "EquivalenceWorld"
Level 2

Title "Coproduct Symmetry"

Introduction "Recall that for any types `A` and `B`, we may form their *coproduct type* `A ⊕ B`.

We proved that there are canonical functions `A ⊕ B → B ⊕ A` and `B ⊕ A → A ⊕ B`.

In this level, we will see that these functions define an equivalence between the type `A ⊕ B` and the type `B ⊕ A`. This gives a more complete account of the symmetry of the coproduct.

To define this equivalence, we need four pieces of data. Start by typing `constructor` to ask Lean to ask you about each piece of data one at a time.
"

/-- For any types `A` and `B`, the coproduct types `A ⊕ B` and `B ⊕ A` are equivalent. -/
Statement {A B : Type} : (A ⊕ B) ≃ (B ⊕ A) := by
  Hint "Type `constructor` to split the goal up into the four proof obligations."
  constructor
  intro p
  rcases p with a | b
  right
  exact a
  left
  exact b
  intro p
  rcases p with b | a
  right
  exact b
  left
  exact a
  intro p
  Hint (hidden := true) "The functions you have just defined are not definitionally inverses on all elements `{p} : A ⊕ B`. This is why `rfl` fails. Try splitting `{p}` into cases first."
  rcases p with a | b <;> rfl
  intro p
  Hint (hidden := true) "The functions you have just defined are not definitionally inverses on all elements `{p} : B ⊕ A`. This is why `rfl` fails. Try splitting `{p}` into cases first."
  rcases p with b | a <;> rfl

Conclusion "In the next level, we will establish the first of several equivalences involving function types."
