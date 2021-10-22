LArSoft v04\_10\_00 Release Notes[¶](#LArSoft-v04_10_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v04\_10\_00 Release Notes](#LArSoft-v04_10_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04\_10\_00](#larsoft-v04_10_00)
    -   [lareventdisplay v04\_04\_08](#lareventdisplay-v04_04_08)
    -   [larexamples v04\_04\_08](#larexamples-v04_04_08)
    -   [larpandora v04\_04\_08](#larpandora-v04_04_08)
    -   [larana v04\_07\_00](#larana-v04_07_00)
    -   [larreco v04\_07\_01](#larreco-v04_07_01)
    -   [larsim v04\_07\_04](#larsim-v04_07_04)
    -   [larevt v04\_07\_02](#larevt-v04_07_02)
    -   [lardata v04\_07\_02](#lardata-v04_07_02)
    -   [larcore v04\_09\_00](#larcore-v04_09_00)
    -   [larbatch v01\_09\_00](#larbatch-v01_09_00)
    -   [larutils v1\_00\_10](#larutils-v1_00_10)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_10_00/larsoft-v04_10_00.html)


Purpose[¶](#Purpose)
--------------------

Requested updates from DUNE and LArIAT


New features[¶](#New-features)
------------------------------

-   larcore: support for sensitive sub-volumes in an AuxDetGeo
-   larana: switch between hit finders in the optical detector reconstruction based on fhicl parameters


Bug fixes[¶](#Bug-fixes)
------------------------


Updated dependencies[¶](#Updated-dependencies)
----------------------------------------------


Change List[¶](#Change-List)
============================


larsoft v04\_10\_00[¶](#larsoft-v04_10_00)
------------------------------------------

-   2015-06-02 Lynn Garren : larsoft v04\_10\_00 for larsoft v04\_10\_00
-   2015-06-02 Lynn Garren : update product versions
-   2015-06-02 Lynn Garren : releaseDB/base\_dependency\_database for v04\_10\_00


lareventdisplay v04\_04\_08[¶](#lareventdisplay-v04_04_08)
----------------------------------------------------------

-   2015-06-02 Lynn Garren : lareventdisplay v04\_04\_08 for larsoft v04\_10\_00


larexamples v04\_04\_08[¶](#larexamples-v04_04_08)
--------------------------------------------------

-   2015-06-02 Lynn Garren : larexamples v04\_04\_08 for larsoft v04\_10\_00


larpandora v04\_04\_08[¶](#larpandora-v04_04_08)
------------------------------------------------

-   2015-06-02 Lynn Garren : larpandora v04\_04\_08 for larsoft v04\_10\_00


larana v04\_07\_00[¶](#larana-v04_07_00)
----------------------------------------

-   2015-06-02 Lynn Garren : larana v04\_07\_00 for larsoft v04\_10\_00
-   2015-06-01 Gleb Sinev : Add second threshold to the AlgoSiPM algorithm to find the start and the end of a hit with more precision.
-   2015-05-31 Gleb Sinev : Use hit area to calculate number of PEs along with hit height.
-   2015-05-31 Gleb Sinev : Rename AlgoFirstPeak to AlgoSiPM. Pass parameters to AlgoSiPM via a FHiCL file.
-   2015-05-28 Gleb Sinev : Merge branch ‘feature/gvsinev\_LBNEOpFlashFinder’ of ssh://cdcvs.fnal.gov/cvs/projects/larana into feature/gvsinev\_LBNEOpFlashFinder
-   2015-05-28 Gleb Sinev : Merge branch ‘develop’ into feature/gvsinev\_LBNEOpFlashFinder
-   2015-05-28 Gleb Sinev : Modify channel map in OpFlashFinder to work for up to 1000 channels.
-   2015-05-27 Alex Himmel : Merge remote-tracking branch ‘origin/develop’ into feature/gvsinev\_LBNEOpFlashFinder
-   2015-05-27 Gleb Sinev : Use HitFinder parameter instead of module\_type to specify hit finding algorithm in OpFlashFinder.
-   2015-05-27 Gleb Sinev : Add new hit finding algorithm AlgoFirstPeak.
-   2015-05-25 Gleb Sinev : Add support for changing hit finding algorithms via FHiCL parameters.


larreco v04\_07\_01[¶](#larreco-v04_07_01)
------------------------------------------

-   2015-06-02 Lynn Garren : larreco v04\_07\_01 for larsoft v04\_10\_00
-   2015-05-29 Mike Wallbank : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-05-29 Mike Wallbank : wallbank: Updates to BlurredClustering – fix a bug which would discount small clusters, fix a memory leak present when creating debug pdfs, removed all hard-coded class variables


larsim v04\_07\_04[¶](#larsim-v04_07_04)
----------------------------------------

-   2015-06-02 Lynn Garren : larsim v04\_07\_04 for larsoft v04\_10\_00


larevt v04\_07\_02[¶](#larevt-v04_07_02)
----------------------------------------

-   2015-06-02 Lynn Garren : larevt v04\_07\_02 for larsoft v04\_10\_00


lardata v04\_07\_02[¶](#lardata-v04_07_02)
------------------------------------------

-   2015-06-02 Lynn Garren : lardata v04\_07\_02 for larsoft v04\_10\_00


larcore v04\_09\_00[¶](#larcore-v04_09_00)
------------------------------------------

-   2015-06-02 Lynn Garren : larcore v04\_09\_00 for larsoft v04\_10\_00
-   2015-06-02 Lynn Garren : Merge branch ‘feature/brebel\_AuxDetSensitive’ into release/v04\_10\_00
-   2015-05-29 Gianluca Petrillo : Fixed a bug in ThirdPlaneSlope(). Added a test (not sure it’s good enough)
-   2015-05-29 Tingjun Yang : Use WireIDsIntersect to get wire intersection.
-   2015-05-29 Tingjun Yang : Fix a bug in finding the third plane.
-   2015-05-28 Brian\_Rebel : add method to sort the subvolumes in an AuxDetGeo


larbatch v01\_09\_00[¶](#larbatch-v01_09_00)
--------------------------------------------

-   2015-06-02 Lynn Garren : larbatch v01\_09\_00 for larsoft v04\_10\_00
-   2015-06-01 Herbert Greenlee : Teach projectgui.py to periodically update batch job status (i.e. without user having to hit “update” button.
-   2015-06-01 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larbatch into develop
-   2015-06-01 Herbert Greenlee : Add support for dividing jobs by version number in project.py for use with pubs.
-   2015-05-29 Herbert Greenlee : Move output directory emptydir ahead of copying log files.


larutils v1\_00\_10[¶](#larutils-v1_00_10)
------------------------------------------
