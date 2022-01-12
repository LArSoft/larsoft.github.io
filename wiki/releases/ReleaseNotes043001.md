LArSoft v04_30_01 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v04_30_01 Release Notes](#LArSoft-v04_30_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04_30_01](#larsoft-v04_30_01)
    -   [lareventdisplay v04_12_05](#lareventdisplay-v04_12_05)
    -   [larexamples v04_06_05](#larexamples-v04_06_05)
    -   [larpandora v04_08_07](#larpandora-v04_08_07)
    -   [larana v04_16_03](#larana-v04_16_03)
    -   [larreco v04_24_01](#larreco-v04_24_01)
    -   [larsim v04_15_00](#larsim-v04_15_00)
    -   [larevt v04_13_05](#larevt-v04_13_05)
    -   [lardata v04_19_00](#lardata-v04_19_00)
    -   [larcore v04_21_00](#larcore-v04_21_00)
    -   [larbatch v01_20_00](#larbatch-v01_20_00)
    -   [larutils v1_04_04](#larutils-v1_04_04)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_30_01/larsoft-v04_30_01.html)

Purpose
--------------------

-   integrate bug fixes for DUNE MCC 5.0

New features
------------------------------

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v04_30_01
------------------------------------------

-   2015-11-24 Lynn Garren : larsoft v04_30_01 for larsoft v04_30_01
-   2015-11-24 Lynn Garren : update product versions

lareventdisplay v04_12_05
----------------------------------------------------------

larexamples v04_06_05
--------------------------------------------------

larpandora v04_08_07
------------------------------------------------

-   2015-11-24 Lynn Garren : larpandora v04_08_07 for larsoft v04_30_01

larana v04_16_03
----------------------------------------

-   2015-11-24 Lynn Garren : larana v04_16_03 for larsoft v04_30_01

larreco v04_24_01
------------------------------------------

-   2015-11-25 Lynn Garren : Merge branch ‘feature/rsulej_VertexingFixes’ into release/v04_30_01
-   2015-11-25 Mike Wallbank : Fix issue which led to dEdx being nan. If track pitch is large, calculate dEdx separately
-   2015-11-25 Mike Wallbank : Merge branch ‘feature/rsulej_VertexingFixes’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/rsulej_VertexingFixes
-   2015-11-25 Mike Wallbank : Fix bug: tracks and shower vectors are now cleared for each new event
-   2015-11-25 Tingjun Yang : Return if vertexTrack is invalid.
-   2015-11-24 Tingjun Yang : Slight change to the way to remove track-like hits. If the hit is not on any tracks, keep it.
-   2015-11-24 Lynn Garren : larreco v04_24_01 for larsoft v04_30_01
-   2015-11-24 Robert Sulej : one more fix
-   2015-11-24 Robert Sulej : fix interface to trk-shower splitter, cleanup terminal output
-   2015-11-24 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-11-24 Robert Sulej : fixes in track-vtx grammar, todo cleanup terminal outputs
-   2015-11-20 Mike Wallbank : Added a check to project the 3D vertex into each of the views and make sure the correct 2D vertex is selected
-   2015-11-20 Mike Wallbank : Improved dE/dx calculation. Also rewrote some code to simplify the structure and allow ShowerEnergyAlg to be used by two shower methods
-   2015-11-19 Tingjun Yang : Implement shower energy in dog.
-   2015-11-19 Tingjun Yang : Add another function to convert shower charge to energy.

larsim v04_15_00
----------------------------------------

larevt v04_13_05
----------------------------------------

lardata v04_19_00
------------------------------------------

larcore v04_21_00
------------------------------------------

larbatch v01_20_00
--------------------------------------------

-   2015-11-24 Lynn Garren : larbatch v01_20_00 for larsoft v04_30_01

-   2015-11-24 Herbert Greenlee : Add \<runnumber\> xml element.
-   2015-11-24 Herbert Greenlee : Add \<version\> xml element.
-   2015-11-20 Herbert Greenlee : Update to make sure “layer 2” gets generated for dCache files.
-   2015-11-20 Herbert Greenlee : Add -f option for process map file.

larutils v1_04_04
------------------------------------------

-   2015-11-24 Lynn Garren : larutils v1_04_04 for larsoft v04_30_01
-   2015-11-19 Herbert Greenlee : Allow ifdh builds on macos.
