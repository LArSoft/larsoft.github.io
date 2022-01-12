LArSoft v06\_14\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06\_14\_00 Release Notes](#LArSoft-v06_14_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_14\_00](#larsoft-v06_14_00)
    -   [lareventdisplay v06\_02\_00](#lareventdisplay-v06_02_00)
    -   [larexamples v06\_01\_02](#larexamples-v06_01_02)
    -   [larpandora v06\_02\_03](#larpandora-v06_02_03)
    -   [larana v06\_03\_04](#larana-v06_03_04)
    -   [larreco v06\_10\_00](#larreco-v06_10_00)
    -   [larsim v06\_06\_00](#larsim-v06_06_00)
    -   [larevt v06\_06\_00](#larevt-v06_06_00)
    -   [lardata v06\_09\_00](#lardata-v06_09_00)
    -   [larcore v06\_04\_00](#larcore-v06_04_00)
    -   [larsoftobj v1\_08\_01](#larsoftobj-v1_08_01)
    -   [lardataobj v1\_07\_02](#lardataobj-v1_07_02)
    -   [larcoreobj v1\_06\_01](#larcoreobj-v1_06_01)
    -   [larbatch v01\_23\_08](#larbatch-v01_23_08)
    -   [larutils v1\_10\_02](#larutils-v1_10_02)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06\_14\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_14_00/larsoft-v06_14_00.html)
Download instructions for [just larsoftobj v1\_08\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_08_01/larsoftobj-v1_08_01.html)

Purpose
--------------------

-   changes to develop
-   use GENIE 2.12.0
-   stop building for Mavericks
    -   Fermilab drops support for Mavericks on Dec. 1

New features
------------------------------

-   lardata feature/gp\_Issue12367 [\#12367](/redmine/issues/12367 "Necessary Maintenance: Merge namespaces lar::utils and lar::util (Closed)")
-   larcore feature/gp\_Issue14365 [\#14365](/redmine/issues/14365 "Bug: Plane geometry object hosts readout information (Closed)")
-   larreco feature/cerati\_kffit
    -   Kalman Filter track fit module+algorithm
    -   [https://indico.fnal.gov/getFile.py/access?contribId=3&resId=0&materialId=slides&confId=13092](https://indico.fnal.gov/getFile.py/access?contribId=3&resId=0&materialId=slides&confId=13092)
-   larsim remove TriggerAlgoMicroBoone

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|nutools|v2\_06\_03|e10|[NuTools\_Release\_Notes](/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_06_03)|
|genie|v2\_12\_0a|e10:r6|enable NeutronOsc module|
|ifdhc|v2\_0\_1|e10:p2711||

Change List
============================

larsoft v06\_14\_00
------------------------------------------

-   2016-11-10 Lynn Garren : larsoft v06\_14\_00 for larsoft v06\_14\_00
-   2016-11-10 Lynn Garren : update product versions
-   2016-11-10 Lynn Garren : genie v2\_12\_0a and ifdhc v2\_0\_1
-   2016-11-10 Lynn Garren : update dependency database

lareventdisplay v06\_02\_00
----------------------------------------------------------

-   2016-11-10 Lynn Garren : lareventdisplay v06\_02\_00 for larsoft v06\_14\_00
-   2016-11-08 Gianluca Petrillo : Using Geometry service to determine plane signal type
-   2016-10-27 Gianluca Petrillo : Using Geometry service to determine plane signal type
-   2016-10-27 Gianluca Petrillo : Detect the actual TPC when drawing raw data

larexamples v06\_01\_02
--------------------------------------------------

-   2016-11-10 Lynn Garren : larexamples v06\_01\_02 for larsoft v06\_14\_00

larpandora v06\_02\_03
------------------------------------------------

-   2016-11-10 Lynn Garren : larpandora v06\_02\_03 for larsoft v06\_14\_00

larana v06\_03\_04
----------------------------------------

-   2016-11-10 Lynn Garren : larana v06\_03\_04 for larsoft v06\_14\_00
-   2016-11-10 Lynn Garren : remove TriggerAlgoMicroBoone

larreco v06\_10\_00
------------------------------------------

-   2016-11-10 Lynn Garren : larreco v06\_10\_00 for larsoft v06\_14\_00
-   2016-11-10 Lynn Garren : Merge branch ‘feature/cerati\_kffit’ into release/v06\_14\_00
-   2016-11-10 Lynn Garren : use nutools v2\_06\_03
-   2016-11-09 Gianluca Petrillo : Replacing deprecated GeometryCore::PlaneIDs() with GeometryCore::IteratePlaneIDs().
-   2016-11-08 Gianluca Petrillo : Merge branch ‘feature/gp\_RemovePlaneGeoSignalType’ into develop
-   2016-10-27 Gianluca Petrillo : Remove unnecessary destructor.
-   2016-11-05 Giuseppe Cerati : delete trailing whitespaces
-   2016-11-05 Giuseppe Cerati : improved use of fcl file parameters
-   2016-11-03 Giuseppe Cerati : add useRMS option
-   2016-10-31 Gianluca Petrillo : Replaced use of geo::PlaneGeo::SignalType() with Geometry service facility
-   2016-10-27 Gianluca Petrillo : Remove unnecessary destructor.
-   2016-11-02 Giuseppe Cerati : Merge branch ‘develop’ into feature/cerati\_kffit
-   2016-11-02 Giuseppe Cerati : rms test, commented out
-   2016-10-28 Giuseppe Cerati : first commit of kalman filter track fit

larsim v06\_06\_00
----------------------------------------

-   2016-11-10 Lynn Garren : larsim v06\_06\_00 for larsoft v06\_14\_00
-   2016-11-10 Lynn Garren : remove TriggerAlgoMicroBoone
-   2016-11-10 Lynn Garren : using genie v2\_12\_0
-   2016-11-09 Gianluca Petrillo : Replacing deprecated GeometryCore::PlaneIDs() with GeometryCore::IteratePlaneIDs().
-   2016-11-08 Gianluca Petrillo : Fixed typo.

larevt v06\_06\_00
----------------------------------------

-   2016-11-10 Lynn Garren : larevt v06\_06\_00 for larsoft v06\_14\_00
-   2016-11-02 Gianluca Petrillo : Replaced use of deprecated GeometryCore::IntersectionPoint().
-   2016-11-02 Gianluca Petrillo : Cosmetic change (tabs into spaces)

lardata v06\_09\_00
------------------------------------------

-   2016-11-10 Lynn Garren : lardata v06\_09\_00 for larsoft v06\_14\_00
-   2016-11-08 Gianluca Petrillo : Removed lar::utils namespace
-   2016-11-08 Gianluca Petrillo : Fixed typos.
-   2016-11-08 Gianluca Petrillo : Removed RunHistoryServiceStandard.h .

larcore v06\_04\_00
------------------------------------------

-   2016-11-10 Lynn Garren : larcore v06\_04\_00 for larsoft v06\_14\_00
-   2016-11-08 Gianluca Petrillo : Deprecating geo::PlaneGeo::SignalType().
-   2016-11-08 Gianluca Petrillo : Deprecated geo::PlaneGeo::SignalType() .
-   2016-11-08 Gianluca Petrillo : Merge branch ‘feature/gp\_RemovePlaneGeoSignalType’ into develop
-   2016-10-31 Gianluca Petrillo : Added geometry IDs to detector geometry classes (e.g., geo::TPCGeo)
-   2016-10-31 Gianluca Petrillo : Slightly loosened coordinate equality threshold in geometry test.
-   2016-10-31 Gianluca Petrillo : Removed unnecessary destructor.
-   2016-10-31 Gianluca Petrillo : Preparing Geometry service for deprecation of geo::PlaneGeo::SignalType
-   2016-10-21 Gianluca Petrillo : Cosmetic changes

larsoftobj v1\_08\_01
----------------------------------------------

lardataobj v1\_07\_02
----------------------------------------------

larcoreobj v1\_06\_01
----------------------------------------------

larbatch v01\_23\_08
--------------------------------------------

-   2016-11-10 Lynn Garren : larbatch v01\_23\_08 for larsoft v06\_14\_00
-   2016-11-10 Herbert Greenlee : Reduce hang risk due to deleting directory tree.
-   2016-11-10 Herbert Greenlee : Make temporary directory world-readable.

larutils v1\_10\_02
------------------------------------------

-   2016-11-10 Lynn Garren : larutils v1\_10\_02 for larsoft v06\_14\_00
-   2016-11-03 Lynn Garren : allow builds of old releases
