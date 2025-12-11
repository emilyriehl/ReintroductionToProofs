import Game.Metadata

World "AdvancedFunctionWorld"
Level 11

Title "Invertible Implies Bijective"

Introduction "Suppose `f : A → B` is an invertible function, with an inverse function `g : B → A`.

Then it follows that `f` is bijective, both injective and surjective.

Your objective this level is to prove this.
"

/-- An invertible function is bijective. -/
Statement {A B : Type} (f : A → B) (inv : ∃ g : B → A, (∀ a : A, g (f a) = a) ∧ (∀ b : B, f (g b) = b)) : (∀ x y : A, f x = f y → x = y) ∧ (∀ b : B, ∃ x : A, f x = b) := by
  have ⟨g, linv, rinv⟩ := inv
  constructor
  intro x y p
  rw [← linv x, ← linv y, p]
  rfl
  intro b
  use g b
  apply rinv

Conclusion "In the proof that `f` is injective, you used only one half of the invertibility condition. Can you use this observation to state a theorem that proves that `f` is injective under a weaker hypothesis? Similarly, in the proof that `f` is surjective, you used only the other half of the invertibility condition. Can you use this observation to state a theorem that proves that `f` is surjective under a weaker hypothesis?"
