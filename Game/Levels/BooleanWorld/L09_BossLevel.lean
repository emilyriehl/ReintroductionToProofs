import Game.Metadata

World "BooleanWorld"
Level 9

Title "Boss Level"

Introduction "
An expression involving booleans is in *conjuctive normal form* if it expressed as a conjunction (possibly involving many formulas) of disjunctions (possibly involving many formulas) of either booleans or their negations.

Using Lean's alternate notation for conjunction, disjunction, and negation, conjunctive normal form statements look like

`(p || !q || r) && (q || !r) && (!p || r)`

For the Boss Level, your are asked to characterize an especially complicated example of a statement in conjunctive normal form.
"

/-- The following expression in conjunctive normal form is unsatisfiable. -/
Statement (p q : Bool) : and (and (and p (not p)) q) (not q)
= false := by
  cases p <;> cases q <;> rfl

Conclusion "If this was too easy never fear. We'll replace this with a harder Boss Level soon."
