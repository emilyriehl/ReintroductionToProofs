import Game.Levels.DependentWorld.L02_Functions

World "DependentWorld"
Level 3

Title "Application"

Introduction "In this level, we consider a pair of type families `B C : A → Type` indexed by the type `A`.

The families of types `B` and `C` can be pictured as &ldquo;bundles&rdquo; of types living over the &ldquo;base&rdquo; type `A`. For each element `a : A`, there is a corresponding fiber `B a` and `C a` specified by each type family.

With this mental image, an element of the dependent function type `(x : A) → B x` may also be thought of as a *section* of the type family `B`, as it specifies an element of the fiber living over each element of the base type.

In this level, you are given a dependent function `f : (x : A) → B x → C x` that specifies a map between fibers `B a → C a` for each element `a : A` of the base type.

Using this, your task is define a function that sends a section of the first type family to a section of the second type family.
"

/--
Given a pair of type families `B C : A → Type` and a fiberwise function `f : (x : A) → B x → C x`, then there is a function from sections of the first type family to sections of the second type family.
-/
Statement {A : Type} {B C : A → Type} (f : (x : A) → B x → C x) :
    ((y : A) → B y) → ((z : A) → C z) := by
  intro s a
  exact f a (s a)

Conclusion "Note that from a function `g : ((y : A) → B y) → ((z : A) → C z)` it would not necessarily be possible to define a dependent function of type `(x : A) → B x → C x`. Can you use the analogy with the universal quantifier to understand why not?"
