import Game.Metadata

World "CoproductWorld"
Level 4

Title "Universal property"

Introduction "A function `f : A ⊕ B → C` mapping out of a coproduct type may be *broken apart* into component functions of types `A → C` and `B → C`.

Conversely, given an arbitrary pair of functions `g : A → C` and `h : B → C`, one can build a function of type `A ⊕ B → C`. This function is defined by introducing a variable term `x : A ⊕ B` and then splitting into two cases: the case where `x` is of the form `Sum.inl a` for some `a : A` and the case where `x` is of the form `Sum.inr b` for some `b : B`. In the first case, the function `g` can be used to define an element `g a : C`, while in the second case the function `h` can be used to define an element `h b : C`.

This construction should be reminiscent of a proof by cases involving a hypothesis `x` that a disjunction is true.
"

Statement {A B C : Type} (g : A → C) (h : B → C) : (A ⊕ B → C) := by
  Hint (hidden := true) "Use the `intro` tactic to define a term in a function type."
  intro x
  Hint (hidden := true) "Use either `cases {x}` or `rcases {x} with a | b` to consider the possible cases for the variable `{x} : A ⊕ B`."
  rcases x with a | b
  apply g
  exact a
  apply h
  exact b

Conclusion "We will see later that functions of type `A ⊕ B → C` are uniquely determined by their component functions `(A → C) × (B → C)`."
