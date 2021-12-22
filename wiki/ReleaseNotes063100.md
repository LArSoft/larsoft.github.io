LArSoft v06\_31\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06\_31\_00 Release Notes](#LArSoft-v06_31_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_31\_00](#larsoft-v06_31_00)
    -   [lareventdisplay v06\_04\_01](#lareventdisplay-v06_04_01)
    -   [larexamples v06\_02\_01](#larexamples-v06_02_01)
    -   [larpandora v06\_09\_01](#larpandora-v06_09_01)
    -   [larwirecell v06\_03\_00](#larwirecell-v06_03_00)
    -   [larana v06\_04\_01](#larana-v06_04_01)
    -   [larreco v06\_24\_01](#larreco-v06_24_01)
    -   [larsim v06\_17\_00](#larsim-v06_17_00)
    -   [larevt v06\_10\_00](#larevt-v06_10_00)
    -   [lardata v06\_18\_00](#lardata-v06_18_00)
    -   [larcore v06\_07\_01](#larcore-v06_07_01)
    -   [larpandoracontent v03\_03\_00](#larpandoracontent-v03_03_00)
    -   [larsoftobj v1\_17\_00](#larsoftobj-v1_17_00)
    -   [lardataobj v1\_14\_01](#lardataobj-v1_14_01)
    -   [larcoreobj v1\_11\_00](#larcoreobj-v1_11_00)
    -   [larbatch v01\_29\_00](#larbatch-v01_29_00)
    -   [larutils v1\_12\_02](#larutils-v1_12_02)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_31\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_31_00/larsoft-v06_31_00.html)\
Download instructions for [just larsoftobj v1\_17\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_17_00/larsoftobj-v1_17_00.html)

Purpose
--------------------

-   changes to develop since v06\_29\_00/v06\_30\_00
-   use wirecell v0\_5\_2a

New features
------------------------------

-   larwirecell feature/bkirby\_wirecell\_v0\_5\_2
-   lardata, larevt, larsim feature/gp\_MoveDumpers

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

  ---------- ----------- ------------ -------
  Product    Version     Qualifiers   Notes
  wirecell   v0\_5\_2a   e10          
  ---------- ----------- ------------ -------

Change List
============================

larsoft v06\_31\_00
------------------------------------------

-   2017-04-05 Lynn Garren : larsoft v06\_31\_00 for larsoft v06\_31\_00
-   2017-04-05 Lynn Garren : update product versions
-   2017-04-03 Lynn Garren : s48
-   2017-04-03 Lynn Garren : fix source code manifest

lareventdisplay v06\_04\_01
----------------------------------------------------------

-   2017-04-05 Lynn Garren : lareventdisplay v06\_04\_01 for larsoft v06\_31\_00

larexamples v06\_02\_01
--------------------------------------------------

-   2017-04-05 Lynn Garren : larexamples v06\_02\_01 for larsoft v06\_31\_00

larpandora v06\_09\_01
------------------------------------------------

-   2017-04-05 Lynn Garren : larpandora v06\_09\_01 for larsoft v06\_31\_00

larwirecell v06\_03\_00
--------------------------------------------------

-   2017-04-05 Lynn Garren : larwirecell v06\_03\_00 for larsoft v06\_31\_00
-   2017-04-05 Lynn Garren : as found in feature/bkirby\_wirecell\_v0\_5\_2
-   2017-04-05 Lynn Garren : Merge branch ‘feature/bkirby\_wirecell\_v0\_5\_2’ into release/v06\_31\_00
-   2017-04-03 Lynn Garren : Merge branch ‘v06\_30\_00-branch’ into develop
-   2017-03-31 Brian Kirby : Fixed noise database line
-   2017-03-30 Lynn Garren : Revert “Updated larwirecell to work with WireCell UPS product v05\_02”
-   2017-03-30 Brian Kirby : Fix ups product\_dep file
-   2017-03-30 Brian Kirby : Updated larwirecell to work with WireCell UPS product v05\_02

larana v06\_04\_01
----------------------------------------

-   2017-04-05 Lynn Garren : larana v06\_04\_01 for larsoft v06\_31\_00

larreco v06\_24\_01
------------------------------------------

-   2017-04-05 Lynn Garren : larreco v06\_24\_01 for larsoft v06\_31\_00
-   2017-04-03 Lynn Garren : Merge branch ‘v06\_30\_00-branch’ into develop
-   2017-04-02 Robert Sulej : fix hit-by-hit mc truth info saved in txt file
-   2017-04-02 Robert Sulej : minor improvment in drift direction handling
-   2017-04-02 Robert Sulej : fix from Tracy, protect case when pfparticles have no assns to vertices
-   2017-03-31 Giuseppe Cerati : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-03-31 Giuseppe Cerati : add flag to avoid infs in case 1/p is not updated

larsim v06\_17\_00
----------------------------------------

-   2017-04-05 Lynn Garren : larsim v06\_17\_00 for larsoft v06\_31\_00
-   2017-04-04 Gianluca Petrillo : Moving DumpRawDigits module to lardata.

larevt v06\_10\_00
----------------------------------------

-   2017-04-05 Lynn Garren : larevt v06\_10\_00 for larsoft v06\_31\_00
-   2017-04-04 Gianluca Petrillo : Moved DumpWires module to lardata

lardata v06\_18\_00
------------------------------------------

-   2017-04-05 Lynn Garren : lardata v06\_18\_00 for larsoft v06\_31\_00
-   2017-04-04 Gianluca Petrillo : Moved DumpWires and DumpRawDigits modules into lardata.
-   2017-04-03 Lynn Garren : Merge branch ‘v06\_30\_00-branch’ into develop
-   2017-04-03 Herbert Greenlee : Merge remote-tracking branch ‘origin/feature/cerati\_larsoft-v06\_26\_01-plus-new-kffit’ into develop
-   2017-04-03 Herbert Greenlee : Update comments.
-   2017-04-03 Herbert Greenlee : Protect StatCollector against negative Variance.
-   2017-03-31 Giuseppe Cerati : add flag to avoid infs in case 1/p is not updated
-   2017-03-30 Giuseppe Cerati : add flag to avoid infs in case 1/p is not updated
-   2017-03-14 Giuseppe Cerati : better usage of temporaries speeds up execution
-   2017-03-23 Giuseppe Cerati : Merge remote-tracking branch ‘origin/feature/cerati\_kffitresiduals’ into larsoft-v06\_26\_01-plus-new-kffit

larcore v06\_07\_01
------------------------------------------

-   2017-04-05 Lynn Garren : larcore v06\_07\_01 for larsoft v06\_31\_00

larpandoracontent v03\_03\_00
--------------------------------------------------------------

larsoftobj v1\_17\_00
----------------------------------------------

-   2017-04-05 Lynn Garren : larsoftobj v1\_17\_00 for larsoft v06\_31\_00
-   2017-04-05 Lynn Garren : update product versions

lardataobj v1\_14\_01
----------------------------------------------

-   2017-04-05 Lynn Garren : lardataobj v1\_14\_01 for larsoft v06\_31\_00
-   2017-04-04 Gianluca Petrillo : Bug fix in lar::sparse\_vector::cend().

larcoreobj v1\_11\_00
----------------------------------------------

-   2017-04-05 Lynn Garren : larcoreobj v1\_11\_00 for larsoft v06\_31\_00
-   2017-04-03 Lynn Garren : Merge branch ‘v06\_30\_00-branch’ into develop
-   2017-03-30 Gianluca Petrillo : Added stream output operators for geometry vectors.
-   2017-03-30 Gianluca Petrillo : Added usage example for geo::MiddlePointAccumulator.

larbatch v01\_29\_00
--------------------------------------------

-   2017-04-05 Lynn Garren : larbatch v01\_29\_00 for larsoft v06\_31\_00
-   2017-04-04 Herbert Greenlee : Don’t generate fcl overrides for sam parameters (project url and process id). Instead use command line options.

larutils v1\_12\_02
------------------------------------------

-   2017-04-05 Lynn Garren : larutils v1\_12\_02 for larsoft v06\_31\_00
-   2017-04-03 Lynn Garren : add s48
-   2017-03-30 Tingjun Yang : Change back to use /grid/fermiapp.
-   2017-03-30 Tingjun Yang : Check argoneut cvmfs.
-   2017-03-30 Tingjun Yang : Use cvmfs.
-   2017-03-30 Tingjun Yang : Check mounted disks.
