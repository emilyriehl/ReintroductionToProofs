import Game.Metadata

World "FunctionWorld"
Level 1

Title "Identity Function"

/--
For a type `A`, `id : A → A` is the function defined by sending `a : A` to `a : A`.
-/
DefinitionDoc id as "id"

Introduction "The simplest example of a function is the identity function, which may be defined for any type `A`. The identity function
`id : A → A` is defined to carry any element `a : A` to itself.

To define a function `f : A → B` one must define a rule that converts an arbitrary element `x : A` to some element of type `B`. Start by typing `intro x` to add an arbitrary element `x : A` to the context and update the goal to a term of type `B`."

Statement {A : Type} : A → A := by
  Hint "To define a function, in this case a term of type `{A} → {A}`, one must define a rule to convert an arbitrary element `x : {A}` to some element of type `{A}`. Start by typing `intro x` to add an arbitrary element of type `{A}` to the context."
  intro x
  Hint "Now the goal is an element of type `{A}`, which should be thought of as result of applying the function to the element `{x} : {A}`. In the case of the identity function, we want to return `{x} : {A}` again which is done by typing `exact {x}`."
  exact x

Conclusion "You can solve this level in one level by just giving the entire formula for the function as
`exact fun x ↦ x`, using `\\mapsto` to type `↦`. This tells Lean that the answer is the function defined on an input element `x` to have an output value `x`."

NewDefinition id
