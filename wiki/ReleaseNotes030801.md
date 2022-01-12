LArSoft v03\_08\_01 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v03\_08\_01 Release Notes](#LArSoft-v03_08_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v03\_08\_01](#larsoft-v03_08_01)
    -   [lareventdisplay v03\_04\_01](#lareventdisplay-v03_04_01)
    -   [larana v03\_04\_01](#larana-v03_04_01)
    -   [larreco v03\_07\_01](#larreco-v03_07_01)
    -   [larbatch v01\_04\_00](#larbatch-v01_04_00)
    -   [larutils v1\_00\_02](#larutils-v1_00_02)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v03_08_01/larsoft-v03_08_01.html)

Purpose
--------------------

Changes in develop since v03\_08\_00

New features
------------------------------

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifier|Notes|
|psycopg2|v2\_5\_4||by request for MicroBooNE|

Change List
============================

larsoft v03\_08\_01
------------------------------------------

-   2015-02-04 Lynn Garren : adding psycopg2 to the distribution
-   2015-02-04 Lynn Garren : update product list
-   2015-02-03 Lynn Garren : build artextensions after ensuring cetbuildtools

lareventdisplay v03\_04\_01
----------------------------------------------------------

-   2015-02-04 Lynn Garren : lareventdisplay v03\_04\_01 for larsoft v03\_08\_01
-   2015-02-04 Tingjun Yang : Subtract trigger offset.
-   2015-02-03 Tingjun Yang : Add XTicksOffset which will be removed in ConvertTicksToX.
-   2015-02-03 Tingjun Yang : Check TPC ranges for multiple TPCs.

larana v03\_04\_01
----------------------------------------

-   2015-02-04 Lynn Garren : larana v03\_04\_01 for larsoft v03\_08\_01
-   2015-01-31 Alex Himmel : Use unique histogram names, even if there is more than one pulse per channel per event, possible with long readout windows.

larreco v03\_07\_01
------------------------------------------

-   2015-02-04 Lynn Garren : larreco v03\_07\_01 for larsoft v03\_08\_01
-   2015-02-04 Lynn Garren : try to protect against accidental additions
-   2015-01-30 Gianluca Petrillo : Fixed a bug in FLAME algorithm (fuzzyClusterAlg). Also moved it a bit more toward C++.
-   2015-01-30 Gianluca Petrillo : Removed hidden files.

larbatch v01\_04\_00
--------------------------------------------

-   2015-02-04 Lynn Garren : larbatch v01\_04\_00 for larsoft v03\_08\_01
-   2015-02-02 Herbert Greenlee : Remove stderr= argument from check\_output calls, since it do
-   2015-02-02 Herbert Greenlee : Specify stdout= and stderr= arguments for all subprocess cal
-   2015-02-02 Herbert Greenlee : Add ability to kill batch jobs.
-   2015-02-02 Herbert Greenlee : Fix bug with multiple makeup submissions not finding fcl fil
-   2015-02-02 Herbert Greenlee : Add console window.
-   2015-01-30 Herbert Greenlee : Style updates.
-   2015-01-30 Herbert Greenlee : Add \# of analysis files to stage status.
-   2015-01-30 Sowjanya Gollapinni : remove special treatment for dCache files and put merged
-   2015-01-29 Herbert Greenlee : Remove spaces from comma-separated list parameters \<os\>, \<si
-   2015-01-28 Herbert Greenlee : Add sam gui functions.
-   2015-01-28 Herbert Greenlee : Merge remote-tracking branch ‘mymrb/develop’ into feature/gr
-   2015-01-28 Herbert Greenlee : Merge remote-tracking branch ‘mymrb/develop’ into feature/gr
-   2015-01-28 Herbert Greenlee : Merge remote-tracking branch ‘mymrb/develop’ into feature/gr
-   2015-01-28 Herbert Greenlee : Forgot to add some files.
-   2015-01-28 Herbert Greenlee : Move gui modules to a different subdirectory, off direct pyt
-   2015-01-28 Herbert Greenlee : Move xml file display to a separate top level window.
-   2015-01-28 Herbert Greenlee : Make separate Output and Batch menus.
-   2015-01-28 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/g
-   2015-01-28 Herbert Greenlee : Update gui to support job submission and querying status of
-   2015-01-23 Herbert Greenlee : Do some more tweaks related to log directories.
-   2015-01-23 Herbert Greenlee : Add concept of log directory.
-   2015-01-23 Herbert Greenlee : Add log directory.
-   2015-01-23 Sowjanya Gollapinni : Add \<TFileName\> element to specify TFileName (files modif
-   2015-01-23 Herbert Greenlee : Merge branch ‘develop’ into feature/greenlee\_gui
-   2015-01-22 Herbert Greenlee : Update gui.
-   2015-01-21 Herbert Greenlee : Merge branch ‘develop’ into feature/greenlee\_gui
-   2015-01-21 Herbert Greenlee : Update gui.
-   2015-01-20 Herbert Greenlee : Merge branch ‘develop’ into feature/greenlee\_gui
-   2015-01-20 Herbert Greenlee : Merge branch ‘develop’ into feature/greenlee\_gui
-   2015-01-20 Herbert Greenlee : Gui updates.
-   2015-01-20 Herbert Greenlee : Merge branch ‘develop’ into feature/greenlee\_gui
-   2015-01-20 Herbert Greenlee : Add gui stuff.

larutils v1\_00\_02
------------------------------------------

-   2015-02-04 Lynn Garren : larutils v1\_00\_02 for larsoft v03\_08\_01
-   2015-01-30 Tingjun Yang : Add ubutil in buildLBNE.sh
-   2015-01-30 Tingjun Yang : fix more typos
-   2015-01-30 Tingjun Yang : Use \$LBNEUTILVER.
