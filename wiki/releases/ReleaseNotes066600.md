LArSoft v06_66_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06_66_00 Release Notes](#LArSoft-v06_66_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06_66_00](#larsoft-v06_66_00)
    -   [lareventdisplay v06_16_01](#lareventdisplay-v06_16_01)
    -   [larexamples v06_09_01](#larexamples-v06_09_01)
    -   [larpandora v06_21_00](#larpandora-v06_21_00)
    -   [larwirecell v06_09_01](#larwirecell-v06_09_01)
    -   [larana v06_15_01](#larana-v06_15_01)
    -   [larreco v06_53_01](#larreco-v06_53_01)
    -   [larsim v06_39_01](#larsim-v06_39_01)
    -   [larevt v06_17_01](#larevt-v06_17_01)
    -   [lardata v06_38_00](#lardata-v06_38_00)
    -   [larcore v06_16_00](#larcore-v06_16_00)
    -   [larpandoracontent v03_09_03](#larpandoracontent-v03_09_03)
    -   [larsoftobj v1_38_01](#larsoftobj-v1_38_01)
    -   [lardataobj v1_27_01](#lardataobj-v1_27_01)
    -   [larcorealg v1_16_00](#larcorealg-v1_16_00)
    -   [larcoreobj v1_19_00](#larcoreobj-v1_19_00)
    -   [larbatch v01_36_01](#larbatch-v01_36_01)
    -   [larutils v1_20_06](#larutils-v1_20_06)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06_66_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_66_00/larsoft-v06_66_00.html)
Download instructions for [just larsoftobj v1_38_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_38_01/larsoftobj-v1_38_01.html)

Purpose
--------------------

-   changes to develop
-   approved feature branches

New features
------------------------------

-   `lardata` `feature/gp_Issue18638` for the resolution of issue [redmine issue 18638](https://cdcvs.fnal.gov/redmine/issues/18638)
-   larpandora feature/sg_TriggeredMCInfo
    -   add MCInformation about beam particles to Pandora for use at ProtoDUNE

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   refer to the [v06_65_00 Release Notes](ReleaseNotes066500)

Change List
============================

larsoft v06_66_00
------------------------------------------

-   2018-01-23 Lynn Garren : larsoft v06_66_00 for larsoft v06_66_00
-   2018-01-23 Lynn Garren : update versions
-   2018-01-23 Lynn Garren : update dependency database

lareventdisplay v06_16_01
----------------------------------------------------------

-   2018-01-23 Lynn Garren : lareventdisplay v06_16_01 for larsoft v06_66_00

larexamples v06_09_01
--------------------------------------------------

-   2018-01-23 Lynn Garren : larexamples v06_09_01 for larsoft v06_66_00

larpandora v06_21_00
------------------------------------------------

-   2018-01-23 Lynn Garren : larpandora v06_21_00 for larsoft v06_66_00
-   2018-01-23 Lynn Garren : Merge branch ‘feature/sg_TriggeredMCInfo’ into release/v06_66_00
-   2018-01-10 Steven Green : Added additional information to Pandora MCParticles to indicate whether the particle is a primary (i.e. triggered for ProtoDUNE).

larwirecell v06_09_01
--------------------------------------------------

-   2018-01-23 Lynn Garren : larwirecell v06_09_01 for larsoft v06_66_00

larana v06_15_01
----------------------------------------

-   2018-01-23 Lynn Garren : larana v06_15_01 for larsoft v06_66_00

larreco v06_53_01
------------------------------------------

-   2018-01-23 Lynn Garren : larreco v06_53_01 for larsoft v06_66_00
-   2018-01-23 Lynn Garren : larsoft v06_65_00
-   2018-01-22 Tingjun Yang : Redefine tj after pushing back a new trajectory.
-   2017-12-04 Tingjun Yang : Fix typo.
-   2017-12-01 Tingjun Yang : Add tag to turn on/off lifetime correction in calorimetryalg.
-   2018-01-22 baller : Bug fix - define geometry before getting hits
-   2018-01-22 Robert Sulej : as Leigh suggested, just assing many cosmic tags to a track when multiple cathegories are found by the tagger

larsim v06_39_01
----------------------------------------

-   2018-01-23 Lynn Garren : larsim v06_39_01 for larsoft v06_66_00

larevt v06_17_01
----------------------------------------

-   2018-01-23 Lynn Garren : larevt v06_17_01 for larsoft v06_66_00

lardata v06_38_00
------------------------------------------

-   2018-01-23 Lynn Garren : lardata v06_38_00 for larsoft v06_66_00
-   2018-01-23 Lynn Garren : Merge branch ‘feature/gp_Issue18638’ into release/v06_66_00
-   2018-01-23 Lynn Garren : larsoft v06_65_00
-   2018-01-11 Gianluca Petrillo : Added interface for association metadata in proxy classes
-   2018-01-19 Gianluca Petrillo : Documentation fixes to StatCollector.h

larcore v06_16_00
------------------------------------------

larpandoracontent v03_09_03
--------------------------------------------------------------

larsoftobj v1_38_01
----------------------------------------------

-   2018-01-23 Lynn Garren : larsoftobj v1_38_01 for larsoft v06_66_00
-   2018-01-23 Lynn Garren : update versions

lardataobj v1_27_01
----------------------------------------------

-   2018-01-23 Lynn Garren : lardataobj v1_27_01 for larsoft v06_66_00
-   2018-01-23 Lynn Garren : larsoft v06_65_00
-   2018-01-18 Lynn Garren : larsoft v06_64_00
-   2018-01-17 Gianluca Petrillo : Updated documentation of recob::TrackHitMeta

larcorealg v1_16_00
----------------------------------------------

larcoreobj v1_19_00
----------------------------------------------

larbatch v01_36_01
--------------------------------------------

-   2018-01-23 Lynn Garren : larbatch v01_36_01 for larsoft v06_66_00
-   2018-01-19 Herbert Greenlee : Make bad parent metadata an error.
-   2018-01-19 Herbert Greenlee : Abort project and dag if project snapshot contains zero files.
-   2018-01-18 Lynn Garren : larsoft v06_64_00
-   2018-01-18 Tingjun Yang : Make validate_in_job.py work for simulation job with multiple fcl files. (committing for Herb)

larutils v1_20_06
------------------------------------------

-   2018-01-23 Lynn Garren : larutils v1_20_06 for larsoft v06_66_00
-   2018-01-22 Lynn Garren : add s62
-   2018-01-19 Thomas Junk : use dots instead of _ in the version number for the output tarballs, and use get-directory-name subdir instead of the flavor
