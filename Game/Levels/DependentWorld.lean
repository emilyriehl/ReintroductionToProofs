import Game.Levels.DependentWorld.L01_Types
import Game.Levels.DependentWorld.L02_Functions
import Game.Levels.DependentWorld.L03_Application
import Game.Levels.DependentWorld.L04_Pairs
import Game.Levels.DependentWorld.L05_Currying
import Game.Levels.DependentWorld.L06_BossLevel

World "DependentWorld"
Title "Dependent World"

Introduction "In Quantifier World, we studied familes of propositions `P : A → Prop` &mdash; also called *predicates* &mdash; indexed by elements of another type `A`.

We introduced two operations that  covert a family of propositions into a single proposition:

* the *universal quantifier* `∀`, which yields the proposition `∀ x : A, P x` and

* the *existential quantifier* `∃`, which yields the proposition `∃ x : A, P x`.

To conclude our reintroduction to proofs in dependent type theory, we study analogous families of types `B : A → Type`, which are also called *dependent types*.

We also introduce a pair of type forming operations that turn a family of types into a single type:

* the *dependent function type*, which yields a type denoted by `(x : A) → B x` and

* the *dependent pair type*, which yields a type denoted by `(x : A) × B x`.

Dependent function types are also called *Pi types* and denoted by `Π x : A, B x`, although this notation is not used in Lean.

Dependent pair types are also called *Sigma types* and denoted by `Σ x : A, B x`.

As the name suggests, the dependent function type generalizes the function type, introduced in Function World. Indeed, in the case of a constant type family `fun x ↦ B : A → Type`, the dependent function type reduces to the ordinary function type `A → B`.

Similarly the dependent pair type generalizes the product type, introduced in Product World. Indeed, in the case of a constant type family `fun x ↦ B : A → Type`, the dependent pair type reduces to the ordinary product type `A × B`.

(Dependent pair types are sometimes also called &ldquo;dependent product types&rdquo;, but this name is also used for the dependent function type, which can be thought of as forming the product of an indexed family of types. To avoid this confusion, we won't use this term in either setting.)

An element `f : (x : A) → B x` of the dependent function type associated to a type family `B : A → Type` is called a *dependent function*. The introduction and elimination rules for dependent function types are analogous to those for ordinary function types and for the universal quantifier. In particular, dependent functions are necessarily total functions. To define a dependent function it is necessary to specify an element of the type `B a` for every element `a : A`.

An element `p : (x : A) × B x` of the dependent pair type associated to a type family `B : A → Type` is called a *dependent pair*. The introduction and elimination rules for dependent pair types are analogous to those for ordinary product types and for the existential quantifier. In particular, a dependent pair `p : (x : A) × B x` projects to define an element `p.1 : A` and an element `p.2 : B p.1`.

Because of these analogies, you won't need any new tactics or syntax to solve the puzzles in this level. Let's begin!
"
