import Game.Metadata

World "QuantifierWorld"
Level 4

Title "Injectivity"

Introduction "Let `f : A → B` be a function.

In Equality World, we proved that all functions are *well-defined*, meaning `∀ x y : A, x = y → f x = f y`.

However, it is not necessarily the case that `∀ x y : A, f x = f y → x = y`. Functions with this property are called *injective*.

In this level, we will prove that if `f : A → B` and `g : B → C` are functions, then if the composite `g ∘ f : A → C` is injective, the function `f` must also be injective."

/-- Let `f : A → B` and `g : B → C` be functions and suppose `g ∘ f : A → C` is injective. Then `f : A → B` is also injective. -/
Statement {A B C : Type} (f : A → B) (g : B → C) (g_is_inj : ∀ x y : A, g (f x) = g (f y) → x = y) : ∀ x y : A, f x = f y → x = y := by
  intro x y p
  Hint (hidden := true) "Try applying the hypothesis that `g` is injective."
  apply g_is_inj
  rw [p]

Conclusion "It would have been slightly more proper to assume that `∀ x y : A, (g ∘ f) x = (g ∘ f) y` but this assumption would have been harder to use. After introducing `x : A`, you would have had to state and prove equalities like `have : (g ∘ f) x = g (f x) := rfl` to convert the goal into one where you can apply the hypothesis `f x = f y`."
