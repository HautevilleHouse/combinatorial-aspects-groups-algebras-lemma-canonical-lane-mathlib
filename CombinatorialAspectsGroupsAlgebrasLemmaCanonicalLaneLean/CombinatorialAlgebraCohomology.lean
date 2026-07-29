import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasLemmaCanonicalLaneLean

structure CombinatorialAlgebraCohomologyPackage where
  groupCohomologyComputed : Prop
  hochschildCohomologyComputed : Prop
  cupProductDefined : Prop
  kunnethFormula : Prop

structure CombinatorialAlgebraCohomologyEvidence (C : CombinatorialAlgebraCohomologyPackage) where
  groupCohomologyClosed : C.groupCohomologyComputed
  hochschildCohomologyClosed : C.hochschildCohomologyComputed
  cupProductDefinedClosed : C.cupProductDefined
  kunnethFormulaClosed : C.kunnethFormula

def CombinatorialAlgebraCohomologyClosed (C : CombinatorialAlgebraCohomologyPackage) : Prop :=
  C.groupCohomologyComputed ∧ C.hochschildCohomologyComputed ∧ C.cupProductDefined ∧ C.kunnethFormula

theorem combinatorial_algebra_cohomology_closed_from_evidence
    (C : CombinatorialAlgebraCohomologyPackage) (E : CombinatorialAlgebraCohomologyEvidence C) :
    CombinatorialAlgebraCohomologyClosed C := by
  exact And.intro E.groupCohomologyClosed (And.intro E.hochschildCohomologyClosed
    (And.intro E.cupProductDefinedClosed E.kunnethFormulaClosed))

end CombinatorialAspectsGroupsAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse