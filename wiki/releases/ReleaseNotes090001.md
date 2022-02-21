# LArSoft v09_00_01 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v09_00_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_00_01/larsoft-v09_00_01.html)  
Download instructions for [just larsoftobj v09_00_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_00_01/larsoftobj-v09_00_01.html)

## Purpose

-   changes in develop
-   approved PRs

## New features

## Bug fixes

-   larbatch PR 9 for \#24839
-   lardata PR 8
    -   multithreading bug fix for DetectorClocksServiceStandard
-   lardataalg PR 8 for \#24834
-   lareventdisplay PR 7
    -   v09 bug fix
-   webevd PR 16
    -   fix browser related problems

## Updated dependencies

-   geant4reweight v01_03_00 (#24846)
-   artdaq_core v3_06_01
    -   DAQ added artdaq::RawEventHeader to the dictionary and artdaq is now putting that into events it generates. They want to make sure that the offline will have the ability to read these files moving forward

# Change List

## larsoft v09_00_01

-   2020-08-25 Lynn Garren : larsoft v09_00_01 for larsoft v09_00_01
-   2020-08-25 Lynn Garren : product versions
-   2020-08-25 Lynn Garren : nulite v3_07_02c with geant4reweight v01_03_00 and artdaq_core v3_06_01

## lareventdisplay v09_00_01

-   2020-08-25 Lynn Garren : lareventdisplay v09_00_01 for larsoft v09_00_01
-   2020-08-21 Lynn Garren : Merge pull request \#7 from knoepfel/fix-event-display
-   2020-08-20 Kyle Knoepfel : Fix event-display to work with v9

## larexamples v09_00_01

-   2020-08-25 Lynn Garren : larexamples v09_00_01 for larsoft v09_00_01

## larg4 v09_00_01

-   2020-08-25 Lynn Garren : larg4 v09_00_01 for larsoft v09_00_01

## larpandora v09_00_01

-   2020-08-25 Lynn Garren : larpandora v09_00_01 for larsoft v09_00_01

## larsimrad v09_00_01

-   2020-08-25 Lynn Garren : larsimrad v09_00_01 for larsoft v09_00_01
-   2020-08-25 Lynn Garren : find library

## larrecodnn v09_00_01

-   2020-08-25 Lynn Garren : larrecodnn v09_00_01 for larsoft v09_00_01

## larwirecell v09_00_01

-   2020-08-25 Lynn Garren : larwirecell v09_00_01 for larsoft v09_00_01

## larana v09_00_01

-   2020-08-25 Lynn Garren : larana v09_00_01 for larsoft v09_00_01

## larreco v09_00_01

-   2020-08-25 Lynn Garren : larreco v09_00_01 for larsoft v09_00_01

## larsim v09_00_01

-   2020-08-25 Lynn Garren : larsim v09_00_01 for larsoft v09_00_01

## larevt v09_00_01

-   2020-08-25 Lynn Garren : larevt v09_00_01 for larsoft v09_00_01

## lardata v09_00_01

-   2020-08-25 Lynn Garren : lardata v09_00_01 for larsoft v09_00_01
-   2020-08-25 Lynn Garren : Merge pull request \#8 from knoepfel/bugfix/knoepfel-service-scope
-   2020-08-25 Kyle Knoepfel : Don't forget to switch from LEGACY to SHARED.

## larcore v09_00_00

## larpandoracontent v03_19_02

## larsoftobj v09_00_01

-   2020-08-25 Lynn Garren : larsoftobj v09_00_01 for larsoft v09_00_01
-   2020-08-25 Lynn Garren : product versions

## lardataobj v09_00_00

## lardataalg v09_00_01

-   2020-08-25 Lynn Garren : lardataalg v09_00_01 for larsoft v09_00_01
-   2020-08-21 Lynn Garren : Merge pull request \#8 from PetrilloAtWork/feature/gp_issue24834
-   2020-08-21 Gianluca Petrillo : Restored debug output in DetectorClocksStandard service provider.
-   2020-08-21 Gianluca Petrillo : Fix for issue \#24834.

## larcorealg v09_00_00

## larcoreobj v09_00_00

## webevd v09_00_01

-   2020-08-25 Lynn Garren : webevd v09_00_01 for larsoft v09_00_01
-   2020-08-21 Lynn Garren : Merge pull request \#16 from cjbackhouse/develop
-   2020-08-05 Christopher Backhouse : Fix for crashes caused when the browser hangs up on us.
-   2020-08-04 Christopher Backhouse : Merge branch 'develop' of https://github.com/LArSoft/webevd into develop
-   2020-07-22 Chris Backhouse : Merge pull request \#1 from LArSoft/develop

## larbatch v01_53_00

-   2020-08-25 Lynn Garren : larbatch v01_53_00 for larsoft v09_00_01
-   2020-08-25 Lynn Garren : Merge pull request \#9 from PetrilloAtWork/feature/gp_Issue24839
-   2020-08-21 Gianluca Petrillo : Disable RooFit banner on file opening.
-   2020-08-21 Gianluca Petrillo : root_metadata.py outputs to a file instead of stdout.

## larutils v1_26_01
