import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasLemmaCanonicalLaneLean

structure GroupAlgebraRepresentation where
  group : Type
  algebra : Type
  representation : Type
  dimension : ℕ
  faithfulness : Prop
  irreducibility : Prop

def representationClosed (R : GroupAlgebraRepresentation) : Prop :=
  R.faithfulness ∧ R.irreducibility

end CombinatorialAspectsGroupsAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse