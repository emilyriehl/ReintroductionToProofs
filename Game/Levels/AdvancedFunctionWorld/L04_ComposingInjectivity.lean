import Game.Metadata

World "QuantifierWorld"
Level 4

Title "Composing Injectivity"

Introduction "Recall that a function `f : A → B` is *injective* if `∀ x y : A, f x = f y → x = y`.

In this level, we will prove that if `f : A → B` and `g : B → C` are both injective functions, then the composite `g ∘ f : A → C` must also be injective."

/-- Let `f : A → B` and `g : B → C` be injective functions. Then `g ∘ f : A → C` is injective.-/
Statement {A B C : Type} (f : A → B) (g : B → C) (f_is_inj : ∀ x y : A, f x = f y → x = y) (g_is_inj : ∀ x y : B, g x = g y → x = y) : ∀ x y : A, (g ∘ f) x = (g ∘ f) y → x = y := by
  intro x y p
  Hint (hidden := true) "You have two similar hypothesis. Only one of them applies. Which one is it?"
  apply f_is_inj
  Hint (hidden := true) "You have two similar hypothesis. Only one of them applies. Which one is it?"
  apply g_is_inj
  Hint (hidden := true) "Your goal `g (f {x}) = g (f {y})` is very similar to one of your assumptions `(g ∘ f) {x} = (g ∘ f) {y}`. Try `exact {p}`."
  exact p

Conclusion "Alternatively, you could prove lemmas by `have eqx : (g ∘ f) x = g (f x) := rfl` and then use rewrites to convert the goal into one where you can apply the hypothesis `(g ∘ f) x = (g ∘ f) y`. Because the lemmas hold by definitional equality, you were able to skip that step."
