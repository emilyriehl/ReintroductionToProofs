import Game.Metadata

World "ConjunctionWorld"
Level 7

Title "More Compound Implication"

/--
For propositions `P`, `Q`, and `R`, `And.uncurry` is a proof that `P → Q → R` implies `P ∧ Q → R`.
-/
TheoremDoc And.uncurry as "uncurry" in "And"

Introduction "In the previous level we proved that `P ∧ Q → R` implies `P → Q → R`.

We now show that `P → Q → R` implies `P ∧ Q → R`.
"

/-- `P → Q → R` implies `P ∧ Q → R`. -/
Statement And.uncurry {P Q R : Prop} (h : P → Q → R) : P ∧ Q → R := by
  Hint (hidden := true) "Can we apply our hypothesis yet or must we act on the goal first?"
  intro pq
  Hint (hidden := true) "Can we apply our hypothesis yet or must we act on the goal first?"
  apply h
  Hint "Since `h` is a compound implication, we have multiple hypothesis to satisfy. We must prove that `P` is true and also prove that `Q` is true. Fortunately, our assumptions cover both cases."
  exact pq.1
  exact pq.2

Conclusion "This proves the theorem `And.uncurry : (P → Q → R) → (P ∧ Q → R)`. In the next level, we will combine these results to show that `P ∧ Q → R` and `P → Q → R` are logically equivalent."

/- Use these commands to add items to the game's inventory. -/

NewTheorem And.uncurry
DisabledTheorem And.uncurry
