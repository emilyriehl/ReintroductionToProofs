import Game.Levels.AdvancedFunctionWorld.L07_CancelingInjectivity

World "AdvancedFunctionWorld"
Level 8

Title "Bijectivity"

Introduction "We have introduced two properties that may or may not hold of a given function `f : A → B`.

Recall that a function `f : A → B` is *injective* if `∀ x y : A, f x = f y → x = y`.

Recall that a function `f : A → B` is *surjective* if for every `b : B` there exists some `x : A` so that `f x = b`.

If a function is both injective and surjective, then it is called *bijective*.

We have shown that the function `not : Bool → Bool` is both injective and surjective. Thus, we conclude that `not` is bijective.

You do not need to reprove these results, which can be found in your library with the names `Bool.not_injective` and `Bool.not_surjective`."


/-- The function `not : Bool → Bool` is bijective. -/
TheoremDoc ReintroductionToProofs.Bool.not_bijective as "not_bijective" in "Bool"

namespace ReintroductionToProofs

/-- The function `not : Bool → Bool` is bijective. -/
Statement Bool.not_bijective : (∀ x y : Bool, not x = not y → x = y) ∧ (∀ x : Bool, ∃ y : Bool, not y = x) := by
  exact ⟨Bool.not_injective, Bool.not_surjective⟩

Conclusion "In the next level, we will introduce a fundamental property of bijective functions, namely their
invertibility."

/-- A function is *bijective* if it is both injective and surjective. -/
DefinitionDoc Function.bijective as "bijective" in "Function"

NewDefinition Function.bijective

end ReintroductionToProofs
