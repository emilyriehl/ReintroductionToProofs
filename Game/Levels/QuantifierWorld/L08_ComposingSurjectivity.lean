import Game.Metadata

World "QuantifierWorld"
Level 8

Title "Composing surjectivity"

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

Conclusion "The next level will give more practice with the existential quantifier."

/--
For goals of the form `∃ (x : A), P x` the tactic `use` can be used to provide an element `a : A` which will satisfy `P a`. For multiple constructors like `∃ (x y : A), P x y`, you can provide comma-separated values: `use a, a'`.

Note that the version of the `use` tactic for this game is somewhat weaker than the real one in Mathlib, which automatically tries to solve the remaining goal.-/
TacticDoc use

NewTactic use
