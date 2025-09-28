import Game.Metadata

World "EmptyWorld"
Level 3

Title "Through Empty"

Introduction "In this level, we will explore another weird consequence of the hypothesis that we have a function of type `A → Empty`.

Let `A` and `B` be any types and assume there is a function `f : A → Empty`.

Then it is always possible to define a function `A → B`.

The proof requires a bit of cleverness, but you can ask for a few hints if you get stuck.
"

/-- For any types `A` and `B`, if there is a function `f : A → Empty` then there is also a function `A → B`.-/
Statement {A B : Type} : (A → Empty) → A → B := by
  Hint (hidden := true) "The goal is a function type. What tactic can be used to define an element?"
  intro f
  Hint (hidden := true) "The goal is a function type. What tactic can be used to define an element?"
  intro a
  Hint (hidden := true) "We have assumptions `{f} : A → Empty` and `{a} : A`? What can you construct using this?"
  Hint (hidden := true) "Use `have := {f} {a}` to add an element of the empty type to the list of assumptions."
  have := f a
  Hint (hidden := true) "Recall that for any type `B`, there is a function `Empty.elim : Empty → B`. Using this and your element of `Empty` can you define an element of type `B`?"
  apply Empty.elim
  assumption

Conclusion "Again, something very strange happens if the types `A` and `A → Empty` both have elements."
