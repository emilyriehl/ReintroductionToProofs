import Game.Levels.TypeWorld.L01_Elements
import Game.Levels.TypeWorld.L02_Proofs
import Game.Levels.TypeWorld.L03_ExactElements
import Game.Levels.TypeWorld.L04_UnitType
import Game.Levels.TypeWorld.L05_TypeOfPropositions
import Game.Levels.TypeWorld.L06_TypeOfTypes
import Game.Levels.TypeWorld.L07_BossLevel

World "TypeWorld"
Title "Type World"

Introduction "
In this world, we introduce two primitives:

* *types* denoted with capital variables like `A` and `B` and
* *elements* written `x : A` or `y : B`.

For example, there are types `ℕ` of
natural numbers, `ℤ` of integers, `ℚ` of rational numbers, `ℝ` of real numbers, `ℂ` of complex
numbers, and so on. There are also types of more sophisticated mathematical structures, like vector spaces or groups.

Types can have more than one element. The elements of the type `ℕ` are the familiar natural numbers:  `0 : ℕ`, `1 : ℕ` and so on.

By contrast, elements belong to unique types. The integer `57` is distinct from the natural number `57`. This is one of the reasons why type theory is useful for precise mathematical communication: an element always carries the information of the type that it belongs to.

Mathematical *propositions* can be thought of as a special case of types. For propositions `P` and `Q`, we think of
elements `p : P` and `q : Q` as *proofs* that these propositions are true.

By contrast, false propositions will not have any elements. In Negation World, we will learn how to prove that a proposition `P` is false.

What distinguishes propositions from types is the fact that the elements do not contain any information beyond witnessing the truth of the proposition. If `x` and `y` are two proofs of a proposition `P`, then `x` and `y` are equal in a sense that will be introduced in Equality World.
"
