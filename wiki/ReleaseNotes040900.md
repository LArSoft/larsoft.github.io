LArSoft v04\_09\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v04\_09\_00 Release Notes](#LArSoft-v04_09_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04\_09\_00](#larsoft-v04_09_00)
    -   [lareventdisplay v04\_04\_07](#lareventdisplay-v04_04_07)
    -   [larexamples v04\_04\_07](#larexamples-v04_04_07)
    -   [larpandora v04\_04\_07](#larpandora-v04_04_07)
    -   [larana v04\_06\_05](#larana-v04_06_05)
    -   [larreco v04\_07\_00](#larreco-v04_07_00)
    -   [larsim v04\_07\_03](#larsim-v04_07_03)
    -   [larevt v04\_07\_01](#larevt-v04_07_01)
    -   [lardata v04\_07\_01](#lardata-v04_07_01)
    -   [larcore v04\_08\_00](#larcore-v04_08_00)
    -   [larbatch v01\_08\_00](#larbatch-v01_08_00)
    -   [larutils v1\_00\_10](#larutils-v1_00_10)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_09_00/larsoft-v04_09_00.html)

Purpose
--------------------

Integrate Geometry changes

New features
------------------------------

-   larcore feature/brebel\_AuxDetSensitive
    -   non-breaking change needed by LArIAT
-   larcore feature/gp\_FactorizeGeometryService
    -   see [May 18 coordination meeting slides](https://indico.fnal.gov/getFile.py/access?contribId=1&resId=0&materialId=slides&confId=9987)
-   feature/gp\_FactorizeGeometryService provided for uboonecode, lbnecode, argoneutcode, lariatsoft, and lar1ndcode.

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v04\_09\_00
------------------------------------------

-   2015-05-27 Lynn Garren : larsoft v04\_09\_00 for larsoft v04\_09\_00
-   2015-05-27 Lynn Garren : update dependency database
-   2015-05-27 Lynn Garren : update product versions

lareventdisplay v04\_04\_07
----------------------------------------------------------

-   2015-05-27 Lynn Garren : lareventdisplay v04\_04\_07 for larsoft v04\_09\_00

larexamples v04\_04\_07
--------------------------------------------------

-   2015-05-27 Lynn Garren : larexamples v04\_04\_07 for larsoft v04\_09\_00

larpandora v04\_04\_07
------------------------------------------------

-   2015-05-27 Lynn Garren : larpandora v04\_04\_07 for larsoft v04\_09\_00

larana v04\_06\_05
----------------------------------------

-   2015-05-27 Lynn Garren : larana v04\_06\_05 for larsoft v04\_09\_00

larreco v04\_07\_00
------------------------------------------

-   2015-05-27 Lynn Garren : larreco v04\_07\_00 for larsoft v04\_09\_00
-   2015-05-27 Lynn Garren : Merge branch ‘feature/gp\_FactorizeGeometryService’ into release/v04\_09\_00
-   2015-05-16 Gianluca Petrillo : Updated code with new geometry iterator names.

larsim v04\_07\_03
----------------------------------------

-   2015-05-27 Lynn Garren : larsim v04\_07\_03 for larsoft v04\_09\_00

larevt v04\_07\_01
----------------------------------------

-   2015-05-27 Lynn Garren : larevt v04\_07\_01 for larsoft v04\_09\_00

lardata v04\_07\_01
------------------------------------------

-   2015-05-27 Lynn Garren : lardata v04\_07\_01 for larsoft v04\_09\_00
-   2015-05-27 Lynn Garren : adding meta information for geo::TPCID and geo::CryostatID
-   2015-05-11 Gianluca Petrillo : Updated class version for the geometry IDs

larcore v04\_08\_00
------------------------------------------

-   2015-05-27 Lynn Garren : Merge branch ‘release/v04\_09\_00’
-   2015-05-27 Lynn Garren : larcore v04\_08\_00
-   2015-05-27 Gianluca Petrillo : Almost-manual merge of feature/brebel\_AuxDetSensitive into feature/gp\_FactorizeGeometryService
-   2015-05-27 Brian\_Rebel : add in methods for going from AuxDet digit channel to AuxDetGeo objects. The method assumes you have a AuxDetDigit to get the name of the detector and the channel of the digit
-   2015-05-27 Lynn Garren : larcore v04\_08\_00 for larsoft v04\_09\_00
-   2015-05-27 Gianluca Petrillo : Fixed the last rebase with develop branch
-   2015-05-26 Gianluca Petrillo : Rewritten the plane pitch test (now supports 2-plane geometries)
-   2015-05-26 Gianluca Petrillo : Simplified the math of the WireIntersection geometry test. Unfortunately both this and the previous versions are buggy and fail on detectors where wire number does not always increase with z. Fix pending.
-   2015-05-26 Gianluca Petrillo : Added a Boost-specific test environment able to read FHiCL files from the command line
-   2015-05-26 Gianluca Petrillo : Fix to doxygen documentation
-   2015-05-21 Gianluca Petrillo : Fixed legacy code (“an experiment with \`bo\` in the name” is not a pattern specific enough to match only Bo)
-   2015-05-21 Gianluca Petrillo : Cutting a corner in NearestWireID()
-   2015-05-21 Gianluca Petrillo : Allow the non-Boost unit tests to read a configuration file.
-   2015-05-21 Gianluca Petrillo : Rewritten wire pitch test.
-   2015-05-21 Gianluca Petrillo : Added wire pitch computation to WireGeo
-   2015-05-20 Gianluca Petrillo : Prevent copies of GeometryCore
-   2015-05-16 Gianluca Petrillo : Breaking change: renamed geometry iterator, adding an explicit “ID” in the name
-   2015-05-15 Gianluca Petrillo : Turned the new sensitive auxiliary detector methods in ChannelMapAlg into virtual. Removed unimplemented method geo::ChannelMapAlg::NSensitiveAuxDet().
-   2015-05-15 Gianluca Petrillo : Cosmetic change
-   2015-05-15 Gianluca Petrillo : Introduced a different type definition for each element of the geometry ID (ready to have them of different types). Updated tests accordingly, and factorized into a module the iterator unit test.
-   2015-05-14 Gianluca Petrillo : Geometry loop test renamed from GeometryIteratorTest to GeometryIteratorLoopTest
-   2015-05-13 Gianluca Petrillo : Fixing the rebase of the feature branch (I)
-   2015-05-13 Gianluca Petrillo : Extended the geometry interface to accept detector element IDs wherever indices were accepted. The new one becomes the recommended interface, the other being deprecated.
-   2015-05-13 Gianluca Petrillo : Added methods to get maximum number of TPCs, planes and wires in each element of the detector
-   2015-05-13 Gianluca Petrillo : Added std::string conversion to geometry ID types, explicitly needed when inserting IDs into a cet::exception message stream
-   2015-05-11 Gianluca Petrillo : Geometry test fixture made more protected. Added support for default configuration of the test in the fixture.
-   2015-05-11 Gianluca Petrillo : Added missing include directive in a test
-   2015-05-11 Gianluca Petrillo : Added header inclusion protection in test headers
-   2015-05-11 Gianluca Petrillo : Removed empty constructors and destructors from channel mapping
-   2015-05-08 Gianluca Petrillo : - redesigned geometry iterators - added unit tests for the iterators - created facilities for writing art-independent unit tests that are geometry-aware
-   2015-05-07 Gianluca Petrillo : Test commit
-   2015-05-06 Gianluca Petrillo : Redistributed constantness in geo::CryostatGeo
-   2015-05-06 Gianluca Petrillo : Fixed a bug in OpDetGeo::CosThetaFromNormal(); redistributed constantness; replaced pow(x,2) and pow(x,0.5)
-   2015-05-06 Gianluca Petrillo : Sorted the declaration of geo::CryostatGeo and added a little documentation
-   2015-05-06 Gianluca Petrillo : Fixed memory leak in optical detector geometry
-   2015-05-06 Gianluca Petrillo : Geometry ID comparisons moved out of class
-   2015-05-06 Gianluca Petrillo : Extended GeometryCore cryostat interface for use with CryostatID
-   2015-05-05 Gianluca Petrillo : Unit test for geometry (currently a copy of the old module-driven one)
-   2015-05-05 Gianluca Petrillo : Removing framework references that I had missed from geometry
-   2015-05-01 Gianluca Petrillo : geo::WireID now derives from geo::PlaneID, that derives from geo::TPCID, that derives from the new geo::CryostatID. And, amazingly, ROOT I/O seems not to care.
-   2015-05-01 Gianluca Petrillo : Experimental new implementation of geometry iterators: cryostat iterator
-   2015-04-30 Gianluca Petrillo : Added geo::CryostatID type. New model for cryostat iterators.
-   2015-04-30 Gianluca Petrillo : Written most of missing documentation on GeometryCore, sorted the methods in the header.
-   2015-04-30 Gianluca Petrillo : Removed TMath from GeometryCore.cxx, using cmath instead
-   2015-04-29 Gianluca Petrillo : Updated documentation.
-   2015-04-29 Gianluca Petrillo : Factorized GeometryCore service provider and Geometry art service.
-   2015-04-27 Gianluca Petrillo : Source code alignment: replaced tabulation characters with 8 spaces
-   2015-04-27 Gianluca Petrillo : Renamed Geometry service files into GeometryCore. Hoping this will make future merges easier.

larbatch v01\_08\_00
--------------------------------------------

larutils v1\_00\_10
------------------------------------------
