import Game.Levels.AdvancedFunctionWorld.L05_Injectivity

World "AdvancedFunctionWorld"
Level 6

Title "Composing Injectivity"

Introduction "Recall that a function `f : A → B` is *injective* if `∀ x y : A, f x = f y → x = y`.

In this level, we will prove that if `f : A → B` and `g : B → C` are both injective functions, then the composite `g ∘ f : A → C` must also be injective."

/-- If `f : A → B` and `g : B → C` are both injective functions, then `g ∘ f : A → C` is also injective.-/
TheoremDoc ReintroductionToProofs.Function.Injective.comp as "Injective.comp" in "Function"

namespace ReintroductionToProofs

/-- If `f : A → B` and `g : B → C` are both injective functions, then `g ∘ f : A → C` is also injective.-/
Statement Function.Injective.comp {A B C : Type} (f : A → B) (g : B → C) (f_is_inj : ∀ x y : A, f x = f y → x = y) (g_is_inj : ∀ x y : B, g x = g y → x = y) : ∀ x y : A, (g ∘ f) x = (g ∘ f) y → x = y := by
  intro x y p
  Hint (hidden := true) "You have two similar hypothesis. Only one of them applies. Which one is it? Try using the tactic `apply`"
  apply f_is_inj
  Hint (hidden := true) "You have two similar hypothesis. Only one of them applies. Which one is it? Try using the tactic `apply`"
  apply g_is_inj
  Hint (hidden := true) "Your goal `g (f {x}) = g (f {y})` is very similar to one of your assumptions `(g ∘ f) {x} = (g ∘ f) {y}`. Try `exact {p}`."
  exact p

Conclusion "Alternatively, you could prove lemmas by `have eq : ∀ a : A, (g ∘ f) a = g (f a) := fun a ↦ rfl` and then use rewrites to convert the goal into one where you can apply the hypothesis `(g ∘ f) x = (g ∘ f) y`. Because the lemmas hold by definitional equality, you were able to skip that step."

end ReintroductionToProofs
