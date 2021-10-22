LArSoft v06\_56\_00 Release Notes[¶](#LArSoft-v06_56_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v06\_56\_00 Release Notes](#LArSoft-v06_56_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_56\_00](#larsoft-v06_56_00)
    -   [lareventdisplay v06\_15\_00](#lareventdisplay-v06_15_00)
    -   [larexamples v06\_07\_08](#larexamples-v06_07_08)
    -   [larpandora v06\_17\_05](#larpandora-v06_17_05)
    -   [larwirecell v06\_08\_03](#larwirecell-v06_08_03)
    -   [larana v06\_12\_00](#larana-v06_12_00)
    -   [larreco v06\_45\_00](#larreco-v06_45_00)
    -   [larsim v06\_34\_00](#larsim-v06_34_00)
    -   [larevt v06\_16\_08](#larevt-v06_16_08)
    -   [lardata v06\_31\_04](#lardata-v06_31_04)
    -   [larcore v06\_15\_05](#larcore-v06_15_05)
    -   [larpandoracontent v03\_08\_01](#larpandoracontent-v03_08_01)
    -   [larsoftobj v1\_30\_00](#larsoftobj-v1_30_00)
    -   [lardataobj v1\_22\_00](#lardataobj-v1_22_00)
    -   [larcorealg v1\_09\_03](#larcorealg-v1_09_03)
    -   [larcoreobj v1\_16\_02](#larcoreobj-v1_16_02)
    -   [larbatch v01\_32\_07](#larbatch-v01_32_07)
    -   [larutils v1\_20\_01](#larutils-v1_20_01)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_56\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_56_00/larsoft-v06_56_00.html)\
Download instructions for [just larsoftobj v1\_30\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_30_00/larsoftobj-v1_30_00.html)


Purpose[¶](#Purpose)
--------------------

-   changes to develop
-   approved feature branches


New features[¶](#New-features)
------------------------------

-   TrackIDE and MCTruth
    -   Extend the output of the MCTruth module to include associations between MCParticles and reco Hit objects, as well as MCParticles and reco PFPartices, in addition to the associations Andy made between MCParticles and reco Tracks. The associations include extended the meta data objects, so there are also updates to the lardataobj package… these don’t introduce new data products
    -   New variable, numElectrons, added to the TrackIDE object to record the number of electrons collected at a wire, which might have a different value from the energy variable.
    -   larana, lardataobj feature/wketchum\_MCMatchHitAssn
    -   lardataobj, larsim feature/yuntse\_trackide
    -   larana, uboonecode feature/yuntse\_MCMatchHitAssn
-   larreco feature/greenlee\_merge\_mcc83
    -   includes commits made for larsoft patch release v06\_26\_01\_07.
    -   bring larreco develop branch up to the level of the latest MicrBooNE mcc8 production release.
    -   This branch modifies the KalmanFilterFinalTrackFitter module by adding a new track-hit association+metadata, which association and metadata are used by the calorimetry module.


Bug fixes[¶](#Bug-fixes)
------------------------


Updated dependencies[¶](#Updated-dependencies)
----------------------------------------------

-   add caffe to the SL distributions
-   cetbuildtools v5\_14\_04


Change List[¶](#Change-List)
============================


larsoft v06\_56\_00[¶](#larsoft-v06_56_00)
------------------------------------------

-   2017-11-08 Lynn Garren : larsoft v06\_56\_00 for larsoft v06\_56\_00
-   2017-11-08 Lynn Garren : cetbuildtools v5\_14\_04
-   2017-11-08 Lynn Garren : update versions
-   2017-11-07 Lynn Garren : build caffe on SL
-   2017-11-02 Lynn Garren : using nudist v2\_16\_06a
-   2017-10-31 Lynn Garren : genie v2\_12\_8


lareventdisplay v06\_15\_00[¶](#lareventdisplay-v06_15_00)
----------------------------------------------------------

-   2017-11-08 Lynn Garren : lareventdisplay v06\_15\_00 for larsoft v06\_56\_00
-   2017-11-06 Usher, Tracy L : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/lareventdisplay into develop
-   2017-11-06 Usher, Tracy L : Several smallish changes: 1) in 2D display, hits drawn with “height” (time direction) reflecting hit RMS, 2) cluster labels contain both index and id, 3) rearrange drawing of hits associated to unused space points to be drawn first (so they are on the bottom) in 2D display.
-   2017-11-06 Usher, Tracy L : Add an option flag for controlling the drawing of space points associated to PFParticles (no impact on standard users)


larexamples v06\_07\_08[¶](#larexamples-v06_07_08)
--------------------------------------------------

-   2017-11-08 Lynn Garren : larexamples v06\_07\_08 for larsoft v06\_56\_00


larpandora v06\_17\_05[¶](#larpandora-v06_17_05)
------------------------------------------------

-   2017-11-08 Lynn Garren : larpandora v06\_17\_05 for larsoft v06\_56\_00


larwirecell v06\_08\_03[¶](#larwirecell-v06_08_03)
--------------------------------------------------

-   2017-11-08 Lynn Garren : larwirecell v06\_08\_03 for larsoft v06\_56\_00


larana v06\_12\_00[¶](#larana-v06_12_00)
----------------------------------------

-   2017-11-08 Lynn Garren : larana v06\_12\_00 for larsoft v06\_56\_00
-   2017-11-07 Yun-Tse Tsai : fix the potential conflict
-   2017-11-07 Yun-Tse Tsai : add the fcl paramters for the Truth-Reco matching
-   2017-11-06 Yun-Tse Tsai : add comments
-   2017-11-06 Yun-Tse Tsai : add a few metadata to hit-MCParticle association
-   2017-11-06 Usher, Tracy L : Merge branch ‘master’ into feature/wketchum\_MCMatchHitAssn
-   2017-10-27 Usher, Tracy L : Merge branch ‘master’ into feature/wketchum\_MCMatchHitAssn
-   2017-10-25 Andrzej Szelc : fix small typos and (temporarily move to 06\_53\_00) for workshop purposes
-   2017-10-25 Wesley Ketchum : add hit assns to mctruth matching module


larreco v06\_45\_00[¶](#larreco-v06_45_00)
------------------------------------------

-   2017-11-08 Lynn Garren : larreco v06\_45\_00 for larsoft v06\_56\_00
-   2017-11-07 Lynn Garren : Merge branch ‘feature/greenlee\_merge\_mcc83’ into release/v06\_56\_00
-   2017-11-07 Lynn Garren : remove the comma
-   2017-11-07 Lynn Garren : temporary hack for bug [\#17960](/redmine/issues/17960 "Bug: problem with the debug build of larreco on SLF6 (Assigned)")
-   2017-11-03 Gianluca Petrillo : Added link library for compatibility with SLF6.
-   2017-11-03 baller : Merge branch ‘feature/bb\_TJWork’ into develop
-   2017-11-03 baller : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-11-03 baller : Move variables to TjStuff
-   2017-11-03 baller : Settings for uB.
-   2017-11-03 baller : Put event info into TjStuff.
-   2017-11-03 baller : Develop Primary PFParticle performance metric.
-   2017-11-03 baller : Develop Primary PFParticle performance metric.
-   2017-11-03 baller : Print PFParticle MCPartListIndex
-   2017-11-03 baller : Put event info into TjStuff.
-   2017-11-03 baller : Merge branch ‘develop’ into feature/bb\_TJWork
-   2017-11-03 baller : Remove old version of MatchTruth
-   2017-11-02 Tingjun Yang : Protect if particle is not found.
-   2017-11-02 baller : Add more checks for a valid parent ID.
-   2017-10-17 Giuseppe Cerati : add back also the bare hit assn
-   2017-10-17 Giuseppe Cerati : enable meta data for hit assn
-   2017-10-17 Tingjun Yang : Make sure hit is associated to a valid point before calculating dQ/dx.
-   2017-11-02 baller : Develop primary particle performance metric
-   2017-10-31 baller : Merge branch ‘develop’ into feature/bb\_TJWork
-   2017-10-31 baller : Remove fExpectNarrowHits
-   2017-10-31 baller : Remove fExpectNarrowHits


larsim v06\_34\_00[¶](#larsim-v06_34_00)
----------------------------------------

-   2017-11-08 Lynn Garren : larsim v06\_34\_00 for larsoft v06\_56\_00
-   2017-11-07 Lynn Garren : Merge branch ‘feature/yuntse\_trackide’ into release/v06\_56\_00
-   2017-11-06 Yun-Tse Tsai : add number of electrons in TrackIDE
-   2017-11-05 Jason Stock : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into develop
-   2017-11-05 Jason Stock : Material Property Loader change to allow reflective aluminum
-   2017-11-01 Lynn Garren : include headers


larevt v06\_16\_08[¶](#larevt-v06_16_08)
----------------------------------------

-   2017-11-08 Lynn Garren : larevt v06\_16\_08 for larsoft v06\_56\_00
-   2017-11-01 Lynn Garren : include headers


lardata v06\_31\_04[¶](#lardata-v06_31_04)
------------------------------------------

-   2017-11-08 Lynn Garren : lardata v06\_31\_04 for larsoft v06\_56\_00
-   2017-11-01 Lynn Garren : find headers


larcore v06\_15\_05[¶](#larcore-v06_15_05)
------------------------------------------

-   2017-11-08 Lynn Garren : larcore v06\_15\_05 for larsoft v06\_56\_00


larpandoracontent v03\_08\_01[¶](#larpandoracontent-v03_08_01)
--------------------------------------------------------------


larsoftobj v1\_30\_00[¶](#larsoftobj-v1_30_00)
----------------------------------------------

-   2017-11-08 Lynn Garren : larsoftobj v1\_30\_00 for larsoft v06\_56\_00
-   2017-11-08 Lynn Garren : cetbuildtools v5\_14\_04
-   2017-11-08 Lynn Garren : update versions


lardataobj v1\_22\_00[¶](#lardataobj-v1_22_00)
----------------------------------------------

-   2017-11-08 Lynn Garren : lardataobj v1\_22\_00 for larsoft v06\_56\_00
-   2017-11-07 Lynn Garren : Merge branch ‘feature/yuntse\_trackide’ into release/v06\_56\_00
-   2017-11-07 Lynn Garren : Merge branch ‘feature/wketchum\_MCMatchHitAssn’ into release/v06\_56\_00
-   2017-11-07 Yun-Tse Tsai : update the checksum
-   2017-11-07 Gianluca Petrillo : Updated code to VIGILANT quality.
-   2017-11-07 Gianluca Petrillo : Replaced tabs with spaces.
-   2017-11-07 Gianluca Petrillo : Minor redesign in sparse\_vector test internals.
-   2017-11-06 Yun-Tse Tsai : fix the merge conflict with origin/feature/wketchum\_MCMatchHitAssn
-   2017-11-06 Yun-Tse Tsai : add a few variables in the metadata of hit-MCParticle association
-   2017-11-06 Yun-Tse Tsai : add Wes and my hit-MCParticle association metadata
-   2017-11-06 Yun-Tse Tsai : add number of electrons detected on a wire in TrackIDE
-   2017-11-06 Usher, Tracy L : Merge branch ‘master’ into feature/wketchum\_MCMatchHitAssn
-   2017-10-27 Usher, Tracy L : Merge branch ‘master’ into feature/wketchum\_MCMatchHitAssn
-   2017-10-25 Usher, Tracy L : Working on fixing the issue where the bytes written are not the expected bytes on readback, current suspect is the bool
-   2017-10-25 Usher, Tracy L : Forgot to define containers for the auxiliary class
-   2017-10-25 Usher, Tracy L : Add the definitions for reco Hit \<–\> sim MCParticle associations
-   2017-10-25 Usher, Tracy L : fix typo
-   2017-10-25 Usher, Tracy L : Add reference to the new association between hits and MCParticles
-   2017-10-25 Wesley Ketchum : add hit assns to mctruth matching module


larcorealg v1\_09\_03[¶](#larcorealg-v1_09_03)
----------------------------------------------

-   2017-11-08 Lynn Garren : larcorealg v1\_09\_03 for larsoft v06\_56\_00
-   2017-11-07 Gianluca Petrillo : Updated code to VIGILANT quality.


larcoreobj v1\_16\_02[¶](#larcoreobj-v1_16_02)
----------------------------------------------


larbatch v01\_32\_07[¶](#larbatch-v01_32_07)
--------------------------------------------

-   2017-11-08 Lynn Garren : larbatch v01\_32\_07 for larsoft v06\_56\_00
-   2017-11-02 Herbert Greenlee : Fix indentation.
-   2017-11-02 Herbert Greenlee : Fix parentage for analysis files.
-   2017-11-02 Herbert Greenlee : Fix stage validate\_on\_worker element, and add –dump\_project and –dump\_stage command options.


larutils v1\_20\_01[¶](#larutils-v1_20_01)
------------------------------------------
