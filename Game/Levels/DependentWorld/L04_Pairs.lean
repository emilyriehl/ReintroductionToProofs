import Game.Levels.DependentWorld.L03_Application

World "DependentWorld"
Level 4

Title "Pairs"

Introduction "Consider a family of types `B : A → Type`.

The *dependent pair type* `(x : A) × B x` collects together all of the elements of the types `B x` as `x` ranges over all elements of the indexing type `A`.

More precisely, each element `p : (x : A) × B x` defines a pair of elements. Its first component defines an element `p.1 : A` in the indexing type, which Lean also denotes by `p.fst : A`.

Its second component defines an element `p.2 : B p.1` in the fiber over the first component, which Lean also denotes by `p.snd : B p.snd`.

Your task in this level is to define both projection functions from the dependent pair type.

The first of these defines an ordinary function from the type `(x : A) × B x` to the type `A`.

The second of these defines a dependent function mapping out of type type `(x : A) × B x`. The reason the second project is a *dependent* function is that its output type depends on the input element `p : (x : A) × B x`.

Note that for `p : (x : A) × B x`, we have `rfl : p = ⟨p.1, p.2⟩`.
"

/--
The dependent pair type `(x : A) × B x` has a pair of projection functions, sending a dependent pair to its first and second components respectively.
-/
Statement {A : Type} {B : A → Type} : ((x : A) × B x → A) × ((p : (x : A) × B x) → B p.1) := by
  Hint (hidden := true) "Your goal is to define a pair of functions, so start with the tactic `constructor`."
  constructor
  intro p
  exact p.1
  intro p
  exact p.2

Conclusion "In the next level, we will consider general functions mapping out of a dependent pair type."
