import Game.Levels.DependentWorld.L05_Currying

World "DependentWorld"
Level 6

Title "Boss Level"


Introduction "We have now reached our final Boss Level.

Your task is to define another equivalence involving dependent function and dependent pair types that is rather surprising.

Recall that dependent function types are also called *Pi types* and can be denoted by `Π x : A, B x`, while dependent pair types are also called *Sigma types* and can be denoted by `Σ x : A, B x`.

These alternate notations are more directly analogous to the universal and existential quantifiers `∀ x : A, P x` and `∃ x : A, P x` used for a family of propositions `P : A → Prop`.

The equivalence of types you will construct here reveals that it is possible to move the quantifier `Π` inside the quantifier `Σ`.

This equivalence does not contradict the observations made in Quantifier World that the order of the universal and existential quantifiers matters.

Here the type appearing on the right-hand side of this equivalence &mdash; which is known as the *type theoretic axiom of choice* &mdash; is more elaborate.

The type theoretic axiom of choice is an equivalence of types
involving a type `A`, a type family `B : A → Type` over `A`, and a type family `C : (x : A) → B x → C`.

It takes the form of an equivalence between:

* the type `(x : A) → Σ y : B x, C x y` and
* the type `(s : (x : A) → B x) × ((x : A) → C x (s x))`.

In the case where the types `C x y` are all propositions, an element of the first type proves that for all `x : A` there is some `y : B x` so that `C x y` holds. The first component of an element of the second type is a dependent function `s : (x : A) → B x` that specifies an element `s x : B x` for each `x : A` so that `C x (s x)` holds. This is why the equivalence is referred to as the type theoretic &ldquo;axiom of choice&rdquo;.

If you get stuck, it might help to consider the case where `B` and `C` are constant type families. As in the previous level, this equivalence is a familiar one!
"

/--
The type theoretic axiom of choice characterizes dependent functions into a dependent pair type.
-/
Statement {A : Type} {B : A → Type} (C : (x : A) → B x → Type) :
     ((x : A) → (y : B x) × C x y) ≃ ((s : (x : A) → B x) × ((x : A) → C x (s x))) := by
  constructor
  intro p
  constructor
  intro x
  exact (p x).1
  intro x
  exact (p x).2
  intro p x
  let ⟨f, g⟩ := p
  exact ⟨f x, g x⟩
  intro x
  rfl
  intro x
  rfl

Conclusion "Congratulations for defeating the final Boss Level!"
