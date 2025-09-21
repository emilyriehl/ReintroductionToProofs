import Game.Metadata

World "EmptyWorld"
Level 4

Title "Composition"

Introduction "In this level, we will revisit the composition function in the presence of the empty type.

Recall that for any types `A`, `B`, and `C`, composition defines a function:

`∘ : (B → C) → (A → B) → (A → C)`.

In particular, if `C` is the empty type, composition defines a function:

`∘ : (B → Empty) → (A → B) → (A → Empty)`.

Your task in this level is to define the closely related variant of the composition function which has type:

`(A → B) → (B → Empty) → (A → Empty)`

as this construction will be more closely related to something we will encounter in the next world.
"

/-- For any types `A` and `B`, there is a function `(A → B) → (B → Empty) → (A → Empty)` defined by composition. -/
Statement {A B : Type} : (A → B) → (B → Empty) → (A → Empty) := by
  intro f
  intro nb
  intro a
  exact nb (f a)

Conclusion "Does this construction feel intuitive or does it feel strange?"
