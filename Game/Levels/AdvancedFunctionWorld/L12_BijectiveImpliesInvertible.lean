import Game.Levels.AdvancedFunctionWorld.L11_InvertibleImpliesBijective

World "AdvancedFunctionWorld"
Level 12

Title "Bijective Implies Invertible"

Introduction "Suppose `f : A → B` is a bijective function, meaning `f` is both injective and surjective.

Then it follows that `f` is invertible.

The proof is more delicate, however, than the previous case as it requires classical logic rather than constructive logic.

To define an inverse for `f`, we must define a function `g : B → A` that &ldquo;un-does&rdquo; the action of `f`.
For an element `b : B`, we in particular want `g b : A` to be chosen so that `f (g b) = b`.

Our hypothesis that `f` is surjective tells us that `∃ x : A, f x = b`. But it doesn't give us a &ldquo;formula&rdquo; to pick a particular element of `A`.

Instead, we must appeal to something called the *axiom of choice* to make an explicit choice. We will
explain how to do so at that stage in the proof.
"

open Classical

/-- A bijective function is invertible. -/
Statement {A B : Type} (f : A → B) (inj : ∀ x y : A, f x = f y → x = y) (surj : ∀ b : B, ∃ x : A, f x = b) :
    ∃ g : B → A, (∀ a : A, g (f a) = a) ∧ (∀ b : B, f (g b) = b) := by
  constructor
  intro b
  Hint "The idea is to apply the surjectivity hypothesis at `{b}`, using the element `surj {b} : ∃ x : A, f x = {b}`. To extract an element of `a` satisfying this condition type `let a := (surj {b}).choose`."
  let a := (surj b).choose
  Hint "You can also add the proof that your element `{a}` satisfies the equation `f {a} = {b}` to the context by typing `have ahyp : f a = b := (surj b).choose_spec`"
  have ahyp : f a = b := (surj b).choose_spec
  Hint "Now finish the definition of the inverse function with `exact {a}`."
  exact a
  Hint (hidden := true) "You have two things to prove. To break the goals into pieces, type `constructor."
  constructor
  intro x
  Hint (hidden := true) "If `g : B → A` is the name of the inverse function you defined using the axiom of choice, you are now meant to show that `g (f {x}) = {x}` for an arbitrary element `{x} : A`. Here you can apply the injectivity hypothesis by typing `apply inj`."
  apply inj
  Hint (hidden := true) "If `g : B → A` is the name of the inverse function you defined using the axiom of choice, now you are now meant to show that `f (g (f {x})) = f {x}` for an arbitrary element `{x} : A`. This element `g (f ({x}))` was chosen using the surjectivity hypothesis so that when you apply `f` you get the element `f {x}` back. Type `apply (surj f {x}).choose_spec` to apply the other half of the surjectivity hypothesis at the element `f {x} : B`."
  apply (surj (f x)).choose_spec
  intro b
  Hint "Type `apply (surj {b}).choose_spec` to apply the other half of the surjectivity hypothesis."
  apply (surj b).choose_spec

Conclusion "The upshot of this level and the previous one is that in classical logic at least, a function is bijective if and only if it is invertible."



/-- Given a proof `h : ∃ a : A, P a` for some `P : A → Prop`, the axiom of choice selects an element
`h.choose : A`. The theorem `h.choose_spec` then proves the proposition `P (h.choose)`. -/
DefinitionDoc Classical.choose as "choose" in "Classical"

NewDefinition Classical.choose

/-- Given a proof `h : ∃ a : A, P a` for some `P : A → Prop`, `h.choose_spec` gives a proof that the
element `h.choose : A` satisfies `P (h.choose)`. -/
TheoremDoc Classical.choose_spec as "choose_spec" in "Classical"

NewTheorem Classical.choose_spec
