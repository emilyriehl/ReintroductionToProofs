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

In this world, we'll study another binary type forming operation. Given two types `A` and `B`, there is a type `A ⊕ B` called the *coproduct type* which has two varieties of elements:

* elements `a : A` define elements `Sum.inl a : A ⊕ B`
* elements `b : B` define elements `Sum.inr b : A ⊕ B`.

Together, these constructions define the two *introduction rules* for coproduct types. Coproduct types also have an *elimination rule*, which gives a strategy for defining a function `f : A ⊕ B → C` whose inputs belong to a coproduct type and whose outputs take values in an arbitrary type `C`.

This elimination rule tells us that functions out of a coproduct can be defined &ldquo;by cases&rdquo; &mdash; that is, by independently specifying the images of those elements that come from `A` and those elements that come from `B`.

Collectively, these rules characterize coproduct types and can be used to establish their properties, which we will explore in the levels that follow.
"
