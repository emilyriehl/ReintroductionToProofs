import Game.Levels.DisjunctionWorld.L01_IntroducingOr
import Game.Levels.DisjunctionWorld.L02_AndImpliesOr
import Game.Levels.DisjunctionWorld.L03_UsingOr
import Game.Levels.DisjunctionWorld.L04_Symmetry
import Game.Levels.DisjunctionWorld.L05_Associativity
import Game.Levels.DisjunctionWorld.L06_Distributivity
import Game.Levels.DisjunctionWorld.L07_DisjunctionBossLevel

World "DisjunctionWorld"
Title "Disjunction World"

Introduction "
The logical connective of *disjunction*, denoted by `∨`, is the mathematical version of *or*. For arbitrary propositions `P` and `Q`, `P ∨ Q` is a new proposition asserting that at least one of `P` *or* `Q` *are true*.

To understand how conjunctions work in logic we must learn:

* How to prove theorems of the form `P ∨ Q`.
* How to use a hypothesis of the form `P ∨ Q` to prove something else.

There are two strategies to prove `P ∨ Q`. It suffices to supply a proof of `P` and it also suffices to supply a proof of `Q`. Note that the mathematical &ldquo;or&rdquo; is *inclusive*, meaning that if `P` and `Q` are both true, then `P ∨ Q` is true.

Using a hypothesis `h : P ∨ Q` leads to a proof strategy of arguing &ldquo;by cases&rdquo; as we will soon discover.
"
