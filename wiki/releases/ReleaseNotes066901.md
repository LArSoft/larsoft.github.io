# LArSoft v06_69_01 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v06_69_01](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_69_01/larsoft-v06_69_01.html)  
Download instructions for [just larsoftobj v1_40_01](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_40_01/larsoftobj-v1_40_01.html)

## Purpose

-   collect changes in develop before building with art v2_10_03

## New features

## Bug fixes

## Updated dependencies

# Change List

## larsoft v06_69_01

-   2018-02-28 Lynn Garren : larsoft v06_69_01 for larsoft v06_69_01
-   2018-02-28 Lynn Garren : update versions

## lareventdisplay v06_17_04

-   2018-02-28 Lynn Garren : lareventdisplay v06_17_04 for larsoft v06_69_01

## larexamples v06_10_04

-   2018-02-28 Lynn Garren : larexamples v06_10_04 for larsoft v06_69_01

## larpandora v06_24_01

-   2018-02-28 Lynn Garren : larpandora v06_24_01 for larsoft v06_69_01

## larwirecell v06_10_03

## larana v06_17_02

-   2018-02-28 Lynn Garren : larana v06_17_02 for larsoft v06_69_01

## larreco v06_55_01

-   2018-02-28 Lynn Garren : larreco v06_55_01 for larsoft v06_69_01
-   2018-02-28 Bruce Baller : Set default debug mode off
-   2018-02-28 Bruce Baller : Fix logic for defining debug mode
-   2018-02-28 Bruce Baller : Add protection for invalid shower PFPIndex
-   2018-02-22 Christoph Alt : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2018-02-22 Christoph Alt : Updated description of fcl parameters and added a fcl parameter to steer the re-fitting of multi-peaks
-   2018-02-22 Christoph Alt : Added several LogLevels. This should help in tuning the fcl parameters.

## larsim v06_41_01

-   2018-02-28 Lynn Garren : larsim v06_41_01 for larsoft v06_69_01
-   2018-02-25 Tingjun Yang : Break once mct is found.
-   2018-02-24 Tingjun Yang : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larsim into develop
-   2018-02-24 Tingjun Yang : Make sure mct does not exist in the vector.
-   2018-02-24 Jason Stock : Merge branch 'feature/JStock_ParticleInventoryFix19023' into develop
-   2018-02-23 Jason Stock : A bug was found the ParticleInventory by Bruce Baller where TrackIdToMCTruth was not being correctly resolved. This was found to be due to an overflow error casting an int as a short. This resolves LArSoft issue \#19023
-   2018-02-24 Tingjun Yang : Merge remote-tracking branch 'origin/feature/JStock_ParticleInventoryFix19023' into develop
-   2018-02-24 Jason Stock : Switching check order to prevent segfault in filling truth records for particle inventory.
-   2018-02-24 Tingjun Yang : Merge remote-tracking branch 'origin/feature/JStock_ParticleInventoryFix19023' into develop
-   2018-02-23 Jason Stock : TestFix 1 for larsoft commit
-   2018-02-22 Lynn Garren : add ifdh service

## larevt v06_18_03

## lardata v06_39_03

## larcore v06_17_01

## larpandoracontent v03_10_00

## larsoftobj v1_40_01

## lardataobj v1_28_02

## larcorealg v1_17_01

## larcoreobj v1_21_00

## larbatch v01_37_01

-   2018-02-28 Lynn Garren : larbatch v01_37_01 for larsoft v06_69_01
-   2018-02-26 Herbert Greenlee : Fix calculation of project maximum size.
-   2018-02-25 Herbert Greenlee : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larbatch into develop
-   2018-02-23 Herbert Greenlee : Add condor cvmfs requirement by default.

## larutils v1_21_01

-   2018-02-28 Lynn Garren : larutils v1_21_01 for larsoft v06_69_01
-   2018-02-16 Herbert Greenlee : Revert back to using /grid/fermiapp by default.
-   2018-02-15 Herbert Greenlee : Switch products area.
