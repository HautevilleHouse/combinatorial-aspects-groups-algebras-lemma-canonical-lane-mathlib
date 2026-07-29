import canonicalLaneMathlib.TheoremStatement

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "CombinatorialAspectsGroupsAlgebras",
    theoremName := "Combinatorial Aspects Groups Algebras Lemma",
    theoremObject := "GroupsAlgebrasLemma",
    classicalBoundary := "carried source boundary",
    manifoldConstrainedStatement := "combinatorial-groups-algebras-constrained theorem certificate",
    certificateLane := "manifold_constrained",
    carriedRemainder := "classical source boundary remains open"
  }

end CombinatorialAspectsGroupsAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse
