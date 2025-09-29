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

Introduction "Consider a type `A`. For any two elements `a b : A` there is a proposition `a = b`
that encodes the mathematical assertion that `a` and `b` are *equal*.

Like with generic propositions `P`, the proposition `a = b` is not necessarily *true*.

To prove that
`a = b` is true, we must construct an element `p : a = b` which can be thought of as a *proof* that
`a` equals `b` as elements of type `A`.

For example: `2 + 2 = 4` is true for elements `(2 + 2) 4 : ℕ`. In a few levels, we will construct a proof of this.

But the proposition `0 = 1` is false, again for
`0 1 : ℕ`.

In a later level, we'll see how to prove its *negation*, in other words that `0 = 1` is false.
"
