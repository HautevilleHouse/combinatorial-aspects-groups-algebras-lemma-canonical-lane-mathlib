import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasLemmaCanonicalLaneLean

structure GroupCohomologyPackage where
  group : Type u
  module : Type v
  cochainComplex : Type w
  cohomologyGroups : Type x
  groupMultiplicationLawful : Prop
  moduleActionLawful : Prop
  differentialDefined : Prop
  cohomologyFunctorial : Prop

structure GroupCohomologyEvidence (G : GroupCohomologyPackage) where
  groupMultiplicationLawfulClosed : G.groupMultiplicationLawful
  moduleActionLawfulClosed : G.moduleActionLawful
  differentialDefinedClosed : G.differentialDefined
  cohomologyFunctorialClosed : G.cohomologyFunctorial

def GroupCohomologyClosed (G : GroupCohomologyPackage) : Prop :=
  G.groupMultiplicationLawful ∧ G.moduleActionLawful ∧
  G.differentialDefined ∧ G.cohomologyFunctorial

theorem group_cohomology_closed_from_evidence
    (G : GroupCohomologyPackage) (E : GroupCohomologyEvidence G) :
    GroupCohomologyClosed G := by
  exact And.intro E.groupMultiplicationLawfulClosed
    (And.intro E.moduleActionLawfulClosed
      (And.intro E.differentialDefinedClosed E.cohomologyFunctorialClosed))

end CombinatorialAspectsGroupsAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse
