import Game.Levels.EmptyWorld.L01_FromEmpty
import Game.Levels.EmptyWorld.L02_ToEmpty
import Game.Levels.EmptyWorld.L03_ThroughEmpty
import Game.Levels.EmptyWorld.L04_Composition
import Game.Levels.EmptyWorld.L05_ProductWithEmpty
import Game.Levels.EmptyWorld.L06_CoproductWithEmpty
import Game.Levels.EmptyWorld.L07_BossLevel

World "EmptyWorld"
Title "Empty World"

Introduction "In this world, we will introduce the *empty type*, which is commonly denoted by `Empty` in Lean.

In general, types are characterized by:
* Introduction rules: which explain how to construct elements of the given type.
* Elimination rules: which explain how to use elements of the given type to construct elements of other types.

In the case of the empty type, there are no introduction rules. This corresponds colloquially to the idea that the empty type has &ldquo;no elements.&rdquo;

The elimination rule for the empty type defines a function from `Empty` to any other type `A`, with no obligations on the type `A`. This provides a canonical element `Empty.elim : Empty → A` of the function type.

There is another way to understand why the type `Empty → A` should always have an element.

In order to define a function from a type `X` to a type `A` one must fulfill the following obligation: for each `x : X` one must specify an element of type `A`.

In the case of a function from the type `Empty` to a type `A`, there are no obligations because the empty type has no elements.

In this world, we will explore constructions involving the `Empty` type.
"
