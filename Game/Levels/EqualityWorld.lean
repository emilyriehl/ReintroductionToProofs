import Game.Levels.EqualityWorld.L01_Reflexivity
import Game.Levels.EqualityWorld.L02_PairedProjections
import Game.Levels.EqualityWorld.L03_ProjectedPairs
import Game.Levels.EqualityWorld.L04_Symmetry
import Game.Levels.EqualityWorld.L05_Transitivity
import Game.Levels.EqualityWorld.L06_ApplyingFunctions
import Game.Levels.EqualityWorld.L07_UnitProposition
import Game.Levels.EqualityWorld.L08_EmptyProposition
import Game.Levels.EqualityWorld.L09_EqualityProposition
import Game.Levels.EqualityWorld.L10_BossLevel

World "EqualityWorld"
Title "Equality World"

Introduction "Consider a type `A`. For any two elements `x y : A` there is a proposition `x = y`
that encodes the mathematical assertion that `x` and `y` are *equal*.

Note that the proposition `x = y` is only well-formed if `x` and `y` are elements of the same type `A`.

Like with generic propositions `P`, the proposition `x = y` is not necessarily *true*.

To prove that
`x = y` is true, we must construct an element `p : x = y` which can be thought of as a *proof* that
`x` equals `y` as elements of type `A`.

For example: `2 + 2 = 4` is true for elements `(2 + 2) 4 : ℕ`. In Natural Numbers World, we will see a proof of this.

But the proposition `0 = 1` is false, again for
`0 1 : ℕ`.

In Natural Numbers World, we will see how to prove its *negation*, in other words that `0 = 1` is false.

To understand the proposition `x = y` for elements `x y : A`, we must understand:

* How to prove propositions of the form `x = y`.
* How to use hypotheses of the form `x = y` to prove other propositions or define elements of other types.

The introduction rule for proving equality is surprisingly weak, only proving equalities that hold trivially &ldquo;by reflexivity&rdquo; or &ldquo;by definition&rdquo;.

By contrast, the elimination rule for using proofs of equality is quite strong, expressing something like the *indiscernibility of identicals*: informally, if we have `p : x = y`, then anything that is true of `x` must also be true of `y` (and conversely).

Lean provides a tactic that can be applied to the proof `p` to convert a goal involving the element `x` to an analogous goal with `y` substituted in place of `x`.
"
