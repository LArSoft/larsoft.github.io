# LArSoft v04_21_01 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_21_01/larsoft-v04_21_01.html)

## Purpose

-   Changes to develop since v04_21_00

## New features

## Bug fixes

## Updated dependencies

# Change List

## larsoft v04_21_01

-   2015-09-02 Lynn Garren : larsoft v04_21_01 for larsoft v04_21_01
-   2015-09-02 Lynn Garren : update product versions

## lareventdisplay v04_07_01

-   2015-09-02 Lynn Garren : lareventdisplay v04_07_01 for larsoft v04_21_01
-   2015-08-30 Tingjun Yang : Add option to choose which plane to use when drawing calorimetry information.

## larexamples v04_05_03

## larpandora v04_05_03

## larana v04_12_01

-   2015-09-02 Lynn Garren : larana v04_12_01 for larsoft v04_21_01
-   2015-08-26 drinkingkazu : implementing a cheap but non-destructive way to skip channels —kazu

## larreco v04_16_00

## larsim v04_09_03

## larevt v04_10_00

## lardata v04_13_00

## larcore v04_16_01

## larbatch v01_13_02

-   2015-09-02 Lynn Garren : larbatch v01_13_02 for larsoft v04_21_01
-   2015-09-01 Herbert Greenlee : Make lack of parents a nonfatal error when declaring files to sam. Unfortunately, this is necessary to declare mcc 6.1 files, for which the parentage information hasn't been well preserved.
-   2015-09-01 Herbert Greenlee : Fix up fetching log files for sam projects.
-   2015-09-01 Herbert Greenlee : Modify reporting status of sam projects to accomodate samweb change.
-   2015-09-01 Herbert Greenlee : Hack condor_lar.sh to randomize some specific root file names to work around art bug that doesn't allow output file templates when reading from sam.
-   2015-08-31 Herbert Greenlee : Restore working directory before raising an exception.
-   2015-08-28 Herbert Greenlee : Teach get_user() to extract user name from cron certificates.

## larutils v1_03_00
