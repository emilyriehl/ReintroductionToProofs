import Game.Levels.NaturalNumbersWorld.L04_Recursion

World "NaturalNumbersWorld"
Level 5

Title "Predecessor of Successor"

Introduction "
In the previous level you defined the function `pred : ℕ → ℕ` by recursion and proved that it satisfies the properties:

* `pred 0 = 0` and
* `∀ n : ℕ, pred (succ n) = n`.

In this level you are asked to check a closely related property: namely that
`pred ∘ succ = id` as functions from `ℕ` to `ℕ`.

Can you recall how to establish an equality between functions? Revisit the Function Extensionality level of Advanced Function World if you need a reminder.
"

open Nat

/-- The composite of `succ : ℕ → ℕ` followed by `pred : ℕ → ℕ` is the identity function. -/
TheoremDoc ReintroductionToProofs.Nat.pred_comp_succ as "pred_comp_succ" in "ℕ"

namespace ReintroductionToProofs

/-- The composite of `succ : ℕ → ℕ` followed by `pred : ℕ → ℕ` is the identity function. -/
Statement Nat.pred_comp_succ : pred ∘ succ = id := by
  ext n
  induction n with k hk
  rfl
  rfl

end ReintroductionToProofs
