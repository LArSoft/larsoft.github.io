LArSoft v06_56_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06_56_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_56_00/larsoft-v06_56_00.html)
Download instructions for [just larsoftobj v1_30_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_30_00/larsoftobj-v1_30_00.html)

Purpose
--------------------

-   changes to develop
-   approved feature branches

New features
------------------------------

-   TrackIDE and MCTruth
    -   Extend the output of the MCTruth module to include associations between MCParticles and reco Hit objects, as well as MCParticles and reco PFPartices, in addition to the associations Andy made between MCParticles and reco Tracks. The associations include extended the meta data objects, so there are also updates to the lardataobj package… these don’t introduce new data products
    -   New variable, numElectrons, added to the TrackIDE object to record the number of electrons collected at a wire, which might have a different value from the energy variable.
    -   larana, lardataobj feature/wketchum_MCMatchHitAssn
    -   lardataobj, larsim feature/yuntse_trackide
    -   larana, uboonecode feature/yuntse_MCMatchHitAssn
-   larreco feature/greenlee_merge_mcc83
    -   includes commits made for larsoft patch release v06_26_01_07.
    -   bring larreco develop branch up to the level of the latest MicrBooNE mcc8 production release.
    -   This branch modifies the KalmanFilterFinalTrackFitter module by adding a new track-hit association+metadata, which association and metadata are used by the calorimetry module.

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   add caffe to the SL distributions
-   cetbuildtools v5_14_04

Change List
============================

larsoft v06_56_00
------------------------------------------

-   2017-11-08 Lynn Garren : larsoft v06_56_00 for larsoft v06_56_00
-   2017-11-08 Lynn Garren : cetbuildtools v5_14_04
-   2017-11-08 Lynn Garren : update versions
-   2017-11-07 Lynn Garren : build caffe on SL
-   2017-11-02 Lynn Garren : using nudist v2_16_06a
-   2017-10-31 Lynn Garren : genie v2_12_8

lareventdisplay v06_15_00
----------------------------------------------------------

-   2017-11-08 Lynn Garren : lareventdisplay v06_15_00 for larsoft v06_56_00
-   2017-11-06 Usher, Tracy L : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/lareventdisplay into develop
-   2017-11-06 Usher, Tracy L : Several smallish changes: 1) in 2D display, hits drawn with “height” (time direction) reflecting hit RMS, 2) cluster labels contain both index and id, 3) rearrange drawing of hits associated to unused space points to be drawn first (so they are on the bottom) in 2D display.
-   2017-11-06 Usher, Tracy L : Add an option flag for controlling the drawing of space points associated to PFParticles (no impact on standard users)

larexamples v06_07_08
--------------------------------------------------

-   2017-11-08 Lynn Garren : larexamples v06_07_08 for larsoft v06_56_00

larpandora v06_17_05
------------------------------------------------

-   2017-11-08 Lynn Garren : larpandora v06_17_05 for larsoft v06_56_00

larwirecell v06_08_03
--------------------------------------------------

-   2017-11-08 Lynn Garren : larwirecell v06_08_03 for larsoft v06_56_00

larana v06_12_00
----------------------------------------

-   2017-11-08 Lynn Garren : larana v06_12_00 for larsoft v06_56_00
-   2017-11-07 Yun-Tse Tsai : fix the potential conflict
-   2017-11-07 Yun-Tse Tsai : add the fcl paramters for the Truth-Reco matching
-   2017-11-06 Yun-Tse Tsai : add comments
-   2017-11-06 Yun-Tse Tsai : add a few metadata to hit-MCParticle association
-   2017-11-06 Usher, Tracy L : Merge branch ‘master’ into feature/wketchum_MCMatchHitAssn
-   2017-10-27 Usher, Tracy L : Merge branch ‘master’ into feature/wketchum_MCMatchHitAssn
-   2017-10-25 Andrzej Szelc : fix small typos and (temporarily move to 06_53_00) for workshop purposes
-   2017-10-25 Wesley Ketchum : add hit assns to mctruth matching module

larreco v06_45_00
------------------------------------------

