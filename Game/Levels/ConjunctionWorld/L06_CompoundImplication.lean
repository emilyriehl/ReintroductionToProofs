import Game.Metadata

World "ConjunctionWorld"
Level 6

Title "Compound Implication"

/--
For propositions `P`, `Q`, and `R`, `And.curry` is a proof that `P ∧ Q → R` implies `P → Q → R`.
-/
TheoremDoc And.curry as "curry" in "And"

Introduction "Recall that implication is *NOT* associative: the propositions `(P → Q) → R` and `P → (Q → R)` are not logically equivalent, and `P → Q → R` is an abbreviation for the former.

One reason that mathematical statements of the form `P → (Q → R)` are more prevalent is that this is implied by `P ∧ Q → R`, which is implicitly parenthesized as `(P ∧ Q) → R`.
"

/-- `P ∧ Q → R` implies `P → Q → R`. -/
Statement And.curry {P Q R : Prop} (h : P ∧ Q → R) : P → Q → R := by
  Hint (hidden := true) "Can we apply our hypothesis yet or must we act on the goal first?"
  intro p
  Hint (hidden := true) "Can we apply our hypothesis yet or must we act on the goal first?"
  intro q
  Hint (hidden := true) "Can we apply our hypothesis now?"
  apply h
  Hint (hidden := true) "Now how do we prove a conjunction?"
  exact ⟨p, q⟩

Conclusion "This proves that `(P ∧ Q → R) → (P → Q → R)`. We will now investigate the converse implication."

/- Use these commands to add items to the game's inventory. -/
NewTheorem And.curry
