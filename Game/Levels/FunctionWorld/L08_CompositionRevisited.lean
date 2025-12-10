import Game.Metadata

World "FunctionWorld"
Level 8

Title "Composition Revisited"

/--
For types `A`, `B`, and `C`, the function `comp : (B → C) → (A → B) → (A → C)` takes a function `f : A → B` and a function `g : B → C` to the composite function `comp g f : A → C` defined to take `a : A` to the element `g (f a) : C`.
-/
DefinitionDoc comp as "comp" in "Function"

Introduction "Recall that given functions `f : A → B` and `g : B → C` there is a *composite function* from `A` to
`C` denoted `g ∘ f : A → C`, using `\\circ` to type `∘`.

The function `g ∘ f` is defined to be the function that sends `a : A` first to the element `f a : B` and then
to the element `g (f a) : C`.

The goal in this level is to define composition as a multivariable function between function types `comp : (B → C) → (A → B) → (A → C)`.

We think often think of composition as the function that takes `g : B → C` and `f : A → B` to the composite function `comp g f : A → C`.

But it can also be thought of a function that takes `g`, `f`, and `a : A` to the element `g (f a) : C`.

Aside: Lean treats the functions `comp` and `∘` slightly differently because the former uses the usual notation for multivariable functions (where the arguments are provided afterwards as `comp g f`) while the latter uses infix notation (where the function name appears inbetween the two arguments as `g ∘ f`).
"

/-- Define the composition of two functions as a multivariable function between function types. -/
Statement {A B C : Type}: (B → C) → (A → B) → (A → C) := by
  Hint (hidden := true) "To define a function with multiple variables you can apply the intro tactic twice, for instance by typing `intro g f` or even `intro g f a`."
  intro g f a
  Hint (hidden := true) "Now that the goal is an element of type `{C}` there are several ways to proceed. You can use `exact` or `apply`."
  exact g (f a)

Conclusion "Can you solve this level in one line by using `exact fun g f a ↦ ?` with the appropriate thing in place of the `?`?

Can you solve this level in one line by using `exact fun g f ↦ ?` with the appropriate thing in place of the `?`?
"

/--
The `swap` function exchanges the inputs of a function of two variables. For a function with two variables `f : A → B → C`, `swap f : B → A → C` is the function that sends `b : B` and `a : A` to `f a b : C`.
-/
DefinitionDoc Function.swap as "Function.swap" in "Function"

-- hack: can be removed if naming the Statement in level 7 doesn't error anymore
def Function.swap {A B C : Type} : (A → B → C) → (B → A → C) := by
  intro f
  intro b
  intro a
  exact f a b

-- NewDefinition Function.swap

-- NewDefinition comp
