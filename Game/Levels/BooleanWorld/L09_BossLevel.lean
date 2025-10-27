import Game.Metadata

World "BooleanWorld"
Level 9

Title "Boss Level"

Introduction "
An expression involving booleans is in *conjuctive normal form* if it expressed as a conjunction (possibly involving many formulas) of disjunctions (possibly involving many formulas) of either booleans or their negations.

Using Lean's alternate notation for conjunction, disjunction, and negation, conjunctive normal form statements look like

`(p || !q || r) && (q || !r) && (!p || r)`

For the Boss Level, you are asked to find booleans `p q r : Bool` so that

`(!p || q) && (!q || p) && (!p || !r) && (!q || !r) && (p || q)`

is satisfiable, meaning that the after substituting appropriate elements for `p q r`, this conjunctive normal form formula is equal to `true`.

Solve the first three goals by `exact p`, `exact q`, and `exact r` &mdash; replacing the boolean variables by explicit booleans `true` or `false` as appropriate. If you have found the right solution, the final goal should be solvable with `rfl`.
"

/-- The following expression in conjunctive normal form is satisfiable. -/
Statement (preamble := let p : Bool := ?_; let q : Bool := ?_; let r : Bool := ?_; rotate_right; rotate_right; rotate_right) : ∃ p : Bool, ∃ q : Bool, ∃ r : Bool,
and (not p || q)
(and (not q || p)
(and (not p || not r)
(and (not q || not r)
(p || q)))) = true := by
  --  Hint "For this level to work, we need to swap the goals. Type `pick_goal 4` to move the fourth goal to the front."
  -- pick_goal 4
  Hint "Now supply your conjectured value of `r` with `exact ??`."
  exact false
  -- Hint "Now type `pick_goal 3` to move the third goal to the front."
  -- pick_goal 3
  Hint "Now supply your conjectured value of `q` with `exact ??`."
  exact true
  -- Hint "Now type `pick_goal 2` to move the third goal to the front."
  -- pick_goal 2
  Hint "Now supply your conjectured value of `p` with `exact ??`."
  exact true
  --
  Hint "Now type ⟨p, q, r, rfl⟩` to use these values and attempt to solve the goal by `rfl`.
  If this works, congratulations! If not, go back and change the values for `p`, `q`, and `r`.
  Ignore the funny looking `∃` symbol in the formula, which will be explained in a future world."
  exact ⟨p, q, r, rfl⟩

Conclusion "If this was too easy, you might find it interesting to learn that the general problem of identifying whether a formula in conjunctive normal form is satisfiable is NP complete!"

/-- `pick_goal n` will move the `n`-th goal to the front. -/
TacticDoc pick_goal

NewTactic pick_goal
