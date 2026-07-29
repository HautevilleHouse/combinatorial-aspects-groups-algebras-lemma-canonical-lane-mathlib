import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasLemmaCanonicalLaneLean

structure LyndonWordsPackage where
  alphabet : Type u
  order : alphabet → alphabet → Prop
  word : Type v
  rewritingSystem : Type w
  lexicographicOrderWellFounded : Prop
  uniqueRepresentation : Prop
  closureUnderMultiplication : Prop

structure LyndonWordsEvidence (L : LyndonWordsPackage) where
  lexicographicOrderWellFoundedClosed : L.lexicographicOrderWellFounded
  uniqueRepresentationClosed : L.uniqueRepresentation
  closureUnderMultiplicationClosed : L.closureUnderMultiplication

def LyndonWordsClosed (L : LyndonWordsPackage) : Prop :=
  L.lexicographicOrderWellFounded ∧ L.uniqueRepresentation ∧ L.closureUnderMultiplication

theorem lyndon_words_closed_from_evidence (L : LyndonWordsPackage)
    (E : LyndonWordsEvidence L) : LyndonWordsClosed L := by
  exact And.intro E.lexicographicOrderWellFoundedClosed
    (And.intro E.uniqueRepresentationClosed E.closureUnderMultiplicationClosed)

end CombinatorialAspectsGroupsAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse