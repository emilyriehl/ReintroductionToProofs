import Game.Metadata

World "FunctionWorld"
Level 3

Title "Composing functions"

Introduction "Given functions `f : A → B` and `g : B → C` there is a *composite function* from `A` to
`C`.

It is defined to be the function that sends `x : A` first to the element `f x : B` and then
to the element `g (f x) : C`.

Can you solve this level in one line by using `exact fun x ↦ ?` with the appropriate thing in place of the `?`?

Alternatively, you can use other tactics to define the required function step by step."

/-- Given functions `g : B → C` and `f : A → B`, define the composite function `g ∘ f : A → C` that sends `x : A` to `g (f x)`. -/
Statement {A B C : Type} (g : B → C) (f : A → B) : A → C := by
  Hint (hidden := true) "To define a function from `{A}` to `{C}`, type `intro x` to introduce an
  arbitrary element of type `{A}`."
  intro x
  Hint (hidden := true) "Now that the goal is an element of type `{C}` there are several ways to proceed. You can use `exact` or `apply`."
  exact g (f x)

Conclusion "Lean has built in notation for the composite of `f : A → B` and `g : B → C` namely `g ∘ f : A → C`, using `\\circ` to type `∘`.

Given `x : A`, `(g ∘ f) x` is defined to be the element `g (f x)`, which is why the function `g` appears on the left of `f` in the notation `g ∘ f`.

Try solving this level with `exact g ∘ f`."

/--
Given functions `f : A → B` and `g : B → C`, the *composite function* `g ∘ f : A → C` is defined to send `x : A` to the element `g (f x)`.
-/
DefinitionDoc circ as "∘" in "Function"

NewDefinition circ
