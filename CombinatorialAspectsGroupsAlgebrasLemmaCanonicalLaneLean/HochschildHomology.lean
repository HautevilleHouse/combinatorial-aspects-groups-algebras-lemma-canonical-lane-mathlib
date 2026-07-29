import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasLemmaCanonicalLaneLean

structure HochschildHomologyPackage where
  algebra : Type u
  bimodule : Type v
  barComplex : Type w
  hochschildGroups : Type x
  algebraProductLawful : Prop
  bimoduleActionsLawful : Prop
  differentialDefined : Prop
  homotopyInvariance : Prop

structure HochschildHomologyEvidence (H : HochschildHomologyPackage) where
  algebraProductLawfulClosed : H.algebraProductLawful
  bimoduleActionsLawfulClosed : H.bimoduleActionsLawful
  differentialDefinedClosed : H.differentialDefined
  homotopyInvarianceClosed : H.homotopyInvariance

def HochschildHomologyClosed (H : HochschildHomologyPackage) : Prop :=
  H.algebraProductLawful ∧ H.bimoduleActionsLawful ∧
  H.differentialDefined ∧ H.homotopyInvariance

theorem hochschild_homology_closed_from_evidence
    (H : HochschildHomologyPackage) (E : HochschildHomologyEvidence H) :
    HochschildHomologyClosed H := by
  exact And.intro E.algebraProductLawfulClosed
    (And.intro E.bimoduleActionsLawfulClosed
      (And.intro E.differentialDefinedClosed E.homotopyInvarianceClosed))

end CombinatorialAspectsGroupsAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse
