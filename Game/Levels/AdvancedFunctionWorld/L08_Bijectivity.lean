import Game.Metadata

World "AdvancedFunctionWorld"
Level 8

Title "Bijectivity"

Introduction "We have introduced two properties that may or may not hold of a given function `f : A → B`.

Recall that a function `f : A → B` is *injective* if `∀ x y : A, f x = f y → x = y`.

Recall that a function `f : A → B` is *surjective* if for every `b : B` there exists some `x : A` so that `f x = b`.

If a function is both injective and surjective, then it is called *bijective*.

We have shown that the function `not : Bool → Bool` is both surjective and injective. Thus, we conclude that `not` is bijective."

/-- The function `not : Bool → Bool` is bijective. -/
Statement : (∀ x y : Bool, not x = not y → x = y) ∧ (∀ x : Bool, ∃ y : Bool, not y = x) := by
  constructor
  apply Bool.not_inj
  intro x
  cases x
  exact ⟨true, rfl⟩
  exact ⟨false, rfl⟩

Conclusion "In the next level, we will introduce a fundamental property of bijective functions, namely their
invertibility."
