LArSoft v06\_66\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06\_66\_00 Release Notes](#LArSoft-v06_66_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_66\_00](#larsoft-v06_66_00)
    -   [lareventdisplay v06\_16\_01](#lareventdisplay-v06_16_01)
    -   [larexamples v06\_09\_01](#larexamples-v06_09_01)
    -   [larpandora v06\_21\_00](#larpandora-v06_21_00)
    -   [larwirecell v06\_09\_01](#larwirecell-v06_09_01)
    -   [larana v06\_15\_01](#larana-v06_15_01)
    -   [larreco v06\_53\_01](#larreco-v06_53_01)
    -   [larsim v06\_39\_01](#larsim-v06_39_01)
    -   [larevt v06\_17\_01](#larevt-v06_17_01)
    -   [lardata v06\_38\_00](#lardata-v06_38_00)
    -   [larcore v06\_16\_00](#larcore-v06_16_00)
    -   [larpandoracontent v03\_09\_03](#larpandoracontent-v03_09_03)
    -   [larsoftobj v1\_38\_01](#larsoftobj-v1_38_01)
    -   [lardataobj v1\_27\_01](#lardataobj-v1_27_01)
    -   [larcorealg v1\_16\_00](#larcorealg-v1_16_00)
    -   [larcoreobj v1\_19\_00](#larcoreobj-v1_19_00)
    -   [larbatch v01\_36\_01](#larbatch-v01_36_01)
    -   [larutils v1\_20\_06](#larutils-v1_20_06)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06\_66\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_66_00/larsoft-v06_66_00.html)
Download instructions for [just larsoftobj v1\_38\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_38_01/larsoftobj-v1_38_01.html)

Purpose
--------------------

-   changes to develop
-   approved feature branches

New features
------------------------------

-   `lardata` `feature/gp_Issue18638` for the resolution of issue [\#18638](/redmine/issues/18638 "Feature: Add to proxy the support for associations with meta data  (Closed)")
-   larpandora feature/sg\_TriggeredMCInfo
    -   add MCInformation about beam particles to Pandora for use at ProtoDUNE

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   refer to the [v06\_65\_00 Release Notes](ReleaseNotes066500)

Change List
============================

larsoft v06\_66\_00
------------------------------------------

-   2018-01-23 Lynn Garren : larsoft v06\_66\_00 for larsoft v06\_66\_00
-   2018-01-23 Lynn Garren : update versions
-   2018-01-23 Lynn Garren : update dependency database

lareventdisplay v06\_16\_01
----------------------------------------------------------

-   2018-01-23 Lynn Garren : lareventdisplay v06\_16\_01 for larsoft v06\_66\_00

larexamples v06\_09\_01
--------------------------------------------------

-   2018-01-23 Lynn Garren : larexamples v06\_09\_01 for larsoft v06\_66\_00

larpandora v06\_21\_00
------------------------------------------------

-   2018-01-23 Lynn Garren : larpandora v06\_21\_00 for larsoft v06\_66\_00
-   2018-01-23 Lynn Garren : Merge branch ‘feature/sg\_TriggeredMCInfo’ into release/v06\_66\_00
-   2018-01-10 Steven Green : Added additional information to Pandora MCParticles to indicate whether the particle is a primary (i.e. triggered for ProtoDUNE).

larwirecell v06\_09\_01
--------------------------------------------------

-   2018-01-23 Lynn Garren : larwirecell v06\_09\_01 for larsoft v06\_66\_00

larana v06\_15\_01
----------------------------------------

-   2018-01-23 Lynn Garren : larana v06\_15\_01 for larsoft v06\_66\_00

larreco v06\_53\_01
------------------------------------------

-   2018-01-23 Lynn Garren : larreco v06\_53\_01 for larsoft v06\_66\_00
-   2018-01-23 Lynn Garren : larsoft v06\_65\_00
-   2018-01-22 Tingjun Yang : Redefine tj after pushing back a new trajectory.
-   2017-12-04 Tingjun Yang : Fix typo.
-   2017-12-01 Tingjun Yang : Add tag to turn on/off lifetime correction in calorimetryalg.
-   2018-01-22 baller : Bug fix - define geometry before getting hits
-   2018-01-22 Robert Sulej : as Leigh suggested, just assing many cosmic tags to a track when multiple cathegories are found by the tagger

larsim v06\_39\_01
----------------------------------------

-   2018-01-23 Lynn Garren : larsim v06\_39\_01 for larsoft v06\_66\_00

larevt v06\_17\_01
----------------------------------------

-   2018-01-23 Lynn Garren : larevt v06\_17\_01 for larsoft v06\_66\_00

lardata v06\_38\_00
------------------------------------------

-   2018-01-23 Lynn Garren : lardata v06\_38\_00 for larsoft v06\_66\_00
-   2018-01-23 Lynn Garren : Merge branch ‘feature/gp\_Issue18638’ into release/v06\_66\_00
-   2018-01-23 Lynn Garren : larsoft v06\_65\_00
-   2018-01-11 Gianluca Petrillo : Added interface for association metadata in proxy classes
-   2018-01-19 Gianluca Petrillo : Documentation fixes to StatCollector.h

larcore v06\_16\_00
------------------------------------------

larpandoracontent v03\_09\_03
--------------------------------------------------------------

larsoftobj v1\_38\_01
----------------------------------------------

-   2018-01-23 Lynn Garren : larsoftobj v1\_38\_01 for larsoft v06\_66\_00
-   2018-01-23 Lynn Garren : update versions

lardataobj v1\_27\_01
----------------------------------------------

-   2018-01-23 Lynn Garren : lardataobj v1\_27\_01 for larsoft v06\_66\_00
-   2018-01-23 Lynn Garren : larsoft v06\_65\_00
-   2018-01-18 Lynn Garren : larsoft v06\_64\_00
-   2018-01-17 Gianluca Petrillo : Updated documentation of recob::TrackHitMeta

larcorealg v1\_16\_00
----------------------------------------------

larcoreobj v1\_19\_00
----------------------------------------------

larbatch v01\_36\_01
--------------------------------------------

-   2018-01-23 Lynn Garren : larbatch v01\_36\_01 for larsoft v06\_66\_00
-   2018-01-19 Herbert Greenlee : Make bad parent metadata an error.
-   2018-01-19 Herbert Greenlee : Abort project and dag if project snapshot contains zero files.
-   2018-01-18 Lynn Garren : larsoft v06\_64\_00
-   2018-01-18 Tingjun Yang : Make validate\_in\_job.py work for simulation job with multiple fcl files. (committing for Herb)

larutils v1\_20\_06
------------------------------------------

-   2018-01-23 Lynn Garren : larutils v1\_20\_06 for larsoft v06\_66\_00
-   2018-01-22 Lynn Garren : add s62
-   2018-01-19 Thomas Junk : use dots instead of \_ in the version number for the output tarballs, and use get-directory-name subdir instead of the flavor
