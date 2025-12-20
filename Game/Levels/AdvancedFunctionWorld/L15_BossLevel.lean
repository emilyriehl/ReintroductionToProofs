import Game.Levels.AdvancedFunctionWorld.L14_DoubleNegation

World "AdvancedFunctionWorld"
Level 15

Title "Boss Level"

Introduction "Using function extensionality, we can give a third logically equivalence characterization of what it means for a function `f : A → B` to be bijective or invertible.

A function `f : A → B` is an *isomorphism* if there exists a function `g : B → A` so that `g ∘ f = id` and `f ∘ g = id`.

The first equation is between functions from `A` to `A`. By function extensionality, it is equivalent to the condition that `∀ a : A, g (f a)`.

The second equation is between functions from `B` to `B`. By function extensionality, it is equivalent to the condition that `∀ b : B, f (g a)`.

In Lean, isomorphisms of types are also called *equivalences*, perhaps acknowledging a newly discovered connection between dependent type theory and homotopy theory.

For the Boss Level, prove the logical equivalence between the conditions that whether `f` is invertible or whether `f` is an isomorphism.
"

/-- The function `f : A → B` is an isomorphism if and only if `f` is invertible. -/
TheoremDoc ReintroductionToProofs.Function.isomorphism_iff_invertible as "isomorphism_iff_invertible" in "Function"

namespace ReintroductionToProofs

/-- The function `f : A → B` is an isomorphism if and only if `f` is invertible. -/
Statement Function.isomorphism_iff_invertible {A B : Type} (f : A → B) : (∃ g : B → A, g ∘ f = id ∧ f ∘ g = id) ↔ (∃ g : B → A, (∀ a : A, g (f a) =a) ∧ (∀ b : B, f (g b) = b))  := by
  constructor
  intro iso
  have ⟨g, iso⟩ := iso
  use g
  constructor
  intro a
  have lem₁ : (g ∘ f) a = g (f a) := rfl
  rw [← lem₁]
  rw [iso.1]
  rfl
  intro b
  have lem₂ : (f ∘ g) b = f (g b) := rfl
  rw [← lem₂]
  rw [iso.2]
  rfl
  intro inv
  have ⟨g, inv⟩ := inv
  use g
  constructor
  ext
  apply inv.1
  ext
  apply inv.2

Conclusion "Using our newly understood notion of bijective function, or invertible function, or isomorphism, we can now study what it means for a pair of types to be *equivalent*. Move on to Equivalence World next."

end ReintroductionToProofs
