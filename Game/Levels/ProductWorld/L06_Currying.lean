import Game.Metadata

World "ProductWorld"
Level 6

Title "Currying"

/--
The function `curry : (A × B → C) → (A → B → C)` converts a function out of a product type `A × B` into `C` into a function from the type `A` to the type of functions `B → C`.
-/
DefinitionDoc curry as "curry"

Introduction "Consider a function `f : A × B → C` mapping out of a product type. This function takes an ordered pair of elements, one from `A` and one from `B` and returns an element of type `C` denoted by `f ⟨a,b⟩`. Does this sound familiar?

Recall that terms of type `g : A → B → C` were functions of two variables. The function `g` takes `a : A` and `b : B` and returns an element of type `C` denoted by `g a b : C`, which is basically

In summary, the types `A × B → C` and `A → B → C` both provide a notion of function of two variables, with inputs from the types `A` and `B` and output in the type `C`. The difference is that `f : A × B → C` is thought of as a function that takes a pair `⟨a, b⟩ : A × B` to an element of type `C`, while `g : A → B → C` is thought of as a function that takes `a : A` to a function `g a : B → C` (which then takes `b : B` to an element of type `C`).

The process of converting a function of type `A × B → C` to one of type `A → B → C` is called *currying* and is defined by the function below.
"

Statement {A B C : Type} : (A × B → C) → (A → B → C) := by
  Hint (hidden := true) "The goal is a function type, so start with `intro`."
  intro f
  Hint (hidden := true) "The goal is a function type, so start with `intro`."
  intro a
  Hint (hidden := true) "The goal is a function type, so start with `intro`."
  intro b
  Hint (hidden := true) "What sort of inputs does the function `{f}` require?"
  exact f ⟨a, b⟩


Conclusion "We'll now study the reverse process, which converts a function of type `A → B → C` to a function of type `A × B → C`."

NewDefinition curry
