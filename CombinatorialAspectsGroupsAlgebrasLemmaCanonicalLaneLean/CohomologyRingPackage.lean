import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasLemmaCanonicalLaneLean

structure CohomologyRingPackage {G : GroupAlgebraPackage}
    (A : GroupAlgebraEvidence G) where
  cohomology : Type u
  ringStructure : cohomology → cohomology → cohomology
  cupProductAssociative : Prop
  cupProductAssociativeTerm : cupProductAssociative

structure CohomologyRingEvidence {G : GroupAlgebraPackage}
    {A : GroupAlgebraEvidence G} (C : CohomologyRingPackage A) where
  cupProductAssociativeClosed : C.cupProductAssociative

def CohomologyRingClosed {G : GroupAlgebraPackage}
    {A : GroupAlgebraEvidence G} (C : CohomologyRingPackage A) : Prop :=
  C.cupProductAssociative

theorem cohomology_ring_closed_from_evidence {G : GroupAlgebraPackage}
    {A : GroupAlgebraEvidence G} (C : CohomologyRingPackage A)
    (E : CohomologyRingEvidence C) : CohomologyRingClosed C := by
  exact E.cupProductAssociativeClosed

end CombinatorialAspectsGroupsAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse