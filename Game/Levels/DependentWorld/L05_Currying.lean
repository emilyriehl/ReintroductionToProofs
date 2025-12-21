import Game.Levels.DependentWorld.L04_Pairs

World "DependentWorld"
Level 5

Title "Currying"

Introduction "
Consider a family of types `B : A → Type` and the associated dependent pair type `(x : A) × B x`.

In this level, we will characterize the type of functions `(x : A) × B x → C` valued in another type `C`.

In the case of a constant type family valued at a type `B`, the dependent pair type reduces to the ordinary product type `A × B`. In this setting, we have an equivalence of types

`(A × B → C) ≃ (A → B → C)`

defined by currying and uncurrying.

Similarly, when `B : A → Type` is a non-constant type family, there is an equivalence of types

`((x : A) × B x → C) ≃ ((x : A) → B x → C)`

defined by currying and uncurrying.

Your task in this level is in fact to construct a further generalization of this equivalence where the type `C` is replaced by a type family over the dependent pair type `(x : A) × B x`.

While the statement of the equivalence in this case is harder to read, the construction of the equivalence in all three settings is identical.
"

/-- There is an equivalence between the type of dependent functions out of the dependent pair type `(x : A) × B x` and the type of dependent functions of two variables `x : A` and `y : B x` defined by currying and uncurrying. -/
Statement {A : Type} {B : A → Type} {C : (x : A) × B x → Type} :
    ((p : (x : A) × B x) → C p) ≃ ((x : A) → (y : B x) → C ⟨x, y⟩) := by
  Hint (hidden := true) "Recall that equivalences of types require four separate pieces of data. Type `constructor` to split the goal up into the four proof obligations."
  exact ⟨fun f x y ↦ f ⟨x, y⟩, fun f p ↦ f p.1 p.2, fun f ↦ rfl, fun f ↦ rfl⟩

Conclusion "While our `Function.curry` and `Function.uncurry` cannot be used here, this level can still be solved in one line with `⟨fun f x y ↦ f ⟨x, y⟩, fun f p ↦ f p.1 p.2, fun f ↦ rfl, fun f ↦ rfl⟩`, which also defines the corresponding equivalence of ordinary function types in Equivalence World."
