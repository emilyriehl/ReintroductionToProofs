import Game.Levels.ImplicationWorld.L01_ByAssumption
import Game.Levels.ImplicationWorld.L02_ModusPonens
import Game.Levels.ImplicationWorld.L03_ApplyingImplication
import Game.Levels.ImplicationWorld.L04_ComposingImplication
import Game.Levels.ImplicationWorld.L05_ProvingImplication
import Game.Levels.ImplicationWorld.L06_ProvingImpliedAssumption
import Game.Levels.ImplicationWorld.L07_ProvingAssumedImplication
import Game.Levels.ImplicationWorld.L08_Transitivity
import Game.Levels.ImplicationWorld.L09_ModusPonensAgain
import Game.Levels.ImplicationWorld.L10_BossLevel

World "ImplicationWorld"
Title "Implication World"

Introduction "
We now step away from considerations involving types and their elements and turn our attention to propositions and their proofs.

We begin our study of proofs with *propositional logic*.

Many mathematical propositions are built out of simpler propositions using logical connectives. The structure of a compound proposition &mdash; that is, which connectives appear where &mdash; often suggests proof techniques, as we will discover.

To study these connectives, we require *proposition variables* &mdash; denoted with letters like `P`, `Q`, `R` &mdash; which stand for generic propositions, which may be true or false.

The slogan *propositions as types* tells us that we can consider propositions as special cases of *types*.

We think of the elements `p : P` and `q : Q` as *proofs* that these propositions are true.

Just as type forming operations can be used to build more complicated types out of existing types, *logical connectives* can be used to build more complicated propositions out of existing propositions.

In this level we study the logical connective *implication* denoted by `→`.

For arbitrary *propositions* `P` and `Q`, `P → Q` is a new proposition asserting that *if* `P` *is true then* `Q` *is true*.

To understand how implications work in logic we must learn:

* How to prove theorems of the form `P → Q`.
* How to use a hypothesis of the form `P → Q` to prove something else.

We'll learn the rules for proving implications and using implications in the levels that follow.

The introduction and elimination rules for implications precisely mirror the introduction and elimination rules for function types.

This analogy is further emphasized by the fact that we use the same notation for implications `P → Q` as for
function types `A → B`. The Lean tactics that were introduced to define and work with functions will play an analogous role when proving or using implications.
"
