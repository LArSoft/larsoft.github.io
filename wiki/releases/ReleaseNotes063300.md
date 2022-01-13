LArSoft v06_33_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06_33_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_33_00/larsoft-v06_33_00.html)
Download instructions for [just larsoftobj v1_19_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_19_00/larsoftobj-v1_19_00.html)

Purpose
--------------------

-   changes to develop since v06_32_00
-   approved features

New features
------------------------------

-   icarus geometry view support
    -   feature/wketchum_ViewAssignment for larcore, larcoreobj, lardata and larevt
-   resolution of [redmine issue 16129](https://cdcvs.fnal.gov/redmine/issues/16129)
    -   feature/gp_Issue16129 branch of larcore and larsim

Bug fixes
------------------------

-   bug fix [redmine issue 16229](https://cdcvs.fnal.gov/redmine/issues/16229) in larbatch

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|range|v3_0_2_4||new stable release|

Change List
============================

larsoft v06_33_00
------------------------------------------

-   2017-04-19 Lynn Garren : larsoft v06_33_00 for larsoft v06_33_00
-   2017-04-19 Lynn Garren : add comment
-   2017-04-19 Lynn Garren : update dependency database
-   2017-04-19 Lynn Garren : drop product_list
-   2017-04-19 Lynn Garren : update product versions
-   2017-04-17 Lynn Garren : add Ubuntu 16 and Sierra

lareventdisplay v06_05_01
----------------------------------------------------------

-   2017-04-19 Lynn Garren : lareventdisplay v06_05_01 for larsoft v06_33_00

larexamples v06_03_01
--------------------------------------------------

-   2017-04-19 Lynn Garren : larexamples v06_03_01 for larsoft v06_33_00

larpandora v06_10_01
------------------------------------------------

-   2017-04-19 Lynn Garren : larpandora v06_10_01 for larsoft v06_33_00

larwirecell v06_04_01
--------------------------------------------------

-   2017-04-19 Lynn Garren : larwirecell v06_04_01 for larsoft v06_33_00

larana v06_05_01
----------------------------------------

-   2017-04-19 Lynn Garren : larana v06_05_01 for larsoft v06_33_00

larreco v06_25_01
------------------------------------------

-   2017-04-19 Lynn Garren : larreco v06_25_01 for larsoft v06_33_00
-   2017-04-15 Robert Sulej : check if keras api version matches what is expected in larsoft interface
-   2017-04-15 Robert Sulej : update example script to keras 2 api

larsim v06_19_00
----------------------------------------

-   2017-04-19 Lynn Garren : larsim v06_19_00 for larsoft v06_33_00
-   2017-04-17 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp_Issue16129
-   2017-04-14 Thomas Junk : Sort the vector of simchannel pointers by channel number, and use a log2 search to find the simchannels in it in order to speed up FindSimChannel
-   2017-04-14 Gianluca Petrillo : Modified MCTruth output about particle origin.
-   2017-04-14 Gianluca Petrillo : Fixed bug (issue [redmine issue 16208](https://cdcvs.fnal.gov/redmine/issues/16208)).
-   2017-04-13 Gianluca Petrillo : Adding a small margin to the charge recovery position.
-   2017-04-10 Gianluca Petrillo : Use the active plane as boundary for charge recovery.
-   2017-04-10 Gianluca Petrillo : Added option “ChargeRecoveryMargin” to LArG4.

larevt v06_12_00
----------------------------------------

-   2017-04-19 Lynn Garren : larevt v06_12_00 for larsoft v06_33_00
-   2017-04-17 Usher, Tracy L : Merge branch ‘master’ into feature/wketchum_ViewAsignment
-   2017-04-09 Usher, Tracy L : Merge branch ‘master’ into feature/wketchum_ViewAsignment
-   2017-04-03 Gianluca Petrillo : Added label for view geo::kX in DumpWires module.
-   2017-03-31 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/wketchum_ViewAsignment
-   2017-03-23 Usher, Tracy L : Merge branch ‘master’ into feature/wketchum_ViewAsignment
-   2017-03-04 Usher, Tracy L : Merge branch ‘master’ into feature/wketchum_ViewAsignment
-   2017-02-23 Wesley Ketchum : fix a switch statement to see new Y view

lardata v06_20_00
------------------------------------------

-   2017-04-19 Lynn Garren : lardata v06_20_00 for larsoft v06_33_00
-   2017-04-18 Lynn Garren : use range v3_0_2_4
-   2017-04-17 Usher, Tracy L : Merge branch ‘master’ into feature/wketchum_ViewAsignment
-   2017-04-09 Usher, Tracy L : Merge branch ‘develop’ into feature/wketchum_ViewAsignment
-   2017-04-03 Gianluca Petrillo : DetectorPropertiesStandard does the correct checks for configuration.
-   2017-03-31 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/wketchum_ViewAsignment
-   2017-03-13 Gianluca Petrillo : Provide a (throwing) default implementation for new DetectorProperties interface method.
-   2017-03-23 Usher, Tracy L : Merge branch ‘develop’ into feature/wketchum_ViewAsignment
-   2017-03-04 Usher, Tracy L : Merge branch ‘master’ into feature/wketchum_ViewAsignment
-   2017-02-24 Wesley Ketchum : fix Z–\>Y
-   2017-02-23 Wesley Ketchum : add in a Y view option…

larcore v06_09_00
------------------------------------------

-   2017-04-19 Lynn Garren : larcore v06_09_00 for larsoft v06_33_00
-   2017-04-19 Gianluca Petrillo : TPC now sorts planes by distance from cathode.
-   2017-04-19 Gianluca Petrillo : Merge branch ‘feature/gp_Issue16129’ into feature/wketchum_ViewAsignment
-   2017-04-17 Usher, Tracy L : Merge branch ‘develop’ into feature/wketchum_ViewAsignment
-   2017-04-17 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp_Issue16129
-   2017-04-14 Gianluca Petrillo : Added a real test on auxiliary detector location.
-   2017-04-14 Gianluca Petrillo : Added printout of sensitive auxiliary detector geometry.
-   2017-04-14 Gianluca Petrillo : Geometry test now prints also auxiliary detector information.
-   2017-04-14 Gianluca Petrillo : Cosmetic fix to geometry test
-   2017-04-14 Gianluca Petrillo : Fixed error messages misleadingly pointing to LArIAT.
-   2017-04-13 Gianluca Petrillo : Refined the algorithm to determine the “active area” of a wire plane.
-   2017-04-13 Gianluca Petrillo : More output in geometry tests.
-   2017-04-10 Gianluca Petrillo : Added the concept of “active plane” in geo::PlaneGeo.
-   2017-04-09 Usher, Tracy L : Somehow the merge with the develop branch did not pick these up correctly
-   2017-04-09 Usher, Tracy L : Merge branch ‘master’ into feature/wketchum_ViewAsignment
-   2017-04-04 Gianluca Petrillo : I did! I did tee a puddy bug!
-   2017-04-03 Gianluca Petrillo : Fixed plane view cache in geo::TPCGeo.
-   2017-04-03 Gianluca Petrillo : Introduced a new algorithm for the determination of the views.
-   2017-04-03 Gianluca Petrillo : Added computation of Angle() in decomposers.
-   2017-03-30 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/wketchum_ViewAsignment
-   2017-03-27 Usher, Tracy L : Restore the explicit setting of the view in PlaneGeo. I understand that this is not considered the right place to do this assignment so will assume this is a temporary fix.
-   2017-03-25 Usher, Tracy L : Fix the bad merge
-   2017-03-24 Usher, Tracy L : Merge branch ‘develop’ into feature/wketchum_ViewAsignment
-   2017-03-23 Usher, Tracy L : Merge branch ‘master’ into feature/wketchum_ViewAsignment
-   2017-03-04 Usher, Tracy L : Merge branch ‘master’ into feature/wketchum_ViewAsignment
-   2017-02-22 Wesley Ketchum : redo the view assignment code so it is more detector agnostic

larpandoracontent v03_04_00
--------------------------------------------------------------

larsoftobj v1_19_00
----------------------------------------------

-   2017-04-19 Lynn Garren : larsoftobj v1_19_00 for larsoft v06_33_00
-   2017-04-19 Lynn Garren : add comment
-   2017-04-19 Lynn Garren : update product versions

lardataobj v1_15_01
----------------------------------------------

-   2017-04-19 Lynn Garren : lardataobj v1_15_01 for larsoft v06_33_00
-   2017-04-13 Lynn Garren : larsoft v06_32_00
-   2017-04-13 Lynn Garren : lardataobj v1_15_00 for larsoft v06_32_00
-   2017-04-13 Lynn Garren : Merge branch ‘feature/team_for_gcc630’ into develop
-   2017-04-05 Lynn Garren : add missing header
-   2017-04-05 Lynn Garren : Merge branch ‘develop’ into feature/team_for_gcc630
-   2017-04-05 Lynn Garren : using nusimdata v1_07_01
-   2017-04-05 Lynn Garren : add missing headers
-   2017-04-05 Lynn Garren : add missing headers
-   2017-04-05 Lynn Garren : use curly braces
-   2017-04-05 Lynn Garren : for gcc 6.3.0

larcoreobj v1_13_00
----------------------------------------------

-   2017-04-19 Lynn Garren : larcoreobj v1_13_00 for larsoft v06_33_00
-   2017-04-17 Usher, Tracy L : Merge branch ‘master’ into feature/wketchum_ViewAsignment
-   2017-04-09 Usher, Tracy L : Merge branch ‘master’ into feature/wketchum_ViewAsignment
-   2017-04-03 Gianluca Petrillo : Added a X view, for ProtoDUNE DP use.
-   2017-03-31 Gianluca Petrillo : Restyled documentation, reordered definitions.
-   2017-03-31 Gianluca Petrillo : Merge remote-tracking branch ‘origin/feature/wketchum_ViewAsignment’ into feature/wketchum_ViewAsignment
-   2017-02-22 Wesley Ketchum : redo the view assignment code so it is more detector agnostic
-   2017-03-23 Usher, Tracy L : Merge branch ‘develop’ into feature/wketchum_ViewAsignment
-   2017-02-22 Wesley Ketchum : redo the view assignment code so it is more detector agnostic

larbatch v01_30_01
--------------------------------------------

-   2017-04-19 Lynn Garren : larbatch v01_30_01 for larsoft v06_33_00
-   2017-04-18 Justin Hugon : scripts/condor_lar.sh
-   2017-04-18 Herbert Greenlee : Don’t take snapshot when creating a run-limited dataset.
-   2017-04-17 Herbert Greenlee : Tweak xml caching.
-   2017-04-13 Lynn Garren : larsoft v06_31_01
-   2017-04-12 Herbert Greenlee : Add option to stream files using xrootd.

larutils v1_12_04
------------------------------------------

-   2017-04-19 Lynn Garren : larutils v1_12_04 for larsoft v06_33_00
-   2017-04-13 Lynn Garren : do not override u16
-   2017-04-13 Lynn Garren : add e14 support
-   2017-04-13 Herbert Greenlee : Switch back to Taritree’s repo.
-   2017-04-13 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larutils into develop
-   2017-04-13 Herbert Greenlee : Add support for e14 qualifier.
