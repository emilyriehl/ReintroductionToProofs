import Game.Levels.QuantifierWorld.L05_InjectedElements

World "QuantifierWorld"
Level 6

Title "Multiple Quantifiers"

Introduction "Any type `A` has a family of propositions `A → A → Prop` given by the equality types.

For `x y : A`, we have the proposition `x = y`.

Using the universal and existential quantifiers we can form eight different propositions:

* We can choose either `∀ x` or `∃ x`.
* We can choose either `∀ y` or `∃ y`.
* We can put the quantifier involving `x` before or after the quantifier involving `y`.

When we have two existential quantifiers or two universal quantifiers, the order doesn't matter, so we have logical equivalences

* `∀ x, ∀ y, x = y ↔ ∀ y, ∀ x, x = y`
* `∃ x, ∃ y, x = y ↔ ∃ x, ∃ y, x = y`

In this case, since `x = y ↔ y = x`, we have further logical equivalences

* `∀ x, ∃ y, x = y ↔ ∀ y, ∃ x, x = y`
* `∃ x, ∀ y, x = y ↔ ∃ y, ∀ x, x = y`

The four statements
* `∀ x : A, ∀ y : A, x = y`
* `∀ x : A, ∃ y : A, x = y`
* `∃ x : A, ∀ y : A, x = y`
* `∃ x : A, ∃ y : A, x = y`
have very different meanings.

The statement `∃ x : A, ∃ y : A, x = y` asserts that the type `A` is *inhabited* meaning has an element `a : A`.
Whenever such an element exists, this statement is true, but for the empty type, this statement is false.

The statement `∀ x : A, ∀ y : A, x = y` asserts that the type `A` is a *proposition*. When `A` is empty this is true (as there is nothing to prove). When `A` is a true proposition, it is also true, because any two proofs `x y : A` are equal.

The statement `∃ x : A, ∀ y : A, x = y` asserts that the type `A` is a true proposition, or equivalently, that the type `A` is *contractible*. When `A` is empty, this statement is false, but when `A` is a true proposition, it has some proof `x : A` and any other proof `y : A` is equal to `x`.

The final statement `∀ x : A, ∃ y : A, x = y` is just true for any type `A`. Your objective in this level is to prove this.
"

