import CombinatorialAspectsGroupsAlgebrasLemmaCanonicalLaneLean.TheoremStatement
import Mathlib.Combinatorics.Coxeter.Basic

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasLemmaCanonicalLaneLean

open scoped Coxeter

structure CombinatorialSpace where
  carrier : Type
  groupStructure : Group carrier

structure CombinatorialAdmittedObject where
  space : CombinatorialSpace
  finitelyGenerated : Prop
  wordProblemDecidable : Prop
  growthFunctionPolynomial : Prop
  conclusion : growthFunctionPolynomial

structure CombinatorialEndgameState where
  object : CombinatorialAdmittedObject

def CombinatorialWitnessClosed (O : CombinatorialAdmittedObject) : Prop :=
  O.growthFunctionPolynomial

end CombinatorialAspectsGroupsAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse