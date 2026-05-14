import Game.Levels.EqualityWorld.L06_ApplyingFunctions

World "EqualityWorld"
Level 7

Title "Applying Equality"

Introduction "Suppose `f g : A → B` are parallel functions. What does it mean to prove `f = g`?

The answer involves an additional axiom in dependent type theory called *function extensionality*, which we are not able to formally state just yet.

But if we cannot yet construct a proof that `f` and `g` are equal, we can establish a useful consequence of a hypothesis of the form `p : f = g`.

If two functions `f g : A → B` are equal and `a : A` then `f a = g a`.

Can you prove this?
"

/-- Functions are well-defined: if `f g : A → B` are equal and `a : A`, then `f a = g a`. -/
Statement {A B : Type} {f g : A → B} (p : f = g) (a : A) : f a = g a  := by
  rw [p]
  rfl

Conclusion "For functions `f g : A → B` between types, a proof `p : f = g`, and an element `a : A`, then `congrFun p a : f a = g a`. This theorem has been added to the library."

/--
For functions `f g : A → B` between types, a proof `p : f = g`, and an element `a : A`, then `congrFun p a : f a = g a`.
-/
TheoremDoc congrFun as "congrFun" in "Eq"

NewTheorem congrFun
