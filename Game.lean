import Game.Levels.TypeWorld
import Game.Levels.FunctionWorld
import Game.Levels.ImplicationWorld
import Game.Levels.ProductWorld
import Game.Levels.ConjunctionWorld
import Game.Levels.CoproductWorld
import Game.Levels.DisjunctionWorld
import Game.Levels.EmptyWorld
import Game.Levels.NegationWorld
import Game.Levels.ClassicalWorld
import Game.Levels.EqualityWorld
import Game.Levels.BooleanWorld
import Game.Levels.QuantifierWorld
import Game.Levels.AdvancedFunctionWorld
import Game.Levels.EquivalenceWorld
import Game.Levels.NaturalNumbersWorld

-- Here's what we'll put on the title screen
Title "Reintroduction to Proofs"
Introduction
"
Mathematicians from all over &mdash; most of whom have never met one another &mdash; nevertheless agree to an incredible extent about the nature of the mathematical universe. How did this degree of consensus come about?

Firstly mathematicians have developed a precise formal language which allows them to define new abstract concepts and state their properties in an unambiguous way. A mathematical *proposition* is a well-formed mathematical statement that is either true or false, for instance:

* &ldquo;There are infinitely many prime numbers.&rdquo;
* &ldquo;Every prime number is odd.&rdquo;
* &ldquo;There are infinitely many prime numbers that are two less than another prime.&rdquo;

Mathematicians distinguish between the true propositions, the false ones, and the ones whose truth value is not yet known through *proofs* made precise in the formal language of mathematical logic.

While the idea of a mathematical proof is over 2000 years old, the practice of proof writing continues to evolve. Today mathematicians may elect to use a tool called a computer proof assistant that can provide real-time feedback to a theorem prover about the status of a logical argument that is currently under development.

The aim of this game will be to introduce proof writing in a computer proof assistant while developing skils that can be used to develop proofs in other contexts: on paper, in conversation with a friend, or in your head.

There is one caveat to this introduction to proof writing, which we now address explicitly. The formal vocabulary we will introduce to discuss mathematical proofs is somewhat different from the one that most mathematicians learn. The mathematics we will be developing is essentially unchanged but the formal language introduced here will make it easier to be fully precise about every step in a proof, as is required to convince a computer that a logical argument in sound.

In particular, we will explore an analogy between mathematical *propositions* and another form of primitive mathematical structure called *types*. Examples of types include:

* The type `ℕ` of natural numbers.
* The type `Bool` of booleans.

Each type comes with its *elements* such as `17 : ℕ` or `true : Bool` governed by rules which explain the requirements for constructing an element and how previously-constructed elements can be used. We will see that these rules closely parallel the logical rules which dictate the requirements for proving a proposition and explain how a previously-proven proposition can be used to prove other theorems.

This formal vocabulary for mathematics is called *dependent type theory*, with the adjective &ldquo;dependent&rdquo; referring to the fact that all of the rules just mentioned apply in any *context* of previously-constructed elements of types and previously-proven propositions.

In Type World, we will introduce types and their elements and propositions and their proofs. We will explore these notions interactively with the computer proof assistant Lean.

Later worlds will reveal that more complicated types can be built from simpler types, like more complicated mathematical statements can be built from simpler propositions.

Let's begin!
"

Info
"
This was created using the GameSkeleton Github Repo from the Lean Games Server hosted by ADAM: Anticipating the Digital Age of Mathematics at Heinrich Heine University Düsseldorf. It was originally designed for a first year seminar course taught at Johns Hopkins University in Fall 2025 with the title `Computer-Verified Proof: a Hands-On Introduction to Interactive Theorem Proving`.
"

/-! Information to be displayed on the servers landing page. -/
Languages "English"
CaptionShort "ReintroToProofs"
CaptionLong "Reintroduction to Proofs"
-- Prerequisites "" -- add this if your game depends on other games
CoverImage "images/blue-jay.jpg"

Dependency TypeWorld → FunctionWorld
Dependency FunctionWorld → ImplicationWorld
Dependency FunctionWorld → ProductWorld
Dependency ImplicationWorld → ConjunctionWorld
Dependency ProductWorld → ConjunctionWorld
Dependency ProductWorld → CoproductWorld
Dependency ConjunctionWorld → DisjunctionWorld
Dependency CoproductWorld → DisjunctionWorld
Dependency CoproductWorld → EmptyWorld
Dependency EmptyWorld → NegationWorld
Dependency NegationWorld → ClassicalWorld
Dependency EmptyWorld → EqualityWorld
Dependency NegationWorld → BooleanWorld
Dependency EqualityWorld → BooleanWorld
Dependency BooleanWorld → QuantifierWorld
Dependency ClassicalWorld → QuantifierWorld
Dependency QuantifierWorld → AdvancedFunctionWorld
Dependency AdvancedFunctionWorld → EquivalenceWorld
Dependency AdvancedFunctionWorld → NaturalNumbersWorld

/-! Build the game. Shows warnings if it found a problem with your game. -/
MakeGame
