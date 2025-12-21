import Game.Levels.EquivalenceWorld
import Game.Levels.NaturalNumbersWorld

World "DependentWorld"
Level 1

Title "Types"

Introduction "Your challenge in this level is to define an example of a dependent type indexed by the type of booleans.

There are many ways to do this. In particular, it is perfectly valid to define a constant type family.

But the elimination rule for the type `Bool` can be used to define a non-constant type family. To define a family of types `C : Bool → Type`, it suffices to specify types `C false` and `C true`.

After introducing a generic element `b : Bool` use the tactics `match` or `cases` to consider the explicit booleans `false` and `true.
"

/--
Define any dependent family of types indexed by the type of booleans.
-/
Statement : (Bool → Type) := by
  intro b
  match b with | false => exact Empty | true => exact Unit

Conclusion "Does the family of types `C : Bool → Type` you have just defined have any dependent functions of type `(b : Bool) → C b`. If not, could you define a different family of types that would have dependent functions? If so, could you define a different family of types that would not have dependent functions?"
