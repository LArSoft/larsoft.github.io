LArSoft v05\_00\_02 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v05\_00\_02 Release Notes](#LArSoft-v05_00_02-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Breaking Changes](#Breaking-Changes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v05\_00\_02](#larsoft-v05_00_02)
    -   [lareventdisplay v05\_00\_01](#lareventdisplay-v05_00_01)
    -   [larexamples v05\_00\_01](#larexamples-v05_00_01)
    -   [larpandora v05\_00\_01](#larpandora-v05_00_01)
    -   [larana v05\_00\_01](#larana-v05_00_01)
    -   [larreco v05\_00\_01](#larreco-v05_00_01)
    -   [larsim v05\_00\_01](#larsim-v05_00_01)
    -   [larevt v05\_00\_01](#larevt-v05_00_01)
    -   [lardata v05\_00\_01](#lardata-v05_00_01)
    -   [larcore v05\_00\_01](#larcore-v05_00_01)
    -   [larbatch v01\_20\_03](#larbatch-v01_20_03)
    -   [larutils v1\_05\_01](#larutils-v1_05_01)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v05_00_02/larsoft-v05_00_02.html)

Purpose
--------------------

-   Add a few more cases to update\_sources.sh

New features
------------------------------

-   See [LArSoft 05.00.01 Release Notes](ReleaseNotes050001)

Breaking Changes
--------------------------------------

-   To update local code, run update\_sources.sh and UpdateCoreServices.py
    -   setup larsoft v05\_00\_02 (with qualifiers)
    -   UpdateCoreServices.py –doit \<mydir\>
    -   update\_sources.sh \<mydir\>
    -   It is safe to run the scripts more than once on the same code.
    -   You can run the scripts in either order.
-   There may be more changes required by the new core services changes than can be dealt with in a script.
    -   These changes are already in place for argoneutcode, dunetpc, lar1ndcode, lariatsoft, and uboonecode.
-   If you want to test code in your favorite feature branch, it might be easier in some cases to check out the appropriate v05 tag, then merge your changes rather than rely on the translation scripts to perform all the necessary architecture changes.
-   In all cases, please make sure your code is up to date with larsoft v04\_31\_01 before attempting a merge.

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v05\_00\_02
------------------------------------------

-   2016-02-16 Lynn Garren : larsoft v05\_00\_02 for larsoft v05\_00\_02
-   2016-02-16 Lynn Garren : a few more
-   2016-02-16 Lynn Garren : um …
-   2016-02-16 Lynn Garren : a few more fixes

lareventdisplay v05\_00\_01
----------------------------------------------------------

larexamples v05\_00\_01
--------------------------------------------------

larpandora v05\_00\_01
------------------------------------------------

larana v05\_00\_01
----------------------------------------

larreco v05\_00\_01
------------------------------------------

larsim v05\_00\_01
----------------------------------------

larevt v05\_00\_01
----------------------------------------

lardata v05\_00\_01
------------------------------------------

larcore v05\_00\_01
------------------------------------------

larbatch v01\_20\_03
--------------------------------------------

larutils v1\_05\_01
------------------------------------------
