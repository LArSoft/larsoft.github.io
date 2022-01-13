LArSoft v06_14_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06_14_00 Release Notes](#LArSoft-v06_14_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06_14_00](#larsoft-v06_14_00)
    -   [lareventdisplay v06_02_00](#lareventdisplay-v06_02_00)
    -   [larexamples v06_01_02](#larexamples-v06_01_02)
    -   [larpandora v06_02_03](#larpandora-v06_02_03)
    -   [larana v06_03_04](#larana-v06_03_04)
    -   [larreco v06_10_00](#larreco-v06_10_00)
    -   [larsim v06_06_00](#larsim-v06_06_00)
    -   [larevt v06_06_00](#larevt-v06_06_00)
    -   [lardata v06_09_00](#lardata-v06_09_00)
    -   [larcore v06_04_00](#larcore-v06_04_00)
    -   [larsoftobj v1_08_01](#larsoftobj-v1_08_01)
    -   [lardataobj v1_07_02](#lardataobj-v1_07_02)
    -   [larcoreobj v1_06_01](#larcoreobj-v1_06_01)
    -   [larbatch v01_23_08](#larbatch-v01_23_08)
    -   [larutils v1_10_02](#larutils-v1_10_02)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06_14_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_14_00/larsoft-v06_14_00.html)
Download instructions for [just larsoftobj v1_08_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_08_01/larsoftobj-v1_08_01.html)

Purpose
--------------------

-   changes to develop
-   use GENIE 2.12.0
-   stop building for Mavericks
    -   Fermilab drops support for Mavericks on Dec. 1

New features
------------------------------

-   lardata feature/gp_Issue12367 [redmine issue 12367](https://cdcvs.fnal.gov/redmine/issues/12367)
-   larcore feature/gp_Issue14365 [redmine issue 14365](https://cdcvs.fnal.gov/redmine/issues/14365)
-   larreco feature/cerati_kffit
    -   Kalman Filter track fit module+algorithm
    -   [https://indico.fnal.gov/getFile.py/access?contribId=3&resId=0&materialId=slides&confId=13092](https://indico.fnal.gov/getFile.py/access?contribId=3&resId=0&materialId=slides&confId=13092)
-   larsim remove TriggerAlgoMicroBoone

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|nutools|v2_06_03|e10|[NuTools_Release_Notes](https://cdcvs.fnal.gov/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_06_03)|
|genie|v2_12_0a|e10:r6|enable NeutronOsc module|
|ifdhc|v2_0_1|e10:p2711||

Change List
============================

larsoft v06_14_00
------------------------------------------

-   2016-11-10 Lynn Garren : larsoft v06_14_00 for larsoft v06_14_00
-   2016-11-10 Lynn Garren : update product versions
-   2016-11-10 Lynn Garren : genie v2_12_0a and ifdhc v2_0_1
-   2016-11-10 Lynn Garren : update dependency database

lareventdisplay v06_02_00
----------------------------------------------------------

-   2016-11-10 Lynn Garren : lareventdisplay v06_02_00 for larsoft v06_14_00
-   2016-11-08 Gianluca Petrillo : Using Geometry service to determine plane signal type
-   2016-10-27 Gianluca Petrillo : Using Geometry service to determine plane signal type
-   2016-10-27 Gianluca Petrillo : Detect the actual TPC when drawing raw data

larexamples v06_01_02
--------------------------------------------------

-   2016-11-10 Lynn Garren : larexamples v06_01_02 for larsoft v06_14_00

larpandora v06_02_03
------------------------------------------------

-   2016-11-10 Lynn Garren : larpandora v06_02_03 for larsoft v06_14_00

larana v06_03_04
----------------------------------------

-   2016-11-10 Lynn Garren : larana v06_03_04 for larsoft v06_14_00
-   2016-11-10 Lynn Garren : remove TriggerAlgoMicroBoone

larreco v06_10_00
------------------------------------------

-   2016-11-10 Lynn Garren : larreco v06_10_00 for larsoft v06_14_00
-   2016-11-10 Lynn Garren : Merge branch ‘feature/cerati_kffit’ into release/v06_14_00
-   2016-11-10 Lynn Garren : use nutools v2_06_03
-   2016-11-09 Gianluca Petrillo : Replacing deprecated GeometryCore::PlaneIDs() with GeometryCore::IteratePlaneIDs().
-   2016-11-08 Gianluca Petrillo : Merge branch ‘feature/gp_RemovePlaneGeoSignalType’ into develop
-   2016-10-27 Gianluca Petrillo : Remove unnecessary destructor.
-   2016-11-05 Giuseppe Cerati : delete trailing whitespaces
-   2016-11-05 Giuseppe Cerati : improved use of fcl file parameters
-   2016-11-03 Giuseppe Cerati : add useRMS option
-   2016-10-31 Gianluca Petrillo : Replaced use of geo::PlaneGeo::SignalType() with Geometry service facility
-   2016-10-27 Gianluca Petrillo : Remove unnecessary destructor.
-   2016-11-02 Giuseppe Cerati : Merge branch ‘develop’ into feature/cerati_kffit
-   2016-11-02 Giuseppe Cerati : rms test, commented out
-   2016-10-28 Giuseppe Cerati : first commit of kalman filter track fit

larsim v06_06_00
----------------------------------------

-   2016-11-10 Lynn Garren : larsim v06_06_00 for larsoft v06_14_00
-   2016-11-10 Lynn Garren : remove TriggerAlgoMicroBoone
-   2016-11-10 Lynn Garren : using genie v2_12_0
-   2016-11-09 Gianluca Petrillo : Replacing deprecated GeometryCore::PlaneIDs() with GeometryCore::IteratePlaneIDs().
-   2016-11-08 Gianluca Petrillo : Fixed typo.

larevt v06_06_00
----------------------------------------

-   2016-11-10 Lynn Garren : larevt v06_06_00 for larsoft v06_14_00
-   2016-11-02 Gianluca Petrillo : Replaced use of deprecated GeometryCore::IntersectionPoint().
-   2016-11-02 Gianluca Petrillo : Cosmetic change (tabs into spaces)

lardata v06_09_00
------------------------------------------

-   2016-11-10 Lynn Garren : lardata v06_09_00 for larsoft v06_14_00
-   2016-11-08 Gianluca Petrillo : Removed lar::utils namespace
-   2016-11-08 Gianluca Petrillo : Fixed typos.
-   2016-11-08 Gianluca Petrillo : Removed RunHistoryServiceStandard.h .

larcore v06_04_00
------------------------------------------

-   2016-11-10 Lynn Garren : larcore v06_04_00 for larsoft v06_14_00
-   2016-11-08 Gianluca Petrillo : Deprecating geo::PlaneGeo::SignalType().
-   2016-11-08 Gianluca Petrillo : Deprecated geo::PlaneGeo::SignalType() .
-   2016-11-08 Gianluca Petrillo : Merge branch ‘feature/gp_RemovePlaneGeoSignalType’ into develop
-   2016-10-31 Gianluca Petrillo : Added geometry IDs to detector geometry classes (e.g., geo::TPCGeo)
-   2016-10-31 Gianluca Petrillo : Slightly loosened coordinate equality threshold in geometry test.
-   2016-10-31 Gianluca Petrillo : Removed unnecessary destructor.
-   2016-10-31 Gianluca Petrillo : Preparing Geometry service for deprecation of geo::PlaneGeo::SignalType
-   2016-10-21 Gianluca Petrillo : Cosmetic changes

larsoftobj v1_08_01
----------------------------------------------

lardataobj v1_07_02
----------------------------------------------

larcoreobj v1_06_01
----------------------------------------------

larbatch v01_23_08
--------------------------------------------

-   2016-11-10 Lynn Garren : larbatch v01_23_08 for larsoft v06_14_00
-   2016-11-10 Herbert Greenlee : Reduce hang risk due to deleting directory tree.
-   2016-11-10 Herbert Greenlee : Make temporary directory world-readable.

larutils v1_10_02
------------------------------------------

-   2016-11-10 Lynn Garren : larutils v1_10_02 for larsoft v06_14_00
-   2016-11-03 Lynn Garren : allow builds of old releases
