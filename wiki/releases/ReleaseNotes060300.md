# LArSoft v06_03_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_03_00/larsoft-v06_03_00.html)

## Purpose

-   art v2_02_02
    -   fixes \#13453

## New features

-   larsim feature/jpdavies_supernova_truth
-   feature/gp_Issue12367 \#12367
    -   Branches feature/gp_Issue12367 have been published for the LArSoft repositories lardataobj, lardata, larreco, larana; and for the experiment repositories argoneutcode, dunetpc and lariatsoft.

## Known Issues

-   When building service libraries, ${ROOT_CORE} must be include in the library list. \#13446
    -   The problem is understood and will be fixed in the next art release.

## Updated dependencies

|             |               |            |                                                        |
|-------------|---------------|------------|--------------------------------------------------------|
| Product     | Version       | Qualifiers | Notes                                                  |
| nutools     | v2_03_00      | e10        | [nutools:NuTools_Release_Notes#nutools-v2_03_00](https://cdcvs.fnal.gov/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_03_00) |
| nusimdata   | v1_05_01      | e10        |                                                        |
| geant4      | v4_10_1_p03b | e10        |                                                        |
| ifdh_art    | v1_15_04      | e10:nu:s39 |                                                        |
| artdaq_core | v1_05_04      | e10:nu:s39 |                                                        |
| art         | v2_02_02      | e10:nu     | [art:Release Notes 2.02.02](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_2.02.02)                      |

# Change List

## larsoft v06_03_00

-   2016-08-11 Lynn Garren : larsoft v06_03_00 for larsoft v06_03_00
-   2016-08-11 Lynn Garren : use create_product_variables
-   2016-08-11 Lynn Garren : larsoft v06_03_00 for larsoft v06_03_00
-   2016-08-11 Lynn Garren : update product versions
-   2016-08-11 Lynn Garren : igprof is not ready for Jenkins

## lareventdisplay v06_00_04

-   2016-08-11 Lynn Garren : lareventdisplay v06_00_04 for larsoft v06_03_00

## larexamples v06_00_03

-   2016-08-11 Lynn Garren : larexamples v06_00_03 for larsoft v06_03_00
-   2016-08-08 Gianluca Petrillo : Fix the way we pass arguments to Boost unit tests (issue \#13477)

## larpandora v06_00_04

-   2016-08-11 Lynn Garren : larpandora v06_00_04 for larsoft v06_03_00

## larana v06_01_00

-   2016-08-11 Lynn Garren : larana v06_01_00 for larsoft v06_03_00
-   2016-08-11 Lynn Garren : Merge branch 'feature/gp_Issue12367' into release/v06_03_00
-   2016-08-04 Gianluca Petrillo : Replaced nsmaepace lar::utils with lar::util (issue \#12367)

## larreco v06_02_00

-   2016-08-11 Lynn Garren : larreco v06_02_00 for larsoft v06_03_00
-   2016-08-11 Lynn Garren : Merge branch 'feature/gp_Issue12367' into release/v06_03_00
-   2016-08-11 Lynn Garren : nutools v2_03_00
-   2016-08-08 Mike Wallbank : Updates to the shower energy algorithms — changed the straight line so that the energy axis is along the y-direction, which makes much more sense. Energy = (c_1 \* charge) + c_2, where c_\* are measured parameters and read from the RecoAlg/showeralgorithms.fcl file. They have been recalculated. Also added new configurations for dune35tdata shower energy determination
-   2016-08-04 Gianluca Petrillo : Replaced nsmaepace lar::utils with lar::util (issue \#12367)

## larsim v06_02_00

-   2016-08-11 Lynn Garren : larsim v06_02_00 for larsoft v06_03_00
-   2016-08-11 Lynn Garren : Merge branch 'feature/jpdavies_supernova_truth' into release/v06_03_00
-   2016-08-11 Brian Rebel : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larsim into develop
-   2016-08-11 Brian Rebel : move visualization .mac file to the correct location
-   2016-08-08 Michael Baird : Merge branch 'develop' into feature/jpdavies_supernova_truth
-   2016-08-03 Michael Baird : In the MCTruth particle list, setting the status bit for the neutrino to 0, setting the motherID for the primary electron to –1, and picking a different isotrpoic direction for the electron.
-   2016-07-19 Michael Baird : Making use of the SetNeutrino function to set the neutrino for the MCTruths, and implementing adding in one MCTruth for each neutrino created.

## larevt v06_00_03

-   2016-08-11 Lynn Garren : larevt v06_00_03 for larsoft v06_03_00

## lardata v06_02_00

-   2016-08-11 Lynn Garren : lardata v06_02_00 for larsoft v06_03_00
-   2016-08-11 Lynn Garren : Merge branch 'feature/gp_Issue12367' into release/v06_03_00
-   2016-08-11 Lynn Garren : nutools v2_03_00
-   2016-08-04 Gianluca Petrillo : Replaced nsmaepace lar::utils with lar::util (issue \#12367)

## larcore v06_01_00

-   2016-08-11 Lynn Garren : larcore v06_01_00 for larsoft v06_03_00
-   2016-08-08 Gianluca Petrillo : Fix the way we pass arguments to Boost unit tests (issue \#13477)  
    h2. larsimobj v1_05_01

<!-- -->

-   2016-08-08 Lynn Garren : Merge branch 'release/v1_05_01'
-   2016-08-08 Lynn Garren : larsimobj v1_05_01

## lardataobj v1_04_01

-   2016-08-08 Lynn Garren : Merge branch 'release/v1_04_01'
-   2016-08-08 Lynn Garren : lardataobj v1_04_01
-   2016-08-04 Gianluca Petrillo : Removed executable flag from source code
-   2016-07-18 Lynn Garren : Merge branch 'v06_00_00_art2' into develop

## larcoreobj v1_04_01

-   2016-08-08 Lynn Garren : Merge branch 'release/v1_04_01'
-   2016-08-08 Lynn Garren : larcoreobj v1_04_01
-   2016-07-18 Lynn Garren : Merge branch 'v06_00_00_art2' into develop

## larbatch v01_23_04

## larutils v1_08_01

-   2016-08-11 Lynn Garren : larutils v1_08_01 for larsoft v06_03_00
-   2016-08-11 Lynn Garren : add s39
-   2016-08-05 Lynn Garren : larsoft v06_02_00
-   2016-08-05 Lynn Garren : nutools
