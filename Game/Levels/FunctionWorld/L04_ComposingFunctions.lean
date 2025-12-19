import Game.Levels.FunctionWorld.L03_UsingFunctionsBackwards

World "FunctionWorld"
Level 4

Title "Composing Functions"

Introduction "Given functions `f : A → B` and `g : B → C` there is a *composite function* from `A` to `C`.

It is defined to be the function that sends `x : A` first to the element `f x : B` and then
to the element `g (f x) : C`.

Can you solve this level in one line by using `exact fun x ↦ ?` with the appropriate thing in place of the `?`?

Alternatively, you can use other tactics to define the required function step by step.

To delete a proof (or proof attempt) and start over, you might find it helpful to click on the button labelled `</>` in the upper right hand corner to enter `editor mode`. Then delete all the lines of your first proof (or proof attempt). Clicking on `>_` takes you back to `typewriter mode`.

You can also delete a proof attempt in line by line in `typewriter mode` using the `retry` button to the right of that line."

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
Given functions `f : A → B` and `g : B → C`, the *composite function* `g ∘ f : A → C` is defined to send `x : A` to the element `g (f x)`. *Composition* itself defines a function `Function.comp : (B → C) → (A → B) → (A → C)` between function types.
-/
DefinitionDoc circ as "∘" in "Function"

NewDefinition circ
