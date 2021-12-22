LArSoft v09\_19\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v09\_19\_00 Release Notes](#LArSoft-v09_19_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_19\_00](#larsoft-v09_19_00)
    -   [lareventdisplay v09\_01\_04](#lareventdisplay-v09_01_04)
    -   [larexamples v09\_01\_04](#larexamples-v09_01_04)
    -   [larpandora v09\_05\_05](#larpandora-v09_05_05)
    -   [larsimrad v09\_01\_04](#larsimrad-v09_01_04)
    -   [larrecodnn v09\_06\_03](#larrecodnn-v09_06_03)
    -   [larwirecell v09\_02\_03](#larwirecell-v09_02_03)
    -   [larana v09\_02\_00](#larana-v09_02_00)
    -   [larreco v09\_06\_00](#larreco-v09_06_00)
    -   [larsim v09\_10\_03](#larsim-v09_10_03)
    -   [larg4 v09\_03\_03](#larg4-v09_03_03)
    -   [larevt v09\_02\_02](#larevt-v09_02_02)
    -   [lardata v09\_02\_01](#lardata-v09_02_01)
    -   [larcore v09\_02\_01](#larcore-v09_02_01)
    -   [larpandoracontent v03\_22\_08](#larpandoracontent-v03_22_08)
    -   [larsoftobj v09\_05\_01](#larsoftobj-v09_05_01)
    -   [lardataobj v09\_01\_01](#lardataobj-v09_01_01)
    -   [lardataalg v09\_04\_01](#lardataalg-v09_04_01)
    -   [larcorealg v09\_01\_01](#larcorealg-v09_01_01)
    -   [larcoreobj v09\_02\_00](#larcoreobj-v09_02_00)
    -   [webevd v09\_05\_02](#webevd-v09_05_02)
    -   [larbatch v01\_55\_00](#larbatch-v01_55_00)
    -   [larutils v1\_27\_04](#larutils-v1_27_04)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v09\_19\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_19_00/larsoft-v09_19_00.html)\
Download instructions for [just larsoftobj v09\_05\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_05_01/larsoftobj-v09_05_01.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

-   larana PR 10
    -   changes for icarus: add an option to extract pulse start time
    -   backwards compatible
-   larbatch PR 13
    -   see [https://indico.fnal.gov/event/48412/contributions/211429/attachments/141437/178118/larbatch\_containers\_mar23\_2021.pdf](https://indico.fnal.gov/event/48412/contributions/211429/attachments/141437/178118/larbatch_containers_mar23_2021.pdf)
    -   changes to accomodate current FIFE recommendations

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v09\_19\_00
------------------------------------------

-   2021-03-24 Lynn Garren : product versions
-   2021-03-24 Lynn Garren : larsoft v09\_19\_00 for larsoft v09\_19\_00

lareventdisplay v09\_01\_04
----------------------------------------------------------

larexamples v09\_01\_04
--------------------------------------------------

larpandora v09\_05\_05
------------------------------------------------

larsimrad v09\_01\_04
----------------------------------------------

larrecodnn v09\_06\_03
------------------------------------------------

larwirecell v09\_02\_03
--------------------------------------------------

larana v09\_02\_00
----------------------------------------

-   2021-03-24 Lynn Garren : larana v09\_02\_00 for larsoft v09\_19\_00
-   2021-03-24 Lynn Garren : Merge pull request \#10 from drinkingkazu/develop
-   2021-03-23 Drinking Kazu : Update OpHitAlg.cxx
-   2021-03-22 drinkingkazu : changes for icarus: add an option to extract pulse start time

larreco v09\_06\_00
------------------------------------------

larsim v09\_10\_03
----------------------------------------

larg4 v09\_03\_03
--------------------------------------

larevt v09\_02\_02
----------------------------------------

lardata v09\_02\_01
------------------------------------------

larcore v09\_02\_01
------------------------------------------

larpandoracontent v03\_22\_08
--------------------------------------------------------------

larsoftobj v09\_05\_01
------------------------------------------------

lardataobj v09\_01\_01
------------------------------------------------

lardataalg v09\_04\_01
------------------------------------------------

larcorealg v09\_01\_01
------------------------------------------------

larcoreobj v09\_02\_00
------------------------------------------------

webevd v09\_05\_02
----------------------------------------

larbatch v01\_55\_00
--------------------------------------------

-   2021-03-24 Lynn Garren : larbatch v01\_55\_00 for larsoft v09\_19\_00
-   2021-03-23 Lynn Garren : Merge pull request \#13 from hgreenlee/develop
-   2021-03-22 Herbert Greenlee : More python 2/3 fixes.
-   2021-03-19 Herbert Greenlee : Python 2 to 3 fixes.
-   2021-03-19 Herbert Greenlee : Add ability to specify singularity image.
-   2021-03-19 Herbert Greenlee : Add condor requirements flags.
-   2021-03-12 Herbert Greenlee : Use current ifdhc for copy back.
-   2021-03-12 Herbert Greenlee : Don’t invoke mrbslp.

larutils v1\_27\_04
------------------------------------------
