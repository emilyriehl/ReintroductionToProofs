import Game.Metadata

World "QuantifierWorld"
Level 5

Title "Canceling Injectivity"

Introduction "Recall that a function `f : A → B` is *injective* if `∀ x y : A, f x = f y → x = y`.

In this level, we will prove that if `f : A → B` and `g : B → C` are functions, then if the composite `g ∘ f : A → C` is injective, the function `f` must also be injective."

/-- Let `f : A → B` and `g : B → C` be functions and suppose `g ∘ f : A → C` is injective. Then `f : A → B` is also injective. -/
Statement {A B C : Type} (f : A → B) (g : B → C) (gf_is_inj : ∀ x y : A, (g ∘ f) x = (g ∘ f) y → x = y) : ∀ x y : A, f x = f y → x = y := by
  intro x y p
  Hint (hidden := true) "Try applying the hypothesis that `g` is injective."
  apply gf_is_inj
  Hint (hidden := true) "Use `have eq1 : (g ∘ f) {x} = g (f {x}) := rfl` and a similar lemma to give yourself more equalities to rewrite along."
  have eq1 : (g ∘ f) x = g (f x) := rfl
  have eq2 : (g ∘ f) y = g (f y) := rfl
  rw [eq1, eq2, p]

Conclusion "In the next level, we will learn what it means for two functions `f g : A → B` to be *equal*."
