import Game.Levels.TypeWorld.L01_Elements
import Game.Levels.TypeWorld.L02_Proofs
import Game.Levels.TypeWorld.L03_Exact
import Game.Levels.TypeWorld.L04_Unit
import Game.Levels.TypeWorld.L05_TypeOfTypes
import Game.Levels.TypeWorld.L06_TypeOfPropositions


World "TypeWorld"
Title "Type World"

Introduction "
In this world, we introduce two primitives:

* *types* denoted with capital variables like `A` and `B` and
* *elements* written `x : A` or `y : B`.

For example, there are types `ℕ` of
natural numbers, `ℤ` of integers, `ℚ` of rational numbers, `ℝ` of real numbers, `ℂ` of natural
numbers, and so on.

Types can have more than one element. The elements of the type `ℕ` are the familiar natural numbers:  `0 : ℕ`, `1 : ℕ` and so on.

By contrast, elements belong to unique types. The integer `57` is distinct from the natural number `57`.

Mathematical *propositions* form a special case of types. For propositions `P` and `Q`, we think of
elements `p : P` and `q : Q` as *proofs* that these propositions are true.

By contrast, false propositions will not have any elements. In Negation World, we will learn how to prove that a proposition `P` is false.

What distinguishes propositions from types is the fact that the elements do not contain any information. If `P` is a proposition and we have elements `x y : P`, then `x` and `y` can be identified in a sense that we will make precise in Equality World.
"
