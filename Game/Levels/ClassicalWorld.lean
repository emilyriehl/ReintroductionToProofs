import Game.Levels.ClassicalWorld.L01_ByContradiction
import Game.Levels.ClassicalWorld.L02_ExcludedMiddle
import Game.Levels.ClassicalWorld.L03_Contrapositive
import Game.Levels.ClassicalWorld.L04_NegatingConjunction
import Game.Levels.ClassicalWorld.L05_ProvingExcludedMiddle
import Game.Levels.ClassicalWorld.L06_BossLevel

World "ClassicalWorld"
Title "Classical World"

Introduction
"In Negation World, we proved various tautologies involving negation such as

* `P → ¬ ¬ P`
* `(P → Q) → (¬ Q → ¬ P)`
* `¬ P ∨ ¬ Q → ¬ (P ∧ Q)`
* `(P ∧ ¬ Q) → ¬ (P → Q)`

But we were not able to prove the converses of any of these implications. Why not?

The reason is that all of the proofs we have given thusfar involve explicit constructive arguments. For example, whenever we proved that a disjunction `P ∨ Q` held under certain hypotheses, our proof gave the information of *which* of the propositions `P` and `Q` is true.

In this world, we study *classical mathematics*, which assumes two additional axioms, each of which permits new proof techniques.

The first axiom, called the *law of excluded middle*, asserts that for any proposition `P`, `P ∨ ¬ P` is true.

This permits the strategy of proof by cases. Under the assumption that `P ∨ ¬ P` is true, you can split the argument into two cases, one assuming `P` is true and the other assuming `P` is false.

The other axiom, called *double negation elimination*, asserts that for any proposition `P`, `¬ ¬ P → P` is true.

This permits a proof strategy called *proof by contradiction*. If the goal is to prove `P` we can use the assumption `¬ ¬ P → P` to reason as follows:

* First assume that `P` is false, so `¬ P` is true.
* Then use the assumption `¬ P` to derive a contradiction, thus constructing a proof of `¬ ¬ P`.
* Finally, apply the implication `¬ ¬ P → P` to convert the proof of `¬ ¬ P` into a proof of `P`.

In fact, the law of exluded middle and double negation elimination are equivalent &mdash; even constructively &mdash; as we will show in the Boss Level of this world.
"
