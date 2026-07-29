import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasLemmaCanonicalLaneLean

structure KaplanskyConjecturesPackage where
  zeroDivisorConjectureForTorsionFree : Prop
  unitConjectureForTorsionFree : Prop
  idempotentConjectureForTorsionFree : Prop

structure KaplanskyConjecturesEvidence (K : KaplanskyConjecturesPackage) where
  zeroDivisorClosed : K.zeroDivisorConjectureForTorsionFree
  unitClosed : K.unitConjectureForTorsionFree
  idempotentClosed : K.idempotentConjectureForTorsionFree

def KaplanskyConjecturesClosed (K : KaplanskyConjecturesPackage) : Prop :=
  K.zeroDivisorConjectureForTorsionFree ∧ K.unitConjectureForTorsionFree ∧ K.idempotentConjectureForTorsionFree

theorem kaplansky_conjectures_closed_from_evidence (K : KaplanskyConjecturesPackage)
    (E : KaplanskyConjecturesEvidence K) : KaplanskyConjecturesClosed K := by
  exact And.intro E.zeroDivisorClosed (And.intro E.unitClosed E.idempotentClosed)

end CombinatorialAspectsGroupsAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse