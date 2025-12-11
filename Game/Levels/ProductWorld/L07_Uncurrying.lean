import Game.Metadata

World "ProductWorld"
Level 7

Title "Uncurrying"

Introduction "We have seen that the types `A × B → C` and `A → B → C` both provide a notion of function of two variables, with inputs from the types `A` and `B` and output in the type `C`. The difference is that `f : A × B → C` is thought of as a function that takes a pair `⟨a, b⟩ : A × B` to an element of type `C`, while `g : A → B → C` is thought of as a function that takes `a : A` to a function `g a : B → C` (which then takes `b : B` to an element of type `C`).

The process of converting a function of type  `A → B → C` to one of type `A × B → C` is called *uncurrying*. Your task in this level is to define the uncurrying function.
"

/-- Define the uncurrying function, convering a function of two variables into a function out of a product type. -/
Statement {A B C : Type} : (A → B → C) → (A × B → C) := by
  Hint (hidden := true) "The goal is a function type, so start with `intro`."
  intro f
  Hint (hidden := true) "The goal is a function type, so start with `intro`."
  intro p
  Hint (hidden := true) "The goal is a function type, so start with `intro`."
  Hint (hidden := true) "What sort of inputs does the function `{f}` require and how can these be extracted from `{p}`?"
  exact f p.1 p.2

Conclusion "Lean uses the name `Function.uncurry : (A → B → C) → (A × B → C)` for the function you have just defined. This function has been added to the library of definitions.

The operations of *currying* and *uncurrying* are inverses in a sense we will be able to make precise later."

/--
For any types `A`, `B`, and `C`, `Function.uncurry : (A → B → C) → (A × B → C)` is the function that sends `f : A → B → C` to the function that sends `p : A × B` to `f p.1 p.2 : C`.
-/
DefinitionDoc Function.uncurry as "uncurry" in "Function"

NewDefinition Function.uncurry
