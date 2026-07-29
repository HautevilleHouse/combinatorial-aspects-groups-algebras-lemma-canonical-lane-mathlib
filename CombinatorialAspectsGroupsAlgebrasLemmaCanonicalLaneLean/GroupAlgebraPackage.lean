import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasLemmaCanonicalLaneLean

structure GroupAlgebraPackage where
  group : Type u
  algebra : Type v
  multiplication : algebra → algebra → algebra
  unit : algebra
  basis : List algebra
  basisMultiplicationClosed : Prop
  basisMultiplicationClosedTerm : basisMultiplicationClosed

structure GroupAlgebraEvidence (G : GroupAlgebraPackage) where
  basisMultiplicationClosedClosed : G.basisMultiplicationClosed

def GroupAlgebraClosed (G : GroupAlgebraPackage) : Prop :=
  G.basisMultiplicationClosed

theorem group_algebra_closed_from_evidence (G : GroupAlgebraPackage)
    (E : GroupAlgebraEvidence G) : GroupAlgebraClosed G := by
  exact E.basisMultiplicationClosedClosed

end CombinatorialAspectsGroupsAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse