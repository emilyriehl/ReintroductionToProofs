import Game.Levels.EqualityWorld.L09_EqualityProposition

World "EqualityWorld"
Level 10

Title "Boss Level"

Introduction "For the Boss Level of Equality World, you are asked to prove an equality of a more elaborate form than we've seen thus far.

On the left-hand side of the equality is an element defined by

* starting with a pair of elements `a : A` and `b : B`,
* applying a function `f : A × B → C` to the pair `⟨a, b⟩ : A × B`, and
* then applying a function `h : C → D` to the result.

On the right-hand side of the equality is an element defined by
* starting with a pair of elements `a' : A` and `b' : B`,
* applying a function `g : A × B → C` to the pair `⟨a',b'⟩ : A × B`, and
* then applying a function `k : C → D` to the result.

In general, these elements would be distinct. However, we have assumed that we have equalities `p : a = a'`, `q : b = b'`, and `r : h ∘ f = k ∘ g`.

The last of these hypotheses is in a form that makes it somewhat difficult to use, as the functions `h ∘ f` and `k ∘ g` do not appear explicitly in the goal.

But if you recall the way that composition of functions is defined, you'll see that these elements do appear implicitly in the goal.

To solve this level, you will need to prove and then rewrite along another equality so that at least one of the functions `h ∘ f` or `k ∘ g` appears explicitly in the goal. This technique will be used frequently in Advanced Function World.

Then you will be able to use the hypothesis `r` to complete the proof.

Good luck!
"

/-- Functions out of product types are well-defined, both regarding equalities between elements and equalities between hypotheses. -/
Statement {A B C D : Type} {a a' : A} {b b' : B} (f g : A × B → C) (h k : C → D)
    (p : a = a') (q : b = b') (r : h ∘ f = k ∘ g) : h (f ⟨a, b⟩) = k (g ⟨a', b'⟩) := by
  rw [← p, ← q]
  have eq1 : (h ∘ f) ⟨a, b⟩ = h (f ⟨a, b⟩) := rfl
--  have eq2 : (k ∘ g) ⟨a, b⟩ = k (g ⟨a, b⟩) := rfl
  rw [← eq1]
  rw [r]
  rfl

Conclusion "We will meet some further applications of the equality type in Boolean World. Head there next."

-- "The equality type tells us what it means for two *elements* of the same type to be the same. Move on to Equivalence World to learn what it means for two *types* to be the same."
