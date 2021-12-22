LArSoft v04\_34\_00 Release Notes(#LArSoft-v04_34_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v04\_34\_00 Release Notes](#LArSoft-v04_34_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04\_34\_00](#larsoft-v04_34_00)
    -   [lareventdisplay v04\_14\_01](#lareventdisplay-v04_14_01)
    -   [larexamples v04\_06\_12](#larexamples-v04_06_12)
    -   [larpandora v04\_09\_03](#larpandora-v04_09_03)
    -   [larana v04\_17\_00](#larana-v04_17_00)
    -   [larreco v04\_28\_00](#larreco-v04_28_00)
    -   [larsim v04\_19\_00](#larsim-v04_19_00)
    -   [larevt v04\_14\_02](#larevt-v04_14_02)
    -   [lardata v04\_21\_00](#lardata-v04_21_00)
    -   [larcore v04\_25\_00](#larcore-v04_25_00)
    -   [larbatch v01\_20\_02](#larbatch-v01_20_02)
    -   [larutils v1\_04\_07](#larutils-v1_04_07)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_34_00/larsoft-v04_34_00.html)

Purpose(#Purpose)
--------------------

-   changes to develop since v04\_33\_00
-   new MVA PID code
-   MCTrack Data Product modification

New features(#New-features)
------------------------------

-   zennamo\_MCTrackdEdx branch in lardata and larsim
    -   there is a matching branch for uboonecode
-   feature/mvapid in larana and lardata

Bug fixes(#Bug-fixes)
------------------------

-   fix misspelled library name in nutools
-   fix bug found by Mu2e in geant4

Updated dependencies(#Updated-dependencies)
----------------------------------------------

  --------- ------------ ------------ ----------------------------------------------------------------------------------
  Product   Version      Qualifiers   Notes
  geant4    v2\_22\_2    e9           [\#11459](/redmine/issues/11459 "Support: request geant4 v4_9_6_p04d  (Closed)")
  nutools   v1\_20\_03   e9           [\#11441](/redmine/issues/11441 "Bug: misnamed library (Closed)")
  --------- ------------ ------------ ----------------------------------------------------------------------------------

Change List(#Change-List)
============================

larsoft v04\_34\_00(#larsoft-v04_34_00)
------------------------------------------

-   2016-01-21 Lynn Garren : larsoft v04\_34\_00 for larsoft v04\_34\_00
-   2016-01-21 Lynn Garren : update dependency database
-   2016-01-21 Lynn Garren : link to the supported platforms page
-   2016-01-21 Lynn Garren : update product versions

lareventdisplay v04\_14\_01(#lareventdisplay-v04_14_01)
----------------------------------------------------------

-   2016-01-21 Lynn Garren : lareventdisplay v04\_14\_01 for larsoft v04\_34\_00

larexamples v04\_06\_12(#larexamples-v04_06_12)
--------------------------------------------------

-   2016-01-21 Lynn Garren : larexamples v04\_06\_12 for larsoft v04\_34\_00

larpandora v04\_09\_03(#larpandora-v04_09_03)
------------------------------------------------

-   2016-01-21 Lynn Garren : larpandora v04\_09\_03 for larsoft v04\_34\_00

larana v04\_17\_00(#larana-v04_17_00)
----------------------------------------

-   2016-01-21 Lynn Garren : add missing libraries to link list
-   2016-01-21 Lynn Garren : larana v04\_17\_00 for larsoft v04\_34\_00
-   2016-01-20 Lynn Garren : Merge branch ‘feature/mvapid’ into release/v04\_34\_00
-   2016-01-20 mdhaigh : Modify code for change of data object name MVAResult-\>MVAPIDResult.
-   2016-01-20 mdhaigh : New script to train MVA from signal and background files in a single command.
-   2016-01-08 mdhaigh : First version of MVA PID code put into FNAL version control system.

larreco v04\_28\_00(#larreco-v04_28_00)
------------------------------------------

-   2016-01-21 Lynn Garren : larreco v04\_28\_00 for larsoft v04\_34\_00
-   2016-01-19 Tingjun Yang : Merge branch ‘feature/tjyang\_pandorashw’ into develop
-   2016-01-19 Tingjun Yang : Merge branch ‘develop’ into feature/tjyang\_pandorashw
-   2015-12-30 Tingjun Yang : Fix an index bug in getting pfparticles.
-   2015-12-30 Tingjun Yang : Make sure hits are in the same TPC before making a track.
-   2015-12-28 Tingjun Yang : Various updates: refine algorithm to find initial track hits, add code to calculate dE/dx.
-   2015-12-26 Tingjun Yang : Add new functions to make shower using PFParticles as input.
-   2015-12-23 Tingjun Yang : Add option to use PFParticle as input.

larsim v04\_19\_00(#larsim-v04_19_00)
----------------------------------------

-   2016-01-21 Lynn Garren : larsim v04\_19\_00 for larsoft v04\_34\_00
-   2016-01-20 Lynn Garren : Merge branch ‘zennamo\_MCTrackdEdx’ into release/v04\_34\_00
-   2016-01-20 Thomas Warburton : Changing the tfs file to make a ROOT TTree not a set of histograms.
-   2016-01-19 Joseph Zennamo : Added back in zero length tracks
-   2016-01-18 Joseph Zennamo : Added contact details for new calculations
-   2016-01-18 David Caratelli : adding filter for stopping muons – David Caratelli
-   2016-01-18 Joseph Zennamo : Fix edep index bug
-   2016-01-18 Joseph Zennamo : Disregard any energy deposition from a pair MCSteps separated by less than a voxel distance
-   2016-01-18 Joseph Zennamo : Fixing storage of dQdx and updating the dEdx calculation to recover MIP energy loss
-   2016-01-11 Joseph Zennamo : Merge remote-tracking branch ‘origin/develop’ into zennamo\_MCTrackdEdx
-   2015-12-15 Joseph Zennamo : cleaning up, adding useful comments
-   2015-12-15 Joseph Zennamo : Adding first attempt at defining MCTrack step-by-step dEdx and dQdx
-   2015-12-15 Joseph Zennamo : Removing cout

larevt v04\_14\_02(#larevt-v04_14_02)
----------------------------------------

-   2016-01-21 Lynn Garren : larevt v04\_14\_02 for larsoft v04\_34\_00

lardata v04\_21\_00(#lardata-v04_21_00)
------------------------------------------

-   2016-01-21 Lynn Garren : lardata v04\_21\_00 for larsoft v04\_34\_00
-   2016-01-20 Lynn Garren : Merge branch ‘zennamo\_MCTrackdEdx’ into release/v04\_34\_00
-   2016-01-20 Lynn Garren : Merge branch ‘feature/mvapid’ into release/v04\_34\_00
-   2016-01-20 Lynn Garren : using nutools v1\_20\_03
-   2016-01-20 mdhaigh : Change name of class MVAResult-\>MVAPIDResult.
-   2016-01-18 Joseph Zennamo : Added comment about dEdx and dQdx vector sizes
-   2016-01-15 Lynn Garren : add missing inline declaration
-   2016-01-11 Joseph Zennamo : Merge remote-tracking branch ‘origin/develop’ into zennamo\_MCTrackdEdx
-   2016-01-08 mdhaigh : Add MVAResult data class to store results from MVA PID code.
-   2016-01-07 Joseph Zennamo : Cleaning up MCTrack dEdx and dQdx comments and code
-   2016-01-07 Joseph Zennamo : Adding a reset for MCShower dEdx
-   2015-12-15 Joseph Zennamo : Adding Track Calorimetry

larcore v04\_25\_00(#larcore-v04_25_00)
------------------------------------------

larbatch v01\_20\_02(#larbatch-v01_20_02)
--------------------------------------------

larutils v1\_04\_07(#larutils-v1_04_07)
------------------------------------------
