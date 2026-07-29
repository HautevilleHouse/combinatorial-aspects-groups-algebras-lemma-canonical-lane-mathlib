import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasLemmaCanonicalLaneLean

structure CohomologyPackage where
  complex : Type
  cohomologyGroups : Type
  dimensionZero : ℕ
  dimensionOne : ℕ
  cupProduct : Prop
  poincareDuality : Prop

def cohomologyClosed (C : CohomologyPackage) : Prop :=
  C.cupProduct ∧ C.poincareDuality

end CombinatorialAspectsGroupsAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse