import Game.Levels.EmptyWorld.L01_FromEmpty

World "EmptyWorld"
Title "Empty World"

Introduction "In this world, we will introduce the *empty type*, which is commonly denoted by `Empty` in Lean.

In general, types can be characterized by:
* Introduction rules: which explain how to construct elements of the given type.
* Elimination rules: which explain how to use elements of the given type to construct elements of other types.

In the case of the empty type, there are no introduction rules. This corresponds colloquially to the idea that the empty type has &ldquo;no elements.&rdquo;

The elimination rule for the empty type defines a function from the `Empty` type to any other type `A`, with no obligations on the type `A`.

There is another way to understand why the type `Empty → A` should always have an element.

In order to define a function `X → A` one must fulfill the following obligation: for each `x : X` one must specify an element of `A`. In the case of functions `Empty → A`, the empty type has no elements, so there are no obligations.

In this world, we will explore constructions involving the `Empty` type.
"
