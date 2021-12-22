LArSoft v06\_45\_01 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06\_45\_01 Release Notes](#LArSoft-v06_45_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_45\_01](#larsoft-v06_45_01)
    -   [lareventdisplay v06\_10\_02](#lareventdisplay-v06_10_02)
    -   [larexamples v06\_05\_03](#larexamples-v06_05_03)
    -   [larpandora v06\_15\_03](#larpandora-v06_15_03)
    -   [larwirecell v06\_05\_07](#larwirecell-v06_05_07)
    -   [larana v06\_08\_03](#larana-v06_08_03)
    -   [larreco v06\_36\_01](#larreco-v06_36_01)
    -   [larsim v06\_28\_01](#larsim-v06_28_01)
    -   [larevt v06\_15\_03](#larevt-v06_15_03)
    -   [lardata v06\_25\_02](#lardata-v06_25_02)
    -   [larcore v06\_13\_03](#larcore-v06_13_03)
    -   [larpandoracontent v03\_07\_03](#larpandoracontent-v03_07_03)
    -   [larsoftobj v1\_24\_00](#larsoftobj-v1_24_00)
    -   [lardataobj v1\_18\_00](#lardataobj-v1_18_00)
    -   [larcorealg v1\_06\_00](#larcorealg-v1_06_00)
    -   [larcoreobj v1\_15\_01](#larcoreobj-v1_15_01)
    -   [larbatch v01\_32\_03](#larbatch-v01_32_03)
    -   [larutils v1\_16\_01](#larutils-v1_16_01)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_45\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_45_01/larsoft-v06_45_01.html)\
Download instructions for [just larsoftobj v1\_24\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_24_00/larsoftobj-v1_24_00.html)

Purpose
--------------------

-   changes in develop
-   minor update to pandora

New features
------------------------------

-   pandora v03\_04\_01
-   larpandoracontent v03\_07\_03

Bug fixes
------------------------

-   [\#17280](/redmine/issues/17280 "Bug: PMA crashes on argoneut event (Closed)") fixed

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v06\_45\_01
------------------------------------------

-   2017-08-01 Lynn Garren : larsoft v06\_45\_01 for larsoft v06\_45\_01
-   2017-08-01 Lynn Garren : the pandora build needs cmake v3\_9\_0
-   2017-08-01 Lynn Garren : update product versions
-   2017-08-01 Lynn Garren : update dependency database

lareventdisplay v06\_10\_02
----------------------------------------------------------

-   2017-08-01 Lynn Garren : lareventdisplay v06\_10\_02 for larsoft v06\_45\_01

larexamples v06\_05\_03
--------------------------------------------------

-   2017-08-01 Lynn Garren : larexamples v06\_05\_03 for larsoft v06\_45\_01

larpandora v06\_15\_03
------------------------------------------------

-   2017-08-01 Lynn Garren : larpandora v06\_15\_03 for larsoft v06\_45\_01

larwirecell v06\_05\_07
--------------------------------------------------

-   2017-08-01 Lynn Garren : larwirecell v06\_05\_07 for larsoft v06\_45\_01

larana v06\_08\_03
----------------------------------------

-   2017-08-01 Lynn Garren : larana v06\_08\_03 for larsoft v06\_45\_01

larreco v06\_36\_01
------------------------------------------

-   2017-08-01 Lynn Garren : larreco v06\_36\_01 for larsoft v06\_45\_01
-   2017-08-01 Robert Sulej : fix missing configuration parameter for tables using DataProviderAlg
-   2017-08-01 Robert Sulej : add option to correct or not for the electron lifetime
-   2017-08-01 Robert Sulej : remove old named file
-   2017-08-01 Robert Sulej : add configurations for 2 to 4 out nets
-   2017-08-01 Robert Sulej : enable dumping only of raw ADC only, for real data events
-   2017-08-01 Robert Sulej : change name of 3-out and add 2-out module
-   2017-07-28 Robert Sulej : add module for 2-out cnn model, rename module for 3-out networks
-   2017-07-27 Robert Sulej : fix hardcoded number of planes

larsim v06\_28\_01
----------------------------------------

-   2017-08-01 Lynn Garren : larsim v06\_28\_01 for larsoft v06\_45\_01
-   2017-07-31 Jason Stock : Fixing tabs in Backtracker\_service. Only fixing tabs. No functional changes.

larevt v06\_15\_03
----------------------------------------

-   2017-08-01 Lynn Garren : larevt v06\_15\_03 for larsoft v06\_45\_01

lardata v06\_25\_02
------------------------------------------

-   2017-08-01 Lynn Garren : lardata v06\_25\_02 for larsoft v06\_45\_01
-   2017-07-27 Lynn Garren : remove code moved to lardataobj

larcore v06\_13\_03
------------------------------------------

-   2017-08-01 Lynn Garren : larcore v06\_13\_03 for larsoft v06\_45\_01
-   2017-07-27 Lynn Garren : remove old tests moved to larcoreobj

larpandoracontent v03\_07\_03
--------------------------------------------------------------

-   2017-08-01 Lynn Garren : larpandoracontent v03\_07\_03 for larsoft v06\_45\_01
-   2017-08-01 Lynn Garren : v03\_07\_03
-   2017-07-18 John Marshall : Merge branch ‘updates’
-   2017-07-18 John Marshall : Update change log.
-   2017-07-07 John Marshall : Merge branch ‘updates’
-   2017-07-07 John Marshall : Pass CODECOV\_TOKEN to running docker image.
-   2017-07-06 John Marshall : Merge branch ‘updates’
-   2017-07-06 John Marshall : Hide COVERITY\_TARGET\_EMAIL.
-   2017-07-06 Multi-algorithm pattern recognition : Merge pull request \#16 from jaw86/CodeCov
-   2017-07-06 Jack Anthony : Added login step for private docker repo.
-   2017-07-06 Jack Anthony : Moved codecov build to cron job.
-   2017-07-06 Jack Anthony : Added codecov badge and build step.
-   2017-07-03 John Marshall : Merge branch ‘updates’
-   2017-07-03 John Marshall : Address issues highlighted by coverity.
-   2017-07-03 Multi-algorithm pattern recognition : Merge pull request \#15 from jaw86/CoverityFixes
-   2017-07-03 Jack Anthony : SvmVertexSelectionAlgorithm Coverity recommendations: removed logically-dead code, check return value of PandoraContentApi::GetList.
-   2017-06-29 John Marshall : Merge branch ‘updates’
-   2017-06-29 John Marshall : Added Coverity build to .travis.yml file.
-   2017-06-29 John Marshall : Merge branch ‘coverity’
-   2017-06-29 John Marshall : Add Coverity Scan build status badge.
-   2017-06-29 John Marshall : Merge branch ‘gplv3’
-   2017-06-29 John Marshall : Select license: GPLv3.

larsoftobj v1\_24\_00
----------------------------------------------

-   2017-08-01 Lynn Garren : larsoftobj v1\_24\_00 for larsoft v06\_45\_01
-   2017-08-01 Lynn Garren : update product versions

lardataobj v1\_18\_00
----------------------------------------------

larcorealg v1\_06\_00
----------------------------------------------

-   2017-08-01 Lynn Garren : larcorealg v1\_06\_00 for larsoft v06\_45\_01
-   2017-07-31 Gianluca Petrillo : Making a test script compatible with Ubuntu 16 environment.
-   2017-07-31 Gianluca Petrillo : Removed disabled code.
-   2017-07-26 Gianluca Petrillo : Merge branch ‘feature/gp\_Issue9818’ into develop
-   2017-07-26 Gianluca Petrillo : New algorithms to partition cryostat into drift volumes.
-   2017-07-26 Gianluca Petrillo : Added geo::TPCGeo::LastPlane() method.
-   2017-07-26 Gianluca Petrillo : Added documentation to simplegeo.h.
-   2017-07-26 Gianluca Petrillo : Moved rectangle object from geo::Plane to simple\_geo namespace.
-   2017-07-26 Gianluca Petrillo : Extended geo::BoxBoundedGeo interface.
-   2017-07-26 Gianluca Petrillo : “Inlined” a free function in a header
-   2017-07-14 Gianluca Petrillo : Added string conversions for 3D vectors and for arrays.

larcoreobj v1\_15\_01
----------------------------------------------

larbatch v01\_32\_03
--------------------------------------------

larutils v1\_16\_01
------------------------------------------

-   2017-08-01 Lynn Garren : larutils v1\_16\_01 for larsoft v06\_45\_01
-   2017-07-28 Herbert Greenlee : Add ability to specify nondefault qualifier.
-   2017-07-26 Tingjun Yang : Use larsoft release on fermiapp.
-   2017-07-26 Tingjun Yang : Use larsoft release on fermiapp.
-   2017-07-26 Tingjun Yang : Use larsoft release on fermiapp.
