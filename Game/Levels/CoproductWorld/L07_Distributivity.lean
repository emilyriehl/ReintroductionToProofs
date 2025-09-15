import Game.Metadata

World "CoproductWorld"
Level 7

Title "Distributivity"


Introduction "How should we think about an element of type `x : A × (B ⊕ C)`?.

Since `x` belongs to a product type, it can be split into two components. That is `x` has the form of a pair `⟨y, z⟩` with `y : A` and `z : B ⊕ C`. And since `z` belongs to a coproduct type, there are two possible cases: it can have the form `Sum.inl b` for some `b : B` or it can have the form `Sum.inr c` for some `c : C`. In the first case, the original `x : A × (B ⊕ C)` is a pair of the form `⟨y, Sum.inl b⟩` coming from `⟨y, b⟩ : A × B` which in the second case `x` is a pair of the form `⟨y, Sum.inr c⟩` coming from `⟨y, c⟩ : A × C`.

This explains the *distributivity* of products over coproducts, which can be encoded by a pair of functions, one of the form `A × (B ⊕ C) → (A × B) ⊕ (A × C)` and the other of the form `(A × B) ⊕ (A × C) → A × (B ⊕ C)`.
"

Statement {A B C : Type} : (A × (B ⊕ C) → (A × B) ⊕ (A × C)) × ((A × B) ⊕ (A × C) → A × (B ⊕ C)) := by
  Hint (hidden := true) "The goal is a product of function types, so to define an element you need to define two different functions. Each will take some work, so start with the `constructor` tactic to split one goal into two goals."
  constructor
  Hint (hidden := true) "Now the goal is a function type. What tactic is used to define functions?"
  intro p
  Hint (hidden := true) "You can use `cases` or `rcases` either on `{p}` to split it up into components or directly on its component in `B ⊕ C`.Be careful to use the syntax that is appropriate for terms of product or coproduct types, respectively."
  rcases p.2 with b | c
  exact Sum.inl ⟨p.1, b⟩
  exact Sum.inr ⟨p.1, c⟩
  Hint (hidden := true) "Now the goal is a function type. What tactic is used to define functions?"
  intro p
  rcases p with q | r
  exact ⟨q.1, Sum.inl q.2⟩
  exact ⟨r.1, Sum.inr r.2⟩

Conclusion "Now we're ready for the boss level."
