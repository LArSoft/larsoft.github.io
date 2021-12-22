LArSoft v06\_20\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06\_20\_00 Release Notes](#LArSoft-v06_20_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_20\_00](#larsoft-v06_20_00)
    -   [lareventdisplay v06\_02\_08](#lareventdisplay-v06_02_08)
    -   [larexamples v06\_01\_09](#larexamples-v06_01_09)
    -   [larpandora v06\_05\_01](#larpandora-v06_05_01)
    -   [larwirecell v06\_00\_06](#larwirecell-v06_00_06)
    -   [larana v06\_03\_12](#larana-v06_03_12)
    -   [larreco v06\_15\_01](#larreco-v06_15_01)
    -   [larsim v06\_10\_03](#larsim-v06_10_03)
    -   [larevt v06\_07\_03](#larevt-v06_07_03)
    -   [lardata v06\_12\_00](#lardata-v06_12_00)
    -   [larcore v06\_05\_01](#larcore-v06_05_01)
    -   [larsoftobj v1\_08\_02](#larsoftobj-v1_08_02)
    -   [lardataobj v1\_08\_00](#lardataobj-v1_08_00)
    -   [larcoreobj v1\_06\_01](#larcoreobj-v1_06_01)
    -   [larbatch v01\_26\_02](#larbatch-v01_26_02)
    -   [larutils v1\_11\_00](#larutils-v1_11_00)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_20\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_20_00/larsoft-v06_20_00.html)\
Download instructions for [just larsoftobj v1\_08\_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_08_02/larsoftobj-v1_08_02.html)

Purpose
--------------------

-   changes to develop
-   approved features

New features
------------------------------

-   larpandoracontent v03\_01\_02
-   lardata feature/gp\_RangeForForRanges
-   nutools v2\_09\_01 (bug fix [\#15071](/redmine/issues/15071 "Bug: Nutools does not recognize nuclear PDG codes (Closed)"))

Bug fixes
------------------------

-   Initial fix for photon backtracker bug [\#15012](/redmine/issues/15012 "Bug: Job crashes if no photon backtracker information is available (Closed)")

Updated dependencies
----------------------------------------------

  ------------------- ------------- ------------ --------------------------------------------------------------------------------------------------
  Product             Version       Qualifiers   Notes
  nutools             v2\_09\_01    e10          [NuTools\_Release\_Notes](/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_09_01)
  larpandoracontent   v03\_01\_02   e10          
  ------------------- ------------- ------------ --------------------------------------------------------------------------------------------------

Change List
============================

larsoft v06\_20\_00
------------------------------------------

-   2017-01-12 Lynn Garren : larsoft v06\_20\_00 for larsoft v06\_20\_00
-   2017-01-12 Lynn Garren : nutools v2\_09\_01
-   2017-01-12 Lynn Garren : update product versions
-   2017-01-12 Lynn Garren : update dependency database
-   2017-01-10 Lynn Garren : mrb v1\_09\_00

lareventdisplay v06\_02\_08
----------------------------------------------------------

-   2017-01-12 Lynn Garren : lareventdisplay v06\_02\_08 for larsoft v06\_20\_00
-   2017-01-06 Tingjun Yang : Fix point color.

larexamples v06\_01\_09
--------------------------------------------------

-   2017-01-12 Lynn Garren : larexamples v06\_01\_09 for larsoft v06\_20\_00

larpandora v06\_05\_01
------------------------------------------------

-   2017-01-12 Lynn Garren : larpandora v06\_05\_01 for larsoft v06\_20\_00

larwirecell v06\_00\_06
--------------------------------------------------

-   2017-01-12 Lynn Garren : larwirecell v06\_00\_06 for larsoft v06\_20\_00
-   2017-01-10 Usher, Tracy L : consistent use of windowSize
-   2017-01-10 Usher, Tracy L : Adopt Herb’s convention to drive the windowSize from an internal fcl parameter as opposed to using the detector properties service.
-   2017-01-10 Usher, Tracy L : remove unused variable to avoid confusion
-   2017-01-09 Usher, Tracy L : Use “NumberTimeSamples” to define the window size for output buffer size and use consistently between doing noise filtering or not.

larana v06\_03\_12
----------------------------------------

-   2017-01-12 Lynn Garren : larana v06\_03\_12 for larsoft v06\_20\_00
-   2017-01-10 Usher, Tracy L : Fix an oversight by having the final copy of hits (after track related removal) do one last check to week out “out of time” hits.

larreco v06\_15\_01
------------------------------------------

-   2017-01-12 Lynn Garren : larreco v06\_15\_01 for larsoft v06\_20\_00

larsim v06\_10\_03
----------------------------------------

-   2017-01-12 Lynn Garren : larsim v06\_10\_03 for larsoft v06\_20\_00
-   2017-01-06 Jason Stock : Bug Fix. Correcting use of FindOpDetBackTrackerRecord to use the OpticalDetector Number as input instead of Optical Channel (Channels do not exist yet at the level OpDetBackTrackerRecords are generated).
-   2017-01-06 Jason Stock : Minor changes to PhotonBackTracker for better practice in error handling.
-   2017-01-05 Jason Stock : Renamed OpHitToEveID to OpHitToEveSDPs (better description of what action is being done). Added function OpHitToEveID for legacy support. Use of this function includes and warning telling the user that it is superceded by OpHitToEveSDPs. Corrected issue with Rebuild stage causing exceptions when the service was active but the file used does not have the OpDetBacktrackerRecords data product. The step now trys to access the OpDetBackTrackerRecords and on failure produces a warning to the user that the PhotonBacktracker will not work for that event. The warning will be issued once per LArSoft invocation. There will be a debug level message for every failed event.
-   2017-01-05 Jason Stock : Correcting Author Information in Photon BackTracker

larevt v06\_07\_03
----------------------------------------

-   2017-01-12 Lynn Garren : larevt v06\_07\_03 for larsoft v06\_20\_00
-   2017-01-05 Joseph Zennamo : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larevt into develop
-   2017-01-05 Joseph Zennamo : Cleaned up some comments and removed unused variables
-   2017-01-05 Joseph Zennamo : What I called a bug before wasn’t a bug, so I modified the filter to replace diphotons which come from a common parent particle with the parent, to be consistent with how pizeros are handled

lardata v06\_12\_00
------------------------------------------

-   2017-01-12 Lynn Garren : lardata v06\_12\_00 for larsoft v06\_20\_00
-   2017-01-12 Lynn Garren : Merge branch ‘feature/gp\_RangeForForRanges’ into release/v06\_20\_00
-   2017-01-12 Lynn Garren : nutools v2\_09\_01
-   2017-01-09 Gianluca Petrillo : Added inline documentation
-   2017-01-09 Gianluca Petrillo : Associated-group functions moved into util namespace
-   2016-12-29 Gianluca Petrillo : Added associated\_groups(), which allows for range for loops

larcore v06\_05\_01
------------------------------------------

larsoftobj v1\_08\_02
----------------------------------------------

lardataobj v1\_08\_00
----------------------------------------------

larcoreobj v1\_06\_01
----------------------------------------------

larbatch v01\_26\_02
--------------------------------------------

-   2017-01-12 Lynn Garren : larbatch v01\_26\_02 for larsoft v06\_20\_00
-   2017-01-10 Herbert Greenlee : Protect against race condition of logdir is the same as outdir.
-   2017-01-09 yuntse : fix validate-in-job when file names exceed 200 characters.

larutils v1\_11\_00
------------------------------------------
