import Game.Levels.EmptyWorld.L03_ThroughEmpty

World "EmptyWorld"
Level 4

Title "Composition"

Introduction "In this level, we will revisit the composition function in the presence of the empty type.

Recall that for any types `A`, `B`, and `C`, composition defines a function:

`Function.comp : (B → C) → (A → B) → (A → C)`.

In particular, if `C` is the empty type, composition defines a function:

`Function.comp : (B → Empty) → (A → B) → (A → Empty)`.

Your task in this level is to define the closely related variant of the composition function which has type:

`(A → B) → (B → Empty) → (A → Empty)`

This construction will be analogous to something we will encounter in Negation World.
"

/-- For any types `A` and `B`, there is a function `(A → B) → (B → Empty) → (A → Empty)` defined by composition. -/
Statement {A B : Type} : (A → B) → (B → Empty) → (A → Empty) := by
  intro f
  intro nb
  intro a
  exact nb (f a)

Conclusion "For any types `A`, `B`, and `C`, we have the function `
flip Function.comp : (A → B) → (B → C) → (A → C)` defined by exchanging the inputs. This specializes in the case where `C` is the type `Empty` to define the function we seek here. Indeed, this level can be solved with `exact flip Function.comp`. Does this perspective make this construction feel less strange?"
