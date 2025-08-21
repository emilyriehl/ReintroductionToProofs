import Game.Levels.ConjunctionWorld.L01_IntroducingAnd
import Game.Levels.ConjunctionWorld.L02_UsingAnd
import Game.Levels.ConjunctionWorld.L03_Symmetry
import Game.Levels.ConjunctionWorld.L04_LogicalEquivalence
import Game.Levels.ConjunctionWorld.L05_Associativity
import Game.Levels.ConjunctionWorld.L06_CompoundImplication
import Game.Levels.ConjunctionWorld.L07_MoreCompoundImplication
import Game.Levels.ConjunctionWorld.L08_CurryingImplication
import Game.Levels.ConjunctionWorld.L09_UniversalProperty
import Game.Levels.ConjunctionWorld.L10_BossLevel

World "ConjunctionWorld"
Title "Conjunction World"

Introduction "
The logical connective of *conjunction*, denoted by `∧`, is the mathematical version of *and*. For arbitrary propositions `P` and `Q`, `P ∧ Q` is a new proposition asserting that `P` *and* `Q` *are both true*.

To understand how conjunctions work in logic we must learn:

* How to prove theorems of the form `P ∧ Q`.
* How to use a hypothesis of the form `P ∧ Q` to prove something else.

To prove `P ∧ Q`, one must supply proofs `p : P` and `q : Q`, which can be done using the syntax `⟨p,q⟩ : P ∧ Q`. Use '\\\\<' and '\\\\>' to type the angle braces.

If we have a proof `h : P ∧ Q` then we can extract proofs that `P` and `Q` are true using the syntax `h.1 : P` and `h.2 : Q`.
"
