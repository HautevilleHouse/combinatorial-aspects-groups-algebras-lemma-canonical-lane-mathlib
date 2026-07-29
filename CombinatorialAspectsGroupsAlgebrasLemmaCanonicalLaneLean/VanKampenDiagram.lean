import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasLemmaCanonicalLaneLean

structure VanKampenDiagramPackage where
  groupPresentation : Type u
  relator : Type v
  diagram : Type w
  planarEmbedding : Prop
  boundaryLabeling : Prop
  diagramExistsForSpelling : Prop

structure VanKampenDiagramEvidence (V : VanKampenDiagramPackage) where
  planarEmbeddingClosed : V.planarEmbedding
  boundaryLabelingClosed : V.boundaryLabeling
  diagramExistsForSpellingClosed : V.diagramExistsForSpelling

def VanKampenDiagramClosed (V : VanKampenDiagramPackage) : Prop :=
  V.planarEmbedding ∧ V.boundaryLabeling ∧ V.diagramExistsForSpelling

theorem van_kampen_diagram_closed_from_evidence (V : VanKampenDiagramPackage)
    (E : VanKampenDiagramEvidence V) : VanKampenDiagramClosed V := by
  exact And.intro E.planarEmbeddingClosed
    (And.intro E.boundaryLabelingClosed E.diagramExistsForSpellingClosed)

end CombinatorialAspectsGroupsAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse