import Game.Metadata

World "CoproductWorld"
Level 6

Title "Associativity"


Introduction "Given three types `A`, `B`, and `C`, the coproduct type construction may be iterated to define types `(A ⊕ B) ⊕ C` and `A ⊕ (B ⊕ C)`, the latter of which is abbreviated `A ⊕ B ⊕ C`.

For both of these types, there are three cases of elements: those coming from `a : A`, those coming from `b : B`, and those coming from `c : C`. The notation for the corresponding elements of the iterated coproduct type depends on the parentheses: the terms `b : B` include as `Sum.inl (Sum.inr b) : (A ⊕ B) ⊕ C` but include as `Sum.inr (Sum.inl b) : A ⊕ (B ⊕ C)`.

The objective in this level is to define a pair of functions between these types in each direction, the first of type `((A ⊕ B) ⊕ C) → (A ⊕ (B ⊕ C))` and the second of type `(A ⊕ (B ⊕ C)) → ((A ⊕ B) ⊕ C)`. That is, define a single element of type

`(((A ⊕ B) ⊕ C) → (A ⊕ (B ⊕ C))) × ((A ⊕ (B ⊕ C)) → ((A ⊕ B) ⊕ C))`
"

/-- For types `A`, `B`, and `C`, there are canonical functions between the types `(A ⊕ B) ⊕ C` and `A ⊕ (B ⊕ C)`. -/
Statement {A B C : Type} : (((A ⊕ B) ⊕ C) → (A ⊕ (B ⊕ C))) × ((A ⊕ (B ⊕ C)) → ((A ⊕ B) ⊕ C)) := by
  Hint (hidden := true) "The goal is a product of function types, so to define an element you need to define two different functions. Each will take some work, so start with the `constructor` tactic to split one goal into two goals."
  constructor
  Hint (hidden := true) "Now the goal is a function type. What tactic is used to define functions?"
  intro p
  Hint (hidden := true) "Now use `cases {p}` or `rcases {p} with x | c` or similar to give your own variable names."
  rcases p with ab | c
  rcases ab with a | b
  apply Sum.inl
  exact a
  apply Sum.inr
  apply Sum.inl
  exact b
  apply Sum.inr
  apply Sum.inr
  exact c
  intro p
  Hint (hidden := true) "Now use `cases {p}` or `rcases {p} with a | x` or similar to give your own variable names."
  rcases p with a | bc
  apply Sum.inl
  apply Sum.inl
  exact a
  rcases bc with b | c
  apply Sum.inl
  apply Sum.inr
  exact b
  apply Sum.inr
  exact c

Conclusion "Next we will study the relationship between products and coproducts."
