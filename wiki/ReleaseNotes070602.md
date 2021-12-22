LArSoft v07\_06\_02 Release Notes(#LArSoft-v07_06_02-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v07\_06\_02 Release Notes](#LArSoft-v07_06_02-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v07\_06\_02](#larsoft-v07_06_02)
    -   [lareventdisplay v07\_01\_06](#lareventdisplay-v07_01_06)
    -   [larexamples v07\_00\_09](#larexamples-v07_00_09)
    -   [larg4 v07\_01\_04](#larg4-v07_01_04)
    -   [larpandora v07\_01\_06](#larpandora-v07_01_06)
    -   [larwirecell v07\_01\_02](#larwirecell-v07_01_02)
    -   [larana v07\_02\_02](#larana-v07_02_02)
    -   [larreco v07\_04\_02](#larreco-v07_04_02)
    -   [larsim v07\_03\_02](#larsim-v07_03_02)
    -   [larevt v07\_00\_08](#larevt-v07_00_08)
    -   [lardata v07\_00\_08](#lardata-v07_00_08)
    -   [larcore v07\_00\_02](#larcore-v07_00_02)
    -   [larpandoracontent v03\_14\_02](#larpandoracontent-v03_14_02)
    -   [larsoftobj v07\_03\_01](#larsoftobj-v07_03_01)
    -   [lardataobj v07\_02\_03](#lardataobj-v07_02_03)
    -   [lardataalg v07\_01\_01](#lardataalg-v07_01_01)
    -   [larcorealg v07\_01\_01](#larcorealg-v07_01_01)
    -   [larcoreobj v07\_00\_01](#larcoreobj-v07_00_01)
    -   [larbatch v01\_45\_00](#larbatch-v01_45_00)
    -   [larutils v1\_23\_03](#larutils-v1_23_03)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v07\_06\_02](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v07_06_02/larsoft-v07_06_02.html)\
Download instructions for [just larsoftobj v07\_03\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v07_03_01/larsoftobj-v07_03_01.html)

Purpose(#Purpose)
--------------------

-   changes in larsim

New features(#New-features)
------------------------------

-   larsim feature/chalt\_dualphasechargedrift
    -   updates the SimDriftElectrons\_module.cc in larsim to support charge drift in x, y and z. The physics of the electron drift is unchanged.

Bug fixes(#Bug-fixes)
------------------------

-   POT bug fix
    -   larsim feature/yatesla\_MultipleSubrunPOT
    -   [https://indico.fnal.gov/event/18470/contribution/1/material/slides/0.pdf](https://indico.fnal.gov/event/18470/contribution/1/material/slides/0.pdf)

Updated dependencies(#Updated-dependencies)
----------------------------------------------

Change List(#Change-List)
============================

larsoft v07\_06\_02(#larsoft-v07_06_02)
------------------------------------------

-   2018-09-26 Lynn Garren : larsoft v07\_06\_02 for larsoft v07\_06\_02
-   2018-09-26 Lynn Garren : product versions
-   2018-09-26 Lynn Garren : update dependency database

lareventdisplay v07\_01\_06(#lareventdisplay-v07_01_06)
----------------------------------------------------------

-   2018-09-26 Lynn Garren : lareventdisplay v07\_01\_06 for larsoft v07\_06\_02

larexamples v07\_00\_09(#larexamples-v07_00_09)
--------------------------------------------------

-   2018-09-26 Lynn Garren : larexamples v07\_00\_09 for larsoft v07\_06\_02

larg4 v07\_01\_04(#larg4-v07_01_04)
--------------------------------------

-   2018-09-26 Lynn Garren : larg4 v07\_01\_04 for larsoft v07\_06\_02

larpandora v07\_01\_06(#larpandora-v07_01_06)
------------------------------------------------

-   2018-09-26 Lynn Garren : larpandora v07\_01\_06 for larsoft v07\_06\_02

larwirecell v07\_01\_02(#larwirecell-v07_01_02)
--------------------------------------------------

larana v07\_02\_02(#larana-v07_02_02)
----------------------------------------

-   2018-09-26 Lynn Garren : larana v07\_02\_02 for larsoft v07\_06\_02

larreco v07\_04\_02(#larreco-v07_04_02)
------------------------------------------

-   2018-09-26 Lynn Garren : larreco v07\_04\_02 for larsoft v07\_06\_02
-   2018-09-26 Lynn Garren : larreco v07\_04\_02 for larsoft v07\_06\_02

larsim v07\_03\_02(#larsim-v07_03_02)
----------------------------------------

-   2018-09-26 Lynn Garren : larsim v07\_03\_02 for larsoft v07\_06\_02
-   2018-09-26 Lynn Garren : Merge branch ‘feature/chalt\_dualphasechargedrift’ into release/v07\_06\_02
-   2018-09-25 Lauren Yates : Merge branch ‘develop’ into feature/yatesla\_MultipleSubrunPOT
-   2018-09-23 Jason Stock : Opps. Forgot to remove line in makefile pointing to dune when I removed DUNE specific code to get ready for my merge.
-   2018-09-23 Jason Stock : Merge branch ‘develop’ of [http://cdcvs.fnal.gov/projects/larsim](http://cdcvs.fnal.gov/projects/larsim) into develop
-   2018-09-23 Jason Stock : Removing code from MCCheater that is DUNE specific before merging with the common branch.
-   2018-09-21 Jason Stock : Adding checks to a couple functions that require access to the event. These checks will make innappropraite use of these functions fail gracefully (throw with an error message instead of segfault).
-   2018-09-21 Jason Stock : Fixing an issue with backtracker checks (still waiting on art updates for event caching and service event access).
-   2018-09-21 Christoph Alt : speeding up the code
-   2018-09-15 Jason Stock : Merge remote branch ‘origin/feature/JStock\_ChannelCorrectedSDPEnergy’ into develop
-   2018-09-12 Jason Stock : Merge remote branch ‘origin/feature/JStock\_RadioGenSignal’ into feature/JStock\_ChannelCorrectedSDPEnergy
-   2018-09-12 Christoph Alt : Merge branch ‘develop’ into feature/chalt\_dualphasechargedrift
-   2018-09-12 Christoph Alt : Merge branch ‘develop’ into feature/chalt\_dualphasechargedrift
-   2018-09-12 Christoph Alt : Support charge drift in y and z
-   2018-09-11 Jason Stock : Minor changes for DivRec Backtracking.
-   2018-09-11 Jason Stock : Merge tag ‘LARSOFT\_SUITE\_v07\_05\_00’ into feature/JStock\_ChannelCorrectedSDPEnergy
-   2018-09-08 Lauren Yates : Minor updates to POT counting for files with multiple subruns
-   2018-09-06 Lauren Yates : Adding support for POT counting in files with multiple subruns
-   2018-08-11 Jason Stock : Adding one more reference to DivRecs in CMake files
-   2018-08-11 Jason Stock : Changing directory for DivRecs.
-   2018-08-11 Jason Stock : Merge tag ‘LARSOFT\_SUITE\_v06\_85\_00’ into feature/JStock\_ChannelCorrectedSDPEnergy
-   2018-08-11 Jason Stock : Adding DivRec controls TODO: make DivRec controls work for experiments without DivRecs (For now only implimented in DUNE).
-   2018-06-20 Jason Stock : Code for perchannel corrected smart function in PhotonBackTracker. This is poison. This code is very fragile, and should not be relied on.
-   2018-06-18 Jason Stock : Adding initial code for channel corrected energies in PhotonBacktracker.

larevt v07\_00\_08(#larevt-v07_00_08)
----------------------------------------

lardata v07\_00\_08(#lardata-v07_00_08)
------------------------------------------

larcore v07\_00\_02(#larcore-v07_00_02)
------------------------------------------

larpandoracontent v03\_14\_02(#larpandoracontent-v03_14_02)
--------------------------------------------------------------

-   2018-09-26 Lynn Garren : larpandoracontent v03\_14\_02 for larsoft v07\_06\_02
-   2018-09-20 Steven Green : Merge branch ‘updates’
-   2018-09-20 Steven Green : Update version and change log.
-   2018-09-20 Steven Green : Merge pull request \#72 from StevenGreen1/feature/MetadataStitchedCosmics
-   2018-09-06 Steven Green : Reordered setting of IsClearCosmic metadata.
-   2018-09-06 Steven Green : Added IsClearCosmic label to metadata for stitched cosmic rays.
-   2018-08-23 Lynn Garren : larsoft v07\_03\_00
-   2018-08-22 Lynn Garren : larpandoracontent v03\_14\_01 for larsoft v07\_03\_00
-   2018-08-22 Lynn Garren : v03\_14\_01 with e17 default

larsoftobj v07\_03\_01(#larsoftobj-v07_03_01)
------------------------------------------------

lardataobj v07\_02\_03(#lardataobj-v07_02_03)
------------------------------------------------

lardataalg v07\_01\_01(#lardataalg-v07_01_01)
------------------------------------------------

larcorealg v07\_01\_01(#larcorealg-v07_01_01)
------------------------------------------------

larcoreobj v07\_00\_01(#larcoreobj-v07_00_01)
------------------------------------------------

larbatch v01\_45\_00(#larbatch-v01_45_00)
--------------------------------------------

larutils v1\_23\_03(#larutils-v1_23_03)
------------------------------------------

-   2018-09-26 Lynn Garren : larutils v1\_23\_03 for larsoft v07\_06\_02
-   2018-09-21 Thomas Junk : add a date printout, change ntries to 20, and sleep a minute between retries on the git clone
-   2018-09-21 Thomas Junk : try 100 times
