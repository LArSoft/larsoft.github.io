LArSoft v06\_01\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06\_01\_00 Release Notes](#LArSoft-v06_01_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [Known problems](#Known-problems)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_01\_00](#larsoft-v06_01_00)
    -   [lareventdisplay v06\_00\_02](#lareventdisplay-v06_00_02)
    -   [larexamples v06\_00\_01](#larexamples-v06_00_01)
    -   [larpandora v06\_00\_02](#larpandora-v06_00_02)
    -   [larana v06\_00\_02](#larana-v06_00_02)
    -   [larreco v06\_01\_00](#larreco-v06_01_00)
    -   [larsim v06\_01\_00](#larsim-v06_01_00)
    -   [larevt v06\_00\_01](#larevt-v06_00_01)
    -   [lardata v06\_00\_01](#lardata-v06_00_01)
    -   [larcore v06\_00\_00](#larcore-v06_00_00)
    -   [larsimobj v1\_04\_00](#larsimobj-v1_04_00)
    -   [lardataobj v1\_04\_00](#lardataobj-v1_04_00)
    -   [larcoreobj v1\_04\_00](#larcoreobj-v1_04_00)
    -   [larbatch v01\_23\_03](#larbatch-v01_23_03)
    -   [larutils v1\_07\_00](#larutils-v1_07_00)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_01_00/larsoft-v06_01_00.html)

Purpose
--------------------

-   changes to develop since v06\_00\_01
-   dk2nu v01\_04\_00
-   nutools v2\_01\_01
-   add larsoftobj and gallery to the distribution

Known problems
----------------------------------

-   [\#13329](/redmine/issues/13329 "Bug: ROOT 6 emits a load of "errors" when running GENIE+Corsika simulation (Closed)") - genie and dk2nu root dictionaries
-   [\#13063](/redmine/issues/13063 "Bug: Memory errors and leaks  (Assigned)") - memory hoarding
-   [\#13366](/redmine/issues/13366 "Bug: Draw waveform as histogram not points (Closed)") - event display waveform

Bug fixes
------------------------

-   larsim AuxDetReadout BUG FIX: The stopping momentum vector components were being scaled by CLHEP::cm instead of CLHEP::GeV.

Updated dependencies
----------------------------------------------

  --------- ------------- ------------ --------------------------------------------------------------------------------------------------
  Product   Version       Qualifiers   Notes
  nutools   v2\_01\_01    e10          [NuTools\_Release\_Notes](/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_00_01)
  dk2nu     v01\_04\_00   e10:r6       
  genie     v2\_10\_8c    e10:r6       use a matching root5 release for the root5 build
  --------- ------------- ------------ --------------------------------------------------------------------------------------------------

Change List
============================

larsoft v06\_01\_00
------------------------------------------

-   2016-07-28 Lynn Garren : larsoft v06\_01\_00 for larsoft v06\_00\_02
-   2016-07-28 Lynn Garren : larsoft v06\_01\_00 for larsoft v06\_00\_02
-   2016-07-28 Lynn Garren : update dependency database
-   2016-07-28 Lynn Garren : update build scripts
-   2016-07-20 Gianluca Petrillo : Fix to UpdateToLArSoftObj.sh for OSX

lareventdisplay v06\_00\_02
----------------------------------------------------------

-   2016-07-28 Lynn Garren : lareventdisplay v06\_00\_02 for larsoft v06\_00\_02

larexamples v06\_00\_01
--------------------------------------------------

-   2016-07-28 Lynn Garren : larexamples v06\_00\_01 for larsoft v06\_00\_02
-   2016-07-27 Gianluca Petrillo : Removing unnecessary code

larpandora v06\_00\_02
------------------------------------------------

-   2016-07-28 Lynn Garren : larpandora v06\_00\_02 for larsoft v06\_00\_02

larana v06\_00\_02
----------------------------------------

-   2016-07-28 Lynn Garren : larana v06\_00\_02 for larsoft v06\_00\_02

larreco v06\_01\_00
------------------------------------------

-   2016-07-28 Lynn Garren : larreco v06\_01\_00 for larsoft v06\_00\_02
-   2016-07-28 Robert Sulej : add module to tag em-like clusters, for the moment similar behaviour to the track-shower splitter, so only em-like clusters (tagged) are outputed; will output also track-like clusters but need to prepare for such behaviour in tracking (pma); now only clusters with associated hits are taken at input, will add tagging for single (unclustered) hits asap
-   2016-07-21 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-07-21 Tingjun Yang : Make sure wires exist before calculating intersection point.
-   2016-07-21 Tingjun Yang : Make sure wire is within range.
-   2016-07-21 Mike Wallbank : updates for documentation etc
-   2016-07-20 Aaron Higuera Pichardo : Include track completeness and remove em activity from tarck in the track purity calculation

larsim v06\_01\_00
----------------------------------------

-   2016-07-28 Lynn Garren : larsim v06\_01\_00 for larsoft v06\_00\_02
-   2016-07-27 Brian Rebel : BUG FIX: The stopping momentum vector components were being scaled by CLHEP::cm instead of CLHEP::GeV.
-   2016-07-27 James Sinclair : Fixed bug fit start/stop momentum in DumpMCParticles
-   2016-07-21 Gianluca Petrillo : Updated for LArSoft 6
-   2016-07-06 Gianluca Petrillo : RecompressRawDigits: produces raw::RawDigit collection with different compression

larevt v06\_00\_01
----------------------------------------

-   2016-07-28 Lynn Garren : larevt v06\_00\_01 for larsoft v06\_00\_02

lardata v06\_00\_01
------------------------------------------

-   2016-07-28 Lynn Garren : lardata v06\_00\_01 for larsoft v06\_00\_02
-   nutools v2\_01\_00

larcore v06\_00\_00
------------------------------------------

larsimobj v1\_04\_00
--------------------------------------------

lardataobj v1\_04\_00
----------------------------------------------

larcoreobj v1\_04\_00
----------------------------------------------

larbatch v01\_23\_03
--------------------------------------------

larutils v1\_07\_00
------------------------------------------

-   2016-07-28 Lynn Garren : larutils v1\_07\_00 for larsoft v06\_00\_02
-   2016-07-28 Lynn Garren : larutils v1\_07\_00 for larsoft v06\_00\_02
-   2016-07-28 Lynn Garren : also build larsoftobj
-   2016-07-27 Herbert Greenlee : Remove temporary kluges. Temporarily check out from github hgreenlee instead of twongjirad.
-   2016-07-26 Herbert Greenlee : Add build script build\_swtrigger.sh.
