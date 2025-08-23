import Game.Levels.ImplicationWorld.L01_ByAssumption
import Game.Levels.ImplicationWorld.L02_ModusPonens
import Game.Levels.ImplicationWorld.L03_ComposingImplication
import Game.Levels.ImplicationWorld.L04_ProvingImplication
import Game.Levels.ImplicationWorld.L05_ProvingAssumption
import Game.Levels.ImplicationWorld.L06_ProvingAssumedImplication
import Game.Levels.ImplicationWorld.L07_OnParentheses
import Game.Levels.ImplicationWorld.L08_ModusPonensAgain
import Game.Levels.ImplicationWorld.L09_BossLevel

World "ImplicationWorld"
Title "Implication World"

Introduction "
We begin our study of propositional logic by introducing the logical connective *implication* denoted by `→`.

For arbitrary *propositions* `P` and `Q`, `P → Q` is a new proposition asserting that *if* `P` *is true then* `Q` *is true*.

To understand how implications work in logic we must learn:

* How to prove theorems of the form `P → Q`.
* How to use a hypothesis of the form `P → Q` to prove something else.

We'll learn the rules for proving implications and using implications in the levels that follow.
"
