LArSoft v06\_68\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06\_68\_00 Release Notes](#LArSoft-v06_68_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_68\_00](#larsoft-v06_68_00)
    -   [lareventdisplay v06\_17\_02](#lareventdisplay-v06_17_02)
    -   [larexamples v06\_10\_02](#larexamples-v06_10_02)
    -   [larpandora v06\_23\_00](#larpandora-v06_23_00)
    -   [larwirecell v06\_10\_02](#larwirecell-v06_10_02)
    -   [larana v06\_17\_00](#larana-v06_17_00)
    -   [larreco v06\_54\_02](#larreco-v06_54_02)
    -   [larsim v06\_40\_02](#larsim-v06_40_02)
    -   [larevt v06\_18\_02](#larevt-v06_18_02)
    -   [lardata v06\_39\_02](#lardata-v06_39_02)
    -   [larcore v06\_17\_01](#larcore-v06_17_01)
    -   [larpandoracontent v03\_10\_00](#larpandoracontent-v03_10_00)
    -   [larsoftobj v1\_40\_00](#larsoftobj-v1_40_00)
    -   [lardataobj v1\_28\_01](#lardataobj-v1_28_01)
    -   [larcorealg v1\_17\_01](#larcorealg-v1_17_01)
    -   [larcoreobj v1\_21\_00](#larcoreobj-v1_21_00)
    -   [larbatch v01\_36\_02](#larbatch-v01_36_02)
    -   [larutils v1\_21\_00](#larutils-v1_21_00)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_68\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_68_00/larsoft-v06_68_00.html)\
Download instructions for [just larsoftobj v1\_40\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_40_00/larsoftobj-v1_40_00.html)

Purpose
--------------------

-   changes to develop
-   approved features

New features
------------------------------

-   `feature/gp_Issue18943` of `larcoreobj`, solution to issue [\#18943](/redmine/issues/18943 "Bug: Problem with sumdata::RunData aggregation (Closed)")
    -   This resolves the ProductCannotBeAggregated issue.
-   feature/larpandoracontent\_v03\_10\_00
    -   larpandoracontent, larpandora
    -   dunetpc, uboonecode, uboonedata

Bug fixes
------------------------

-   changes in lardata for [\#18979](/redmine/issues/18979 "Feature: Retrieve art::InputTag by art::ProductID (Closed)") and [\#18980](/redmine/issues/18980 "Feature: Failure of FindManyInChainP when the associated products haven't been read yet (Accepted)")

Updated dependencies
----------------------------------------------

-   ifdhc v2\_3\_2
-   nutools v2\_17\_04
-   ifdh\_art v2\_05\_03

Change List
============================

larsoft v06\_68\_00
------------------------------------------

-   2018-02-13 Lynn Garren : larsoft v06\_68\_00 for larsoft v06\_68\_00
-   2018-02-13 Lynn Garren : update versions
-   2018-02-13 Lynn Garren : for nutools v2\_17\_04

lareventdisplay v06\_17\_02
----------------------------------------------------------

-   2018-02-13 Lynn Garren : lareventdisplay v06\_17\_02 for larsoft v06\_68\_00
-   2018-02-09 Giuseppe Cerati : fix drawing in case invalid points are not at the end of the track

larexamples v06\_10\_02
--------------------------------------------------

-   2018-02-13 Lynn Garren : larexamples v06\_10\_02 for larsoft v06\_68\_00
-   2018-02-12 Giuseppe Cerati : update comments
-   2018-02-09 Gianluca Petrillo : Implemented some “good practices”
-   2018-02-09 Gianluca Petrillo : RecoProxyUsageExample: added comments at the end of code blocks
-   2018-02-09 Gianluca Petrillo : RecoProxyUsageExample: replaced iostream with message service
-   2018-02-09 Gianluca Petrillo : RecoProxyUsageExample: code alignment fix
-   2018-02-09 Gianluca Petrillo : RecoProxyUsageExample: added configuration validation

larpandora v06\_23\_00
------------------------------------------------

-   2018-02-13 Lynn Garren : larpandora v06\_23\_00 for larsoft v06\_68\_00
-   2018-02-12 John Marshall : Remove track and shower building algorithms from worker instances.

larwirecell v06\_10\_02
--------------------------------------------------

-   2018-02-13 Lynn Garren : larwirecell v06\_10\_02 for larsoft v06\_68\_00

larana v06\_17\_00
----------------------------------------

-   2018-02-13 Lynn Garren : larana v06\_17\_00 for larsoft v06\_68\_00
-   2018-02-10 David Caratelli : updates to algorithms –David Caratelli
-   2018-02-08 David Caratelli : adding TruncatedMean functionality. First skeleton is there, to be expanded –DC

larreco v06\_54\_02
------------------------------------------

-   2018-02-13 Lynn Garren : larreco v06\_54\_02 for larsoft v06\_68\_00
-   2018-02-10 baller : Turn off debug printing.
-   2018-02-10 baller : Bug fix: Don’t use tj reference variable when SplitTraj is called.

larsim v06\_40\_02
----------------------------------------

-   2018-02-13 Lynn Garren : larsim v06\_40\_02 for larsoft v06\_68\_00

larevt v06\_18\_02
----------------------------------------

-   2018-02-13 Lynn Garren : larevt v06\_18\_02 for larsoft v06\_68\_00

lardata v06\_39\_02
------------------------------------------

-   2018-02-13 Lynn Garren : lardata v06\_39\_02 for larsoft v06\_68\_00
-   2018-02-13 Gianluca Petrillo : New implementation of input tag from product ID.
-   2018-02-12 Gianluca Petrillo : Workaround to issue [\#18979](/redmine/issues/18979 "Feature: Retrieve art::InputTag by art::ProductID (Closed)") in FindManyInChainP.
-   2018-02-08 Gianluca Petrillo : testAssnsChainUtils fixed and reenabled.

larcore v06\_17\_01
------------------------------------------

-   2018-02-13 Lynn Garren : larcore v06\_17\_01 for larsoft v06\_68\_00

larpandoracontent v03\_10\_00
--------------------------------------------------------------

-   2018-02-13 Lynn Garren : larpandoracontent v03\_10\_00 for larsoft v06\_68\_00
-   2018-02-13 Lynn Garren : 3.10.00
-   2018-02-13 John Marshall : Merge branch ‘updates’
-   2018-02-13 John Marshall : Update change log.
-   2018-02-12 John Marshall : Merge branch ‘feature/SVMPfo3D’
-   2018-02-12 John Marshall : Correction for misleading indentation.
-   2017-11-06 loressa : Added SVM PFO characterisation using 3D information.

larsoftobj v1\_40\_00
----------------------------------------------

-   2018-02-13 Lynn Garren : larsoftobj v1\_40\_00 for larsoft v06\_68\_00
-   2018-02-13 Lynn Garren : update versions

lardataobj v1\_28\_01
----------------------------------------------

-   2018-02-13 Lynn Garren : lardataobj v1\_28\_01 for larsoft v06\_68\_00

larcorealg v1\_17\_01
----------------------------------------------

-   2018-02-13 Lynn Garren : larcorealg v1\_17\_01 for larsoft v06\_68\_00

larcoreobj v1\_21\_00
----------------------------------------------

-   2018-02-13 Lynn Garren : larcoreobj v1\_21\_00 for larsoft v06\_68\_00
-   2018-02-12 Gianluca Petrillo : Removed unnecessary header.
-   2018-02-12 Gianluca Petrillo : Standardised include guard for sumdata::RunData header
-   2018-02-12 Gianluca Petrillo : Pass string by reference in sumdata::RunData methods
-   2018-02-12 Gianluca Petrillo : Documentation changes to sumdata::RunData
-   2018-02-12 Gianluca Petrillo : Added sumdata::RunData::aggregate() method.
-   2018-02-09 Gianluca Petrillo : Added aggregate() method to POTSummary.
-   2018-02-09 Gianluca Petrillo : Updated sumdata::POTSummary form.

larbatch v01\_36\_02
--------------------------------------------

-   2018-02-13 Lynn Garren : larbatch v01\_36\_02 for larsoft v06\_68\_00
-   2018-02-13 Herbert Greenlee : Set ifdh retries back up to 5.
-   2018-02-13 Herbert Greenlee : Add input dataset checking in condor\_lar.sh.
-   2018-02-13 Herbert Greenlee : Fix max\_files\_per\_job with input list containing xrootd schemas.
-   2018-02-13 Herbert Greenlee : Change handling of output files and tarballs to minimize transfers.
-   2018-02-12 Herbert Greenlee : Teach condor\_start\_project.sh to limit size of projects.
-   2018-02-09 Herbert Greenlee : xrootd -\> root.
-   2018-02-09 Herbert Greenlee : Use xrootd for reading files from file list if schema root is specified.
-   2018-02-07 Herbert Greenlee : Do not copy output to scratch space if copying directy to dropbox. Allow users to specify a run number in xml file when doing generator jobs.

larutils v1\_21\_00
------------------------------------------

-   2018-02-13 Lynn Garren : larutils v1\_21\_00 for larsoft v06\_68\_00
-   2018-02-08 Robert Hatcher : new script for finding global symbols in shared object libraries
