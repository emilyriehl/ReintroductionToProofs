import Game.Levels.AdvancedFunctionWorld
import Game.Levels.AdvancedFunctionWorld.L01_TotalFunctions
import Game.Levels.AdvancedFunctionWorld.L02_Surjectivity
import Game.Levels.AdvancedFunctionWorld.L03_CancelingSurjectivity
import Game.Levels.AdvancedFunctionWorld.L04_ComposingSurjectivity
import Game.Levels.AdvancedFunctionWorld.L05_Injectivity
import Game.Levels.AdvancedFunctionWorld.L06_ComposingInjectivity
import Game.Levels.AdvancedFunctionWorld.L07_CancelingInjectivity
import Game.Levels.AdvancedFunctionWorld.L08_Bijectivity
import Game.Levels.AdvancedFunctionWorld.L09_Invertibility
import Game.Levels.AdvancedFunctionWorld.L10_InverseInvertibility
import Game.Levels.AdvancedFunctionWorld.L11_InvertibleImpliesBijective
import Game.Levels.AdvancedFunctionWorld.L12_BijectiveImpliesInvertible
import Game.Levels.AdvancedFunctionWorld.L13_FunctionExtensionality
import Game.Levels.AdvancedFunctionWorld.L14_DoubleNegation
import Game.Levels.AdvancedFunctionWorld.L15_Isomorphism
import Game.Levels.AdvancedFunctionWorld.L16_BossLevel
import Game.Levels.BooleanWorld
import Game.Levels.BooleanWorld.L01_Negation
import Game.Levels.BooleanWorld.L02_DoubleNegation
import Game.Levels.BooleanWorld.L03_Conjunction
import Game.Levels.BooleanWorld.L04_ConjunctionSymmetry
import Game.Levels.BooleanWorld.L05_Disjunction
import Game.Levels.BooleanWorld.L06_DisjunctionSymmetry
import Game.Levels.BooleanWorld.L07_DeMorgan
import Game.Levels.BooleanWorld.L08_NotEqual
import Game.Levels.BooleanWorld.L09_BossLevel
import Game.Levels.ClassicalWorld
import Game.Levels.ClassicalWorld.L01_ByContradiction
import Game.Levels.ClassicalWorld.L02_Contrapositive
import Game.Levels.ClassicalWorld.L03_ExcludedMiddle
import Game.Levels.ClassicalWorld.L04_NegatingConjunction
import Game.Levels.ClassicalWorld.L05_NegatingImplication
import Game.Levels.ClassicalWorld.L06_BossLevel
import Game.Levels.ConjunctionWorld
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
import Game.Levels.CoproductWorld
import Game.Levels.CoproductWorld.L01_LeftInclusion
import Game.Levels.CoproductWorld.L02_RightInclusion
import Game.Levels.CoproductWorld.L03_ComponentFunctions
import Game.Levels.CoproductWorld.L04_UniversalProperty
import Game.Levels.CoproductWorld.L05_Symmetry
import Game.Levels.CoproductWorld.L06_Associativity
import Game.Levels.CoproductWorld.L07_Distributivity
import Game.Levels.CoproductWorld.L08_BossLevel
import Game.Levels.DependentWorld
import Game.Levels.DependentWorld.L01_Types
import Game.Levels.DependentWorld.L02_Functions
import Game.Levels.DependentWorld.L03_Application
import Game.Levels.DependentWorld.L04_Pairs
import Game.Levels.DependentWorld.L05_Currying
import Game.Levels.DependentWorld.L06_BossLevel
import Game.Levels.DisjunctionWorld
import Game.Levels.DisjunctionWorld.L01_IntroducingOr
import Game.Levels.DisjunctionWorld.L02_AndImpliesOr
import Game.Levels.DisjunctionWorld.L03_UsingOr
import Game.Levels.DisjunctionWorld.L04_Symmetry
import Game.Levels.DisjunctionWorld.L05_UniversalProperty
import Game.Levels.DisjunctionWorld.L06_Associativity
import Game.Levels.DisjunctionWorld.L07_Distributivity
import Game.Levels.DisjunctionWorld.L08_MoreDistributivity
import Game.Levels.DisjunctionWorld.L09_BossLevel
import Game.Levels.EmptyWorld
import Game.Levels.EmptyWorld.L01_FromEmpty
import Game.Levels.EmptyWorld.L02_ToEmpty
import Game.Levels.EmptyWorld.L03_ThroughEmpty
import Game.Levels.EmptyWorld.L04_Composition
import Game.Levels.EmptyWorld.L05_ProductWithEmpty
import Game.Levels.EmptyWorld.L06_CoproductWithEmpty
import Game.Levels.EmptyWorld.L07_BossLevel
import Game.Levels.EqualityWorld
import Game.Levels.EqualityWorld.L01_Reflexivity
import Game.Levels.EqualityWorld.L02_PairedProjections
import Game.Levels.EqualityWorld.L03_ProjectedPairs
import Game.Levels.EqualityWorld.L04_Symmetry
import Game.Levels.EqualityWorld.L05_Transitivity
import Game.Levels.EqualityWorld.L06_ApplyingFunctions
import Game.Levels.EqualityWorld.L07_ApplyingEquality
import Game.Levels.EqualityWorld.L08_UnitProposition
import Game.Levels.EqualityWorld.L09_EmptyProposition
import Game.Levels.EqualityWorld.L10_EqualityProposition
import Game.Levels.EqualityWorld.L11_BossLevel
import Game.Levels.EquivalenceWorld
import Game.Levels.EquivalenceWorld.L01_ProductSymmetry
import Game.Levels.EquivalenceWorld.L02_CoproductSymmetry
import Game.Levels.EquivalenceWorld.L03_SwappingInputs
import Game.Levels.EquivalenceWorld.L04_CurryingUncurrying
import Game.Levels.EquivalenceWorld.L05_ComponentFunctions
import Game.Levels.EquivalenceWorld.L06_MoreComponentFunctions
import Game.Levels.EquivalenceWorld.L07_BossLevel
import Game.Levels.EquivalenceWorld.L08_UnusedBossLevel
import Game.Levels.FunctionWorld
import Game.Levels.FunctionWorld.L01_IdentityFunction
import Game.Levels.FunctionWorld.L02_UsingFunctions
import Game.Levels.FunctionWorld.L03_UsingFunctionsBackwards
import Game.Levels.FunctionWorld.L04_ComposingFunctions
import Game.Levels.FunctionWorld.L05_ConstantFunctions
import Game.Levels.FunctionWorld.L06_MultivariableFunctions
import Game.Levels.FunctionWorld.L07_SwappingInputs
import Game.Levels.FunctionWorld.L08_CompositionRevisited
import Game.Levels.FunctionWorld.L09_Evaluation
import Game.Levels.FunctionWorld.L10_BossLevel
import Game.Levels.ImplicationWorld
import Game.Levels.ImplicationWorld.L01_ByAssumption
import Game.Levels.ImplicationWorld.L02_ModusPonens
import Game.Levels.ImplicationWorld.L03_ApplyingImplication
import Game.Levels.ImplicationWorld.L04_ComposingImplication
import Game.Levels.ImplicationWorld.L05_ProvingImplication
import Game.Levels.ImplicationWorld.L06_ProvingImpliedAssumption
import Game.Levels.ImplicationWorld.L07_ProvingAssumedImplication
import Game.Levels.ImplicationWorld.L08_Transitivity
import Game.Levels.ImplicationWorld.L09_ModusPonensAgain
import Game.Levels.ImplicationWorld.L10_BossLevel
import Game.Levels.NaturalNumbersWorld
import Game.Levels.NaturalNumbersWorld.L01_Numerals
import Game.Levels.NaturalNumbersWorld.L02_NormalForms
import Game.Levels.NaturalNumbersWorld.L03_Induction
import Game.Levels.NaturalNumbersWorld.L04_Recursion
import Game.Levels.NaturalNumbersWorld.L05_PredecessorOfSuccessor
import Game.Levels.NaturalNumbersWorld.L06_DefiningAddition
import Game.Levels.NaturalNumbersWorld.L07_AddingZero
import Game.Levels.NaturalNumbersWorld.L08_AddingSuccessors
import Game.Levels.NaturalNumbersWorld.L09_CommutingAddition
import Game.Levels.NaturalNumbersWorld.L10_SuccessorInjectivity
import Game.Levels.NaturalNumbersWorld.L11_BossLevel
import Game.Levels.NegationWorld
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
import Game.Levels.ProductWorld
import Game.Levels.ProductWorld.L01_Pairing
import Game.Levels.ProductWorld.L02_FirstProjection
import Game.Levels.ProductWorld.L03_SecondProjection
import Game.Levels.ProductWorld.L04_Symmetry
import Game.Levels.ProductWorld.L05_Associativity
import Game.Levels.ProductWorld.L06_Currying
import Game.Levels.ProductWorld.L07_Uncurrying
import Game.Levels.ProductWorld.L08_ComponentFunctions
import Game.Levels.ProductWorld.L09_UniversalProperty
import Game.Levels.ProductWorld.L10_BossLevel
import Game.Levels.QuantifierWorld
import Game.Levels.QuantifierWorld.L01_UniversalTruth
import Game.Levels.QuantifierWorld.L02_MoreTransitivity
import Game.Levels.QuantifierWorld.L03_UniversalElimination
import Game.Levels.QuantifierWorld.L04_IntroducingExistence
import Game.Levels.QuantifierWorld.L05_MultipleQuantifiers
import Game.Levels.QuantifierWorld.L06_CommutingQuantifiers
import Game.Levels.QuantifierWorld.L07_NegatingExistence
import Game.Levels.QuantifierWorld.L08_NegatingUniversality
import Game.Levels.QuantifierWorld.L09_BossLevel
import Game.Levels.TypeWorld
import Game.Levels.TypeWorld.L01_Elements
import Game.Levels.TypeWorld.L02_Proofs
import Game.Levels.TypeWorld.L03_ExactElements
import Game.Levels.TypeWorld.L04_UnitType
import Game.Levels.TypeWorld.L05_TypeOfPropositions
import Game.Levels.TypeWorld.L06_TypeOfTypes
import Game.Levels.TypeWorld.L07_BossLevel
import Game.Metadata
import Game.Metadata.Equivalence
import Game.Metadata.Nat
import Game.Metadata.Tactic
import Game.Metadata.Tactic.Constructor
import Game.Metadata.Tactic.Induction
import Game.Metadata.Tactic.Rw
import Game.Metadata.Tactic.Use
import Game.Metadata.Tactic.Xyzzy

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

