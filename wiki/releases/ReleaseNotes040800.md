LArSoft v04_08_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v04_08_00 Release Notes](#LArSoft-v04_08_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Known issues](#Known-issues)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04_08_00](#larsoft-v04_08_00)
    -   [lareventdisplay v04_04_04](#lareventdisplay-v04_04_04)
    -   [larexamples v04_04_04](#larexamples-v04_04_04)
    -   [larpandora v04_04_04](#larpandora-v04_04_04)
    -   [larana v04_06_02](#larana-v04_06_02)
    -   [larreco v04_05_01](#larreco-v04_05_01)
    -   [larsim v04_07_00](#larsim-v04_07_00)
    -   [larevt v04_06_01](#larevt-v04_06_01)
    -   [lardata v04_06_01](#lardata-v04_06_01)
    -   [larcore v04_07_00](#larcore-v04_07_00)
    -   [larbatch v01_06_02](#larbatch-v01_06_02)
    -   [larutils v1_00_10](#larutils-v1_00_10)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_08_00/larsoft-v04_08_00.html)

Purpose
--------------------

New features
------------------------------

-   integrate feature/brebel_AuxDetSensitive

Bug fixes
------------------------

Known issues
------------------------------

-   [redmine issue 8873](https://cdcvs.fnal.gov/redmine/issues/8873) ChannelMapAlg::NSensitiveAuxDet() is not implemented

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v04_08_00
------------------------------------------

-   2015-05-12 Lynn Garren : larsoft v04_08_00 for larsoft v04_08_00
-   2015-05-12 Lynn Garren : update product versions
-   2015-05-12 Lynn Garren : update dependency database
-   2015-05-08 Lynn Garren : define qualifiers in CMakeLists.txt

lareventdisplay v04_04_04
----------------------------------------------------------

-   2015-05-12 Lynn Garren : lareventdisplay v04_04_04 for larsoft v04_08_00

larexamples v04_04_04
--------------------------------------------------

-   2015-05-12 Lynn Garren : larexamples v04_04_04 for larsoft v04_08_00

larpandora v04_04_04
------------------------------------------------

-   2015-05-12 Lynn Garren : larpandora v04_04_04 for larsoft v04_08_00

larana v04_06_02
----------------------------------------

-   2015-05-12 Lynn Garren : larana v04_06_02 for larsoft v04_08_00

larreco v04_05_01
------------------------------------------

-   2015-05-12 Lynn Garren : larreco v04_05_01 for larsoft v04_08_00
-   2015-05-11 Tingjun Yang : Renormalize cut based on wire pitch.
-   2015-05-11 Tingjun Yang : Fix fcl settings.

larsim v04_07_00
----------------------------------------

-   2015-05-12 Lynn Garren : larsim v04_07_00 for larsoft v04_08_00
-   2015-05-12 Lynn Garren : Merge branch ‘feature/brebel_AuxDetSensitive’ into release/v04_08_00
-   2015-04-24 Brian_Rebel : Changes to account for the use of AuxDetSensitiveGeo. AuxDetReadoutGeometry now first tries to find volumes with Sensitive in their name in the gdml file, and if it does not find any it defaults to looking for AuxDet volumes. AuxDetReadout now has a data member to keep track of which sensitive volume in an AuxDet that it correponds too. The sensitive volume is now part of the name used to describe the sensitive volume to G4. AuxDetSimChannel now knows what sensitive volume it corresponds to as well. Make it possible for old code to still work by providing defaults for the sensitive volume value in the methods that now take that parameter.

larevt v04_06_01
----------------------------------------

-   2015-05-12 Lynn Garren : larevt v04_06_01 for larsoft v04_08_00

lardata v04_06_01
------------------------------------------

-   2015-05-12 Lynn Garren : lardata v04_06_01 for larsoft v04_08_00

larcore v04_07_00
------------------------------------------

-   2015-05-12 Lynn Garren : larcore v04_07_00 for larsoft v04_08_00
-   2015-05-12 Brian_Rebel : fixes to make it all compile
-   2015-05-12 Brian_Rebel : Merge branch ‘develop’ into feature/brebel_AuxDetSensitive
-   2015-05-12 Brian_Rebel : add methods to ChannelMapAlg to find closest aux det and aux det sensitive, call those from Geometry
-   2015-04-24 Brian_Rebel : Add new geometry object, AuxDetSensitiveGeo, to describe the sensitive volume(s) of an auxiliary detector. AuxDetGeo now owns a vector of these new objects. For .gdml files made before this addition, the full AuxDet volume will be copied into a single AuxDetSensitiveGeo for that detector. Add methods to Geometry to access these new volumes. Add methods to GeoObjectSorter to sort them, and to ChannelMapStandardAlg to be able to sort them.

larbatch v01_06_02
--------------------------------------------

-   2015-05-12 Lynn Garren : larbatch v01_06_02 for larsoft v04_08_00
-   2015-05-12 Herbert Greenlee : Add documentary comments about bookkeeping files.

larutils v1_00_10
------------------------------------------

-   2015-05-12 Lynn Garren : larutils v1_00_10 for larsoft v04_08_00
-   2015-05-12 Herbert Greenlee : Revert to using one core on mac.
-   2015-05-12 Herbert Greenlee : Make a local copy of cmake.
-   2015-05-12 Herbert Greenlee : Update number of cores to use in macos.
