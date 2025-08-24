import Game.Levels.ImplicationWorld
import Game.Levels.ConjunctionWorld
-- import Game.Levels.FunctionWorld
-- import Game.Levels.ProductWorld
-- import Game.Levels.DisjunctionWorld
-- import Game.Levels.CoproductWorld
-- import Game.Levels.EqualityWorld

-- Here's what we'll put on the title screen
Title "Computer-Verified Proof: a Hands-On Introduction to Interactive Theorem Proving"
Introduction
"
Mathematicians from all over &mdash; most of whom have never met one another &mdash; nevertheless agree to an incredible extent about the nature of the mathematical universe. How did this degree of consensus come about?

Firstly mathematicians have developed a precise formal language which allows them to define new abstract concepts and state their properties in an unambiguous way. A mathematical *proposition* is a well-formed mathematical statement that is either true or false, for instance:

* &ldquo;There are infinitely many prime numbers.&rdquo;
* &ldquo;Every prime number is even.&rdquo;
* &ldquo;There are infinitely many prime numbers that are two less than another prime.&rdquo;

Mathematicians distinguish between the true propositions, the false ones, and the ones whose truth value is not yet known through *proofs* made precise in the formal language of mathematical logic.

While the idea of a mathematical proof is over 2000 years old, the practice of proof writing continues to evolve. Today mathematicians may elect to use a tool called a computer proof assistant that can provide real-time feedback to a theorem prover about the status of a logical argument that is currently under development.

The aim of this game will be to introduce proof writing in a computer proof assistant while developing skils that can be used to develop proofs in other contexts: on paper, in conversation with a friend, or in your head.

There is one caveat, that we will address explicitly. The formal vocabulary we will introduce to discuss mathematical proof is somewhat different from the one that most mathematicians learn. The mathematics we will be developing is essentially unchanged but the formal language introduced here will make it easier to be fully precise about every step in a proof, as is required to convince a computer that a logical argument in sound.
"

Info "
This was created using the GameSkeleton Github Repo from the Lean Games Server hosted by ADAM: Anticipating the Digital Age of Mathematics at Heinrich Heine University Düsseldorf. It is designed for a first year seminar course taught at Johns Hopkins University in Fall 2025 with the title `Computer-Verified Proof: a Hands-On Introduction to Interactive Theorem Proving`.
"

/-! Information to be displayed on the servers landing page. -/
Languages "English"
CaptionShort "FYS270"
CaptionLong "First Year Seminar 270"
-- Prerequisites "" -- add this if your game depends on other games
CoverImage "images/blue-jay.jpg"

Dependency ImplicationWorld → ConjunctionWorld
-- Dependency ImplicationWorld → FunctionWorld → ProductWorld
-- Dependency ConjunctionWorld → ProductWorld → CoproductWorld
-- Dependency ConjunctionWorld → DisjunctionWorld → CoproductWorld → EqualityWorld

/-! Build the game. Show's warnings if it found a problem with your game. -/
MakeGame
