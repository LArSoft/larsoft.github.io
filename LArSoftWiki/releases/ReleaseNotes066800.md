# LArSoft v06_68_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v06_68_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_68_00/larsoft-v06_68_00.html)  
Download instructions for [just larsoftobj v1_40_00](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_40_00/larsoftobj-v1_40_00.html)

## Purpose

-   changes to develop
-   approved features

## New features

-   `feature/gp_Issue18943` of `larcoreobj`, solution to issue \#18943
    -   This resolves the ProductCannotBeAggregated issue.
-   feature/larpandoracontent_v03_10_00
    -   larpandoracontent, larpandora
    -   dunetpc, uboonecode, uboonedata

## Bug fixes

-   changes in lardata for \#18979 and \#18980

## Updated dependencies

-   ifdhc v2_3_2
-   nutools v2_17_04
-   ifdh_art v2_05_03

# Change List

## larsoft v06_68_00

-   2018-02-13 Lynn Garren : larsoft v06_68_00 for larsoft v06_68_00
-   2018-02-13 Lynn Garren : update versions
-   2018-02-13 Lynn Garren : for nutools v2_17_04

## lareventdisplay v06_17_02

-   2018-02-13 Lynn Garren : lareventdisplay v06_17_02 for larsoft v06_68_00
-   2018-02-09 Giuseppe Cerati : fix drawing in case invalid points are not at the end of the track

## larexamples v06_10_02

-   2018-02-13 Lynn Garren : larexamples v06_10_02 for larsoft v06_68_00
-   2018-02-12 Giuseppe Cerati : update comments
-   2018-02-09 Gianluca Petrillo : Implemented some “good practices”
-   2018-02-09 Gianluca Petrillo : RecoProxyUsageExample: added comments at the end of code blocks
-   2018-02-09 Gianluca Petrillo : RecoProxyUsageExample: replaced iostream with message service
-   2018-02-09 Gianluca Petrillo : RecoProxyUsageExample: code alignment fix
-   2018-02-09 Gianluca Petrillo : RecoProxyUsageExample: added configuration validation

## larpandora v06_23_00

-   2018-02-13 Lynn Garren : larpandora v06_23_00 for larsoft v06_68_00
-   2018-02-12 John Marshall : Remove track and shower building algorithms from worker instances.

## larwirecell v06_10_02

-   2018-02-13 Lynn Garren : larwirecell v06_10_02 for larsoft v06_68_00

## larana v06_17_00

-   2018-02-13 Lynn Garren : larana v06_17_00 for larsoft v06_68_00
-   2018-02-10 David Caratelli : updates to algorithms —David Caratelli
-   2018-02-08 David Caratelli : adding TruncatedMean functionality. First skeleton is there, to be expanded —DC

## larreco v06_54_02

-   2018-02-13 Lynn Garren : larreco v06_54_02 for larsoft v06_68_00
-   2018-02-10 baller : Turn off debug printing.
-   2018-02-10 baller : Bug fix: Don't use tj reference variable when SplitTraj is called.

## larsim v06_40_02

-   2018-02-13 Lynn Garren : larsim v06_40_02 for larsoft v06_68_00

## larevt v06_18_02

-   2018-02-13 Lynn Garren : larevt v06_18_02 for larsoft v06_68_00

## lardata v06_39_02

-   2018-02-13 Lynn Garren : lardata v06_39_02 for larsoft v06_68_00
-   2018-02-13 Gianluca Petrillo : New implementation of input tag from product ID.
-   2018-02-12 Gianluca Petrillo : Workaround to issue \#18979 in FindManyInChainP.
-   2018-02-08 Gianluca Petrillo : testAssnsChainUtils fixed and reenabled.

## larcore v06_17_01

-   2018-02-13 Lynn Garren : larcore v06_17_01 for larsoft v06_68_00

## larpandoracontent v03_10_00

-   2018-02-13 Lynn Garren : larpandoracontent v03_10_00 for larsoft v06_68_00
-   2018-02-13 Lynn Garren : 3.10.00
-   2018-02-13 John Marshall : Merge branch 'updates'
-   2018-02-13 John Marshall : Update change log.
-   2018-02-12 John Marshall : Merge branch 'feature/SVMPfo3D'
-   2018-02-12 John Marshall : Correction for misleading indentation.
-   2017-11-06 loressa : Added SVM PFO characterisation using 3D information.

## larsoftobj v1_40_00

-   2018-02-13 Lynn Garren : larsoftobj v1_40_00 for larsoft v06_68_00
-   2018-02-13 Lynn Garren : update versions

## lardataobj v1_28_01

-   2018-02-13 Lynn Garren : lardataobj v1_28_01 for larsoft v06_68_00

## larcorealg v1_17_01

-   2018-02-13 Lynn Garren : larcorealg v1_17_01 for larsoft v06_68_00

## larcoreobj v1_21_00

-   2018-02-13 Lynn Garren : larcoreobj v1_21_00 for larsoft v06_68_00
-   2018-02-12 Gianluca Petrillo : Removed unnecessary header.
-   2018-02-12 Gianluca Petrillo : Standardised include guard for sumdata::RunData header
-   2018-02-12 Gianluca Petrillo : Pass string by reference in sumdata::RunData methods
-   2018-02-12 Gianluca Petrillo : Documentation changes to sumdata::RunData
-   2018-02-12 Gianluca Petrillo : Added sumdata::RunData::aggregate() method.
-   2018-02-09 Gianluca Petrillo : Added aggregate() method to POTSummary.
-   2018-02-09 Gianluca Petrillo : Updated sumdata::POTSummary form.

## larbatch v01_36_02

-   2018-02-13 Lynn Garren : larbatch v01_36_02 for larsoft v06_68_00
-   2018-02-13 Herbert Greenlee : Set ifdh retries back up to 5.
-   2018-02-13 Herbert Greenlee : Add input dataset checking in condor_lar.sh.
-   2018-02-13 Herbert Greenlee : Fix max_files_per_job with input list containing xrootd schemas.
-   2018-02-13 Herbert Greenlee : Change handling of output files and tarballs to minimize transfers.
-   2018-02-12 Herbert Greenlee : Teach condor_start_project.sh to limit size of projects.
-   2018-02-09 Herbert Greenlee : xrootd -\> root.
-   2018-02-09 Herbert Greenlee : Use xrootd for reading files from file list if schema root is specified.
-   2018-02-07 Herbert Greenlee : Do not copy output to scratch space if copying directy to dropbox. Allow users to specify a run number in xml file when doing generator jobs.

## larutils v1_21_00

-   2018-02-13 Lynn Garren : larutils v1_21_00 for larsoft v06_68_00
-   2018-02-08 Robert Hatcher : new script for finding global symbols in shared object libraries
