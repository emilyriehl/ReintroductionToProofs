import Game.Metadata

World "QuantifierWorld"
Level 2

Title "More Transitivity"

Introduction "
Recall that predicates `P : A → Prop` can also be thought of as indexed families of propositions: in this case, we have a proposition `P x : Prop` for each element `x : A`.

More generally, we might consider propositions indexed by multiple variables, either drawn repeatedly from the same type or drawn from different types.

In this level, we will consider the family of propositions

`w = x → x = y → y = z → w = z`

indexed by four variables `w x y z : A`.

Here this implication is true no matter what the specific elements `w`, `x`, `y`, and `z` are.

Thus, we will be able to prove

`∀ w x y z : A, w = x → x = y → y = z → w = z`

an enhanced version of the transitivity of equality.
"

/-- For all `w x y z : A` if `w = x ` and `x = y` and `y = z` then `w = z`. -/
Statement {A : Type} : ∀ w x y z : A, w = x → x = y → y = z → w = z := by
  Hint (hidden := true) "Recall you can introduce multiple variables and hypothesis at once by typing `intro w x y z p q r`."
  intro w x y z p q r
  Hint (hidden := true) "Recall you can rewrite along multiple hypothesized equalities at once by typing `rw [{p}, {q}, {r}]`."
  rw [p, q, r]
  rfl

Conclusion "In general families of propositions indexed by multiple variables are just functions with multiple input types valued in `Prop`, such as `P : A → B → C → Prop`."
