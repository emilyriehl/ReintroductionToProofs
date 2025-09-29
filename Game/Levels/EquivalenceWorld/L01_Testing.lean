import Game.Metadata
-- import Mathlib.Logic.Equiv.Defs

World "EquivalenceWorld"
Level 1

Title "Testing"

Introduction "This is probably a bad idea
"

/-- `α ≃ β` is the type of functions from `α → β` with a two-sided inverse. -/
structure Equiv (α β : Type) where
  toFun : α → β
  invFun : β → α
  left_inv : invFun ∘ toFun = id
  right_inv : toFun ∘ invFun = id

@[inherit_doc]
infixl:25 " ≃ " => Equiv

Statement {A B : Type} : (A × B) ≃ (B × A) := by
  refine ⟨?_, ?_, ?_, ?_⟩
  intro p
  exact ⟨p.2, p.1⟩
  intro p
  exact ⟨p.2, p.1⟩
  rfl
  rfl

Conclusion "This is probably a bad idea"

-- -- and (and (and p (not p)) q) (not q) = false := by
--   cases p <;> cases q <;> rfl

-- (p || not p) && (q || not q) && (not p || not q) && (not p || q) && (p || not q) && (p || q) && (not p || p || not q) && (not p || p || q) && (not p || not q || q) && (p || not q || q) && (not p || p || not q || q)
