import Game.Metadata

World "EquivalenceWorld"
Level 2

Title "Again"

Introduction "This is probably a bad idea
"

Statement : Bool → Type := by
  intro x
  cases x
  exact Empty
  exact Unit


Conclusion "This is probably a bad idea"
