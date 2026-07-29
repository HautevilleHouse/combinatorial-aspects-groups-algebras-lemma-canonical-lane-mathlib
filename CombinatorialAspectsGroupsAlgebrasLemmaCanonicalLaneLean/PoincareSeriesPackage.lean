import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsGroupsAlgebrasLemmaCanonicalLaneLean

structure PoincareSeriesPackage {G : GroupAlgebraPackage}
    (A : GroupAlgebraEvidence G) where
  growthFunction : ℕ → ℕ
  poincareSeriesConvergent : Prop
  growthRateComputed : Prop
  poincareSeriesConvergentTerm : poincareSeriesConvergent
  growthRateComputedTerm : growthRateComputed

structure PoincareSeriesEvidence {G : GroupAlgebraPackage}
    {A : GroupAlgebraEvidence G} (P : PoincareSeriesPackage A) where
  poincareSeriesConvergentClosed : P.poincareSeriesConvergent
  growthRateComputedClosed : P.growthRateComputed

def PoincareSeriesClosed {G : GroupAlgebraPackage}
    {A : GroupAlgebraEvidence G} (P : PoincareSeriesPackage A) : Prop :=
  P.poincareSeriesConvergent ∧ P.growthRateComputed

theorem poincare_series_closed_from_evidence {G : GroupAlgebraPackage}
    {A : GroupAlgebraEvidence G} (P : PoincareSeriesPackage A)
    (E : PoincareSeriesEvidence P) : PoincareSeriesClosed P := by
  exact And.intro E.poincareSeriesConvergentClosed E.growthRateComputedClosed

end CombinatorialAspectsGroupsAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse