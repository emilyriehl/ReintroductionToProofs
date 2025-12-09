import Game.Levels.ImplicationWorld.L01_ByAssumption
import Game.Levels.ImplicationWorld.L02_ModusPonens
import Game.Levels.ImplicationWorld.L03_ComposingImplication
import Game.Levels.ImplicationWorld.L04_ProvingImplication
import Game.Levels.ImplicationWorld.L05_ProvingImpliedAssumption
import Game.Levels.ImplicationWorld.L06_ProvingAssumedImplication
import Game.Levels.ImplicationWorld.L07_OnParentheses
import Game.Levels.ImplicationWorld.L08_ModusPonensAgain
import Game.Levels.ImplicationWorld.L09_BossLevel

World "ImplicationWorld"
Title "Implication World"

Introduction "
We begin our study of proofs with *propositional logic*.

Many mathematical propositions are built out of simpler propositions using logical connectives. The structure of a compound proposition &mdash; that is, which connectives appear where &mdash; often suggests proof techniques, as we will discover.

To study these connectives, we require *proposition variables* &mdash; denoted with letters like `P`, `Q`, `R` &mdash; which stand for generic propositions, which may be true or false.

The slogan *propositions as types* tells us that we can consider propositions as special cases of *types*.

Recall that we use capital variables like `A` and `B` to denote general types, analogously to the proposition variables `P` and `Q`. We think of the elements `p : P` and `q : Q` as *proofs* that these propositions are true.

Just as logical connectives like `→` and `∧` can be used to build more complicated propositions out of existing propositions, *type forming operations* can be used to build new types from existing types.

In this level we study the logical connective *implication* denoted by `→`.

For arbitrary *propositions* `P` and `Q`, `P → Q` is a new proposition asserting that *if* `P` *is true then* `Q` *is true*.

To understand how implications work in logic we must learn:

* How to prove theorems of the form `P → Q`.
* How to use a hypothesis of the form `P → Q` to prove something else.

We'll learn the rules for proving implications and using implications in the levels that follow.

We will also explore the analogy suggested by the fact that we use the same notation for
function types `A → B` as for the implication proposition `P → Q`.
"
