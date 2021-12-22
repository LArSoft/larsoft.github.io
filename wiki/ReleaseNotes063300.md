LArSoft v06\_33\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06\_33\_00 Release Notes](#LArSoft-v06_33_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_33\_00](#larsoft-v06_33_00)
    -   [lareventdisplay v06\_05\_01](#lareventdisplay-v06_05_01)
    -   [larexamples v06\_03\_01](#larexamples-v06_03_01)
    -   [larpandora v06\_10\_01](#larpandora-v06_10_01)
    -   [larwirecell v06\_04\_01](#larwirecell-v06_04_01)
    -   [larana v06\_05\_01](#larana-v06_05_01)
    -   [larreco v06\_25\_01](#larreco-v06_25_01)
    -   [larsim v06\_19\_00](#larsim-v06_19_00)
    -   [larevt v06\_12\_00](#larevt-v06_12_00)
    -   [lardata v06\_20\_00](#lardata-v06_20_00)
    -   [larcore v06\_09\_00](#larcore-v06_09_00)
    -   [larpandoracontent v03\_04\_00](#larpandoracontent-v03_04_00)
    -   [larsoftobj v1\_19\_00](#larsoftobj-v1_19_00)
    -   [lardataobj v1\_15\_01](#lardataobj-v1_15_01)
    -   [larcoreobj v1\_13\_00](#larcoreobj-v1_13_00)
    -   [larbatch v01\_30\_01](#larbatch-v01_30_01)
    -   [larutils v1\_12\_04](#larutils-v1_12_04)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_33\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_33_00/larsoft-v06_33_00.html)\
Download instructions for [just larsoftobj v1\_19\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_19_00/larsoftobj-v1_19_00.html)

Purpose
--------------------

-   changes to develop since v06\_32\_00
-   approved features

New features
------------------------------

-   icarus geometry view support
    -   feature/wketchum\_ViewAssignment for larcore, larcoreobj, lardata and larevt
-   resolution of [\#16129](/redmine/issues/16129 "Feature: Can't find nearest wire for position (Closed)")
    -   feature/gp\_Issue16129 branch of larcore and larsim

Bug fixes
------------------------

-   bug fix [\#16229](/redmine/issues/16229 "Bug: LArBatch can't find IFDH at some OSG sites (Closed)") in larbatch

Updated dependencies
----------------------------------------------

  --------- ------------- ------------ --------------------
  Product   Version       Qualifiers   Notes
  range     v3\_0\_2\_4                new stable release
  --------- ------------- ------------ --------------------

Change List
============================

larsoft v06\_33\_00
------------------------------------------

-   2017-04-19 Lynn Garren : larsoft v06\_33\_00 for larsoft v06\_33\_00
-   2017-04-19 Lynn Garren : add comment
-   2017-04-19 Lynn Garren : update dependency database
-   2017-04-19 Lynn Garren : drop product\_list
-   2017-04-19 Lynn Garren : update product versions
-   2017-04-17 Lynn Garren : add Ubuntu 16 and Sierra

lareventdisplay v06\_05\_01
----------------------------------------------------------

-   2017-04-19 Lynn Garren : lareventdisplay v06\_05\_01 for larsoft v06\_33\_00

larexamples v06\_03\_01
--------------------------------------------------

-   2017-04-19 Lynn Garren : larexamples v06\_03\_01 for larsoft v06\_33\_00

larpandora v06\_10\_01
------------------------------------------------

-   2017-04-19 Lynn Garren : larpandora v06\_10\_01 for larsoft v06\_33\_00

larwirecell v06\_04\_01
--------------------------------------------------

-   2017-04-19 Lynn Garren : larwirecell v06\_04\_01 for larsoft v06\_33\_00

larana v06\_05\_01
----------------------------------------

-   2017-04-19 Lynn Garren : larana v06\_05\_01 for larsoft v06\_33\_00

larreco v06\_25\_01
------------------------------------------

-   2017-04-19 Lynn Garren : larreco v06\_25\_01 for larsoft v06\_33\_00
-   2017-04-15 Robert Sulej : check if keras api version matches what is expected in larsoft interface
-   2017-04-15 Robert Sulej : update example script to keras 2 api

larsim v06\_19\_00
----------------------------------------

-   2017-04-19 Lynn Garren : larsim v06\_19\_00 for larsoft v06\_33\_00
-   2017-04-17 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp\_Issue16129
-   2017-04-14 Thomas Junk : Sort the vector of simchannel pointers by channel number, and use a log2 search to find the simchannels in it in order to speed up FindSimChannel
-   2017-04-14 Gianluca Petrillo : Modified MCTruth output about particle origin.
-   2017-04-14 Gianluca Petrillo : Fixed bug (issue [\#16208](/redmine/issues/16208 "Bug: DumpMCTruth module crashes with a segmentation fault (Closed)")).
-   2017-04-13 Gianluca Petrillo : Adding a small margin to the charge recovery position.
-   2017-04-10 Gianluca Petrillo : Use the active plane as boundary for charge recovery.
-   2017-04-10 Gianluca Petrillo : Added option “ChargeRecoveryMargin” to LArG4.

larevt v06\_12\_00
----------------------------------------

-   2017-04-19 Lynn Garren : larevt v06\_12\_00 for larsoft v06\_33\_00
-   2017-04-17 Usher, Tracy L : Merge branch ‘master’ into feature/wketchum\_ViewAsignment
-   2017-04-09 Usher, Tracy L : Merge branch ‘master’ into feature/wketchum\_ViewAsignment
-   2017-04-03 Gianluca Petrillo : Added label for view geo::kX in DumpWires module.
-   2017-03-31 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/wketchum\_ViewAsignment
-   2017-03-23 Usher, Tracy L : Merge branch ‘master’ into feature/wketchum\_ViewAsignment
-   2017-03-04 Usher, Tracy L : Merge branch ‘master’ into feature/wketchum\_ViewAsignment
-   2017-02-23 Wesley Ketchum : fix a switch statement to see new Y view

lardata v06\_20\_00
------------------------------------------

-   2017-04-19 Lynn Garren : lardata v06\_20\_00 for larsoft v06\_33\_00
-   2017-04-18 Lynn Garren : use range v3\_0\_2\_4
-   2017-04-17 Usher, Tracy L : Merge branch ‘master’ into feature/wketchum\_ViewAsignment
-   2017-04-09 Usher, Tracy L : Merge branch ‘develop’ into feature/wketchum\_ViewAsignment
-   2017-04-03 Gianluca Petrillo : DetectorPropertiesStandard does the correct checks for configuration.
-   2017-03-31 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/wketchum\_ViewAsignment
-   2017-03-13 Gianluca Petrillo : Provide a (throwing) default implementation for new DetectorProperties interface method.
-   2017-03-23 Usher, Tracy L : Merge branch ‘develop’ into feature/wketchum\_ViewAsignment
-   2017-03-04 Usher, Tracy L : Merge branch ‘master’ into feature/wketchum\_ViewAsignment
-   2017-02-24 Wesley Ketchum : fix Z–\>Y
-   2017-02-23 Wesley Ketchum : add in a Y view option…

larcore v06\_09\_00
------------------------------------------

-   2017-04-19 Lynn Garren : larcore v06\_09\_00 for larsoft v06\_33\_00
-   2017-04-19 Gianluca Petrillo : TPC now sorts planes by distance from cathode.
-   2017-04-19 Gianluca Petrillo : Merge branch ‘feature/gp\_Issue16129’ into feature/wketchum\_ViewAsignment
-   2017-04-17 Usher, Tracy L : Merge branch ‘develop’ into feature/wketchum\_ViewAsignment
-   2017-04-17 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp\_Issue16129
-   2017-04-14 Gianluca Petrillo : Added a real test on auxiliary detector location.
-   2017-04-14 Gianluca Petrillo : Added printout of sensitive auxiliary detector geometry.
-   2017-04-14 Gianluca Petrillo : Geometry test now prints also auxiliary detector information.
-   2017-04-14 Gianluca Petrillo : Cosmetic fix to geometry test
-   2017-04-14 Gianluca Petrillo : Fixed error messages misleadingly pointing to LArIAT.
-   2017-04-13 Gianluca Petrillo : Refined the algorithm to determine the “active area” of a wire plane.
-   2017-04-13 Gianluca Petrillo : More output in geometry tests.
-   2017-04-10 Gianluca Petrillo : Added the concept of “active plane” in geo::PlaneGeo.
-   2017-04-09 Usher, Tracy L : Somehow the merge with the develop branch did not pick these up correctly
-   2017-04-09 Usher, Tracy L : Merge branch ‘master’ into feature/wketchum\_ViewAsignment
-   2017-04-04 Gianluca Petrillo : I did! I did tee a puddy bug!
-   2017-04-03 Gianluca Petrillo : Fixed plane view cache in geo::TPCGeo.
-   2017-04-03 Gianluca Petrillo : Introduced a new algorithm for the determination of the views.
-   2017-04-03 Gianluca Petrillo : Added computation of Angle() in decomposers.
-   2017-03-30 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/wketchum\_ViewAsignment
-   2017-03-27 Usher, Tracy L : Restore the explicit setting of the view in PlaneGeo. I understand that this is not considered the right place to do this assignment so will assume this is a temporary fix.
-   2017-03-25 Usher, Tracy L : Fix the bad merge
-   2017-03-24 Usher, Tracy L : Merge branch ‘develop’ into feature/wketchum\_ViewAsignment
-   2017-03-23 Usher, Tracy L : Merge branch ‘master’ into feature/wketchum\_ViewAsignment
-   2017-03-04 Usher, Tracy L : Merge branch ‘master’ into feature/wketchum\_ViewAsignment
-   2017-02-22 Wesley Ketchum : redo the view assignment code so it is more detector agnostic

larpandoracontent v03\_04\_00
--------------------------------------------------------------

larsoftobj v1\_19\_00
----------------------------------------------

-   2017-04-19 Lynn Garren : larsoftobj v1\_19\_00 for larsoft v06\_33\_00
-   2017-04-19 Lynn Garren : add comment
-   2017-04-19 Lynn Garren : update product versions

lardataobj v1\_15\_01
----------------------------------------------

-   2017-04-19 Lynn Garren : lardataobj v1\_15\_01 for larsoft v06\_33\_00
-   2017-04-13 Lynn Garren : larsoft v06\_32\_00
-   2017-04-13 Lynn Garren : lardataobj v1\_15\_00 for larsoft v06\_32\_00
-   2017-04-13 Lynn Garren : Merge branch ‘feature/team\_for\_gcc630’ into develop
-   2017-04-05 Lynn Garren : add missing header
-   2017-04-05 Lynn Garren : Merge branch ‘develop’ into feature/team\_for\_gcc630
-   2017-04-05 Lynn Garren : using nusimdata v1\_07\_01
-   2017-04-05 Lynn Garren : add missing headers
-   2017-04-05 Lynn Garren : add missing headers
-   2017-04-05 Lynn Garren : use curly braces
-   2017-04-05 Lynn Garren : for gcc 6.3.0

larcoreobj v1\_13\_00
----------------------------------------------

-   2017-04-19 Lynn Garren : larcoreobj v1\_13\_00 for larsoft v06\_33\_00
-   2017-04-17 Usher, Tracy L : Merge branch ‘master’ into feature/wketchum\_ViewAsignment
-   2017-04-09 Usher, Tracy L : Merge branch ‘master’ into feature/wketchum\_ViewAsignment
-   2017-04-03 Gianluca Petrillo : Added a X view, for ProtoDUNE DP use.
-   2017-03-31 Gianluca Petrillo : Restyled documentation, reordered definitions.
-   2017-03-31 Gianluca Petrillo : Merge remote-tracking branch ‘origin/feature/wketchum\_ViewAsignment’ into feature/wketchum\_ViewAsignment
-   2017-02-22 Wesley Ketchum : redo the view assignment code so it is more detector agnostic
-   2017-03-23 Usher, Tracy L : Merge branch ‘develop’ into feature/wketchum\_ViewAsignment
-   2017-02-22 Wesley Ketchum : redo the view assignment code so it is more detector agnostic

larbatch v01\_30\_01
--------------------------------------------

-   2017-04-19 Lynn Garren : larbatch v01\_30\_01 for larsoft v06\_33\_00
-   2017-04-18 Justin Hugon : scripts/condor\_lar.sh
-   2017-04-18 Herbert Greenlee : Don’t take snapshot when creating a run-limited dataset.
-   2017-04-17 Herbert Greenlee : Tweak xml caching.
-   2017-04-13 Lynn Garren : larsoft v06\_31\_01
-   2017-04-12 Herbert Greenlee : Add option to stream files using xrootd.

larutils v1\_12\_04
------------------------------------------

-   2017-04-19 Lynn Garren : larutils v1\_12\_04 for larsoft v06\_33\_00
-   2017-04-13 Lynn Garren : do not override u16
-   2017-04-13 Lynn Garren : add e14 support
-   2017-04-13 Herbert Greenlee : Switch back to Taritree’s repo.
-   2017-04-13 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larutils into develop
-   2017-04-13 Herbert Greenlee : Add support for e14 qualifier.
