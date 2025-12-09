import Game.Metadata

World "TypeWorld"
Level 1

Title "Elements"

Introduction "An interative theorem prover &mdash; in this case Lean &mdash; helps the user &mdash; this means you &mdash; keep track of the state of a proof or a mathematical construction.

In the `Active Goal` window, Lean keeps track of the `objects` and `assumptions` &mdash; which together define the hypotheses of a mathematical statement &mdash; as well as the `goal` &mdash; meaning the thing we are trying to prove.

The objects and assumptions together define the mathematical *context* for a given theorem or construction.

Here our context is given by a single type `A` with a hypothesized element `a : A`.

On the right-hand side we see the name of a type, which is the *goal* for this level. Here that type is `A`, which means that our goal is to define an element of type `A`.

We have such an element by assumption, and you can type `assumption` to tell Lean this. Then click the button `Execute` to ask Lean to check your work.

Here `assumption` is an example of a *tactic*, which is built into Lean. You can find this in the tactic library on the upper right."

/-- Under the hypothesis that we have a type `A` and an element `a : A`, we may define an element of `A`.-/
Statement {A : Type} (a : A) : A := by
  Hint (hidden := true) "Type `assumption` to tell Lean to use the assumed element of `A` to define an element of `A`."
  assumption

Conclusion "In the next level, we will learn about elements of propositions."

/-- The `assumption` tactic tries to solve the main goal using a hypothesis of compatible type, or else fails. -/
TacticDoc assumption

NewTactic assumption
