import Game.Levels.NegationWorld.L01_ExFalso
import Game.Levels.NegationWorld.L02_Negation
import Game.Levels.NegationWorld.L03_DoubleNegation
import Game.Levels.NegationWorld.L04_Noncontradiction
import Game.Levels.NegationWorld.L05_Absurd

World "NegationWorld"
Title "Negation World"

Introduction "In this world, we will study the proposition `False` and the logical operation of *negation*.

Recall that an element `p : P` of a proposition `P` may be thought of as a proof that the proposition is true. The proposition `False` is not true so it does not contain any elements.

For any proposition `P`, we define its *negation* to be the proposition `P → False`, pronounced &ldquo;`P` implies false&rdquo;. This is commonly abbreviated with the shorthand `¬ P`, pronounced &ldquo;not P&rdquo;.

A *proof of negation* means a proof of a proposition of the form `¬ P` for some proposition `P`.

Using the introduction rule for implications, such a proof starts by assuming `p : P` and then deriving an element of `False`.

Since `False` has no elements, we think of this process as deriving a contradiction.
"
