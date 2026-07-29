import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasLemmaCanonicalLaneLean

structure CohomologyRingPackage where
  group : Type u
  coefficientRing : Type v
  cocycleSpace : (Nat → Type w) → Type x
  differential : Type y
  cohomologyProduct : Type z
  cocycleExactness : Prop
  differentialClosed : Prop
  productDefined : Prop

structure CohomologyRingEvidence (H : CohomologyRingPackage) where
  cocycleExactnessClosed : H.cocycleExactness
  differentialClosedClosed : H.differentialClosed
  productDefinedClosed : H.productDefined

def CohomologyRingClosed (H : CohomologyRingPackage) : Prop :=
  H.cocycleExactness ∧ H.differentialClosed ∧ H.productDefined

theorem cohomology_ring_closed_from_evidence (H : CohomologyRingPackage)
    (E : CohomologyRingEvidence H) : CohomologyRingClosed H := by
  exact And.intro E.cocycleExactnessClosed
    (And.intro E.differentialClosedClosed E.productDefinedClosed)

end CombinatorialAspectsGroupsAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse