import Game.Metadata

World "NaturalNumbersWorld"
Level 3

Title "Induction"

Introduction "
By definition"

open Nat

/-- Every natural number is even or odd. -/
Statement : ∀ n : Nat, (∃ m : Nat, n = 2*m) ∨ (∃ m : Nat, n = 2*m + 1) := by
  intro n
  induction n with n hn
  left
  use 0
  rfl
  cases hn
  right
  rcases h with ⟨k, hk⟩
  use k
  rw [hk]
  rfl
  rcases h with ⟨k, hk⟩
  left
  use k + 1
  rw [hk]
  rfl

Conclusion "You can click on `retry` to attempt a different proof. Try typing `assumption` instead."

/--
## Summary

If `n : ℕ` is an object, and the goal mentions `n`, then `induction n with d hd`
attempts to prove the goal by induction on `n`, with the inductive
variable in the successor case being `d`, and the inductive hypothesis being `hd`.

### Example:
If the goal is
```
0 + n = n
```

then

`induction n with d hd`

will turn it into two goals. The first is `0 + 0 = 0`;
the second has an assumption `hd : 0 + d = d` and goal
`0 + succ d = succ d`.

Note that you must prove the first
goal before you can access the second one.
-/
TacticDoc induction

NewTactic induction
