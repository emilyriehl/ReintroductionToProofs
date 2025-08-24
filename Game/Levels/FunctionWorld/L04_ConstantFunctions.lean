import Game.Metadata

World "FunctionWorld"
Level 4

Title "Constant functions"

/--
For a term `a : A` and a type `B`, `const a : B → A` is the function defined by sending `x : B` to `a : A`.
-/
DefinitionDoc const as "const"

Introduction "Given a term `a : A` and any type `B`, there is a function of type `B → A` which is *constant* at `a : A`."

Statement {A B : Type} (a : A) : B → A := by
  exact fun _ ↦ a

Conclusion "The formula for the constant function is `fun x ↦ a`. In other words, given any input `x : B`, the output is always the specified term `a : A`. Since the formula for the output does not depend on the input term, this can also be written as `fun _ ↦ a`, so try solving this level with `exact fun _ ↦ a`"

NewDefinition const
