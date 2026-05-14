import Game.Levels.AdvancedFunctionWorld.L06_ComposingInjectivity

World "AdvancedFunctionWorld"
Level 7

Title "Canceling Injectivity"

Introduction "Recall that a function `f : A → B` is *injective* if `∀ x y : A, f x = f y → x = y`.

In this level, we will prove that if `f : A → B` and `g : B → C` are functions, then if the composite `g ∘ f : A → C` is injective, the function `f` must also be injective."

/-- For functions `f : A → B` and `g : B → C` if `g ∘ f` is injective, then so is `f`. -/
TheoremDoc ReintroductionToProofs.Function.Injective.of_comp as "Injective.of_comp" in "Function"

namespace ReintroductionToProofs

/-- For functions `f : A → B` and `g : B → C` if `g ∘ f` is injective, then so is `f`. -/
Statement Function.Injective.of_comp {A B C : Type} (f : A → B) (g : B → C) (gf_is_inj : ∀ x y : A, (g ∘ f) x = (g ∘ f) y → x = y) : ∀ x y : A, f x = f y → x = y := by
  intro x y p
  Hint (hidden := true) "Try applying the hypothesis that `g` is injective."
  apply gf_is_inj
  Hint (hidden := true) "Use `have eq1 : (g ∘ f) {x} = g (f {x}) := rfl` and a similar lemma to give yourself more equalities to rewrite along."
  have eq : ∀ x : A, (g ∘ f) x = g (f x) := fun x ↦ rfl
  rw [eq x, eq y, p]
  rfl

Conclusion "In the next level, we will learn what it means for a function to be both injective and surjective."

end ReintroductionToProofs
