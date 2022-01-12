LArSoft v06_00_01 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06_00_01 Release Notes](#LArSoft-v06_00_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06_00_01](#larsoft-v06_00_01)
    -   [lareventdisplay v06_00_01](#lareventdisplay-v06_00_01)
    -   [larexamples v06_00_00](#larexamples-v06_00_00)
    -   [larpandora v06_00_01](#larpandora-v06_00_01)
    -   [larana v06_00_01](#larana-v06_00_01)
    -   [larreco v06_00_01](#larreco-v06_00_01)
    -   [larsim v06_00_00](#larsim-v06_00_00)
    -   [larevt v06_00_00](#larevt-v06_00_00)
    -   [lardata v06_00_00](#lardata-v06_00_00)
    -   [larcore v06_00_00](#larcore-v06_00_00)
    -   [larsimobj v1_04_00](#larsimobj-v1_04_00)
    -   [lardataobj v1_04_00](#lardataobj-v1_04_00)
    -   [larcoreobj v1_04_00](#larcoreobj-v1_04_00)
    -   [larbatch v01_23_03](#larbatch-v01_23_03)
    -   [larutils v1_06_07](#larutils-v1_06_07)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_00_01/larsoft-v06_00_01.html)

Purpose
--------------------

-   changes to develop since v06_00_00

New features
------------------------------

-   Please see the v06_00_00 [Release Notes](ReleaseNotes060000)

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|mrb|v1_07_04||mrb g larsoftobj_suite now available|

Change List
============================

larsoft v06_00_01
------------------------------------------

-   2016-07-19 Lynn Garren : larsoft v06_00_01 for larsoft v06_00_01
-   2016-07-19 Lynn Garren : fix quals
-   2016-07-19 Lynn Garren : update product versions
-   2016-07-19 Lynn Garren : Merge branch ‘v06_00_00_art2’ into develop
-   2016-07-18 Lynn Garren : mrb v1_07_03

lareventdisplay v06_00_01
----------------------------------------------------------

-   2016-07-19 Lynn Garren : lareventdisplay v06_00_01
-   2016-07-19 Lynn Garren : Merge branch ‘v06_00_00_art2’ into develop
-   2016-07-16 dorota : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/lareventdisplay into develop
-   2016-07-16 dorota : draw 3d trajectories only inside readout-window

larexamples v06_00_00
--------------------------------------------------

larpandora v06_00_01
------------------------------------------------

-   2016-07-19 Lynn Garren : larpandora v06_00_01

larana v06_00_01
----------------------------------------

-   2016-07-19 Lynn Garren : larana v06_00_01
-   2016-07-19 Lynn Garren : Merge branch ‘v06_00_00_art2’ into develop
-   2016-07-16 Kevin Wood : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larana into develop
-   2016-07-15 Kevin Wood : Pass vector arguments into functions via constant references
-   2016-07-14 Kevin Wood : Implemented previous changes in a backward compatible manner
-   2016-07-13 Kevin Wood : Set default value for the (newly implemented) shift variable for OpHit calibration to 0
-   2016-07-13 Kevin Wood : Implemented a shift variable for OpHit calibration

larreco v06_00_01
------------------------------------------

-   2016-07-19 Lynn Garren : larreco v06_00_01
-   2016-07-19 Lynn Garren : Merge branch ‘v06_00_00_art2’ into develop
-   2016-07-18 Alison Roeth : Fix signed/unsigned integer comparison bug in DisambigCheater_module
-   2016-07-15 Tyler Alion : Allow the DisambigCheater to correct for large ammounts of transverse drift of the electrons due to space charge.
-   2016-07-15 Robert Sulej : cleanup mistakes that Tingjun found

larsim v06_00_00
----------------------------------------

larevt v06_00_00
----------------------------------------

lardata v06_00_00
------------------------------------------

larcore v06_00_00
------------------------------------------

larsimobj v1_04_00
--------------------------------------------

lardataobj v1_04_00
----------------------------------------------

larcoreobj v1_04_00
----------------------------------------------

larbatch v01_23_03
--------------------------------------------

-   2016-07-19 Lynn Garren : Merge branch ‘release/v06_00_01’
-   2016-07-19 Lynn Garren : larbatch v01_23_03
-   2016-07-19 Herbert Greenlee : Don’t allow –jobsub-server options in dags.
-   2016-07-19 Lynn Garren : Merge branch ‘release/v05_15_01’
-   2016-07-19 Lynn Garren : larbatch v01_23_02
-   2016-07-19 Herbert Greenlee : Add –jobsub-server option to all jobsub commands.
-   2016-07-18 Herbert Greenlee : Add back missing project_utilities import.
-   2016-07-18 Herbert Greenlee : Replace use of /tmp with tempfile.mkdtemp().

larutils v1_06_07
------------------------------------------

-   2016-07-19 Lynn Garren : larutils v1_06_07 for larsoft v06_00_01
-   2016-07-19 Lynn Garren : update oldver
-   2016-07-19 Lynn Garren : Merge branch ‘release/v05_15_01’
-   2016-07-19 Lynn Garren : larutils v1_06_06
-   2016-07-19 Lynn Garren : update build
-   2016-07-18 Lynn Garren : add s36:e10
