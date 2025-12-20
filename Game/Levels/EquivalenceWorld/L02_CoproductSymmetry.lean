import Game.Levels.EquivalenceWorld.L01_ProductSymmetry

World "EquivalenceWorld"
Level 2

Title "Coproduct Symmetry"

Introduction "Recall that for any types `A` and `B`, we may form their *coproduct type* `A ⊕ B`.

We proved that there are canonical functions `A ⊕ B → B ⊕ A` and `B ⊕ A → A ⊕ B`.

In this level, we will see that these functions define an equivalence between the type `A ⊕ B` and the type `B ⊕ A`. This gives a more complete account of the symmetry of the coproduct.

To define this equivalence, we need four pieces of data. Start by typing `constructor` to tell Lean to ask you to supply each piece of data one at a time.
"

/-- For any types `A` and `B`, the coproduct types `A ⊕ B` and `B ⊕ A` are equivalent. -/
Statement {A B : Type} : (A ⊕ B) ≃ (B ⊕ A) := by
  constructor
  Hint (hidden := true) "Now Lean wants you to define a function `A ⊕ B → B ⊕ A`. You can either define this again or find this function in your library."
  exact Sum.swap
  Hint (hidden := true) "Now Lean wants you to define a function `B ⊕ A → A ⊕ B`. You can either define this again or find this function in your library."
  exact Sum.swap
  Hint "Now Lean wants you to check that the first function followed by the second function yields the identity function at every element `p : A ⊕ B`. Start with `intro p`."
  intro p
  Hint (hidden := true) "The functions you have just defined are not definitionally inverses on all elements `{p} : A ⊕ B`. This is why `rfl` fails. Try splitting `{p}` into cases first."
  rcases p with a | b <;> rfl
  Hint "Now Lean wants you to check that the first function followed by the second function yields the identity function at every element `p : B ⊕ A`. Start with `intro p`."
  intro p
  Hint (hidden := true) "The functions you have just defined are not definitionally inverses on all elements `{p} : B ⊕ A`. This is why `rfl` fails. Try splitting `{p}` into cases first."
  rcases p with b | a <;> rfl

Conclusion "In the next level, we will establish the first of several equivalences involving function types."
