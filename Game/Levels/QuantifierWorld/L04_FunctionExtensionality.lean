import Game.Metadata

World "QuantifierWorld"
Level 4

Title "Function Extensionality"

Introduction "Suppose that `f g : A → B` are functions. What does it mean for these functions to be equal?

There is an idea that a function is determined by its values. In fact, we have `rfl : f = fun x ↦ f x`, meaning that the function `f` is definitionally equal to the function defined by the formula `x ↦ f x`. This is sometimes called the `η-rule` for functions.

Similarly of course `rfl : g = fun g ↦ g x`. So when does `f = g`?

It suffices to have a proof `p x : f x = g x` for all elements `x : A`. Given proofs of this nature, it is not necessarily the case that `f = g` by definition, unless the proofs above are all by definition.

However, by appealing to something called *function extensionality*, the equality `f = g` follows as we will see.

Function extensionality is an instance of a general `ext` tactic that can be used to prove equality in many types.
"

/-- For functions `f g : A → B` if `∀ x : A, f x = g x` then `f = g`. -/
Statement {A B : Type} {f g : A → B} (p : ∀ x : A, f x = g x) : f = g  := by
  Hint "Type `ext` to apply function extensionality and see how the goal state transforms."
  ext
  exact p x

Conclusion "In the next level, we will practice using function extensionality to demonstrate an equality between functions."

/-- The `ext` tactic can be used to apply function extensionality, changing a goal involving proving equality between functions `f g : A → B` into a goal of proving `f x = g x` for an arbitrary `x : A`. The `ext` tactic  applies similar extensionality lemmas that have been proven for other types. -/
TacticDoc ext

NewTactic ext
