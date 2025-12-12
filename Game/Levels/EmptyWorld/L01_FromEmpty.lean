import Game.Metadata

World "EmptyWorld"
Level 1

Title "From Empty"

Introduction "The type `Empty` has no elements &mdash; or, more precisely, the type `Empty` has no introduction rules.

Consequently, for any other type `A`, there is always a function `Empty → A`.

The task in this level is to define it.
"

/-- For any type `A`, there is a function `Empty → A` encoding the elimination rule of the empty type. -/
Statement {A : Type} : Empty → A := by
  Hint (hidden := true) "The goal is a function type. What tactic can be used to define an element?"
  intro p
  Hint "Type `cases {p}` to ask Lean to consider all possible cases involving an element of the empty type. As there are no cases, this will complete the proof."
  cases p

Conclusion "Lean has a built-in name `Empty.elim : Empty → A` for the function you have just defined. Thus `exact Empty.elim` will also solve this level. This function has been added to the library."


/-- The empty type `Empty` has no introduction rules. It is an inductive type, meaning that it is in some sense *freely generated* by the elements provided by its introduction rules. In this case, this means that the elimination rule provides a canonical function `Empty.elim : Empty → A` valued in any type `A`. -/
DefinitionDoc Empty as "Empty" in "Type"

/--
For any type `A`, there is a function `Empty.elim : Empty → A` expressing the elimination rule of the empty type.
-/
DefinitionDoc Empty.elim as "Empty.elim" in "Empty"

NewDefinition Empty Empty.elim
