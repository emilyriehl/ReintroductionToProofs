import Game.Metadata

World "EmptyWorld"
Level 7

Title "Boss Level"

Introduction "For the Boss Level of Empty World, we construct something that is just weird.

Have fun!
"

/-- There are functions in both directions between the types `Empty ⊕ (Empty → Empty)` and `(Empty → Empty) × (Empty → Empty)`. -/
Statement : (Empty ⊕ (Empty → Empty) → (Empty → Empty) × (Empty → Empty)) × ((Empty → Empty) × (Empty → Empty) → Empty ⊕ (Empty → Empty))  := by
  constructor
  intro h
  rcases h with x | y
  cases x
  exact ⟨y, y⟩
  intro p
  exact Sum.inr p.2

Conclusion "The empty type is a weird type, so what was the point of this world? The hope is that your experience defining functions involving the empty type will prepare you to think about what it means to prove that a proposition is false in Negation World. Go there next."
