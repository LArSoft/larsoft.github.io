# LArSoft v09_03_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v09_03_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_03_00/larsoft-v09_03_00.html)  
Download instructions for [just larsoftobj v09_00_04](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_00_04/larsoftobj-v09_00_04.html)

## Purpose

-   changes in develop
-   approved PRs
-   **drop the py2 qualified builds**

## New features

-   move TRACS functionality from larreco to larpandora
    -   larpandora PR 10 and larreco PR 16
    -   see [TRACS migration to PandoraModularShower](https://indico.fnal.gov/event/45119/contributions/194903/attachments/133531/164740/LCM_PandoraModularShower.pdf)
    -   Pull request for moving TRACS from larreco to PandoraModularShowerCreation to fix dependency issues. Specifically, moving code from larreco to larpandora to allow for dependency on larpandoracontent which is required for the pandora sliding track fitting tool. I also took this opportunity to fix a couple of bugs, add some functionality and tidy the code base slightly:
    -   Store FindManyP objects in shower element holder to avoid constructing/deconstructing them many times per event which led to performance issues in cosmic events
    -   Make the tools inherit fcl parameters from the module, so they do not need to be set for every tool individually
    -   Renamed tools to be more descriptive and coherent
    -   Numerous small bug fixes
    -   PandoraModularShowerCreation will exist along slide PandoraShowerCreation so should be a non breaking change. Experiments will have to opt in to use the modular shower creation, people have been identified to handle this for SBND, ICARUS and DUNE FD and feature branches for the experiment specific repos will be made available.
    -   **This is a breaking change**
        -   SBND: feature/etyley_pandoraShower
        -   ICARUS: feature/howard_pandorashower_v09_01_00
        -   dunetpc will also want to make changes

## Bug fixes

-   lardataalg PR 11
    -   fixes to documentation per \#24928

## Updated dependencies

-   geant4reweight v01_04_00

# Change List

## larsoft v09_03_00

-   2020-09-17 Lynn Garren : larsoft v09_03_00 for larsoft v09_03_00
-   2020-09-17 Lynn Garren : product versions

## lareventdisplay v09_00_04

-   2020-09-17 Lynn Garren : lareventdisplay v09_00_04 for larsoft v09_03_00

## larexamples v09_00_04

-   2020-09-17 Lynn Garren : larexamples v09_00_04 for larsoft v09_03_00

## larg4 v09_00_04

-   2020-09-17 Lynn Garren : larg4 v09_00_04 for larsoft v09_03_00

## larpandora v09_01_00

-   2020-09-17 Lynn Garren : larpandora v09_01_00 for larsoft v09_03_00
-   2020-09-17 Lynn Garren : Merge branch 'feature/PandoraModularShowerReconstruction' into release/v09_03_00
-   2020-09-09 Edward Tyley : Update to LArSoft v09_01_00
-   2020-08-27 Edward Tyley : Swapped exception to error to make ut run on cosmics
-   2020-08-27 Edward Tyley : Swap TMath, and unqualified, for std math
-   2020-08-27 Edward Tyley : Updates for LArSoft v09 thread safe detector property services
-   2020-08-03 Edward Tyley : Fix comparisons to make it run
-   2020-08-03 Edward Tyley : Tidied CMakeLists
-   2020-08-03 Edward Tyley : Improved const correctness
-   2020-07-30 Edward Tyley : Kyles PR changes part 2: Updated the shower element holder and produced ptrs holder to improve search efficiency, use make_unique and remove returns after exceptions
-   2020-07-30 Edward Tyley : Remove destructors of inerited tools
-   2020-07-30 Edward Tyley : Kyle PR changes part 1: Changed getByLabel to getValidHandle (Needed to change getFindManyP) Tidied nested namespaces Changed to cet::demangle to get type names Changed NULL to nullptr Removed returns directly after exeptions (the easy ones at least) Changed empty vector check to use empty rather than size
-   2020-07-29 Edward Tyley : Fixed getting name of templated type to build with clang
-   2020-07-22 Edward Tyley : Fixed CMakeLists so it builds without larreco checked out locally
-   2020-07-17 Edward Tyley : Tidied includes and module descriptions
-   2020-07-17 Edward Tyley : Cleaned up CMakeLists
-   2020-07-16 Edward Tyley : Fixed assumption of 3 planes, use geometry service to check the dEdx and Energy vectors are the expected size
-   2020-07-16 Edward Tyley : Set default values for uninitialised variables
-   2020-07-16 Edward Tyley : Made error values consistent across tools. Changed to make max/min use numeric limits
-   2020-07-13 Edward Tyley : Put debug message inside verbose check
-   2020-07-13 Edward Tyley : Updated modular shower module fcl param inheratance to work for cheating alg
-   2020-06-29 Edward Tyley : Tidy up
-   2020-06-29 Edward Tyley : Fixed capitalisation and removed unused fcl param
-   2020-06-26 Edward Tyley : Fixed error messages and made it build
-   2020-06-26 Edward Tyley : Do not save output if it is all –999
-   2020-06-26 Edward Tyley : Renamed tools and tidied fcls
-   2020-06-24 Edward Tyley : Fixed shower center bug for charge weighting and changed default behaviour to better match pandora shower
-   2020-06-17 Edward Tyley : Fixed bug in sliding dEdx tool MinAngleToWire cut
-   2020-05-19 Edward Tyley : Tidy and removed unused fcl params
-   2020-05-19 Edward Tyley : Updated errors, warnings and exceptions to have correct names 2: Algs
-   2020-05-19 Edward Tyley : Updated errors, warnings and exceptions to have correct names
-   2020-05-19 Edward Tyley : Fixed fcl updates so it runs
-   2020-05-19 Edward Tyley : Added fVerbose
-   2020-05-19 Edward Tyley : Updated fcl parameters and naming
-   2020-05-12 Edward Tyley : Removed tests and updated fcls so it runs
-   2020-05-12 Edward Tyley : Added fcls, tidied and updated dependancies to remove rouge larreco tracs reference
-   2020-05-11 Edward Tyley : First build of TRACS to LArPandoraModularShowerCreation
-   2020-06-30 Edward Tyley : Add Eigen as a dependancy
-   2020-06-29 Edward Tyley : Tidy up
-   2020-06-29 Edward Tyley : Fixed capitalisation and removed unused fcl param
-   2020-06-26 Edward Tyley : Fixed error messages and made it build
-   2020-06-26 Edward Tyley : Do not save output if it is all –999
-   2020-06-26 Edward Tyley : Renamed tools and tidied fcls
-   2020-06-24 Edward Tyley : Fixed shower center bug for charge weighting and changed default behaviour to better match pandora shower
-   2020-06-17 Edward Tyley : Fixed bug in sliding dEdx tool MinAngleToWire cut
-   2020-05-19 Edward Tyley : Tidy and removed unused fcl params
-   2020-05-19 Edward Tyley : Updated errors, warnings and exceptions to have correct names 2: Algs
-   2020-05-19 Edward Tyley : Updated errors, warnings and exceptions to have correct names
-   2020-05-19 Edward Tyley : Fixed fcl updates so it runs
-   2020-05-19 Edward Tyley : Added fVerbose
-   2020-05-19 Edward Tyley : Updated fcl parameters and naming
-   2020-05-12 Edward Tyley : Removed tests and updated fcls so it runs
-   2020-05-12 Edward Tyley : Added fcls, tidied and updated dependancies to remove rouge larreco tracs reference
-   2020-05-11 Edward Tyley : First build of TRACS to LArPandoraModularShowerCreation

## larsimrad v09_00_04

-   2020-09-17 Lynn Garren : larsimrad v09_00_04 for larsoft v09_03_00

## larrecodnn v09_00_04

-   2020-09-17 Lynn Garren : larrecodnn v09_00_04 for larsoft v09_03_00

## larwirecell v09_01_01

-   2020-09-17 Lynn Garren : larwirecell v09_01_01 for larsoft v09_03_00

## larana v09_00_04

-   2020-09-17 Lynn Garren : larana v09_00_04 for larsoft v09_03_00

## larreco v09_01_00

-   2020-09-17 Lynn Garren : larreco v09_01_00 for larsoft v09_03_00
-   2020-09-17 Lynn Garren : Merge branch 'feature/etyley_PandoraShower' into release/v09_03_00
-   2020-09-09 Edward Tyley : Update to LArSoft v09_01_00
-   2020-05-12 Edward Tyley : Removed TRACS

## larsim v09_02_01

-   2020-09-17 Lynn Garren : larsim v09_02_01 for larsoft v09_03_00

## larevt v09_00_04

-   2020-09-17 Lynn Garren : larevt v09_00_04 for larsoft v09_03_00

## lardata v09_00_04

-   2020-09-17 Lynn Garren : lardata v09_00_04 for larsoft v09_03_00

## larcore v09_00_00

## larpandoracontent v03_19_03

## larsoftobj v09_00_04

-   2020-09-17 Lynn Garren : larsoftobj v09_00_04 for larsoft v09_03_00
-   2020-09-17 Lynn Garren : product versions

## lardataobj v09_00_00

## lardataalg v09_00_04

-   2020-09-17 Lynn Garren : lardataalg v09_00_04 for larsoft v09_03_00
-   2020-09-17 Lynn Garren : remove old comment
-   2020-09-17 Lynn Garren : Merge pull request \#11 from PetrilloAtWork/feature/gp_detInfoDoc
-   2020-09-16 Gianluca Petrillo : Added necessary documentation on the new DetectorClocks system.

## larcorealg v09_00_00

## larcoreobj v09_00_00

## webevd v09_00_04

-   2020-09-17 Lynn Garren : webevd v09_00_04 for larsoft v09_03_00

## larbatch v01_53_01

## larutils v1_26_01
