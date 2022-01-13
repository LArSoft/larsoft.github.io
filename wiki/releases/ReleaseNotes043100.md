LArSoft v04_31_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v04_31_00 Release Notes](#LArSoft-v04_31_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04_31_00](#larsoft-v04_31_00)
    -   [lareventdisplay v04_13_01](#lareventdisplay-v04_13_01)
    -   [larexamples v04_06_08](#larexamples-v04_06_08)
    -   [larpandora v04_08_10](#larpandora-v04_08_10)
    -   [larana v04_16_06](#larana-v04_16_06)
    -   [larreco v04_26_00](#larreco-v04_26_00)
    -   [larsim v04_16_00](#larsim-v04_16_00)
    -   [larevt v04_13_08](#larevt-v04_13_08)
    -   [lardata v04_19_03](#lardata-v04_19_03)
    -   [larcore v04_23_00](#larcore-v04_23_00)
    -   [larbatch v01_20_01](#larbatch-v01_20_01)
    -   [larutils v1_04_05](#larutils-v1_04_05)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_31_00/larsoft-v04_31_00.html)

Purpose
--------------------

-   Changes since v04_30_03
-   Use art v1_17_05 with fhicl validation

New features
------------------------------

-   larsim feature/gp_DumpMCParticle
-   larreco feature/rsulej_PFParticleForPMA

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|art|v1_17_05|e9:nu|[Release Notes 1.17.05](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_11705)|
|artdaq_core|v1_04_26|e9:nu:s26||
|ifdh_art|v1_14_04|e9:nu:s26||
|nutools|v1_18_01|e9||
|artextensions|v1_02_04|e9:nu:s26||
|cetbuildtools|v4_18_01|||

Change List
============================

larsoft v04_31_00
------------------------------------------

-   2015-12-18 Lynn Garren : larsoft v04_31_00 for larsoft v04_31_00
-   2015-12-18 Lynn Garren : update dependency database
-   2015-12-18 Lynn Garren : artdaq_core is in the nu distribution, don’t build it again
-   2015-12-18 Lynn Garren : mention Ubuntu
-   2015-12-18 Lynn Garren : update product versions

lareventdisplay v04_13_01
----------------------------------------------------------

-   2015-12-18 Lynn Garren : lareventdisplay v04_13_01 for larsoft v04_31_00
-   2015-12-15 Tingjun Yang : Add evdservices_argoneut.fcl back.

larexamples v04_06_08
--------------------------------------------------

-   2015-12-18 Lynn Garren : larexamples v04_06_08 for larsoft v04_31_00

larpandora v04_08_10
------------------------------------------------

-   2015-12-18 Lynn Garren : larpandora v04_08_10 for larsoft v04_31_00
-   2015-12-09 Andrew Blake : Adding some extra variables to PFParticle ‘HitDumper’ module to enable comparisons of 2D and 3D output and studies of track-like and shower-like particles.

larana v04_16_06
----------------------------------------

-   2015-12-18 Lynn Garren : larana v04_16_06 for larsoft v04_31_00

larreco v04_26_00
------------------------------------------

-   2015-12-18 Lynn Garren : larreco v04_26_00 for larsoft v04_31_00
-   2015-12-18 Lynn Garren : Merge branch ‘feature/rsulej_PFParticleForPMA’ into release/v04_31_00
-   2015-12-18 Robert Sulej : check if track is ok before saving it in the simple mode
-   2015-12-17 Chao Zhang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-12-17 Chao Zhang : add save mc trajectory points; add dune10kt_workspace
-   2015-12-17 Robert Sulej : add simple mode for making track from pfparticle, add missed assns
-   2015-12-17 Bruce Baller : Merge branch ‘feature/bb_ccwork’ into develop
-   2015-12-17 Bruce Baller : Change shorts to ints. Add TrajPoint struct for FindVLAClusters.
-   2015-12-17 Bruce Baller : Change shorts to ints. Development work on FindVLAClusters (not ready for general use).
-   2015-12-17 Robert Sulej : Merge branch ‘develop’ into feature/rsulej_PFParticleForPMA
-   2015-12-17 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-12-14 Mike Wallbank : Quick improvement to the showering code in develop – the shower end point finder algorithm has been replaced with one that’s correct pretty much 100% of the time (unlike the last one\\!). This was a change I made last week on the branch feature/wallbank_EMShowerImprovements but that particular branch is taking a long time to get working so I thought I’d quickly port it to develop also whilst I’m finishing up\\!
-   2015-12-11 Bruce Baller : Add StepCrawl algorithm
-   2015-12-11 Bruce Baller : Merge branch ‘develop’ into feature/bb_ccwork
-   2015-12-11 Bruce Baller : VLA cluster work in progress
-   2015-12-11 Bruce Baller : VLA cluster work in progress
-   2015-12-11 Robert Sulej : Merge branch ‘develop’ into feature/rsulej_PFParticleForPMA
-   2015-12-11 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-12-10 Tingjun Yang : Rewrite GetHitRange to make it work for multiple TPCs.
-   2015-12-10 Bruce Baller : Merge branch ‘develop’ into feature/bb_ccwork
-   2015-12-10 Bruce Baller : Fix logic error in ClusterHitsOK
-   2015-12-10 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-12-10 Tingjun Yang : Change the overlap check.
-   2015-12-10 Bruce Baller : Merge branch ‘feature/bb_ccwork’ into develop
-   2015-12-10 Bruce Baller : Change exceptions and warnings
-   2015-12-10 Bruce Baller : Fixed logic error in GetHitRange
-   2015-12-10 Lynn Garren : larsoft v04_30_03
-   2015-12-10 Dorota Stefan : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-12-10 Dorota Stefan : try to pretend code from crashing when 2 views are available
-   2015-12-08 Robert Sulej : Merge branch ‘develop’ into feature/rsulej_PFParticleForPMA
-   2015-12-08 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-12-07 Robert Sulej : merge with pfparticle assn functions from Tracy
-   2015-12-07 Robert Sulej : refactor to use trk candidate class
-   2015-12-02 Robert Sulej : add separate fn’s for patt.recog. on and off while using PFParticle associated clusters - to implement actual content
-   2015-12-02 Robert Sulej : move trk candidate from struct to class
-   2015-12-02 Robert Sulej : minor edit and cleanup before starting a branch for PFParticle support

larsim v04_16_00
----------------------------------------

-   2015-12-18 Lynn Garren : larsim v04_16_00 for larsoft v04_31_00
-   2015-12-18 Lynn Garren : new rules for EmptyEvent
-   2015-12-18 Lynn Garren : need to link with Boost libraries
-   2015-12-18 Lynn Garren : Merge branch ‘feature/gp_DumpMCParticle’ into release/v04_31_00
-   2015-12-03 Gianluca Petrillo : New analyser to dump MCParticles on screen (for humans to read them)

larevt v04_13_08
----------------------------------------

-   2015-12-18 Lynn Garren : larevt v04_13_08 for larsoft v04_31_00

lardata v04_19_03
------------------------------------------

-   2015-12-18 Lynn Garren : lardata v04_19_03 for larsoft v04_31_00

larcore v04_23_00
------------------------------------------

-   2015-12-18 Lynn Garren : larcore v04_23_00 for larsoft v04_31_00

larbatch v01_20_01
--------------------------------------------

larutils v1_04_05
------------------------------------------

-   2015-12-18 Lynn Garren : larutils v1_04_05 for larsoft v04_31_00
-   2015-12-18 Lynn Garren : recognize Ubuntu and add s26
-   2015-12-09 Lynn Garren : fix typo
-   2015-12-09 Lynn Garren : add s24