The aim of this game will be to introduce proof writing in a computer proof assistant while developing skills that can be used to develop proofs in other contexts: on paper, in conversation with a friend, or in your head.

There is one caveat to this introduction to proof writing, which we now address explicitly. The formal vocabulary we will introduce to discuss mathematical proofs is somewhat different from the one that most mathematicians learn. The mathematics we will be developing is essentially unchanged but the formal language introduced here will make it easier to be fully precise about every step in a proof, as is required to convince a computer that a logical argument is sound.

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
Languages "en"   -- List of ISO 2-letter abbreviations
/-! `CaptionShort` is the subtitle displayed above the image -/
CaptionShort "An introduction to proofs in dependent type theory."
/-! `CaptionLong` is the description of the game displayed below the image -/
CaptionLong "This game introduces mathematical proof writing in a formal vocabulary that is designed to make it easier to be fully precise about every step in a proof, as is required to convince a computer that a logical argument is sound.

The language of dependent type theory can be used in parallel to state and prove mathematical theorems as well as to specify and define examples of mathematical objects.
"

-- Prerequisites "" -- add this if your game depends on other games
CoverImage "images/blue-jay-curry-howard-blue.png"

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
Dependency EquivalenceWorld → DependentWorld
Dependency NaturalNumbersWorld → DependentWorld

/-! Build the game. Shows warnings if it found a problem with your game. -/
MakeGame
