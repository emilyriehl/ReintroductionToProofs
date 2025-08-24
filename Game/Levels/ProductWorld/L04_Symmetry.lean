import Game.Metadata

World "ProductWorld"
Level 4

Title "Symmetry"

/--
For types `A` and `B`, the swapping function has type `A × B → B × A` and can be thought of as the function that sends a pair `⟨a, b⟩` to the pair `⟨b, a⟩`.
-/
DefinitionDoc Prod.swap as "Prod.swap"

Introduction "The product type comes with function of type `A × B → B × A` which swaps the elements of an ordered pair.

The swap function can be defined by introducing a variable `p : A × B`, projecting to its components `p.1 : A` and `p.2 : B`, then reassembling these to give an element of type `B × A`. "

-- Alternatively, it possible to deconstruct `p : A × B` as a pair of elements using the tactic `cases p` (in which case Lean will generate variable names) or `rcases p with ⟨a , b⟩`.

Statement {A B : Type} : A × B → B × A := by
  Hint (hidden := true) "The goal is a term of a function type so type `intro p` to give yourself a term `p : A × B`."
  intro p
  Hint (hidden := true) "Now the goal is an element of a product type. How can such elements be defined?"
  exact ⟨p.2, p.1⟩

Conclusion "The function just defined is sometimes called `swap` and is now part of the library of definitions on the right."
--  If you solved this level with `cases` or `rcases`, try solving it without, and conversely."

-- NewTactic cases rcases
NewDefinition Prod.swap
