import Game.Levels.QuantifierWorld.L01_UniversalTruth
import Game.Levels.QuantifierWorld.L02_MoreTransitivity
import Game.Levels.QuantifierWorld.L03_UniversalElimination
import Game.Levels.QuantifierWorld.L04_FunctionExtensionality
import Game.Levels.QuantifierWorld.L05_DoubleNegation
import Game.Levels.QuantifierWorld.L06_IntroducingExistence
import Game.Levels.QuantifierWorld.L07_UsingExistence
import Game.Levels.QuantifierWorld.L08_ComposingSurjectivity
import Game.Levels.QuantifierWorld.L09_CommutingQuantifiers
import Game.Levels.QuantifierWorld.L10_NegatingExistence
import Game.Levels.QuantifierWorld.L11_NegatingUniversality
import Game.Levels.QuantifierWorld.L12_BossLevel

World "QuantifierWorld"
Title "Quantifier World"

Introduction "The statements of many mathematical propositions require the use of *variables* drawn from previously-defined types.

A *predicate* `P` on a type `A` is a function `P : A → Prop` from `A` to the type of propositions.

We also refer to a predicate `P` as a *family of propositions* or an *indexed family of propositions* because for each element `x : A`, we have a proposition `P x : Prop`.

For example, `Prime : ℕ → Prop` is a predicate that sends `n : ℕ` to the statement &ldquo;`n` is prime&rdquo;. For certain values of `n` this is a true predicate while for other values of `n` this is a false predicate.

Predicates may also depend on multiple variables. For example the equality type on `A` defines a function `= : A → A → Prop` sending `x y : A` to the proposition `x = y`.

There are two general ways to turn an arbitrary predicate `P : A → Prop` into a proposition using either the *universal quantifier* `∀` or the *existential quantifier* `∃`.

* `∀ x : A, P x` is the proposition that asserts that `P x` is true for every `x : A`
* `∃ x : A, P x` is the proposition that asserts that there is some `a : A` so that `P a` is true.

In this world, we will learn how to prove propositions and use hypotheses involving the *universal quantifier* `∀` and *existential quantifier* `∃`.
"
