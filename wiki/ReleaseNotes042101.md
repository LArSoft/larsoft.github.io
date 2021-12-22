LArSoft v04\_21\_01 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v04\_21\_01 Release Notes](#LArSoft-v04_21_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04\_21\_01](#larsoft-v04_21_01)
    -   [lareventdisplay v04\_07\_01](#lareventdisplay-v04_07_01)
    -   [larexamples v04\_05\_03](#larexamples-v04_05_03)
    -   [larpandora v04\_05\_03](#larpandora-v04_05_03)
    -   [larana v04\_12\_01](#larana-v04_12_01)
    -   [larreco v04\_16\_00](#larreco-v04_16_00)
    -   [larsim v04\_09\_03](#larsim-v04_09_03)
    -   [larevt v04\_10\_00](#larevt-v04_10_00)
    -   [lardata v04\_13\_00](#lardata-v04_13_00)
    -   [larcore v04\_16\_01](#larcore-v04_16_01)
    -   [larbatch v01\_13\_02](#larbatch-v01_13_02)
    -   [larutils v1\_03\_00](#larutils-v1_03_00)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_21_01/larsoft-v04_21_01.html)

Purpose
--------------------

-   Changes to develop since v04\_21\_00

New features
------------------------------

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v04\_21\_01
------------------------------------------

-   2015-09-02 Lynn Garren : larsoft v04\_21\_01 for larsoft v04\_21\_01
-   2015-09-02 Lynn Garren : update product versions

lareventdisplay v04\_07\_01
----------------------------------------------------------

-   2015-09-02 Lynn Garren : lareventdisplay v04\_07\_01 for larsoft v04\_21\_01
-   2015-08-30 Tingjun Yang : Add option to choose which plane to use when drawing calorimetry information.

larexamples v04\_05\_03
--------------------------------------------------

larpandora v04\_05\_03
------------------------------------------------

larana v04\_12\_01
----------------------------------------

-   2015-09-02 Lynn Garren : larana v04\_12\_01 for larsoft v04\_21\_01
-   2015-08-26 drinkingkazu : implementing a cheap but non-destructive way to skip channels –kazu

larreco v04\_16\_00
------------------------------------------

larsim v04\_09\_03
----------------------------------------

larevt v04\_10\_00
----------------------------------------

lardata v04\_13\_00
------------------------------------------

larcore v04\_16\_01
------------------------------------------

larbatch v01\_13\_02
--------------------------------------------

-   2015-09-02 Lynn Garren : larbatch v01\_13\_02 for larsoft v04\_21\_01
-   2015-09-01 Herbert Greenlee : Make lack of parents a nonfatal error when declaring files to sam. Unfortunately, this is necessary to declare mcc 6.1 files, for which the parentage information hasn’t been well preserved.
-   2015-09-01 Herbert Greenlee : Fix up fetching log files for sam projects.
-   2015-09-01 Herbert Greenlee : Modify reporting status of sam projects to accomodate samweb change.
-   2015-09-01 Herbert Greenlee : Hack condor\_lar.sh to randomize some specific root file names to work around art bug that doesn’t allow output file templates when reading from sam.
-   2015-08-31 Herbert Greenlee : Restore working directory before raising an exception.
-   2015-08-28 Herbert Greenlee : Teach get\_user() to extract user name from cron certificates.

larutils v1\_03\_00
------------------------------------------
