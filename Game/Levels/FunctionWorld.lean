import Game.Levels.FunctionWorld.L01_IdentityFunction
import Game.Levels.FunctionWorld.L02_UsingFunctions
import Game.Levels.FunctionWorld.L03_UsingFunctionsBackwards
import Game.Levels.FunctionWorld.L04_ComposingFunctions
import Game.Levels.FunctionWorld.L05_ConstantFunctions
import Game.Levels.FunctionWorld.L06_MultivariableFunctions
import Game.Levels.FunctionWorld.L07_SwappingInputs
import Game.Levels.FunctionWorld.L08_CompositionRevisited
import Game.Levels.FunctionWorld.L09_Evaluation
import Game.Levels.FunctionWorld.L10_BossLevel

World "FunctionWorld"
Title "Function World"

Introduction "
More complicated types can be constructed from previously-defined types by iteratively applying *type forming operations*.

The first and arguably most important of these is the type `A → B` of functions from `A` to `B`. An element `f : A → B` defines a *function* from `A` to `B`.

In this level, we will explain how to define and use functions. Specifically, we will learn rules that describe:

* How to construct elements of type `A → B`.
* How to use elements of type `A → B` to construct elements of other types.

The rule for defining elements of type `A → B` is called the *introduction rule* for function types. It provides a strategy that can be used when the goal is a function type.

The rule for using elements of type `A → B` is called the *elimination rule* for function types. It provides a strategy that can be used when the context involves an element of a function type.
"
