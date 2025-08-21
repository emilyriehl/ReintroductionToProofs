import Game.Metadata

World "ConjunctionWorld"
Level 10

Title "Boss Level"

Introduction "For the Boss Level of Conjunction World, the task is to show another logical equivalence,
this time between the conjoined implications `(P → Q) ∧ (P → R)` and the implication `P → Q ∧ R`.

The proof will require a new idea, which previews the next level. We've seen that for propositions `S` and `T`,
`S → (S → T) → T` can be proven by introducing hypotheses `s : S` and `h : S → T`, at which point the goal is to prove `T`.
Then applying the hypothesis `h` reduces the goal to proving `S` which we know is true by `s`. In fact, the element
`h s : T` is a proof of `T`, namely the proof constructed by applying the hypothesis `h` to the hypothesis `s`.
"

Statement {P Q R S T U V W X Y Z : Prop} : P → (R → S ∧ T) → (U → P → R) → ((U → Y) → Z) → (W ∧ T ∧ V → X ∧ Y) → (S → V ∧ W) → Z := by
  intro p h k l g f
  apply l
  intro u
  exact (g ⟨(f (h (k u p)).1).2, (h (k u p)).2 , (f (h (k u p)).1).1⟩).2

Conclusion "Next move on to `Function World` to learn about types and functions."

/- Use these commands to add items to the game's inventory. -/
