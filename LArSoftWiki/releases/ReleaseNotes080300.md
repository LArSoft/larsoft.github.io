# LArSoft v08_03_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v08_03_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_03_00/larsoft-v08_03_00.html)  
Download instructions for [just larsoftobj v08_01_01](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_01_01/larsoftobj-v08_01_01.html)

## Purpose

-   changes in develop
-   approved feature branches

## New features

-   larpandora and larpandoracontent feature/sgreen_APAStitching
    -   These changes apply a sign correction to the direction that 3D hits are shifted in when Pandora identifies and stitches cosmic rays across an APA boundary. Currently, this functionality is not used in any simulations as all stitching is done across CPA boundaries, but it is possible to identify cosmic in ProtoDUNE data using this new functionality. These changes are non breaking and should not affect any output data products in the current ci tests.
-   larsim: feature/davidc_mcrecovalidation
    -   This contains a fix that allows the “MCReco_module.cc” within larsim to run with MicroBooNE's updated simulation workflow. The change should be backwards compatible and not break other existing uses of this module.
    -   Modified larsim mcreco module to take sim::SimEnergyDeposit as input instead of Sim-Channel. This is optional and set through a fhicl file. The default module runs as before. The uboonecode fhicl files were updated to run mcreco at g4 rather then detsim, and use the ionization SimEnergyDeposit rather then wirecell drift SimChannels.

## Bug fixes

-   larreco feature/bb_TCArgo2

## Updated dependencies

-   artg4tk v09_01_00
    -   changes due to the parameter sets examples adding art::EDProducer(p) to the artg4tkMain constructor.
    -   add example that shows how to access parameter sets of different module
-   gallery v1_10_00

# Change List

## larsoft v08_03_00

-   2019-01-09 Lynn Garren : v09_01_00
-   2019-01-09 Lynn Garren : larsoft v08_03_00 for larsoft v08_03_00
-   2019-01-09 Lynn Garren : product versions

## lareventdisplay v08_00_03

-   2019-01-09 Lynn Garren : lareventdisplay v08_00_03 for larsoft v08_03_00

## larexamples v08_00_02

-   2019-01-09 Lynn Garren : larexamples v08_00_02 for larsoft v08_03_00

## larg4 v08_00_02

-   2019-01-09 Lynn Garren : larg4 v08_00_02 for larsoft v08_03_00

## larpandora v08_02_00

-   2019-01-09 Lynn Garren : larpandora v08_02_00 for larsoft v08_03_00
-   2019-01-08 Lynn Garren : Merge branch 'feature/sgreen_APAStitching' into release/v08_03_00
-   2018-12-20 Steven Green : Removing deprecated CalculateT0 function.
-   2018-12-19 Steven Green : Define T0 using information stored in pfo properties map.

## larwirecell v08_01_01

-   2019-01-09 Lynn Garren : larwirecell v08_01_01 for larsoft v08_03_00

## larana v08_00_03

-   2019-01-09 Lynn Garren : larana v08_00_03 for larsoft v08_03_00

## larreco v08_02_01

-   2019-01-09 Lynn Garren : larreco v08_02_01 for larsoft v08_03_00
-   2019-01-08 Lynn Garren : Merge branch 'feature/bb_TCArgo2' into release/v08_03_00
-   2019-01-07 Tingjun Yang : Do not flip track direction based on dQdx in Calorimetry module by default.
-   2019-01-03 baller : Remove unused variable
-   2019-01-03 baller : Use SpacePoint collection for 3D matching - work in progress
-   2019-01-03 baller : Remove unused variable
-   2019-01-03 baller : Use SpacePoint collection for 3D matching - work in progress
-   2019-01-03 baller : Use SpacePoint collection for 3D matching - work in progress
-   2019-01-03 baller : Use SpacePoint collection for 3D matching - work in progress
-   2019-01-03 baller : Use SpacePoint collection for 3D matching - work in progress
-   2019-01-03 baller : Use SpacePoint collection for 3D matching - work in progress
-   2019-01-01 baller : Comment out old version of SignalAtTp
-   2019-01-01 baller : Comment out old version of SignalAtTp

## larsim v08_01_00

-   2019-01-09 Lynn Garren : larsim v08_01_00 for larsoft v08_03_00
-   2019-01-08 Lynn Garren : Merge branch 'feature/davidc_mcrecovalidation' into release/v08_03_00
-   2019-01-08 Lynn Garren : driftcoordinate is not used
-   2019-01-07 Lynn Garren : Merge branch 'feature/davidc_mcrecovalidation' into release/v08_03_00
-   2019-01-03 David Caratelli : removing validation couts —DC
-   2019-01-03 David Caratelli : making MCReco module compatible with SimEnergyDeposit input —DC

## larevt v08_00_02

-   2019-01-09 Lynn Garren : larevt v08_00_02 for larsoft v08_03_00

## lardata v08_00_02

-   2019-01-09 Lynn Garren : lardata v08_00_02 for larsoft v08_03_00
-   2019-01-07 Kyle Knoepfel : Resolve issue \#21617: support run-dependent assignment of FFTSize.

## larcore v08_00_00

## larpandoracontent v03_14_04

-   2019-01-09 Lynn Garren : larpandoracontent v03_14_04 for larsoft v08_03_00
-   2018-12-17 Steven Green : Merge branch 'updates'
-   2018-12-17 Steven Green : Update version and change log.
-   2018-12-17 Steven Green : Merge pull request \#75 from StevenGreen1/feature/APAStitching
-   2018-12-17 Steven Green : Removing deprecated GetCorrectedPosition function in LArStitchingHelper.
-   2018-12-17 Steven Green : Modified inertion of element into map.
-   2018-12-12 Steven Green : Saving x0 via meta data map.
-   2018-12-11 Steven Green : Additional refactoring of stitching logic.
-   2018-12-11 Steven Green : Cosmetic changes.
-   2018-12-10 Steven Green : Refactored the stitching logic to account for pfos being created outside the target LArTPC 3D volume.
-   2018-12-07 Steven Green : Refactoring of code used for stitching across APA and CPA boundaries.
-   2018-12-03 Steven Green : Allowing stitiching of more than two pfos simultaneously.
-   2018-11-30 Steven Green : Modification to sign of x0 to allow for stitching across APA and CPA boundaries.

## larsoftobj v08_01_01

-   2019-01-09 Lynn Garren : version
-   2019-01-09 Lynn Garren : larsoftobj v08_01_01 for larsoft v08_03_00
-   2019-01-09 Lynn Garren : gallery v1_10_00

## lardataobj v08_00_00

## lardataalg v08_01_00

## larcorealg v08_00_00

## larcoreobj v08_00_00

## larbatch v01_47_03

## larutils v1_23_09

-   2019-01-09 Lynn Garren : larutils v1_23_09 for larsoft v08_03_00
-   2019-01-03 Tingjun Yang : Use bluearc for argoneut mac builds.
