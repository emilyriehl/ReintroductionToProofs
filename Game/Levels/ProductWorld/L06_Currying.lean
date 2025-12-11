import Game.Metadata

World "ProductWorld"
Level 6

Title "Currying"

Introduction "Consider a function `f : A × B → C` mapping out of a product type.

This function takes an ordered pair of elements &mdash; defined from `a : A` and `b : B` &mdash; and returns an element of type `C` denoted by `f ⟨a,b⟩`. Does this sound familiar?

Recall that terms of type `g : A → B → C` are functions of two variables.

The function `g` takes a list of two elements `a : A` and `b : B` and returns an element of type `C` denoted by `g a b : C`.

In summary, the types `A × B → C` and `A → B → C` both provide a notion of function of two variables, with inputs from the types `A` and `B` and output in the type `C`.

The difference is that `f : A × B → C` is thought of as a function that takes a pair `⟨a, b⟩ : A × B` to an element of type `C`, while `g : A → B → C` is thought of as a function that takes `a : A` to a function `g a : B → C` (which then takes `b : B` to an element of type `C`).

The process of converting a function of type `A × B → C` to one of type `A → B → C` is called *currying*. Your task in this level is to define the currying function.
"

/-- Define the currying function, convering a function out of a product type into a function of two variables. -/
Statement {A B C : Type} : (A × B → C) → (A → B → C) := by
  Hint (hidden := true) "The goal is a function type, so start with `intro`."
  intro f
  Hint (hidden := true) "The goal is a function type, so start with `intro`."
  intro a
  Hint (hidden := true) "The goal is a function type, so start with `intro`."
  intro b
  Hint (hidden := true) "What sort of inputs does the function `{f}` require?"
  exact f ⟨a, b⟩

Conclusion "Lean uses the name `Function.curry : (A × B → C) → (A → B → C)` for the function you have just defined. This function has been added to the library of definitions.

We'll now study the reverse process, which converts a function of type `A → B → C` to a function of type `A × B → C`."

/--
For any types `A`, `B`, and `C`, `Function.curry : (A × B → C) → (A → B → C)` is the function that sends `f : A × B → C` to the function that sends `a : A` and `b : B` to `f ⟨a, b⟩ : C`.
-/
DefinitionDoc Function.curry as "curry" in "Function"

NewDefinition Function.curry
