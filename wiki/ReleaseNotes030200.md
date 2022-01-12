LArSoft v03\_02\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v03\_02\_00 Release Notes](#LArSoft-v03_02_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [Bug fixes](#Bug-fixes)
    -   [Known problems](#Known-problems)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v03\_02\_00](#larsoft-v03_02_00)
    -   [lareventdisplay v03\_02\_00](#lareventdisplay-v03_02_00)
    -   [larexamples v03\_02\_00](#larexamples-v03_02_00)
    -   [larpandora v03\_02\_00](#larpandora-v03_02_00)
    -   [larana v03\_02\_00](#larana-v03_02_00)
    -   [larsim v03\_02\_00](#larsim-v03_02_00)
    -   [larevt v03\_02\_00](#larevt-v03_02_00)
    -   [lardata v03\_02\_00](#lardata-v03_02_00)
    -   [larcore v03\_02\_00](#larcore-v03_02_00)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/projects/larsoft/v03_02_00/larsoft-v03_02_00.html)

Purpose
--------------------

This is a bug fix release for [\#7076](/redmine/issues/7076 "Bug: LArSoft v03_00_00 unable to read recob::Wire from MicroBooNE MCC 5 files (Closed)"). It also includes changes in development since v03\_01\_00.

Bug fixes
------------------------

Root v5\_31\_21b fixes bug [\#7076](/redmine/issues/7076 "Bug: LArSoft v03_00_00 unable to read recob::Wire from MicroBooNE MCC 5 files (Closed)").

Known problems
----------------------------------

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifier|Notes|
|root|v5\_34\_21b|e6:nu|see bug [\#7076](/redmine/issues/7076 "Bug: LArSoft v03_00_00 unable to read recob::Wire from MicroBooNE MCC 5 files (Closed)")|
|pandora|v00\_16e|e6:nu|uses root|
|genie|v2\_8\_0l|e6|uses root|
|art|v1\_12\_02|e6:nu|uses root|
|nutools|v1\_06\_03|e6|uses art|
|ifdh\_art|v1\_5\_4|e6:nu:s5|uses art|
|artdaq\_core|v1\_03\_07|e6:nu:s5|uses art|

Change List
============================

larsoft v03\_02\_00
------------------------------------------

-   2014-10-06 Lynn Garren : for larsoft v03\_02\_00

lareventdisplay v03\_02\_00
----------------------------------------------------------

-   2014-10-06 Lynn Garren : for larsoft v03\_02\_00

larexamples v03\_02\_00
--------------------------------------------------

-   2014-10-06 Lynn Garren : for larsoft v03\_02\_00

larpandora v03\_02\_00
------------------------------------------------

-   2014-10-06 Lynn Garren : for larsoft v03\_02\_00

larana v03\_02\_00
----------------------------------------

-   2014-10-06 Lynn Garren : for larsoft v03\_02\_00
    h2. larreco v03\_02\_00

-   2014-10-06 Lynn Garren : for larsoft v03\_02\_00
-   2014-09-30 Muhammad Elnimr : Removing an output command.

larsim v03\_02\_00
----------------------------------------

-   2014-10-06 Lynn Garren : for larsoft v03\_02\_00
-   2014-09-29 Thomas Junk : Add a space at the end of a comment to re-push (had a ruby timeout trying to push this before.
-   2014-09-29 Thomas Junk : Add qualifier matrix column for larsoft\_data’s dependence here
-   2014-09-29 Thomas Junk : Update comment

larevt v03\_02\_00
----------------------------------------

-   2014-10-06 Lynn Garren : for larsoft v03\_02\_00

lardata v03\_02\_00
------------------------------------------

-   2014-10-06 Lynn Garren : for larsoft v03\_02\_00
-   2014-09-30 Gianluca Petrillo : Moved unit tests in the proper subdirectories
-   2014-09-30 Gianluca Petrillo : Fixed a namespace issue for sparse\_vector library

larcore v03\_02\_00
------------------------------------------

-   2014-10-06 Lynn Garren : for larsoft v03\_02\_00
