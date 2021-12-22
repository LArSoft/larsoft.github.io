LArSoft v06\_44\_00 Release Notes(#LArSoft-v06_44_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v06\_44\_00 Release Notes](#LArSoft-v06_44_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_44\_00](#larsoft-v06_44_00)
    -   [lareventdisplay v06\_10\_00](#lareventdisplay-v06_10_00)
    -   [larexamples v06\_05\_01](#larexamples-v06_05_01)
    -   [larpandora v06\_15\_01](#larpandora-v06_15_01)
    -   [larwirecell v06\_05\_05](#larwirecell-v06_05_05)
    -   [larana v06\_08\_01](#larana-v06_08_01)
    -   [larreco v06\_35\_00](#larreco-v06_35_00)
    -   [larsim v06\_27\_00](#larsim-v06_27_00)
    -   [larevt v06\_15\_01](#larevt-v06_15_01)
    -   [lardata v06\_25\_00](#lardata-v06_25_00)
    -   [larcore v06\_13\_01](#larcore-v06_13_01)
    -   [larpandoracontent v03\_07\_02](#larpandoracontent-v03_07_02)
    -   [larsoftobj v1\_23\_01](#larsoftobj-v1_23_01)
    -   [lardataobj v1\_18\_00](#lardataobj-v1_18_00)
    -   [larcorealg v1\_05\_01](#larcorealg-v1_05_01)
    -   [larcoreobj v1\_15\_01](#larcoreobj-v1_15_01)
    -   [larbatch v01\_32\_03](#larbatch-v01_32_03)
    -   [larutils v1\_16\_00](#larutils-v1_16_00)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_44\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_44_00/larsoft-v06_44_00.html)\
Download instructions for [just larsoftobj v1\_23\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_23_01/larsoftobj-v1_23_01.html)

Purpose(#Purpose)
--------------------

-   changes to develop
-   approved feature branch

New features(#New-features)
------------------------------

-   lardata and larsim feature/dgg\_lightpropv2
    -   This is a breaking change
    -   feature/team\_lightpropv2 is available for dunetpc, icaruscode, and lariatsoft

Bug fixes(#Bug-fixes)
------------------------

-   larcorealg fixes [\#17123](/redmine/issues/17123 "Bug: GeometryCore::WireIDsIntersect() gives wrong intersection points in TVector3 version (Closed)")

Updated dependencies(#Updated-dependencies)
----------------------------------------------

  --------------- ------------ ------------ --------------------------------------------------------------------------------------------------
  Product         Version      Qualifiers   Notes
  nutools         v2\_14\_02   e14          [NuTools\_Release\_Notes](/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_14_02)
  ifdh\_art       v2\_02\_01   e14:nu:s50   
  ifdhc           v2\_0\_9     e14:p2713d   
  ifdhc\_config   v2\_0\_9a                 
  mrb             v1\_09\_03                
  --------------- ------------ ------------ --------------------------------------------------------------------------------------------------

Change List(#Change-List)
============================

larsoft v06\_44\_00(#larsoft-v06_44_00)
------------------------------------------

-   2017-07-18 Lynn Garren : larsoft v06\_44\_00 for larsoft v06\_44\_00
-   2017-07-18 Lynn Garren : update product versions

lareventdisplay v06\_10\_00(#lareventdisplay-v06_10_00)
----------------------------------------------------------

-   2017-07-18 Lynn Garren : lareventdisplay v06\_10\_00 for larsoft v06\_44\_00
-   2017-07-17 baller : Merge branch ‘develop’ into feature/bb\_Showers
-   2017-07-03 baller : Merge branch ‘develop’ into feature/bb\_Showers
-   2017-06-23 baller : Merge branch ‘develop’ into feature/bb\_Showers
-   2017-06-15 baller : Merge branch ‘develop’ into feature/bb\_Showers
-   2017-05-12 baller : Merge branch ‘develop’ into feature/bb\_Showers
-   2017-05-12 baller : Check for valid dEdx vector
-   2017-05-03 baller : Merge branch ‘develop’ into feature/bb\_Showers
-   2017-05-01 baller : Merge branch ‘develop’ into feature/bb\_Showers
-   2017-04-18 baller : Change shower color scheme
-   2017-04-14 baller : Merge branch ‘develop’ into feature/bb\_Showers
-   2017-04-11 baller : Merge branch ‘develop’ into feature/bb\_Showers
-   2017-03-31 baller : Merge branch ‘develop’ into feature/bb\_Showers
-   2017-03-31 baller : Print information to cout.
-   2017-03-17 baller : Merge branch ‘develop’ into feature/bb\_Showers
-   2017-03-17 baller : Draw showers as a cone if no space points exist.
-   2017-03-17 baller : Draw 3D circle
-   2017-03-16 baller : Catch exception in DrawShower3D when no space points exist
-   2017-03-16 baller : Comment out annoying bogus error message.
-   2017-03-16 baller : Print shower drawing options help
-   2017-03-16 baller : Color code the shower cone by dE/dx
-   2017-03-14 baller : Draw showers in 2D

larexamples v06\_05\_01(#larexamples-v06_05_01)
--------------------------------------------------

-   2017-07-18 Lynn Garren : larexamples v06\_05\_01 for larsoft v06\_44\_00

larpandora v06\_15\_01(#larpandora-v06_15_01)
------------------------------------------------

-   2017-07-18 Lynn Garren : larpandora v06\_15\_01 for larsoft v06\_44\_00

larwirecell v06\_05\_05(#larwirecell-v06_05_05)
--------------------------------------------------

-   2017-07-18 Lynn Garren : larwirecell v06\_05\_05 for larsoft v06\_44\_00

larana v06\_08\_01(#larana-v06_08_01)
----------------------------------------

-   2017-07-18 Lynn Garren : larana v06\_08\_01 for larsoft v06\_44\_00

larreco v06\_35\_00(#larreco-v06_35_00)
------------------------------------------

-   2017-07-18 Lynn Garren : larreco v06\_35\_00 for larsoft v06\_44\_00
-   2017-07-17 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-07-17 Robert Sulej : add more protection on empty clusters and lack of multiple views in PMA trajectory-fit-only mode
-   2017-07-17 Christoph Alt : Updated the functions to calculate mean and width for the hit object
-   2017-07-12 Lynn Garren : larsoft v06\_43\_00
-   2017-07-12 Christoph Alt : Merge branch ‘develop’ into feature/chalt\_RawHitFindingDP
-   2017-07-12 Christoph Alt : Updated raw hti finder, added some .fcl parameters
-   2017-07-09 Christoph Alt : Added fcl parameters for raw hit finding an improved hit finding on long hits
-   2017-07-06 Christoph Alt : Merge branch ‘develop’ into feature/chalt\_RawHitFindingDP
-   2017-07-06 Christoph Alt : Implemented N+1 fitting for bad fits
-   2017-06-23 Christoph Alt : Added refitting option to the algorithm

larsim v06\_27\_00(#larsim-v06_27_00)
----------------------------------------

-   2017-07-18 Lynn Garren : larsim v06\_27\_00 for larsoft v06\_44\_00
-   2017-07-18 Lynn Garren : Merge branch ‘feature/dgg\_lightpropv2’ into release/v06\_44\_00
-   2017-07-17 Jeremy Hewes : Fixing bug in nnbar generator module, which was caused by changes in GENIE implementation.
-   2017-07-02 Diego Gamez : temporary fix for the optical photon first step bug in the estimation of the tim
-   2017-07-02 Diego Gamez : including g4 default opBoundary option
-   2017-07-02 Diego Gamez : including g4 default opBoundary option

larevt v06\_15\_01(#larevt-v06_15_01)
----------------------------------------

-   2017-07-18 Lynn Garren : larevt v06\_15\_01 for larsoft v06\_44\_00

lardata v06\_25\_00(#lardata-v06_25_00)
------------------------------------------

-   2017-07-18 Lynn Garren : lardata v06\_25\_00 for larsoft v06\_44\_00
-   2017-07-18 Lynn Garren : Merge branch ‘feature/dgg\_lightpropv2’ into release/v06\_44\_00
-   2017-07-02 Diego Gamez : including g4 opBoundary option
-   2017-07-02 Diego Gamez : including g4 opBoundary option
-   2017-07-02 Diego Gamez : including g4 opBoundary option
-   2017-07-02 Diego Gamez : including g4 opBoundary option
-   2017-07-02 Diego Gamez : including g4 opBoundary option

larcore v06\_13\_01(#larcore-v06_13_01)
------------------------------------------

-   2017-07-18 Lynn Garren : larcore v06\_13\_01 for larsoft v06\_44\_00

larpandoracontent v03\_07\_02(#larpandoracontent-v03_07_02)
--------------------------------------------------------------

larsoftobj v1\_23\_01(#larsoftobj-v1_23_01)
----------------------------------------------

-   2017-07-18 Lynn Garren : larsoftobj v1\_23\_01 for larsoft v06\_44\_00
-   2017-07-18 Lynn Garren : update product versions

lardataobj v1\_18\_00(#lardataobj-v1_18_00)
----------------------------------------------

larcorealg v1\_05\_01(#larcorealg-v1_05_01)
----------------------------------------------

-   2017-07-18 Lynn Garren : larcorealg v1\_05\_01 for larsoft v06\_44\_00
-   2017-07-12 Lynn Garren : larsoft v06\_43\_00
-   2017-07-12 Gianluca Petrillo : Fixed an include path contained in a script.

larcoreobj v1\_15\_01(#larcoreobj-v1_15_01)
----------------------------------------------

larbatch v01\_32\_03(#larbatch-v01_32_03)
--------------------------------------------

larutils v1\_16\_00(#larutils-v1_16_00)
------------------------------------------
