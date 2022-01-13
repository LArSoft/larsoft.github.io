LArSoft v06_01_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_01_00/larsoft-v06_01_00.html)

Purpose
--------------------

-   changes to develop since v06_00_01
-   dk2nu v01_04_00
-   nutools v2_01_01
-   add larsoftobj and gallery to the distribution

Known problems
----------------------------------

-   [redmine issue 13329](https://cdcvs.fnal.gov/redmine/issues/13329) - genie and dk2nu root dictionaries
-   [redmine issue 13063](https://cdcvs.fnal.gov/redmine/issues/13063) - memory hoarding
-   [redmine issue 13366](https://cdcvs.fnal.gov/redmine/issues/13366) - event display waveform

Bug fixes
------------------------

-   larsim AuxDetReadout BUG FIX: The stopping momentum vector components were being scaled by CLHEP::cm instead of CLHEP::GeV.

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|nutools|v2_01_01|e10|[NuTools_Release_Notes](https://cdcvs.fnal.gov/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_00_01)|
|dk2nu|v01_04_00|e10:r6||
|genie|v2_10_8c|e10:r6|use a matching root5 release for the root5 build|

Change List
============================

larsoft v06_01_00
------------------------------------------

-   2016-07-28 Lynn Garren : larsoft v06_01_00 for larsoft v06_00_02
-   2016-07-28 Lynn Garren : larsoft v06_01_00 for larsoft v06_00_02
-   2016-07-28 Lynn Garren : update dependency database
-   2016-07-28 Lynn Garren : update build scripts
-   2016-07-20 Gianluca Petrillo : Fix to UpdateToLArSoftObj.sh for OSX

lareventdisplay v06_00_02
----------------------------------------------------------

-   2016-07-28 Lynn Garren : lareventdisplay v06_00_02 for larsoft v06_00_02

larexamples v06_00_01
--------------------------------------------------

-   2016-07-28 Lynn Garren : larexamples v06_00_01 for larsoft v06_00_02
-   2016-07-27 Gianluca Petrillo : Removing unnecessary code

larpandora v06_00_02
------------------------------------------------

-   2016-07-28 Lynn Garren : larpandora v06_00_02 for larsoft v06_00_02

larana v06_00_02
----------------------------------------

-   2016-07-28 Lynn Garren : larana v06_00_02 for larsoft v06_00_02

larreco v06_01_00
------------------------------------------

-   2016-07-28 Lynn Garren : larreco v06_01_00 for larsoft v06_00_02
-   2016-07-28 Robert Sulej : add module to tag em-like clusters, for the moment similar behaviour to the track-shower splitter, so only em-like clusters (tagged) are outputed; will output also track-like clusters but need to prepare for such behaviour in tracking (pma); now only clusters with associated hits are taken at input, will add tagging for single (unclustered) hits asap
-   2016-07-21 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-07-21 Tingjun Yang : Make sure wires exist before calculating intersection point.
-   2016-07-21 Tingjun Yang : Make sure wire is within range.
-   2016-07-21 Mike Wallbank : updates for documentation etc
-   2016-07-20 Aaron Higuera Pichardo : Include track completeness and remove em activity from tarck in the track purity calculation

larsim v06_01_00
----------------------------------------

-   2016-07-28 Lynn Garren : larsim v06_01_00 for larsoft v06_00_02
-   2016-07-27 Brian Rebel : BUG FIX: The stopping momentum vector components were being scaled by CLHEP::cm instead of CLHEP::GeV.
-   2016-07-27 James Sinclair : Fixed bug fit start/stop momentum in DumpMCParticles
-   2016-07-21 Gianluca Petrillo : Updated for LArSoft 6
-   2016-07-06 Gianluca Petrillo : RecompressRawDigits: produces raw::RawDigit collection with different compression

larevt v06_00_01
----------------------------------------

-   2016-07-28 Lynn Garren : larevt v06_00_01 for larsoft v06_00_02

lardata v06_00_01
------------------------------------------

-   2016-07-28 Lynn Garren : lardata v06_00_01 for larsoft v06_00_02
-   nutools v2_01_00

larcore v06_00_00
------------------------------------------

larsimobj v1_04_00
--------------------------------------------

lardataobj v1_04_00
----------------------------------------------

larcoreobj v1_04_00
----------------------------------------------

larbatch v01_23_03
--------------------------------------------

larutils v1_07_00
------------------------------------------

-   2016-07-28 Lynn Garren : larutils v1_07_00 for larsoft v06_00_02
-   2016-07-28 Lynn Garren : larutils v1_07_00 for larsoft v06_00_02
-   2016-07-28 Lynn Garren : also build larsoftobj
-   2016-07-27 Herbert Greenlee : Remove temporary kluges. Temporarily check out from github hgreenlee instead of twongjirad.
-   2016-07-26 Herbert Greenlee : Add build script build_swtrigger.sh.
