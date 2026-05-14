import Game.Levels.TypeWorld

World "FunctionWorld"
Level 1

Title "Identity Function"

/--
For a type `A`, `id : A → A` is the function defined by sending `a : A` to `a : A`.
-/
DefinitionDoc id as "id" in "Function"

Introduction "
The *introduction rule* for function types explains how functions may be constructed.

To define a function from a type `A` to a type `B` one has the following obligation: for an arbitrary element `x : A` of the first type &mdash; a potential *input* to the function &mdash; one must specify an element of type `B` &mdash; the corresponding *output*.

When the goal is a function type `A → B`, start by typing `intro x` to add an arbitrary element `x : A` to the context and update the goal to a term of type `B`.

In other words, one specifies a function of type `A → B` by giving a formula that converts an arbitrary input element of type `A` into its corresponding output element of type `B`.

Using the `intro` tactic &mdash; which is now in the tactic library &mdash; plus the tactics introduced in Type World, you should be able to define your first function.

The identity function is a simple but important example of a function that may be defined for any type `A`. The identity function, denoted `id : A → A`, is defined to carry any element `a : A` to itself.

The goal in this level is to define this function.

If you need help, click the button `Show more help!` for reminders/hints.
"

/--
For a type `A`, the identity function `id : A → A` is the function defined by sending and arbitrary element `a : A` to itself.
-/
Statement {A : Type} : A → A := by
  Hint (hidden := true) "To define a function, in this case an element of type `{A} → {A}`, one must define a rule to convert an arbitrary element `x : {A}` to some element of type `{A}`. Start by typing `intro x` to add an arbitrary element of type `{A}` to the context."
  intro x
  Hint (hidden := true) "Now the goal is an element of type `{A}`, which should be thought of as result of applying the function to the element `{x} : {A}`. In the case of the identity function, we want to return `{x} : {A}` again which is done by typing `exact {x}`."
  exact x

Conclusion "You can solve this level in one line by just giving the entire formula for the function as
`exact fun x ↦ x`, using `\\mapsto` to type `↦`. Here `fun x ↦ x : A → A` is Lean syntax for the identity function. This tells Lean that the answer is the function defined on an input element `x` to have an output value `x`."

NewDefinition id

/-- The `intro` tactic, short for *introduction*, is used to introduce one or more hypotheses when the goal is a function type or an implication. It can be used by itself or followed by names for those hypotheses. For example, when the goal is `P → Q`, type `intro p` to add an assumption `p : P` and update the goal to `Q`. When the goal is `P → Q → R`, type `intro p q` to add assumptions `p : P` and `q : Q` and update the goal to `R`. -/
TacticDoc intro

NewTactic intro
