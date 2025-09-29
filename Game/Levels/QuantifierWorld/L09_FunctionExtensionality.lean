import Game.Metadata

World "Function Extensionality"
Level 9

Title "Function Extensionality"

Introduction "Suppose that `f g : A → B` are functions. What does it mean for these functions to be equal?

There is an idea that a function is determined by its values. In fact, we have `rfl : f = fun x ↦ f x`, meaning that the function `f` is definitionally equal to the function defined by the formula `x ↦ f x`. This is sometimes called the `η-rule` for functions.

Similarly of course `rfl : g = fun g ↦ g x`. So when does `f = g`?

It suffices to have a proof `p x : f x = g x` for all elements `x : A`. Given proofs of this nature, it is not necessarily the case that `f = g` by definition, unless the proofs above are all by definition.

However, by appealing to something called *function extensionality*, the equality `f = g` follows as we will see.
"

/-- The empy type is a proposition: for `x y : Empty`, `x = y`. -/
Statement {A B : Type} {f g : A → B} (p : (x : A) → (f x = g x)) : f = g  := by
  ext
  exact p x

Conclusion "In the next level, we will prove that the empty type is also a proposition."
