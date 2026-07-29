import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasLemmaCanonicalLaneLean

structure GröbnerShirshovBasisPackage where
  algebraPresentation : Type u
  rewritingRules : Type v
  compositionClosed : Prop
  confluenceProperty : Prop
  basisComputed : Prop
  eliminationProcedureValid : Prop

structure GröbnerShirshovBasisEvidence (G : GröbnerShirshovBasisPackage) where
  compositionClosedClosed : G.compositionClosed
  confluencePropertyClosed : G.confluenceProperty
  basisComputedClosed : G.basisComputed
  eliminationProcedureValidClosed : G.eliminationProcedureValid

def GröbnerShirshovBasisClosed (G : GröbnerShirshovBasisPackage) : Prop :=
  G.compositionClosed ∧ G.confluenceProperty ∧ G.basisComputed ∧ G.eliminationProcedureValid

theorem gröbner_shirshov_basis_closed_from_evidence (G : GröbnerShirshovBasisPackage)
    (E : GröbnerShirshovBasisEvidence G) : GröbnerShirshovBasisClosed G := by
  exact And.intro E.compositionClosedClosed
    (And.intro E.confluencePropertyClosed
      (And.intro E.basisComputedClosed E.eliminationProcedureValidClosed))

end CombinatorialAspectsGroupsAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse