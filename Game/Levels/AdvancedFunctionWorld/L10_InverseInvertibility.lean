import Game.Levels.AdvancedFunctionWorld.L09_Invertibility

World "AdvancedFunctionWorld"
Level 10

Title "Inverse Invertibility"

Introduction "Suppose `f : A → B` is an invertible function.

This means that there exists a function `g : B → A` so that `(∀ a : A, g (f a) = a) ∧ (∀ b : B, f (g b) = b)`.

In this level, we will see that the inverse function `g : B → A` is itself invertible."

/-- The inverse of an invertible function is invertible. -/
Statement {A B : Type} (f : A → B) (g : B → A) (inv : (∀ a : A, g (f a) = a) ∧ (∀ b : B, f (g b) = b)) : ∃ h : A → B, (∀ b : B, h (g b) = b) ∧ (∀ a : A, g (h a) = a) := by
  use f
  exact And.symm inv

Conclusion "You might be able to shorten your proof by applying the theorem `And.symm` from our library at the appropriate point. In the next two levels, we will establish the precise relationship between bijective functions and invertible functions."
