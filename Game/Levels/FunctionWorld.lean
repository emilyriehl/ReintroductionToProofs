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
Just as logical connectives like `→` and `∧` can be used to build more complicated propositions out of existing propositions, *type forming operations* can be used to build new types from existing types.

The first and arguably most important of these is the type `A → B` of functions from `A` to `B`. An element
`f : A → B` defines a *function* from `A` to `B`.

In this level, we will explain how to define and use functions and explore the analogy suggested by the fact that we use the same notation for
function types `A → B` as for the implication proposition `P → Q`.

To understand how functions work in type theory we must learn:

* How to construct elements of type `A → B`.
* How to use elements of type `A → B` to construct elements of other types.
"
