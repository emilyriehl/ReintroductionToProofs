import Game.Levels.DependentWorld.L01_Types

World "DependentWorld"
Level 2

Title "Functions"


Introduction "We have already seen many examples of dependent types and dependent functions indexed by the type `Type` of types.

For example, consider the family of types `A → A` indexed by `A : Type`. This defines an element of `Type → Type` defined to send `A : Type` to the function type `A → A`.

Your task in this level is to define an element of the corresponding dependent function type `(A : Type) → A → A`. That is, for each `A : Type`, you are asked to define an element of type `A → A`.

Can you do it?
"

/--
The polymorphic identity function has type `(A : Type) → A → A`.
-/
Statement : (A : Type) → A → A := by
  intro A
  exact id

Conclusion ""


-- Statement : (n : ℕ) → Δ n
--   := by
--   intro n
--   match n with | zero => exact ⟨⟩ | succ k => exact Sum.inl ⟨⟩
