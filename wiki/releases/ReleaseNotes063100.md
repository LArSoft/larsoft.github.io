# LArSoft v06_31_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v06_31_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_31_00/larsoft-v06_31_00.html)  
Download instructions for [just larsoftobj v1_17_00](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_17_00/larsoftobj-v1_17_00.html)

## Purpose

-   changes to develop since v06_29_00/v06_30_00
-   use wirecell v0_5_2a

## New features

-   larwirecell feature/bkirby_wirecell_v0_5_2
-   lardata, larevt, larsim feature/gp_MoveDumpers

## Bug fixes

## Updated dependencies

|          |          |            |       |
|----------|----------|------------|-------|
| Product  | Version  | Qualifiers | Notes |
| wirecell | v0_5_2a | e10        |       |

# Change List

## larsoft v06_31_00

-   2017-04-05 Lynn Garren : larsoft v06_31_00 for larsoft v06_31_00
-   2017-04-05 Lynn Garren : update product versions
-   2017-04-03 Lynn Garren : s48
-   2017-04-03 Lynn Garren : fix source code manifest

## lareventdisplay v06_04_01

-   2017-04-05 Lynn Garren : lareventdisplay v06_04_01 for larsoft v06_31_00

## larexamples v06_02_01

-   2017-04-05 Lynn Garren : larexamples v06_02_01 for larsoft v06_31_00

## larpandora v06_09_01

-   2017-04-05 Lynn Garren : larpandora v06_09_01 for larsoft v06_31_00

## larwirecell v06_03_00

-   2017-04-05 Lynn Garren : larwirecell v06_03_00 for larsoft v06_31_00
-   2017-04-05 Lynn Garren : as found in feature/bkirby_wirecell_v0_5_2
-   2017-04-05 Lynn Garren : Merge branch 'feature/bkirby_wirecell_v0_5_2' into release/v06_31_00
-   2017-04-03 Lynn Garren : Merge branch 'v06_30_00-branch' into develop
-   2017-03-31 Brian Kirby : Fixed noise database line
-   2017-03-30 Lynn Garren : Revert “Updated larwirecell to work with WireCell UPS product v05_02”
-   2017-03-30 Brian Kirby : Fix ups product_dep file
-   2017-03-30 Brian Kirby : Updated larwirecell to work with WireCell UPS product v05_02

## larana v06_04_01

-   2017-04-05 Lynn Garren : larana v06_04_01 for larsoft v06_31_00

## larreco v06_24_01

-   2017-04-05 Lynn Garren : larreco v06_24_01 for larsoft v06_31_00
-   2017-04-03 Lynn Garren : Merge branch 'v06_30_00-branch' into develop
-   2017-04-02 Robert Sulej : fix hit-by-hit mc truth info saved in txt file
-   2017-04-02 Robert Sulej : minor improvment in drift direction handling
-   2017-04-02 Robert Sulej : fix from Tracy, protect case when pfparticles have no assns to vertices
-   2017-03-31 Giuseppe Cerati : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-03-31 Giuseppe Cerati : add flag to avoid infs in case 1/p is not updated

## larsim v06_17_00

-   2017-04-05 Lynn Garren : larsim v06_17_00 for larsoft v06_31_00
-   2017-04-04 Gianluca Petrillo : Moving DumpRawDigits module to lardata.

## larevt v06_10_00

-   2017-04-05 Lynn Garren : larevt v06_10_00 for larsoft v06_31_00
-   2017-04-04 Gianluca Petrillo : Moved DumpWires module to lardata

## lardata v06_18_00

-   2017-04-05 Lynn Garren : lardata v06_18_00 for larsoft v06_31_00
-   2017-04-04 Gianluca Petrillo : Moved DumpWires and DumpRawDigits modules into lardata.
-   2017-04-03 Lynn Garren : Merge branch 'v06_30_00-branch' into develop
-   2017-04-03 Herbert Greenlee : Merge remote-tracking branch 'origin/feature/cerati_larsoft-v06_26_01-plus-new-kffit' into develop
-   2017-04-03 Herbert Greenlee : Update comments.
-   2017-04-03 Herbert Greenlee : Protect StatCollector against negative Variance.
-   2017-03-31 Giuseppe Cerati : add flag to avoid infs in case 1/p is not updated
-   2017-03-30 Giuseppe Cerati : add flag to avoid infs in case 1/p is not updated
-   2017-03-14 Giuseppe Cerati : better usage of temporaries speeds up execution
-   2017-03-23 Giuseppe Cerati : Merge remote-tracking branch 'origin/feature/cerati_kffitresiduals' into larsoft-v06_26_01-plus-new-kffit

## larcore v06_07_01

-   2017-04-05 Lynn Garren : larcore v06_07_01 for larsoft v06_31_00

## larpandoracontent v03_03_00

## larsoftobj v1_17_00

-   2017-04-05 Lynn Garren : larsoftobj v1_17_00 for larsoft v06_31_00
-   2017-04-05 Lynn Garren : update product versions

## lardataobj v1_14_01

-   2017-04-05 Lynn Garren : lardataobj v1_14_01 for larsoft v06_31_00
-   2017-04-04 Gianluca Petrillo : Bug fix in lar::sparse_vector::cend().

## larcoreobj v1_11_00

-   2017-04-05 Lynn Garren : larcoreobj v1_11_00 for larsoft v06_31_00
-   2017-04-03 Lynn Garren : Merge branch 'v06_30_00-branch' into develop
-   2017-03-30 Gianluca Petrillo : Added stream output operators for geometry vectors.
-   2017-03-30 Gianluca Petrillo : Added usage example for geo::MiddlePointAccumulator.

## larbatch v01_29_00

-   2017-04-05 Lynn Garren : larbatch v01_29_00 for larsoft v06_31_00
-   2017-04-04 Herbert Greenlee : Don't generate fcl overrides for sam parameters (project url and process id). Instead use command line options.

## larutils v1_12_02

-   2017-04-05 Lynn Garren : larutils v1_12_02 for larsoft v06_31_00
-   2017-04-03 Lynn Garren : add s48
-   2017-03-30 Tingjun Yang : Change back to use /grid/fermiapp.
-   2017-03-30 Tingjun Yang : Check argoneut cvmfs.
-   2017-03-30 Tingjun Yang : Use cvmfs.
-   2017-03-30 Tingjun Yang : Check mounted disks.
