import Game.Metadata

World "ProductWorld"
Level 4

Title "Symmetry"

/--
For types `A` and `B`, the swapping function has type `A × B → B × A` and can be thought of as the function that sends a pair `⟨a, b⟩` to the pair `⟨b, a⟩`.
-/
DefinitionDoc Prod.swap as "Prod.swap" in "Prod"

Introduction "
The product type comes with function of type `A × B → B × A` which swaps the elements of an ordered pair.

This function can be defined by using the elimination rule for product types to map out of `A × B` followed by the introduction rule for product types to map into `B × A`.

The swap function can be defined by introducing a variable `p : A × B`, projecting to its components `p.1 : A` and `p.2 : B`, then reassembling these to give an element of type `B × A`.

Can you define this function?"

-- Alternatively, it possible to deconstruct `p : A × B` as a pair of elements using the tactic `cases p` (in which case Lean will generate variable names) or `rcases p with ⟨a , b⟩`.

/-- Product types are symmetric: an element of type `A × B` has a corresponding element of type `B × A` with components swapped. -/
Statement {A B : Type} : A × B → B × A := by
  Hint (hidden := true) "The goal is a term of a function type so type `intro p` to give yourself a term `p : A × B`."
  intro p
  Hint (hidden := true) "Now the goal is an element of a product type. How can such elements be defined?"
  exact ⟨p.2, p.1⟩

Conclusion "Are function types symmetric? Why or why not?"

-- "The function just defined is sometimes called `swap` and is now part of the library of definitions on the right."
--  If you solved this level with `cases` or `rcases`, try solving it without, and conversely."

-- NewTactic cases rcases

NewDefinition Prod.swap
