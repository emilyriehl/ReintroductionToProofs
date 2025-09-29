import Game.Levels.BooleanWorld.L01_Negation
import Game.Levels.BooleanWorld.L02_DoubleNegation
import Game.Levels.BooleanWorld.L03_Conjunction
import Game.Levels.BooleanWorld.L04_ConjunctionSymmetry
import Game.Levels.BooleanWorld.L05_Disjunction
import Game.Levels.BooleanWorld.L06_DisjunctionSymmetry
import Game.Levels.BooleanWorld.L07_DeMorgan
import Game.Levels.BooleanWorld.L08_NotEqual
import Game.Levels.BooleanWorld.L09_BossLevel

World "BooleanWorld"
Title "Boolean World"

Introduction "In this world, we'll meet the type `Bool` of *booleans*.

This type has two elements: `false : Bool` and `true : Bool`.

Formally these elements are just two elements with distinct names.

But the terminology suggests that we can think of `Bool` as the type of truth values, with `true : Bool` representing the true proposition and `false : Bool` representing the false proposition.

In this world, we will define various functions involving the type of booleans.

We will also show that the type of booleans is *not* a proposition by proving that `¬(true = false)`.
"
