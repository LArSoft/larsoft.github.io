LArSoft v09_27_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v09_27_00 Release Notes](#LArSoft-v09_27_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09_27_00](#larsoft-v09_27_00)
    -   [lareventdisplay v09_01_14](#lareventdisplay-v09_01_14)
    -   [larexamples v09_01_13](#larexamples-v09_01_13)
    -   [larpandora v09_07_00](#larpandora-v09_07_00)
    -   [larsimrad v09_01_13](#larsimrad-v09_01_13)
    -   [larrecodnn v09_08_00](#larrecodnn-v09_08_00)
    -   [larwirecell v09_02_10](#larwirecell-v09_02_10)
    -   [larana v09_02_10](#larana-v09_02_10)
    -   [larreco v09_06_10](#larreco-v09_06_10)
    -   [larsim v09_14_02](#larsim-v09_14_02)
    -   [larg4 v09_03_09](#larg4-v09_03_09)
    -   [larevt v09_02_08](#larevt-v09_02_08)
    -   [lardata v09_02_06](#lardata-v09_02_06)
    -   [larcore v09_02_02](#larcore-v09_02_02)
    -   [larpandoracontent v03_24_00](#larpandoracontent-v03_24_00)
    -   [larsoftobj v09_06_01](#larsoftobj-v09_06_01)
    -   [lardataobj v09_01_04](#lardataobj-v09_01_04)
    -   [lardataalg v09_04_05](#lardataalg-v09_04_05)
    -   [larcorealg v09_01_02](#larcorealg-v09_01_02)
    -   [larcoreobj v09_02_01](#larcoreobj-v09_02_01)
    -   [webevd v09_05_07](#webevd-v09_05_07)
    -   [larbatch v01_56_01](#larbatch-v01_56_01)
    -   [larutils v1_28_00](#larutils-v1_28_00)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v09_27_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_27_00/larsoft-v09_27_00.html)
Download instructions for [just larsoftobj v09_06_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_06_01/larsoftobj-v09_06_01.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

-   larpandoracontent PR 30
    -   This PR addresses a bug in the TrackSplittingTool where it would not consider splitting a long transverse track extending beyond the maximal x coordinate of associated clusters in the other matched views.
    -   Note that this fix will cause changes in output products where a matched cluster exhibits this extension beyond maximal x in the other matched clusters.
    -   This PR also includes additional process mappings for Pandora’s MC particle information and eliminates the need for the MasterAlgorithm to know about the internal structure of the parameter classes for LArCaloHit and LArMCParticle. These minor changes do not alter any output products.
-   larpandora PR 19
    -   companion to larpandoracontent PR 30
    -   This PR provides additional process mappings for Pandora’s MC particle information. Please note that this PR depends upon the associated larpandoracontent PR 30.
    -   No product changes will result directly from the content of this PR, but the associated larpandoracontent PR may produce product changes (see that PR for details).
-   larpandora PR 18
    -   Recently a bug was found where the shower track finder cheating tool did not work for photons. This is now fixed in this PR, and should work for both rolled-up and non rolled-up showers.
    -   I also added some additional warnings/info messages to help debug this sort of issue in the future.
    -   I also gave the cheating tools a bit of a tidy up, including moving some code that was shared between different tools into an alg.
-   larrecodnn PR 22
    -   added NuSonic, port of cmssw SONIC; renamed Trtis to Triton; provided Sonic version of PointIdAlg to serve as example of how to use Sonic api
    -   SONIC provides a more uniform and transparent interface to the Nvidia Triton inference client so that the user need not worry about Triton specific details and greatly simplifies its use. This will make it easier for experiments to use Triton in their ML applications. NuSonic is a simplified version of cmssw’s SONIC, porting over only the relevant parts to Larsoft.

Bug fixes
------------------------

-   larreco PR 33
    -   Update to Gnocchi Calorimetry Module for Use in ICARUS
    -   Updated to correctly use the Space-Charge service in ICARUS. Also some tweaks for refactoring.
    -   I have verified that the updated module does not change the output data at all except for the bugfixes.

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v09_27_00
------------------------------------------

-   2021-07-20 Lynn Garren : larsoft v09_27_00 for larsoft v09_27_00
-   2021-07-20 Lynn Garren : product versions

lareventdisplay v09_01_14
----------------------------------------------------------

-   2021-07-20 Lynn Garren : lareventdisplay v09_01_14 for larsoft v09_27_00

larexamples v09_01_13
--------------------------------------------------

larpandora v09_07_00
------------------------------------------------

-   2021-07-20 Lynn Garren : larpandora v09_07_00 for larsoft v09_27_00
-   2021-07-20 Lynn Garren : Merge branch ‘feature/dune_prod’ into release/v09_27_00
-   2021-07-20 Lynn Garren : Merge pull request \#18 from PandoraPFA/feature/shower_cheat
-   2021-07-16 AndyChappell : Merge pull request \#21 from PandoraPFA/feature/mc_proc
-   2021-06-25 Andrew Chappell : Add processes for QGSP_BERT and EM standard physics lists
-   2021-07-02 Edward Tyley : Address review comments
-   2021-07-01 Edward Tyley : Update track finder cheating tool to work for non-rolled up showers
-   2021-07-01 Edward Tyley : Raise warning and exit track fitting tool if too few spacepoints
-   2021-07-01 Edward Tyley : Add debugging output
-   2021-07-01 Edward Tyley : Moved common function into alg
-   2021-07-01 Edward Tyley : Tidy up cheating tools
-   2021-06-30 Edward Tyley : Make cheating of intial track hits sensible for photons

larsimrad v09_01_13
----------------------------------------------

larrecodnn v09_08_00
------------------------------------------------

-   2021-07-20 Lynn Garren : larrecodnn v09_08_00 for larsoft v09_27_00
-   2021-07-20 Lynn Garren : Merge pull request \#22 from mhlswang/develop
-   2021-07-19 Michael WAng : fix to address clang build failure
-   2021-07-14 Michael Wang : one more modification related PR recommendations
-   2021-07-14 Michael Wang : address Kyle’s recommendations from PR
-   2021-06-22 Michael Wang : added NuSonic, port of cmssw Sonic; renamed Trtis to Triton; added Sonic version of PointIdAlg

larwirecell v09_02_10
--------------------------------------------------

larana v09_02_10
----------------------------------------

-   2021-07-20 Lynn Garren : larana v09_02_10 for larsoft v09_27_00

larreco v09_06_10
------------------------------------------

-   2021-07-20 Lynn Garren : larreco v09_06_10 for larsoft v09_27_00
-   2021-07-20 Lynn Garren : Merge pull request \#33 from SBNSoftware/feature/gputnam-calo-update
-   2021-07-12 gputnam : Correctly apply GetPosOffsets in ICARUS. Refactoring tweaks.

larsim v09_14_02
----------------------------------------

larg4 v09_03_09
--------------------------------------

larevt v09_02_08
----------------------------------------

lardata v09_02_06
------------------------------------------

larcore v09_02_02
------------------------------------------

larpandoracontent v03_24_00
--------------------------------------------------------------

-   2021-07-20 Lynn Garren : larpandoracontent v03_24_00 for larsoft v09_27_00
-   2021-07-16 Andrew Chappell : Update version and ChangeLog
-   2021-07-16 AndyChappell : Merge pull request [redmine issue 177](https://cdcvs.fnal.gov/redmine/issues/177) from PandoraPFA/feature/mc_proc
-   2021-06-25 Andrew Chappell : Add processes for QGSP_BERT and EM standard physics lists
-   2021-07-16 AndyChappell : Merge pull request [redmine issue 178](https://cdcvs.fnal.gov/redmine/issues/178) from PandoraPFA/feature/param_refactor
-   2021-07-14 Andrew Chappell : Better name for parameter filling
-   2021-07-06 Andrew Chappell : Decouple LAr object parameters from master algorithm
-   2021-07-16 AndyChappell : Merge pull request [redmine issue 179](https://cdcvs.fnal.gov/redmine/issues/179) from AndyChappell/fix/track_splitting
-   2021-07-12 Andrew Chappell : Fix bug where tracks won’t split at max x position

larsoftobj v09_06_01
------------------------------------------------

lardataobj v09_01_04
------------------------------------------------

lardataalg v09_04_05
------------------------------------------------

larcorealg v09_01_02
------------------------------------------------

larcoreobj v09_02_01
------------------------------------------------

webevd v09_05_07
----------------------------------------

larbatch v01_56_01
--------------------------------------------

larutils v1_28_00
------------------------------------------
