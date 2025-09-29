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
Statement (p q r : Bool) :
and (or (or (not p) (not q)) r)
(and (or (or p (not q)) r)
(and (or (or (not p) (not q)) (not r))
(and (or (or p q) (not r))
(and (or (or p (not q)) (not r))
(and (or (or p q) r)
(and (or (or (not p) q) r)
(or (or (not p) q) (not r))))))))
= false := by
  cases p <;> cases q <;> cases r <;> rfl

Conclusion "If this was too easy, you might find it interesting to learn that the general problem of identifying whether a formula in conjunctive normal form is unsatisfiable is NP complete!"
