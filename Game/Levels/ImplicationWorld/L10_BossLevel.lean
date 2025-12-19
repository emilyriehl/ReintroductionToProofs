import Game.Levels.ImplicationWorld.L09_ModusPonensAgain

World "ImplicationWorld"
Level 10

Title "Boss Level"

Introduction "We are now ready for the Boss Level of Implication World.

Multiple hypothesis can be introduced at once by writing `intro h1 h2 h3` etc. You might consider using names that will help you remember which propositions are proven by each hypothesis!

While it is not necessary to solve this level, you may enjoy experimenting with the `have` tactic that was recently added to the tactic library.

To delete a proof (or proof attempt) and start over click on the button labelled `</>` in the upper right hand corner to enter `editor mode`. Then delete all the lines of your first proof (or proof attempt). Clicking on `>_` takes you back to `typewriter mode`."

/-- If `S → X`, `T → W`, `R → Y`, `W → Q`, `U → S`, `Y → T`, `X → V`, `Q → U`, `V → Z` and `P → R` are true then `P` implies `Z`. -/
Statement {P Q R S T U V W X Y Z : Prop} : (S → X) → (T → W) → (R → Y) → (W → Q) → (U → S) → (Y → T) → (X → V) → (Q → U) → (V → Z) → (P → R)
    → P → Z := by
  intro sx
  intro tw
  intro ry
  intro wq
  intro us
  intro yt
  intro xv
  intro qu
  intro vz
  intro pr
  intro p
  apply vz
  apply xv
  apply sx
  apply us
  apply qu
  apply wq
  apply tw
  apply yt
  apply ry
  apply pr
  exact p

Conclusion "Next move on to Product World to meet a second type forming operation, which will again have a corresponding logical connective."
