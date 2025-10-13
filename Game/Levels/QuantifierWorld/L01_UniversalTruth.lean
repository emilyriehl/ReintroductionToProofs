import Game.Metadata

World "QuantifierWorld"
Level 1

Title "Universal Truth"

Introduction "Let `P : A → Prop` be a predicate over a type `A`.

As the notation suggests, a predicate is naturally regarded as a function, whose domain is the type `A` and whose target is the type of propositions.

It is also natural to think of a predicate as an indexed family of propositions: we have propositions `P x : Prop` indexed by the elements `x : A`.

To prove that `∀ x : A, P x` holds, one must show that `P x` is true for each `x : A`.

That is, one must introduce an arbitrary element `x : A` and then construct a proof of `P x`.

In other words, to prove `∀ x : A, P x`, one must construct what is sometimes called a *dependent function* that carries `x : A` to an element of `P x`. Such functions are called &ldquo;dependent&rdquo; because the proposition `P x` may vary with the input element `x : A`.
"

/-- For all `a : A`, `a = a` holds. -/
Statement {A : Type} : ∀ a : A, a = a := by
  Hint "To prove a statement of the form `∀ x : A, P x` start with `intro x`. Your goal is then to prove the proposition `P x`."
  intro a
  Hint (hidden := true) "Recall the `rfl` tactic."
  rfl

Conclusion "Note the similarly with the first level of Equality World. In fact, all of the statements we have proven about arbitrary elements of types can be reinterpreted as proving universally quantified propositions."
