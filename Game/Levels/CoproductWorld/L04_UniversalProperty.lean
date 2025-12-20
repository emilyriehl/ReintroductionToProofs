import Game.Levels.CoproductWorld.L03_ComponentFunctions

World "CoproductWorld"
Level 4

Title "Universal property"

Introduction "A function `f : A ⊕ B → C` mapping out of a coproduct type may be *broken apart* into component functions of types `A → C` and `B → C`.

Conversely, given an arbitrary pair of functions `g : A → C` and `h : B → C`, one can build a function of type `A ⊕ B → C`.

This function is defined by introducing a variable element `x : A ⊕ B` and then splitting into two cases: the case where `x` is of the form `Sum.inl a` for some `a : A` and the case where `x` is of the form `Sum.inr b` for some `b : B`.

In the first case, the function `g` can be used to define an element `g a : C`, while in the second case the function `h` can be used to define an element `h b : C`.

Given an element `x : A ⊕ B`, type `cases x` to ask Lean to consider both cases arising from the introduction rules for coproduct types: the first being that `x` is of the form `Sum.inl a` for some `a : A` and the second being that `x` is of the form `Sum.inr b` for some `b : B`.

There is another tactic, similar to `cases`, which allows you to give explicit names for the elements appearing in each case.

Given an element `x : A ⊕ B`, then `rcases x with a | b` can be used in place of `cases x` to provide an element `a : A` in the first case and an element `b : B` in the second. (Here you can choose any variable names for `a` and `b`.)

Either `cases x` or `rcases x with a | b` can be used to split into the two cases mentioned above.

Both cases will have the same goal type but will have a different context of objects, one of which contains the element `a : A` and the other of which contains the element `b : B`.
"

/-- Two functions `g : A → C` and `h : B → C` combine to define a single function of type `A ⊕ B → C`. -/
DefinitionDoc ReintroductionToProofs.Sum.lift as "lift" in "Sum"

namespace ReintroductionToProofs

/-- Two functions `g : A → C` and `h : B → C` combine to define a single function of type `A ⊕ B → C`. -/
Statement {A B C : Type} (g : A → C) (h : B → C) : (A ⊕ B → C) := by
  Hint (hidden := true) "Use the `intro` tactic to define a term in a function type."
  intro x
  Hint (hidden := true) "Use either `cases {x}` or `rcases {x} with a | b` to consider the possible cases for the variable `{x} : A ⊕ B`."
  rcases x with a | b
  apply g
  exact a
  apply h
  exact b

Conclusion "We will see later that functions of type `A ⊕ B → C` are uniquely determined by their component functions `(A → C) × (B → C)`."

def Sum.lift {A B C : Type} (g : A → C) (h : B → C) : (A ⊕ B → C) := by
  intro x
  rcases x with a | b
  apply g
  exact a
  apply h
  exact b

end ReintroductionToProofs

/-- Assuming `x` is a variable in the local context with an inductive type, `cases x` splits the main goal, producing one goal for each constructor of the inductive type, in which the target is replaced by a general instance of that constructor. If the type of an element in the local context depends on `x`, that element is reverted and reintroduced afterward, so that the case split affects that hypothesis as well. `cases` detects unreachable cases and closes them automatically.

For example, given an assumption `h : P ∨ Q`, `cases h` splits the main goal into two goals, one assuming `P` holds and the other assuming `Q` holds. -/
TacticDoc cases

/-- `rcases` is a tactic that will perform `cases` recursively, according to a pattern. One use is to provide explicit names for variables in each subgoal. For example, given a hypothesis `h : P ∨ Q`, `rcases h with p | q` can be used in place of `cases h` to give hypotheses `p : P` in the first case and `q : Q`. -/
TacticDoc rcases

/- Use these commands to add items to the game's inventory. -/
NewTactic cases rcases
