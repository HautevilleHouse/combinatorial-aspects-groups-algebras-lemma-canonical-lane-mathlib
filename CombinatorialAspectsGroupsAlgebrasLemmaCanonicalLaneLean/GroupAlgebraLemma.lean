import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasLemmaCanonicalLaneLean

structure GroupAlgebraLemmaPackage where
  group : Type u
  algebraOverField : Type v
  augmentationIdeal : Prop
  trivialUnitConjecture : Prop
  zeroDivisorConjecture : Prop
  idempotentConjecture : Prop

structure GroupAlgebraLemmaEvidence (P : GroupAlgebraLemmaPackage) where
  augmentationIdealClosed : P.augmentationIdeal
  trivialUnitConjectureClosed : P.trivialUnitConjecture
  zeroDivisorConjectureClosed : P.zeroDivisorConjecture
  idempotentConjectureClosed : P.idempotentConjecture

def GroupAlgebraLemmaClosed (P : GroupAlgebraLemmaPackage) : Prop :=
  P.augmentationIdeal ∧ P.trivialUnitConjecture ∧ P.zeroDivisorConjecture ∧ P.idempotentConjecture

theorem group_algebra_lemma_closed_from_evidence (P : GroupAlgebraLemmaPackage)
    (E : GroupAlgebraLemmaEvidence P) : GroupAlgebraLemmaClosed P := by
  exact And.intro E.augmentationIdealClosed (And.intro E.trivialUnitConjectureClosed
    (And.intro E.zeroDivisorConjectureClosed E.idempotentConjectureClosed))

end CombinatorialAspectsGroupsAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse