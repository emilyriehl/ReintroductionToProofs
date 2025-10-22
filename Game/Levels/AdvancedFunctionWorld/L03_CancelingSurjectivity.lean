import Game.Metadata

World "AdvancedFunctionWorld"
Level 3

Title "Canceling Surjectivity"

Introduction "Recall that a function `f : A → B` is *surjective* if for every `b : B` there exists some `x : A` so that `f x = b`.

In the level, we will consider a composable pair of functions `f : A → B` and `g : B → C`.

We will show that if the composite `g ∘ f : A → C` is surjective, then the function `g : B → C` is surjective too.
"

/-- For functions `f : A → B` and `g : B → C` if `g ∘ f` is surjective, then so is `g`. -/
Statement {A B C : Type} (f : A → B) (g : B → C) (gf_is_surj : ∀ z : C, ∃ x : A, (g ∘ f) x = z) : ∀ c : C, ∃ y : B, g y = c := by
  Hint (hidden := true) "To prove a universally quantified statement, start with `intro` to introduce an arbitrary element of type `C`. "
  intro c
  Hint (hidden := true) "To use the hypothesis `gf_is_surj` at `{c}` type `have hc := gf_is_surj {c}`."
  have hc := gf_is_surj c
  Hint (hidden := true) "To break down the hypothesis `{hc}` try `cases {hc}` or `rcases {hc} with ⟨a, ha⟩`."
  rcases hc with ⟨a, ha⟩
  use f a
  Hint (hidden := true) "You can either prove a lemma `have : (g ∘ f) {a} = ?? := rfl` by replacing the `??` with the definition of the composition function. Or you can try `rw [← ??]` using `\\l` to type the left arrow."
  rw [← ha]
  rfl

Conclusion "In the next level, we will prove that surjective functions compose."
