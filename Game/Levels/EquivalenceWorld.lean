import Game.Levels.EquivalenceWorld.L01_ProductSymmetry
import Game.Levels.EquivalenceWorld.L02_CoproductSymmetry
import Game.Levels.EquivalenceWorld.L03_SwappingInputs
import Game.Levels.EquivalenceWorld.L04_CurryingUncurrying
import Game.Levels.EquivalenceWorld.L05_ComponentFunctions
import Game.Levels.EquivalenceWorld.L06_MoreComponentFunctions
import Game.Levels.EquivalenceWorld.L07_BossLevel

World "EquivalenceWorld"
Title "Equivalence World"

Introduction "
What does it mean for two things to be &ldquo;the same&rdquo;?

The answer depends on what sort of things we are talking about.

We have seen what it means for two elements of the same type to be the same. Given `x y : A`, we think of `x` and `y` as being &ldquo;the same&rdquo; if they are *equal*, meaning there is an element `p : x = y` in the equality type.

We have also seen what it means for two propositions to be the same. Given propositions `P` and `Q`, we think of `P` and `Q` as being &ldquo;the same&rdquo; if they are *logically equivalent*, meaning there is an element `p : P ↔ Q`.

What does it mean for two types to be &ldquo;the same&rdquo;?

In this level, we will learn the answer: two types `A` and `B` are &ldquo;the same&rdquo; if they are *equivalent*. This means there is some element `p : A ≃ B` in the type `A ≃ B` of *equivalences* between `A` and `B` that we will introduce.

To define an equivalence between `A` and `B` we need four pieces of data:

* a function `f : A → B`
* a function `g : B → A`
* a proof `α : ∀ a : A, g (f a) = a`
* a proof `β : ∀ b : B, f (g b) = b`

The first two pieces of data resemble the data required by a logical equivalence `P ↔ Q`. For that one needs proofs `f : P → Q` and `g : Q → P` of the implications in each direction.

The remaining data is relevant because functions carry more information than implications. In particular, there may be multiple functions from `A` to `B` and from `B` to `A`.

By function extensionality, the proof `α` witnesses the fact that `g ∘ f = id` while the proof `β` witnesses the fact that `f ∘ g = id`. Together this tells us that the functions `f` and `g` are *inverses*.

In other words, if `f` and `g` are thought of as operations that exchange elements of types `A` and `B`, both operations can be undone.

The data `⟨f, g, α, β⟩ : A ≃ B` is sometimes also referred to as an *isomorphism* but in Lean the term *equivalence* is more common.
"
