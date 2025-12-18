import Game.Levels.NegationWorld.L01_ExFalso
import Game.Levels.NegationWorld.L02_Negation
import Game.Levels.NegationWorld.L03_DoubleNegation
import Game.Levels.NegationWorld.L04_Noncontradiction
import Game.Levels.NegationWorld.L05_Absurd
import Game.Levels.NegationWorld.L06_ModusTollens
import Game.Levels.NegationWorld.L07_NegatingImplication
import Game.Levels.NegationWorld.L08_NegatingDisjunction
import Game.Levels.NegationWorld.L09_NegatingConjunction
import Game.Levels.NegationWorld.L10_TripleNegation
import Game.Levels.NegationWorld.L11_BossLevel

World "NegationWorld"
Title "Negation World"

Introduction "In this world, we will study the proposition `False` and the logical operation of *negation*.

Recall that an element `p : P` of a proposition `P` may be thought of as a proof that the proposition is true. We do not have any proofs of the proposition `False`, so it does not contain any elements.

For any proposition `P`, we define its *negation* to be the proposition `P → False`, pronounced &ldquo;`P` implies false&rdquo;. This is commonly abbreviated with the shorthand `¬ P`, pronounced &ldquo;not P&rdquo;.

A *proof of negation* means a proof of a proposition of the form `¬ P` for some proposition `P`.

Using the introduction rule for implications, such a proof starts by assuming `p : P` and then deriving an element of `False`.

Since `False` has no elements, we think of this process as deriving a contradiction.

There is a related technique called *proof by contradiction* for proving that `P` is true that will be discussed in Classical World, as one of the proof strategies that is available when reasoning non-constructively.

By contrast, a proof of negation is constructive, as it is analogous to the construction of a function between types, as we saw in Empty World.
"
