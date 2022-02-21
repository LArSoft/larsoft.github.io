LArSoft v05_15_01 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v05_15_01/larsoft-v05_15_01.html)

Purpose
--------------------

-   Final release in the v05 series
-   Changes to develop since v05_15_00

New features
------------------------------

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v05_15_01
------------------------------------------

-   2016-07-19 Lynn Garren : larsoft v05_15_01

lareventdisplay v05_08_01
----------------------------------------------------------

-   2016-07-19 Lynn Garren : lareventdisplay v05_08_01
-   2016-07-16 dorota : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/lareventdisplay into develop
-   2016-07-16 dorota : draw 3d trajectories only inside readout-window

larexamples v05_08_01
--------------------------------------------------

larpandora v05_09_11
------------------------------------------------

-   2016-07-19 Lynn Garren : larpandora v05_09_11

larana v05_10_00
----------------------------------------

-   2016-07-19 Lynn Garren : larana v05_10_00
-   2016-07-16 Kevin Wood : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larana into develop
-   2016-07-15 Kevin Wood : Pass vector arguments into functions via constant references
-   2016-07-14 Kevin Wood : Implemented previous changes in a backward compatible manner
-   2016-07-13 Kevin Wood : Set default value for the (newly implemented) shift variable for OpHit calibration to 0
-   2016-07-13 Kevin Wood : Implemented a shift variable for OpHit calibration

larreco v05_14_01
------------------------------------------

-   2016-07-19 Lynn Garren : larreco v05_14_01
-   2016-07-18 Alison Roeth : Fix signed/unsigned integer comparison bug in DisambigCheater_module
-   2016-07-15 Tyler Alion : Allow the DisambigCheater to correct for large ammounts of transverse drift of the electrons due to space charge.
-   2016-07-15 Robert Sulej : cleanup mistakes that Tingjun found
-   2016-07-15 Robert Sulej : quick fix for hit and cluster label names, befor it is reorganised in splitted pma modules
-   2016-07-14 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-07-11 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-07-11 Robert Sulej : Merge branch ‘feature/rnd_ImagePatterns’ into develop
-   2016-06-27 Robert Sulej : Merge branch ‘develop’ into feature/rnd_ImagePatterns
-   2016-06-24 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-06-24 Robert Sulej : try code using PtrMaker from Saba (commented out for the moment)

larsim v05_15_00
----------------------------------------

larevt v05_07_05
----------------------------------------

lardata v05_10_00
------------------------------------------

larcore v05_08_02
------------------------------------------

larbatch v01_23_02
--------------------------------------------

-   2016-07-19 Lynn Garren : Merge branch ‘release/v05_15_01’
-   2016-07-19 Lynn Garren : larbatch v01_23_02
-   2016-07-19 Herbert Greenlee : Add –jobsub-server option to all jobsub commands.
-   2016-07-18 Herbert Greenlee : Add back missing project_utilities import.
-   2016-07-18 Herbert Greenlee : Replace use of /tmp with tempfile.mkdtemp().

larutils v1_06_06
------------------------------------------

-   2016-07-19 Lynn Garren : Merge branch ‘release/v05_15_01’
-   2016-07-19 Lynn Garren : larutils v1_06_06
-   2016-07-19 Lynn Garren : update build
-   2016-07-18 Lynn Garren : add s36:e10
