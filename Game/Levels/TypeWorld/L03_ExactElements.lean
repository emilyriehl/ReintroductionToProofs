import Game.Metadata

World "TypeWorld"
Level 3

Title "Exact Elements"

Introduction "A more elaborate context may contain multiple types and multiple elements, or a mix of types, elements, propositions, and proofs.

Thus, we may require a more precise way to tell Lean which data or hypothesis from our context should be used.

In this level, our context includes two types `A` and `B` with three elements between them. Note the use of a space rather than a list to indicate that `y : B` and `z : B` each define elements of type `B`.

Our goal is to define an element of type `B` and the tactic `assumption` will solve this goal. But this tactic does not convey to the reader which assumption was used.

In this sort of setting, it is better practice to use the tactic `exact`. If the goal has type `E` and there is an element `e : E` in the context, then `exact e` uses the element `e` to close the goal.

The `exact` tactic can also be used when the goal is a proposition `P` and the context includes a proof `p : P`. Then `exact p` will solve the goal.

The tactic `exact` can now be found in the library.
"

/-- Under the hypothesis that we have types `A` and `B` and elements `x : A` and `y z : B`, we may define an element of type `B`. -/
Statement {A B : Type} (x : A) (y z : B) : B := by
  exact z

Conclusion "After solving this level, use the `Retry` button to solve it again. What happens if you try `exact x`?"

/-- If there is an assumption `e : E` and the goal has type `E`, then `exact e` closes the goal. -/
TacticDoc exact

NewTactic exact
