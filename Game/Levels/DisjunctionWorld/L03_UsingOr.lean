import Game.Metadata

World "DisjunctionWorld"
Level 3

Title "Using Or"

/--
For propositions `P` and `Q`, `Or.symm` is a proof that `P ∨ Q → Q ∨ P`.
-/
TheoremDoc Or.symm as "symm" in "Or"

Introduction "Given a hypothesis `h : P ∨ Q` we know that *either* `P` or `Q` is true (or possibly both are true).

But we don't know *which* of `P` or `Q` is true.

If we want to use a hypothesis like this to prove some other proposition `R` is true we need proofs that cover either of the two cases: that is, we need to show that `P` implies `R` (whether or not `Q` is true) and also that `Q` implies `R` (whether or not `P` is true).

If we have an assumption of the form `h : P ∨ Q`, then type `cases h` to ask Lean to consider both cases: the first being that `P` is true and the second being that `Q` is true.

There is another tactic, similar to `cases`, which allows you to give explicit names for the hypotheses assumed in each case.

If given a hypothesis `h : P ∨ Q`, then `rcases h with p | q` can be used in place of `cases h` to give hypotheses `p : P` in the first case and `q : Q` in the second. (Here you can choose any variable names for `p` and `q`.)

For example, arguing by cases, we can prove that or is symmetric, that is that `P ∨ Q` implies `Q ∨ P`."

Statement {P Q : Prop} : P ∨ Q → Q ∨ P := by
  Hint (hidden := true) "What is the outermost logical connective?"
  intro h
  Hint (hidden := true) "After introducing the hypothesis `{h} : {P} ∨ {Q}`, type `cases h` to ask Lean to consider both cases: the first being that `P` is true and the second being that `Q` is true."
  rcases h with q | p
  Hint "Note now that Lean provides two goals, both of which are to prove that `{Q} ∨ {P}` is true, under two different hypotheses. Your first task is to prove the theorem in the first case."
  Hint (hidden := true) "Recall `Or.inl` and `Or.inr` refer to the left and right propositions in a disjunction `S ∨ T`."
  apply Or.inr
  Hint (hidden := true) "You can solve the goal by explicitly referring to the named hypothesis that Lean supplied or by typing `assumption` to indicate that the goal matches an assumption."
  assumption
  Hint "Note now that you've completed the proof in the first case, Lean expects you to provide a proof in the second case."
  apply Or.inl
  Hint (hidden := true) "You can solve the goal by explicitly referring to the named hypothesis that Lean supplied or by typing `assumption` to indicate that the goal matches an assumption."
  assumption

Conclusion "This proves the symmetry of disjunction. Practice using both the `cases` and `rcases` tactics to get used to them."



NewTheorem Or.symm
