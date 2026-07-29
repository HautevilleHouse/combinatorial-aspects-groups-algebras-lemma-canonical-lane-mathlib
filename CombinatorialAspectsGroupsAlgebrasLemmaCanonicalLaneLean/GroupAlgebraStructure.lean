import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasLemmaCanonicalLaneLean

structure GroupAlgebraPackage where
  carrierGroup : Type u
  field : Type v
  algebraMultipliction : carrierGroup → carrierGroup → carrierGroup
  linearCombination : (carrierGroup → field) → Type w
  basisDefined : Prop
  multiplicationLawful : Prop
  linearCombinationClosed : Prop

structure GroupAlgebraEvidence (G : GroupAlgebraPackage) where
  basisDefinedClosed : G.basisDefined
  multiplicationLawfulClosed : G.multiplicationLawful
  linearCombinationClosedClosed : G.linearCombinationClosed

def GroupAlgebraClosed (G : GroupAlgebraPackage) : Prop :=
  G.basisDefined ∧ G.multiplicationLawful ∧ G.linearCombinationClosed

theorem group_algebra_closed_from_evidence (G : GroupAlgebraPackage)
    (E : GroupAlgebraEvidence G) : GroupAlgebraClosed G := by
  exact And.intro E.basisDefinedClosed
    (And.intro E.multiplicationLawfulClosed E.linearCombinationClosedClosed)

end CombinatorialAspectsGroupsAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse