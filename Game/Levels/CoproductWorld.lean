import Game.Levels.CoproductWorld.L01_LeftInclusion
import Game.Levels.CoproductWorld.L02_RightInclusion
import Game.Levels.CoproductWorld.L03_ComponentFunctions
import Game.Levels.CoproductWorld.L04_UniversalProperty
import Game.Levels.CoproductWorld.L05_Symmetry
import Game.Levels.CoproductWorld.L06_Associativity
import Game.Levels.CoproductWorld.L07_Distributivity
import Game.Levels.CoproductWorld.L08_BossLevel

World "CoproductWorld"
Title "Coproduct World"

Introduction "
Given any types `A` and `B` we have studied

* function types `A → B` whose elements `f : A → B` are *functions* from `A` to `B` and

* product types `A × B` whose elements `⟨a, b⟩ : A × B` are *pairs* of elements `a : A` and `b : B`.

In this world, we'll study another binary type forming operation. Given two types `A` and `B`, there is a type `A ⊕ B` called the *coproduct type* which has two types of elements:

* elements `a : A` define elements `Sum.inl a : A ⊕ B`
* elements `b : B` define elements `Sum.inr b : A ⊕ B`.

Like the analogy between function types and implication, and product types and conjunction, there is a close analogy between coproduct types and the logical operation of disjunction.
"
