LArSoft v08\_13\_00 Release Notes(#LArSoft-v08_13_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v08\_13\_00 Release Notes](#LArSoft-v08_13_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_13\_00](#larsoft-v08_13_00)
    -   [lareventdisplay v08\_03\_09](#lareventdisplay-v08_03_09)
    -   [larexamples v08\_01\_09](#larexamples-v08_01_09)
    -   [larg4 v08\_01\_09](#larg4-v08_01_09)
    -   [larpandora v08\_05\_02](#larpandora-v08_05_02)
    -   [larwirecell v08\_03\_02](#larwirecell-v08_03_02)
    -   [larana v08\_04\_00](#larana-v08_04_00)
    -   [larreco v08\_10\_01](#larreco-v08_10_01)
    -   [larsim v08\_04\_00](#larsim-v08_04_00)
    -   [larevt v08\_02\_05](#larevt-v08_02_05)
    -   [lardata v08\_03\_06](#lardata-v08_03_06)
    -   [larcore v08\_02\_02](#larcore-v08_02_02)
    -   [larpandoracontent v03\_14\_05](#larpandoracontent-v03_14_05)
    -   [larsoftobj v08\_08\_00](#larsoftobj-v08_08_00)
    -   [lardataobj v08\_02\_03](#lardataobj-v08_02_03)
    -   [lardataalg v08\_04\_02](#lardataalg-v08_04_02)
    -   [larcorealg v08\_05\_00](#larcorealg-v08_05_00)
    -   [larcoreobj v08\_02\_02](#larcoreobj-v08_02_02)
    -   [larbatch v01\_48\_01](#larbatch-v01_48_01)
    -   [larutils v1\_23\_13](#larutils-v1_23_13)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_13\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_13_00/larsoft-v08_13_00.html)\
Download instructions for [just larsoftobj v08\_08\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_08_00/larsoftobj-v08_08_00.html)

Purpose(#Purpose)
--------------------

-   changes in develop
-   approved feature branches

New features(#New-features)
------------------------------

-   updates to light simulation
    -   larsim larana feature/lightprop\_ugr\_mcr
    -   [https://indico.fnal.gov/event/20138/contribution/1/material/slides/0.pdf](https://indico.fnal.gov/event/20138/contribution/1/material/slides/0.pdf)

Bug fixes(#Bug-fixes)
------------------------

Updated dependencies(#Updated-dependencies)
----------------------------------------------

-   nutools v2\_26\_11
    -   Per a request (and outstanding issue on my plate) I’ve added code so that one can configure the pulse-train time structure of the beam when using the FHICL parameter, ala: `physics.producers.generator.SpillTimeConfig:  " evgb::EvtTimeFNALBeam booster"`
    -   with no additional parameters EvtTimeFNALBeam configures for a NuMI setup, with “booster” it’s a one batch pulse train.
    -   Additional parameters are configurable and will be documented on the [GENIEHelper wiki](/redmine/projects/nutools/wiki/GENIEHelper)

-   nusystematics v00\_02\_10

Change List(#Change-List)
============================

larsoft v08\_13\_00(#larsoft-v08_13_00)
------------------------------------------

-   2019-03-13 Lynn Garren : product versions
-   2019-03-13 Lynn Garren : larsoft v08\_13\_00 for larsoft v08\_13\_00

lareventdisplay v08\_03\_09(#lareventdisplay-v08_03_09)
----------------------------------------------------------

-   2019-03-13 Lynn Garren : lareventdisplay v08\_03\_09 for larsoft v08\_13\_00

larexamples v08\_01\_09(#larexamples-v08_01_09)
--------------------------------------------------

-   2019-03-13 Lynn Garren : larexamples v08\_01\_09 for larsoft v08\_13\_00

larg4 v08\_01\_09(#larg4-v08_01_09)
--------------------------------------

-   2019-03-13 Lynn Garren : larg4 v08\_01\_09 for larsoft v08\_13\_00

larpandora v08\_05\_02(#larpandora-v08_05_02)
------------------------------------------------

-   2019-03-13 Lynn Garren : larpandora v08\_05\_02 for larsoft v08\_13\_00

larwirecell v08\_03\_02(#larwirecell-v08_03_02)
--------------------------------------------------

-   2019-03-13 Lynn Garren : larwirecell v08\_03\_02 for larsoft v08\_13\_00

larana v08\_04\_00(#larana-v08_04_00)
----------------------------------------

-   2019-03-13 Lynn Garren : larana v08\_04\_00 for larsoft v08\_13\_00
-   2019-03-12 Andrzej Szelc : change loops to be by reference rather than by value
-   2019-03-11 Patrick Green : Merge branch ‘develop’ into feature/lightprop\_ugr\_mcr
-   2019-03-11 Patrick Green : Merge branch ‘develop’ into feature/lightprop\_ugr\_mcr
-   2019-03-08 Patrick Green : tidied up SimPhotonCounter\_module Allphotons reflected light fix
-   2019-03-04 Patrick Green : SimPhotonCounter LibraryBuildJob fix
-   2019-02-26 Patrick Green : Merge branch ‘feature/pgreen\_lightprop’ into feature/lightprop\_ugr\_mcr
-   2019-02-26 Patrick Green : SimPhotonCounter fix for litephotons reflected
-   2019-02-26 Andrzej Szelc : revert change
-   2019-02-26 Andrzej Szelc : small bracket fix
-   2019-02-26 Andrzej Szelc : modifying simPhotonCounter to take Reflected light, first try
-   2019-02-18 Diego Gamez : updating light analysis tree

larreco v08\_10\_01(#larreco-v08_10_01)
------------------------------------------

-   2019-03-13 Lynn Garren : larreco v08\_10\_01 for larsoft v08\_13\_00

larsim v08\_04\_00(#larsim-v08_04_00)
----------------------------------------

-   2019-03-13 Lynn Garren : larsim v08\_04\_00 for larsoft v08\_13\_00
-   2019-03-12 Lynn Garren : variable unused in this context
-   2019-03-11 Patrick Green : removed erroneous inclusion of LoadExtraMatProperties in photonvisibilityservice, must be manually set
-   2019-03-11 Patrick Green : set LoadExtraMatProperties:True in visibilty services for including visible component + updated default optical detector size to supercell dimensions
-   2019-03-11 Patrick Green : Merge branch ‘develop’ into feature/lightprop\_ugr\_mcr
-   2019-03-11 Patrick Green : Merge branch ‘develop’ into feature/lightprop\_ugr\_mcr
-   2019-03-07 Diego Gamez : reorganizing the definition of the photonvisibilityservices
-   2019-03-06 Patrick Green : fixed visible timing seg fault + added plane depth symmetry + cathode centre input for semi-analytic visible hits
-   2019-03-06 Robert Hatcher : get rid of obsolete use of GENIEHelper Environment fcl parameter; replace use of GEVGL pair with direct use of EventGeneratorList parameter
-   2019-03-06 Lynn Garren : larsoft v08\_12\_00
-   2019-03-06 Diego Gamez : not loading voxel scheme if semi-analytic estimation of number of photons
-   2019-03-06 Diego Gamez : some fixes in photon services
-   2019-03-04 David Rivera : Added the HadronHP physics list as well as parameters in the simulationservices.fcl to adjust the Proton range cut to be consistent with the Hadron HP physics lists which set this cut to 0.
-   2019-03-04 Alex Himmel : Clean up the fhicl configurations of the PhotonVisibilityService.
-   2019-02-26 Patrick Green : removing testing settings etc
-   2019-02-25 Patrick Green : added separate fcl for paramters
-   2019-02-25 Patrick Green : reflected timings added
-   2019-02-25 Patrick Green : added check opdet & scintpoint have same sign
-   2019-02-25 Patrick Green : fixed negative solid angle bug
-   2019-02-22 Patrick Green : reflected solid angle hits working, unresolved bug with disk solid angle -\> negative values
-   2019-02-21 Patrick Green : added reflected solid angle hits calculation
-   2019-02-20 Patrick Green : further restructuring of VUV GH input + now reads in vis hits parameters successfully
-   2019-02-20 Patrick Green : restructured VUV GH input
-   2019-02-18 Diego Gamez : towards semianalytic opfast mode

larevt v08\_02\_05(#larevt-v08_02_05)
----------------------------------------

-   2019-03-13 Lynn Garren : larevt v08\_02\_05 for larsoft v08\_13\_00

lardata v08\_03\_06(#lardata-v08_03_06)
------------------------------------------

-   2019-03-13 Lynn Garren : lardata v08\_03\_06 for larsoft v08\_13\_00

larcore v08\_02\_02(#larcore-v08_02_02)
------------------------------------------

larpandoracontent v03\_14\_05(#larpandoracontent-v03_14_05)
--------------------------------------------------------------

larsoftobj v08\_08\_00(#larsoftobj-v08_08_00)
------------------------------------------------

lardataobj v08\_02\_03(#lardataobj-v08_02_03)
------------------------------------------------

lardataalg v08\_04\_02(#lardataalg-v08_04_02)
------------------------------------------------

larcorealg v08\_05\_00(#larcorealg-v08_05_00)
------------------------------------------------

larcoreobj v08\_02\_02(#larcoreobj-v08_02_02)
------------------------------------------------

larbatch v01\_48\_01(#larbatch-v01_48_01)
--------------------------------------------

larutils v1\_23\_13(#larutils-v1_23_13)
------------------------------------------
