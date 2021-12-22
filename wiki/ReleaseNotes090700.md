LArSoft v09\_07\_00 Release Notes(#LArSoft-v09_07_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v09\_07\_00 Release Notes](#LArSoft-v09_07_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_07\_00](#larsoft-v09_07_00)
    -   [lareventdisplay v09\_00\_09](#lareventdisplay-v09_00_09)
    -   [larexamples v09\_00\_08](#larexamples-v09_00_08)
    -   [larg4 v09\_01\_01](#larg4-v09_01_01)
    -   [larpandora v09\_02\_01](#larpandora-v09_02_01)
    -   [larsimrad v09\_00\_08](#larsimrad-v09_00_08)
    -   [larrecodnn v09\_02\_00](#larrecodnn-v09_02_00)
    -   [larwirecell v09\_01\_03](#larwirecell-v09_01_03)
    -   [larana v09\_00\_09](#larana-v09_00_09)
    -   [larreco v09\_03\_00](#larreco-v09_03_00)
    -   [larsim v09\_04\_01](#larsim-v09_04_01)
    -   [larevt v09\_00\_06](#larevt-v09_00_06)
    -   [lardata v09\_01\_01](#lardata-v09_01_01)
    -   [larcore v09\_00\_01](#larcore-v09_00_01)
    -   [larpandoracontent v03\_21\_00](#larpandoracontent-v03_21_00)
    -   [larsoftobj v09\_01\_01](#larsoftobj-v09_01_01)
    -   [lardataobj v09\_00\_01](#lardataobj-v09_00_01)
    -   [lardataalg v09\_01\_01](#lardataalg-v09_01_01)
    -   [larcorealg v09\_00\_01](#larcorealg-v09_00_01)
    -   [larcoreobj v09\_00\_00](#larcoreobj-v09_00_00)
    -   [webevd v09\_00\_06](#webevd-v09_00_06)
    -   [larbatch v01\_54\_00](#larbatch-v01_54_00)
    -   [larutils v1\_27\_01](#larutils-v1_27_01)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v09\_07\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_07_00/larsoft-v09_07_00.html)\
Download instructions for [just larsoftobj v09\_01\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_01_01/larsoftobj-v09_01_01.html)

Purpose(#Purpose)
--------------------

-   approved PRs

New features(#New-features)
------------------------------

-   larreco PR 21
    -   Thread safety and factorization improvements in DataProviderAlg. The code is not thread safe yet.
-   larrecodnn PR 12
    -   refactored EMTrackMichelId module
    -   Code improvements. The code is not thread safe yet.
-   larutils PR 7
    -   Update buildSBND.sh to use sbn distribution
-   larbatch PR 11
    -   updates from MicroBooNE MCC9

Bug fixes(#Bug-fixes)
------------------------

-   larpandora PR 12
    -   This PR consists of 3 separate bugfixes in PandoraModularShowerCreation:
    -   BayesianTruncationdEdx:
        -   Fix mismatched fcl parameter names (Fixes \#8)
        -   Removed reference to SBND specific prior file that was giving an error for not being found in ICARUS.
    -   TrajPointdEdx:
        -   Fix issue with initialisation of max\_hits when calculating the best plane which lead to planes with 0 hits being taken as the best plane. Now require at least one plane to have at least one hit or return an error, the previously intended behaviour hopefully implemented correctly now
        -   Added additional debug output for ease of future debugging
    -   NumElectronsEnergy:
        -   Switch from using views to planes to make it work in ICARUS
        -   Refactored to more closely mirror the LinearEnergy tool
        -   ShowerEnergOutputLabel is now a fcl param rather than hard-coded
        -   NumElectrons tool now calculates a best plane in the same way as the Linear energy tool (plane with the most hits)
    -   No changes to output are expected with default configurations.
-   larsoft PR 16
    -   documentation fix

Updated dependencies(#Updated-dependencies)
----------------------------------------------

Change List(#Change-List)
============================

larsoft v09\_07\_00(#larsoft-v09_07_00)
------------------------------------------

-   2020-10-14 Lynn Garren : larsoft v09\_07\_00 for larsoft v09\_07\_00
-   2020-10-14 Lynn Garren : product versions
-   2020-10-13 Lynn Garren : Merge pull request \#16 from PetrilloAtWork/feature/gp\_documentFix
-   2020-04-29 Gianluca Petrillo : Minor documentation fixes

lareventdisplay v09\_00\_09(#lareventdisplay-v09_00_09)
----------------------------------------------------------

-   2020-10-14 Lynn Garren : lareventdisplay v09\_00\_09 for larsoft v09\_07\_00

larexamples v09\_00\_08(#larexamples-v09_00_08)
--------------------------------------------------

larg4 v09\_01\_01(#larg4-v09_01_01)
--------------------------------------

larpandora v09\_02\_01(#larpandora-v09_02_01)
------------------------------------------------

-   2020-10-14 Lynn Garren : larpandora v09\_02\_01 for larsoft v09\_07\_00
-   2020-10-13 Lynn Garren : Merge pull request \#12 from PandoraPFA/feature/etyley\_dEdx
-   2020-10-12 Edward Tyley : Fix C7 build
-   2020-10-12 AndyChappell : Merge pull request \#11 from etyley/bugfix/etyley\_showerEnergy
-   2020-10-09 Edward Tyley : Fix initialisations of doubles as ints. Fix typo in comment
-   2020-10-09 Edward Tyley : Change to using PlaneID\_t for best plane
-   2020-10-08 Edward Tyley : Updated energy calculation to use planes over views for ICARUS
-   2020-10-08 AndyChappell : Merge pull request \#10 from etyley/bugfix/etyley\_dEdx
-   2020-10-06 Edward Tyley : Corrected fcl param names and removed reference to SBND specific prior file
-   2020-10-06 Edward Tyley : Added debug output and fix initialisation of max\_hits so planes with 0 hits are not considered

larsimrad v09\_00\_08(#larsimrad-v09_00_08)
----------------------------------------------

larrecodnn v09\_02\_00(#larrecodnn-v09_02_00)
------------------------------------------------

-   2020-10-14 Lynn Garren : larrecodnn v09\_02\_00 for larsoft v09\_07\_00
-   2020-10-14 Lynn Garren : Merge branch ‘feature/team\_for\_mt’ into release/v09\_07\_00
-   2020-10-13 Chris Green : Attempt to format using clang-format 10.0.1 after removing tabs.
-   2020-10-13 Saba Sehrish : removed unnecessary headers and minor fixes
-   2020-05-29 Saba Sehrish : refactored EMTrackMichelId module with thread safety and code improvements in progress

larwirecell v09\_01\_03(#larwirecell-v09_01_03)
--------------------------------------------------

larana v09\_00\_09(#larana-v09_00_09)
----------------------------------------

-   2020-10-14 Lynn Garren : larana v09\_00\_09 for larsoft v09\_07\_00

larreco v09\_03\_00(#larreco-v09_03_00)
------------------------------------------

-   2020-10-14 Lynn Garren : larreco v09\_03\_00 for larsoft v09\_07\_00
-   2020-10-14 Lynn Garren : Merge branch ‘feature/team\_for\_mt’ into release/v09\_07\_00
-   2020-09-04 Saba Sehrish : Thread safety and factorization improvements.

larsim v09\_04\_01(#larsim-v09_04_01)
----------------------------------------

larevt v09\_00\_06(#larevt-v09_00_06)
----------------------------------------

lardata v09\_01\_01(#lardata-v09_01_01)
------------------------------------------

larcore v09\_00\_01(#larcore-v09_00_01)
------------------------------------------

larpandoracontent v03\_21\_00(#larpandoracontent-v03_21_00)
--------------------------------------------------------------

larsoftobj v09\_01\_01(#larsoftobj-v09_01_01)
------------------------------------------------

lardataobj v09\_00\_01(#lardataobj-v09_00_01)
------------------------------------------------

lardataalg v09\_01\_01(#lardataalg-v09_01_01)
------------------------------------------------

larcorealg v09\_00\_01(#larcorealg-v09_00_01)
------------------------------------------------

larcoreobj v09\_00\_00(#larcoreobj-v09_00_00)
------------------------------------------------

webevd v09\_00\_06(#webevd-v09_00_06)
----------------------------------------

larbatch v01\_54\_00(#larbatch-v01_54_00)
--------------------------------------------

-   2020-10-14 Lynn Garren : larbatch v01\_54\_00 for larsoft v09\_07\_00
-   2020-10-13 Lynn Garren : Merge pull request \#11 from hgreenlee/greenlee\_uboone\_update
-   2020-10-07 Herbert Greenlee : Update and simplify subdirectory logic.
-   2020-10-07 Herbert Greenlee : Add command line option –nocheck.
-   2020-10-07 Herbert Greenlee : Add stage xml elements \<dirsize\> and \<dirlevels\>.
-   2020-10-06 Herbert Greenlee : Merge remote-tracking branch ‘upstream/develop’ into greenlee\_uboone\_update
-   2020-10-06 Herbert Greenlee : Fix import.
-   2020-10-06 Herbert Greenlee : Add xml element ups to specify top level products.
-   2020-09-30 Herbert Greenlee : Add ability to parse xml files with minimal checking.
-   2020-09-30 Herbert Greenlee : Check exit statuses in wrapped scripts.

larutils v1\_27\_01(#larutils-v1_27_01)
------------------------------------------

-   2020-10-14 Lynn Garren : larutils v1\_27\_01 for larsoft v09\_07\_00
-   2020-10-13 Lynn Garren : Merge pull request \#7 from ascarff/patch-1
-   2020-10-12 Andrew Scarff : Update buildSBND.sh to include sbn manifest
