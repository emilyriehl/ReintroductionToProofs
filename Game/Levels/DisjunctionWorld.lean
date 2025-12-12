import Game.Levels.DisjunctionWorld.L01_IntroducingOr
import Game.Levels.DisjunctionWorld.L02_AndImpliesOr
import Game.Levels.DisjunctionWorld.L03_UsingOr
import Game.Levels.DisjunctionWorld.L04_Symmetry
import Game.Levels.DisjunctionWorld.L05_UniversalProperty
import Game.Levels.DisjunctionWorld.L06_Associativity
import Game.Levels.DisjunctionWorld.L07_Distributivity
import Game.Levels.DisjunctionWorld.L08_MoreDistributivity
import Game.Levels.DisjunctionWorld.L09_BossLevel

World "DisjunctionWorld"
Title "Disjunction World"

Introduction "
The logical connective of *disjunction*, denoted by `∨`, is the mathematical version of *or*.

For arbitrary propositions `P` and `Q`, `P ∨ Q` is a new proposition asserting that at least one of `P` *or* `Q` *are true*.

To understand how conjunctions work in logic we must learn:

* How to prove theorems of the form `P ∨ Q`.
* How to use a hypothesis of the form `P ∨ Q` to prove something else.

There are two strategies to prove `P ∨ Q`. It suffices to supply a proof of `P` and it also suffices to supply a proof of `Q`.

Note that the mathematical &ldquo;or&rdquo; is *inclusive*, meaning that if `P` and `Q` are both true, then `P ∨ Q` is true.

Together these strategies define the two introduction rules for disjunctions. Note that a proof that employs either of these strategies carries extra information. In addition to concluding that `P ∨ Q` is true, a proof using the first strategy will prove along the way that `P` is true (perhaps subject to certain hypotheses) while a proof using the second strategy will prove along the way that `Q` is true (perhaps subject to other hypotheses).

Similarly, the construction of an element of a coproduct type via either of the introduction rules will carry the information of whether the element comes from the left-hand type or the right-hand type.

The elimination rule for disjunctions explains how to use a hypothesis `h : P ∨ Q` to prove something else.

Using a hypothesis `h : P ∨ Q` leads to a proof strategy of arguing &ldquo;by cases&rdquo; as we will soon discover.

Like the analogy between function types and implication, and product types and conjunction, there is a close analogy between coproduct types and the logical operation of disjunction.

In particular, we will use similar notations and the same tactics introduced in Coproduct World.
"
