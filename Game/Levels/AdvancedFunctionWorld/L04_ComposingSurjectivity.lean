import Game.Metadata

World "AdvancedFunctionWorld"
Level 4

Title "Composing Surjectivity"

Introduction "Recall that a function `f : A → B` is *surjective* if for every `b : B` there exists some `a : A` so that `f a = b`.

Your task in this level is to show that surjective functions compose: if `f : A → B` is surjective and `g : B → C` is surjective, then `g ∘ f : A → C` is surjective.
"

/-- If `f : A → B` and `g : B → C` are both surjective then `g ∘ f : A → C` is also surjective. -/
Statement {A B C : Type} (f : A → B) (g : B → C) (f_is_surj : ∀ b : B, ∃ a : A, f a = b) (g_is_surj : ∀ c : C, ∃ b : B, g b = c) : ∀ c : C, ∃ a : A, (g ∘ f) a = c := by
  Hint (hidden := true) "To prove a universally quantified statement, start with `intro` to introduce an arbitrary element of type `C`. "
  intro c
  Hint (hidden := true) "To use the hypothesis `g_is_surj` at `{c}` type `have := g_is_surj {c}`."
  have gc := g_is_surj c
  Hint (hidden := true) "Try `cases {gc}` or `rcases {gc} with ⟨b, hb⟩`/"
  rcases gc with ⟨b, hb⟩
  have fb := f_is_surj b
  rcases fb with ⟨a, ha⟩
  use a
  Hint (hidden := true) "You can either prove a lemma `have : (g ∘ f) {a} = ?? := rfl` by replacing the `??` with the definition of the composition function. Or you can try `rw [← ??]` using `\\l` to type the left arrow."
  rw [← hb, ← ha]
  rfl

Conclusion "In the next level, we will introduce another property that holds for some, but not all, functions."
