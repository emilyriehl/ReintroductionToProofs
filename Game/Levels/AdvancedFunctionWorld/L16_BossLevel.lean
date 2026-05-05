import Game.Levels.AdvancedFunctionWorld.L15_Isomorphism

World "AdvancedFunctionWorld"
Level 16

Title "Boss Level"

Introduction "Lawvere's fixed point theorem is an abstraction of Cantor's famous diagonal argument, repackaged as a constructive statement about functions rather than a proof by contradiction.

The goal in this level is to prove this result in the setting of types and functions. (It can be stated more generally in a cartesian closed category.)

In this setting, Lawvere's fixed point theorem asserts the following. If `A` and `B` are any types and `f : A → A → B` is a function, which is surjective when considered as a function from the type `A` to the type `A → B`, then any endomorphism `n : B → B` has a fixed point: there exists some `b : B` so that `n b = b`.
"

/-- If `f : A → A → B` is surjective as a function from `A` to `A → B`, then any endomorphism of `B` has a fixed point. -/
TheoremDoc ReintroductionToProofs.Function.Lawvere_fixed_point as "Lawvere_fixed_point" in "Function"

namespace ReintroductionToProofs

/-- If `f : A → A → B` is surjective as a function from `A` to `A → B`, then any endomorphism of `B` has a fixed point. -/
Statement Function.Lawvere_fixed_point {A B : Type} (f : A → A → B) : (∀ g : A → B, ∃ a : A, f a = g) → (∀ n : B → B, ∃ b : B, n b = b)  := by
  intro surj
  intro n
  have ⟨a₀, p₀⟩ := surj (fun a ↦ n (f a a))
  use f a₀ a₀
  exact (congrFun p₀ a₀).symm

Conclusion "Using our newly understood notion of bijective function, or invertible function, or isomorphism, we can now study what it means for a pair of types to be *equivalent*. Move on to Equivalence World next."

end ReintroductionToProofs
