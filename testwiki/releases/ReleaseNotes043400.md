# LArSoft v04_34_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_34_00/larsoft-v04_34_00.html)

## Purpose

-   changes to develop since v04_33_00
-   new MVA PID code
-   MCTrack Data Product modification

## New features

-   zennamo_MCTrackdEdx branch in lardata and larsim
    -   there is a matching branch for uboonecode
-   feature/mvapid in larana and lardata

## Bug fixes

-   fix misspelled library name in nutools
-   fix bug found by Mu2e in geant4

## Updated dependencies

|         |          |            |         |
|---------|----------|------------|---------|
| Product | Version  | Qualifiers | Notes   |
| geant4  | v2_22_2  | e9         | \#11459 |
| nutools | v1_20_03 | e9         | \#11441 |

# Change List

## larsoft v04_34_00

-   2016-01-21 Lynn Garren : larsoft v04_34_00 for larsoft v04_34_00
-   2016-01-21 Lynn Garren : update dependency database
-   2016-01-21 Lynn Garren : link to the supported platforms page
-   2016-01-21 Lynn Garren : update product versions

## lareventdisplay v04_14_01

-   2016-01-21 Lynn Garren : lareventdisplay v04_14_01 for larsoft v04_34_00

## larexamples v04_06_12

-   2016-01-21 Lynn Garren : larexamples v04_06_12 for larsoft v04_34_00

## larpandora v04_09_03

-   2016-01-21 Lynn Garren : larpandora v04_09_03 for larsoft v04_34_00

## larana v04_17_00

-   2016-01-21 Lynn Garren : add missing libraries to link list
-   2016-01-21 Lynn Garren : larana v04_17_00 for larsoft v04_34_00
-   2016-01-20 Lynn Garren : Merge branch 'feature/mvapid' into release/v04_34_00
-   2016-01-20 mdhaigh : Modify code for change of data object name MVAResult-\>MVAPIDResult.
-   2016-01-20 mdhaigh : New script to train MVA from signal and background files in a single command.
-   2016-01-08 mdhaigh : First version of MVA PID code put into FNAL version control system.

## larreco v04_28_00

-   2016-01-21 Lynn Garren : larreco v04_28_00 for larsoft v04_34_00
-   2016-01-19 Tingjun Yang : Merge branch 'feature/tjyang_pandorashw' into develop
-   2016-01-19 Tingjun Yang : Merge branch 'develop' into feature/tjyang_pandorashw
-   2015-12-30 Tingjun Yang : Fix an index bug in getting pfparticles.
-   2015-12-30 Tingjun Yang : Make sure hits are in the same TPC before making a track.
-   2015-12-28 Tingjun Yang : Various updates: refine algorithm to find initial track hits, add code to calculate dE/dx.
-   2015-12-26 Tingjun Yang : Add new functions to make shower using PFParticles as input.
-   2015-12-23 Tingjun Yang : Add option to use PFParticle as input.

## larsim v04_19_00

-   2016-01-21 Lynn Garren : larsim v04_19_00 for larsoft v04_34_00
-   2016-01-20 Lynn Garren : Merge branch 'zennamo_MCTrackdEdx' into release/v04_34_00
-   2016-01-20 Thomas Warburton : Changing the tfs file to make a ROOT TTree not a set of histograms.
-   2016-01-19 Joseph Zennamo : Added back in zero length tracks
-   2016-01-18 Joseph Zennamo : Added contact details for new calculations
-   2016-01-18 David Caratelli : adding filter for stopping muons — David Caratelli
-   2016-01-18 Joseph Zennamo : Fix edep index bug
-   2016-01-18 Joseph Zennamo : Disregard any energy deposition from a pair MCSteps separated by less than a voxel distance
-   2016-01-18 Joseph Zennamo : Fixing storage of dQdx and updating the dEdx calculation to recover MIP energy loss
-   2016-01-11 Joseph Zennamo : Merge remote-tracking branch 'origin/develop' into zennamo_MCTrackdEdx
-   2015-12-15 Joseph Zennamo : cleaning up, adding useful comments
-   2015-12-15 Joseph Zennamo : Adding first attempt at defining MCTrack step-by-step dEdx and dQdx
-   2015-12-15 Joseph Zennamo : Removing cout

## larevt v04_14_02

-   2016-01-21 Lynn Garren : larevt v04_14_02 for larsoft v04_34_00

## lardata v04_21_00

-   2016-01-21 Lynn Garren : lardata v04_21_00 for larsoft v04_34_00
-   2016-01-20 Lynn Garren : Merge branch 'zennamo_MCTrackdEdx' into release/v04_34_00
-   2016-01-20 Lynn Garren : Merge branch 'feature/mvapid' into release/v04_34_00
-   2016-01-20 Lynn Garren : using nutools v1_20_03
-   2016-01-20 mdhaigh : Change name of class MVAResult-\>MVAPIDResult.
-   2016-01-18 Joseph Zennamo : Added comment about dEdx and dQdx vector sizes
-   2016-01-15 Lynn Garren : add missing inline declaration
-   2016-01-11 Joseph Zennamo : Merge remote-tracking branch 'origin/develop' into zennamo_MCTrackdEdx
-   2016-01-08 mdhaigh : Add MVAResult data class to store results from MVA PID code.
-   2016-01-07 Joseph Zennamo : Cleaning up MCTrack dEdx and dQdx comments and code
-   2016-01-07 Joseph Zennamo : Adding a reset for MCShower dEdx
-   2015-12-15 Joseph Zennamo : Adding Track Calorimetry

## larcore v04_25_00

## larbatch v01_20_02

## larutils v1_04_07
