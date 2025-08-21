import Game.Metadata

World "ConjunctionWorld"
Level 4

Title "Logical Equivalence"


/--
`P ↔ Q`, read as &ldquo;`P` if and only if `Q`&rdquo; is an abbreviation for `(P → Q) ∧ (Q → P)`.
-/
DefinitionDoc iff as "↔"

NewDefinition iff

Introduction "Two propositions `P` and `Q` are *logically equivalent* if `P` implies `Q` and `Q` also implies `P`. The assertion that `P` and `Q` are logically equivalent can be expressed by the compound proposition `(P → Q) ∧ (Q → P)`.

Because this notion will appear frequently in what follows, we introduce `P ↔ Q` as a useful shorthand for `(P → Q) ∧ (Q → P)`. See the list of definitions to the right for a reminder about what the symbol `↔` means.

The notion of logical equivalence enables us to upgrade our understanding of associativity of symmetry as follows."

Statement {P Q : Prop} : P ∧ Q ↔ Q ∧ P := by
  Hint "Recall that `S ↔ T` is an abbreviation for `(S → T) ∧ (T → S)`. What is the outermost connective here? Which tactic can be used to break this into subgoals?"
  constructor
  intro h
  exact ⟨h.2,h.1⟩
  intro k
  exact ⟨k.2,k.1⟩

Conclusion "Did you give the same proof twice? If so, why does this make sense? If not, could you have done this? In fact, we gave a name `And.symm` to the proof given in the previous level, as you can see in the list of theorems to the right. Try typing `exact And.symm` at an appropriate place in your proof."
