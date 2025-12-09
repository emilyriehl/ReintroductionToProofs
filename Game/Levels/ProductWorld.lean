import Game.Levels.ProductWorld.L01_Pairing
import Game.Levels.ProductWorld.L02_FirstProjection
import Game.Levels.ProductWorld.L03_SecondProjection
import Game.Levels.ProductWorld.L04_Symmetry
import Game.Levels.ProductWorld.L05_Associativity
import Game.Levels.ProductWorld.L06_Currying
import Game.Levels.ProductWorld.L07_Uncurrying
import Game.Levels.ProductWorld.L08_ComponentFunctions
import Game.Levels.ProductWorld.L09_UniversalProperty
import Game.Levels.ProductWorld.L10_BossLevel

World "ProductWorld"
Title "Product World"

Introduction "
In Function World, we learned that for any types `A` and `B` there is a new type `A → B` whose elements `f : A → B` are *functions* from `A` to `B`.

In this world, we'll meet another binary type forming operation.

Given two types `A` and `B`, there is a type `A × B` called the *product type* whose elements `p : A × B` should be thought of as encoding ordered pairs of elements, one from `A` and one from `B`.

Like the analogy between function types and implication, there is a close analogy between product types and the logical operation of conjunction.

To understand how products work in type theory we must learn:

* How to construct elements of type `A × B`.
* How to use elements of type `A × B` to construct elements of other types.

Like all type forming operations, the product type is characterized by these introduction and elimination rules.
"