-   2017-11-08 Lynn Garren : larreco v06_45_00 for larsoft v06_56_00
-   2017-11-07 Lynn Garren : Merge branch ‘feature/greenlee_merge_mcc83’ into release/v06_56_00
-   2017-11-07 Lynn Garren : remove the comma
-   2017-11-07 Lynn Garren : temporary hack for bug [redmine issue 17960](https://cdcvs.fnal.gov/redmine/issues/17960)
-   2017-11-03 Gianluca Petrillo : Added link library for compatibility with SLF6.
-   2017-11-03 baller : Merge branch ‘feature/bb_TJWork’ into develop
-   2017-11-03 baller : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-11-03 baller : Move variables to TjStuff
-   2017-11-03 baller : Settings for uB.
-   2017-11-03 baller : Put event info into TjStuff.
-   2017-11-03 baller : Develop Primary PFParticle performance metric.
-   2017-11-03 baller : Develop Primary PFParticle performance metric.
-   2017-11-03 baller : Print PFParticle MCPartListIndex
-   2017-11-03 baller : Put event info into TjStuff.
-   2017-11-03 baller : Merge branch ‘develop’ into feature/bb_TJWork
-   2017-11-03 baller : Remove old version of MatchTruth
-   2017-11-02 Tingjun Yang : Protect if particle is not found.
-   2017-11-02 baller : Add more checks for a valid parent ID.
-   2017-10-17 Giuseppe Cerati : add back also the bare hit assn
-   2017-10-17 Giuseppe Cerati : enable meta data for hit assn
-   2017-10-17 Tingjun Yang : Make sure hit is associated to a valid point before calculating dQ/dx.
-   2017-11-02 baller : Develop primary particle performance metric
-   2017-10-31 baller : Merge branch ‘develop’ into feature/bb_TJWork
-   2017-10-31 baller : Remove fExpectNarrowHits
-   2017-10-31 baller : Remove fExpectNarrowHits

larsim v06_34_00
----------------------------------------

-   2017-11-08 Lynn Garren : larsim v06_34_00 for larsoft v06_56_00
-   2017-11-07 Lynn Garren : Merge branch ‘feature/yuntse_trackide’ into release/v06_56_00
-   2017-11-06 Yun-Tse Tsai : add number of electrons in TrackIDE
-   2017-11-05 Jason Stock : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into develop
-   2017-11-05 Jason Stock : Material Property Loader change to allow reflective aluminum
-   2017-11-01 Lynn Garren : include headers

larevt v06_16_08
----------------------------------------

-   2017-11-08 Lynn Garren : larevt v06_16_08 for larsoft v06_56_00
-   2017-11-01 Lynn Garren : include headers

lardata v06_31_04
------------------------------------------

-   2017-11-08 Lynn Garren : lardata v06_31_04 for larsoft v06_56_00
-   2017-11-01 Lynn Garren : find headers

larcore v06_15_05
------------------------------------------

-   2017-11-08 Lynn Garren : larcore v06_15_05 for larsoft v06_56_00

larpandoracontent v03_08_01
--------------------------------------------------------------

larsoftobj v1_30_00
----------------------------------------------

-   2017-11-08 Lynn Garren : larsoftobj v1_30_00 for larsoft v06_56_00
-   2017-11-08 Lynn Garren : cetbuildtools v5_14_04
-   2017-11-08 Lynn Garren : update versions

lardataobj v1_22_00
----------------------------------------------

-   2017-11-08 Lynn Garren : lardataobj v1_22_00 for larsoft v06_56_00
-   2017-11-07 Lynn Garren : Merge branch ‘feature/yuntse_trackide’ into release/v06_56_00
-   2017-11-07 Lynn Garren : Merge branch ‘feature/wketchum_MCMatchHitAssn’ into release/v06_56_00
-   2017-11-07 Yun-Tse Tsai : update the checksum
-   2017-11-07 Gianluca Petrillo : Updated code to VIGILANT quality.
-   2017-11-07 Gianluca Petrillo : Replaced tabs with spaces.
-   2017-11-07 Gianluca Petrillo : Minor redesign in sparse_vector test internals.
-   2017-11-06 Yun-Tse Tsai : fix the merge conflict with origin/feature/wketchum_MCMatchHitAssn
-   2017-11-06 Yun-Tse Tsai : add a few variables in the metadata of hit-MCParticle association
-   2017-11-06 Yun-Tse Tsai : add Wes and my hit-MCParticle association metadata
-   2017-11-06 Yun-Tse Tsai : add number of electrons detected on a wire in TrackIDE
-   2017-11-06 Usher, Tracy L : Merge branch ‘master’ into feature/wketchum_MCMatchHitAssn
-   2017-10-27 Usher, Tracy L : Merge branch ‘master’ into feature/wketchum_MCMatchHitAssn
-   2017-10-25 Usher, Tracy L : Working on fixing the issue where the bytes written are not the expected bytes on readback, current suspect is the bool
-   2017-10-25 Usher, Tracy L : Forgot to define containers for the auxiliary class
-   2017-10-25 Usher, Tracy L : Add the definitions for reco Hit \<–\> sim MCParticle associations
-   2017-10-25 Usher, Tracy L : fix typo
-   2017-10-25 Usher, Tracy L : Add reference to the new association between hits and MCParticles
-   2017-10-25 Wesley Ketchum : add hit assns to mctruth matching module

larcorealg v1_09_03
----------------------------------------------

-   2017-11-08 Lynn Garren : larcorealg v1_09_03 for larsoft v06_56_00
-   2017-11-07 Gianluca Petrillo : Updated code to VIGILANT quality.

larcoreobj v1_16_02
----------------------------------------------

larbatch v01_32_07
--------------------------------------------

-   2017-11-08 Lynn Garren : larbatch v01_32_07 for larsoft v06_56_00
-   2017-11-02 Herbert Greenlee : Fix indentation.
-   2017-11-02 Herbert Greenlee : Fix parentage for analysis files.
-   2017-11-02 Herbert Greenlee : Fix stage validate_on_worker element, and add –dump_project and –dump_stage command options.

larutils v1_20_01
------------------------------------------
