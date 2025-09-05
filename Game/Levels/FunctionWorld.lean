import Game.Levels.FunctionWorld.L01_IdentityFunction
import Game.Levels.FunctionWorld.L02_UsingFunctions
import Game.Levels.FunctionWorld.L03_ComposingFunctions
import Game.Levels.FunctionWorld.L04_ConstantFunctions
import Game.Levels.FunctionWorld.L05_MultivariableFunctions
import Game.Levels.FunctionWorld.L06_SwappingInputs
import Game.Levels.FunctionWorld.L07_CompositionRevisited
import Game.Levels.FunctionWorld.L08_Evaluation
import Game.Levels.FunctionWorld.L09_BossLevel

World "FunctionWorld"
Title "Function World"

Introduction "
The slogan *propositions as types* tells us that we can consider propositions as special cases of *types*.

For example, there are types `ℕ` of
natural numbers, `ℤ` of integers, `ℚ` of rational numbers, `ℝ` of real numbers, `ℂ` of natural
numbers, and so on.

We use capital variables like `A` and `B` to denote general types, analogously to the proposition variables `P` and `Q`.

A type `A` can contain elements `x : A` and `y : A`. For propositions `P` and `Q`, we thought of
elements `p : P` and `q : Q` as *proofs* that these propositions are true.

In the case of
propositions, what mattered was whether `P` had any elements or not. The elements themselves don't
carry any information beyond witnessing the truth of the proposition.

By contrast, the type `ℕ` of
natural numbers contains infinitely many distinct elements: `0 : ℕ`, `1 : ℕ` and so on.

Just as logical connectives like `→` and `∧` can be used to build more complicated propositions out of existing propositions, *type forming operations* can be used to build new types from existing types.

The first and arguably most important of these is the type `A → B` of functions from `A` to `B`. An element
`f : A → B` defines a *function* from `A` to `B`.

In this level, we will explain how to define and use functions and explore the analogy suggested by the fact that we use the same notation for
function types `A → B` as for the implication proposition `P → Q`.
"
