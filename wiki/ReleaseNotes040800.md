LArSoft v04\_08\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v04\_08\_00 Release Notes](#LArSoft-v04_08_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Known issues](#Known-issues)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04\_08\_00](#larsoft-v04_08_00)
    -   [lareventdisplay v04\_04\_04](#lareventdisplay-v04_04_04)
    -   [larexamples v04\_04\_04](#larexamples-v04_04_04)
    -   [larpandora v04\_04\_04](#larpandora-v04_04_04)
    -   [larana v04\_06\_02](#larana-v04_06_02)
    -   [larreco v04\_05\_01](#larreco-v04_05_01)
    -   [larsim v04\_07\_00](#larsim-v04_07_00)
    -   [larevt v04\_06\_01](#larevt-v04_06_01)
    -   [lardata v04\_06\_01](#lardata-v04_06_01)
    -   [larcore v04\_07\_00](#larcore-v04_07_00)
    -   [larbatch v01\_06\_02](#larbatch-v01_06_02)
    -   [larutils v1\_00\_10](#larutils-v1_00_10)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_08_00/larsoft-v04_08_00.html)

Purpose
--------------------

New features
------------------------------

-   integrate feature/brebel\_AuxDetSensitive

Bug fixes
------------------------

Known issues
------------------------------

-   [\#8873](/redmine/issues/8873 "Bug: ChannelMapAlg::NSensitiveAuxDet() has no implementation (Closed)") ChannelMapAlg::NSensitiveAuxDet() is not implemented

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v04\_08\_00
------------------------------------------

-   2015-05-12 Lynn Garren : larsoft v04\_08\_00 for larsoft v04\_08\_00
-   2015-05-12 Lynn Garren : update product versions
-   2015-05-12 Lynn Garren : update dependency database
-   2015-05-08 Lynn Garren : define qualifiers in CMakeLists.txt

lareventdisplay v04\_04\_04
----------------------------------------------------------

-   2015-05-12 Lynn Garren : lareventdisplay v04\_04\_04 for larsoft v04\_08\_00

larexamples v04\_04\_04
--------------------------------------------------

-   2015-05-12 Lynn Garren : larexamples v04\_04\_04 for larsoft v04\_08\_00

larpandora v04\_04\_04
------------------------------------------------

-   2015-05-12 Lynn Garren : larpandora v04\_04\_04 for larsoft v04\_08\_00

larana v04\_06\_02
----------------------------------------

-   2015-05-12 Lynn Garren : larana v04\_06\_02 for larsoft v04\_08\_00

larreco v04\_05\_01
------------------------------------------

-   2015-05-12 Lynn Garren : larreco v04\_05\_01 for larsoft v04\_08\_00
-   2015-05-11 Tingjun Yang : Renormalize cut based on wire pitch.
-   2015-05-11 Tingjun Yang : Fix fcl settings.

larsim v04\_07\_00
----------------------------------------

-   2015-05-12 Lynn Garren : larsim v04\_07\_00 for larsoft v04\_08\_00
-   2015-05-12 Lynn Garren : Merge branch ‘feature/brebel\_AuxDetSensitive’ into release/v04\_08\_00
-   2015-04-24 Brian\_Rebel : Changes to account for the use of AuxDetSensitiveGeo. AuxDetReadoutGeometry now first tries to find volumes with Sensitive in their name in the gdml file, and if it does not find any it defaults to looking for AuxDet volumes. AuxDetReadout now has a data member to keep track of which sensitive volume in an AuxDet that it correponds too. The sensitive volume is now part of the name used to describe the sensitive volume to G4. AuxDetSimChannel now knows what sensitive volume it corresponds to as well. Make it possible for old code to still work by providing defaults for the sensitive volume value in the methods that now take that parameter.

larevt v04\_06\_01
----------------------------------------

-   2015-05-12 Lynn Garren : larevt v04\_06\_01 for larsoft v04\_08\_00

lardata v04\_06\_01
------------------------------------------

-   2015-05-12 Lynn Garren : lardata v04\_06\_01 for larsoft v04\_08\_00

larcore v04\_07\_00
------------------------------------------

-   2015-05-12 Lynn Garren : larcore v04\_07\_00 for larsoft v04\_08\_00
-   2015-05-12 Brian\_Rebel : fixes to make it all compile
-   2015-05-12 Brian\_Rebel : Merge branch ‘develop’ into feature/brebel\_AuxDetSensitive
-   2015-05-12 Brian\_Rebel : add methods to ChannelMapAlg to find closest aux det and aux det sensitive, call those from Geometry
-   2015-04-24 Brian\_Rebel : Add new geometry object, AuxDetSensitiveGeo, to describe the sensitive volume(s) of an auxiliary detector. AuxDetGeo now owns a vector of these new objects. For .gdml files made before this addition, the full AuxDet volume will be copied into a single AuxDetSensitiveGeo for that detector. Add methods to Geometry to access these new volumes. Add methods to GeoObjectSorter to sort them, and to ChannelMapStandardAlg to be able to sort them.

larbatch v01\_06\_02
--------------------------------------------

-   2015-05-12 Lynn Garren : larbatch v01\_06\_02 for larsoft v04\_08\_00
-   2015-05-12 Herbert Greenlee : Add documentary comments about bookkeeping files.

larutils v1\_00\_10
------------------------------------------

-   2015-05-12 Lynn Garren : larutils v1\_00\_10 for larsoft v04\_08\_00
-   2015-05-12 Herbert Greenlee : Revert to using one core on mac.
-   2015-05-12 Herbert Greenlee : Make a local copy of cmake.
-   2015-05-12 Herbert Greenlee : Update number of cores to use in macos.
