import Game.Levels.DependentWorld.L02_Functions

World "DependentWorld"
Level 3

Title "Application"

Introduction "Picture the families of types `B C : A → Type` as two bundles over the same base type `A`. Over each `a : A` lie the fibers `B a` and `C a`.

Recall that a proof of `∀ x : A, P x` gives a proof of `P a` for each `a : A`. Similarly, a *section* of `B` is a dependent function of type `(x : A) → B x` that gives an element of each fiber `B a`.

For each `a : A`, the given function `f` specifies a map `f a : B a → C a`. Use these maps to send a section of `B` to a section of `C`."

open ReintroductionToProofs

/--
A family of maps `f : (x : A) → B x → C x` induces a map from sections of `B` to sections of `C`.
-/
Statement {A : Type} {B C : A → Type} (f : (x : A) → B x → C x) :
    ((y : A) → B y) → ((z : A) → C z) := by
  intro s a
  Hint (hidden := true) "Which value of the section `{s}` can you pass to `{f} {a}`?"
  exact f a (s a)

Conclusion "Let `B : Bool → Type` and let `C` be the constant family with value `B false`. Given a section `s` of `B`, what value could you return at both booleans to define a section of `C`?

This gives a map between sections for any `B`. Must there also be a map `B a → C a` for each `a`? Take `B false` to be `Empty` and `B true` to be `Unit`. Where would a map `B true → C true` send `()`?"
