import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasLemmaCanonicalLaneLean

structure FreeGroupReductionPackage where
  alphabet : Type u
  reducedWords : Type v
  freeGroup : Type w
  wordNormalForm : Prop
  reductionUnique : Prop
  groupAxiomsSatisfied : Prop
  embeddingIntoFreeGroup : Prop

structure FreeGroupReductionEvidence (F : FreeGroupReductionPackage) where
  wordNormalFormClosed : F.wordNormalForm
  reductionUniqueClosed : F.reductionUnique
  groupAxiomsSatisfiedClosed : F.groupAxiomsSatisfied
  embeddingIntoFreeGroupClosed : F.embeddingIntoFreeGroup

def FreeGroupReductionClosed (F : FreeGroupReductionPackage) : Prop :=
  F.wordNormalForm ∧ F.reductionUnique ∧
  F.groupAxiomsSatisfied ∧ F.embeddingIntoFreeGroup

theorem free_group_reduction_closed_from_evidence
    (F : FreeGroupReductionPackage) (E : FreeGroupReductionEvidence F) :
    FreeGroupReductionClosed F := by
  exact And.intro E.wordNormalFormClosed
    (And.intro E.reductionUniqueClosed
      (And.intro E.groupAxiomsSatisfiedClosed E.embeddingIntoFreeGroupClosed))

end CombinatorialAspectsGroupsAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse
