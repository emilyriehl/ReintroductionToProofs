import Game.Levels.AdvancedFunctionWorld.L08_Bijectivity

World "AdvancedFunctionWorld"
Level 9

Title "Invertibility"

Introduction "Consider a function `f : A → B`.

We say that `f` is *invertible* if there exists a function `g : B → A` that &ldquo;un-does&rdquo; the action of `f` on both pre- and post-composition.

More formally, `f` is invertible if

`∃ g : B → A, (∀ a : A, g (f a) = a) ∧ (∀ b : B, f (g b) = b)`.

When `f` is invertible, the function `g` is called its *inverse*.

As a first example, prove that the function `not : Bool → Bool` is invertible."


/-- The function `not : Bool → Bool` is invertible. -/
TheoremDoc ReintroductionToProofs.Bool.not_invertible as "not_invertible" in "Bool"

namespace ReintroductionToProofs

/-- The function `not : Bool → Bool` is invertible. -/
Statement Bool.not_invertible : ∃ g : Bool → Bool, (∀ b : Bool, g (not b) = b) ∧ (∀ b : Bool, not (g b) = b) := by
  use not
  constructor <;> intro b <;> cases b <;> rfl

Conclusion "We will explore the precise relationship between bijective functions and invertible functions soon. But first, we show that the inverse of an invertible function is again invertible."

/-- A function `f : A → B` is *invertible* if `∃ g : B → A, (∀ a : A, g (f a) = a) ∧ (∀ b : B, f (g b) = b)`. -/
DefinitionDoc Function.invertible as "invertible" in "Function"

NewDefinition Function.invertible

end ReintroductionToProofs
