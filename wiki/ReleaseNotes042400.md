LArSoft v04\_24\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v04\_24\_00 Release Notes](#LArSoft-v04_24_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04\_24\_00](#larsoft-v04_24_00)
    -   [lareventdisplay v04\_09\_00](#lareventdisplay-v04_09_00)
    -   [larexamples v04\_05\_05](#larexamples-v04_05_05)
    -   [larpandora v04\_06\_02](#larpandora-v04_06_02)
    -   [larana v04\_12\_04](#larana-v04_12_04)
    -   [larreco v04\_17\_02](#larreco-v04_17_02)
    -   [larsim v04\_11\_00](#larsim-v04_11_00)
    -   [larevt v04\_10\_02](#larevt-v04_10_02)
    -   [lardata v04\_14\_01](#lardata-v04_14_01)
    -   [larcore v04\_17\_00](#larcore-v04_17_00)
    -   [larbatch v01\_15\_01](#larbatch-v01_15_01)
    -   [larutils v1\_03\_02](#larutils-v1_03_02)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_24_00/larsoft-v04_24_00.html)

Purpose
--------------------

-   changes to develop since v04\_23\_00
-   add MUSUN
-   use ifdhc v1\_8\_6

New features
------------------------------

-   incorproate MUSON muon generator

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

  --------------- ------------ ----------- -----------------
  Product         Version      Qualifier   Notes
  nutools         v1\_14\_04   e7          uses ifdhc
  ifdh\_art       v1\_12\_05   e7:nu:s15   
  ifbeam          v1\_4\_13    e7:p279     
  nucondb         v1\_4\_13    e7:p279     
  ifdhc           v1\_8\_6     e7:p279     
  larsoft\_data   v0\_05\_00               MUSUN additions
  mrb             v1\_05\_02               
  --------------- ------------ ----------- -----------------

Change List
============================

larsoft v04\_24\_00
------------------------------------------

-   2015-09-24 Lynn Garren : larsoft v04\_24\_00 for larsoft v04\_24\_00
-   2015-09-24 Lynn Garren : update product versions
-   2015-09-24 Lynn Garren : can use the nu build again
-   2015-09-17 Lynn Garren : use the new checkPrerequisites

lareventdisplay v04\_09\_00
----------------------------------------------------------

-   2015-09-24 Lynn Garren : lareventdisplay v04\_09\_00 for larsoft v04\_24\_00
-   2015-09-22 Tingjun Yang : Plot vertices in Ortho3D views.
-   2015-09-22 Tingjun Yang : add a few protections.
-   2015-09-18 Tingjun Yang : Finish implementing selection of plane for calorimetry.

larexamples v04\_05\_05
--------------------------------------------------

-   2015-09-24 Lynn Garren : larexamples v04\_05\_05 for larsoft v04\_24\_00

larpandora v04\_06\_02
------------------------------------------------

-   2015-09-24 Lynn Garren : larpandora v04\_06\_02 for larsoft v04\_24\_00

larana v04\_12\_04
----------------------------------------

-   2015-09-24 Lynn Garren : larana v04\_12\_04 for larsoft v04\_24\_00
-   2015-09-23 Sarah Lockwitz : Merge branch ‘feature/lockwitz\_cosmicTaggerT0TempBugFix’ into develop Needed to fix a tagging bug that mis-tags objects when the full readout window is not equal to 3x the x drift of the detector
-   2015-09-23 Sarah Lockwitz : fixed an issue where we would mis-tag cosmics due to the full readout window being less than 3x the drift window (due to the lower E field)
-   2015-09-23 Sarah Lockwitz : fixed an issue where we would mis-tag cosmics due to the full readout window being less than 3x the drift window (due to the lower E field)
-   2015-09-20 drinkingkazu : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larana into develop
-   2015-09-20 drinkingkazu : Reserve right length of elements in vector –kazu

larreco v04\_17\_02
------------------------------------------

-   2015-09-24 Lynn Garren : larreco v04\_17\_02 for larsoft v04\_24\_00
-   2015-09-21 Tingjun Yang : Set minLength and maxLeng to be configurable parameters.
-   2015-09-17 Lynn Garren : larsoft v04\_23\_00
-   2015-09-16 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-09-16 Tingjun Yang : Change bool to float for the angle cut.
-   2015-09-16 Tingjun Yang : update fcl parameters
-   2015-09-16 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-09-11 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-09-06 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-08-26 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-08-20 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-08-12 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-08-12 Tingjun Yang : turn off autoflip for now

larsim v04\_11\_00
----------------------------------------

-   2015-09-24 Lynn Garren : larsim v04\_11\_00 for larsoft v04\_24\_00
-   2015-09-21 Thomas Warburton : Merge branch ‘develop’ into feature/php13tkw\_GaisserParam
-   2015-09-21 Thomas Warburton : Polishing MUSUN integration
-   2015-08-28 Thomas Warburton : Merge branch ‘develop’ into feature/php13tkw\_GaisserParam
-   2015-08-14 Thomas Warburton : Merging develop
-   2015-07-08 Thomas Warburton : Merge branch ‘develop’ into feature/php13tkw\_GaisserParam
-   2015-06-25 Thomas Warburton : Merge branch ‘develop’ into feature/php13tkw\_GaisserParam
-   2015-06-22 Thomas Warburton : Merge branch ‘develop’ into feature/php13tkw\_GaisserParam
-   2015-06-22 Thomas Warburton : Updating MUSUN\_module
-   2015-06-11 Thomas Warburton : Merge branch ‘develop’ into feature/php13tkw\_GaisserParam
-   2015-06-08 Thomas Warburton : Merge branch ‘develop’ into feature/php13tkw\_GaisserParam
-   2015-06-08 Thomas Warburton : Adding MUSUN Files
-   2015-06-03 Thomas Warburton : Renaming GaisserParam to more generic name, also adding MUSUN module
-   2015-05-28 Thomas Warburton : Merge branch ‘develop’ into feature/php13tkw\_GaisserParam
-   2015-05-21 Thomas Warburton : Merge branch ‘develop’ into feature/php13tkw\_GaisserParam
-   2015-05-07 Thomas Warburton : Changing file path searches again.

larevt v04\_10\_02
----------------------------------------

-   2015-09-24 Lynn Garren : larevt v04\_10\_02 for larsoft v04\_24\_00

lardata v04\_14\_01
------------------------------------------

-   2015-09-24 Lynn Garren : lardata v04\_14\_01 for larsoft v04\_24\_00
-   2015-09-18 Gianluca Petrillo : Bug fix: I ended up hiding from Reflex the fact that MCShower has a virtual table.
-   2015-09-17 Lynn Garren : larsoft v04\_23\_00
-   2015-09-17 William Foreman : More precise/accurate Rayleigh spectrum for 90K

larcore v04\_17\_00
------------------------------------------

larbatch v01\_15\_01
--------------------------------------------

-   2015-09-24 Lynn Garren : larbatch v01\_15\_01 for larsoft v04\_24\_00
-   2015-09-21 Herbert Greenlee : Escape dollar signs in dags.

larutils v1\_03\_02
------------------------------------------

-   2015-09-24 Lynn Garren : larutils v1\_03\_02 for larsoft v04\_24\_00
-   2015-09-24 Tingjun Yang : Make buildDUNE.sh work with mac.
-   2015-09-24 Tingjun Yang : test
-   2015-09-24 Tingjun Yang : add support for mac
-   2015-09-17 Lynn Garren : clean out all directories
