LArSoft v09\_24\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v09\_24\_00 Release Notes](#LArSoft-v09_24_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_24\_00](#larsoft-v09_24_00)
    -   [lareventdisplay v09\_01\_09](#lareventdisplay-v09_01_09)
    -   [larexamples v09\_01\_09](#larexamples-v09_01_09)
    -   [larpandora v09\_06\_00](#larpandora-v09_06_00)
    -   [larsimrad v09\_01\_09](#larsimrad-v09_01_09)
    -   [larrecodnn v09\_07\_00](#larrecodnn-v09_07_00)
    -   [larwirecell v09\_02\_07](#larwirecell-v09_02_07)
    -   [larana v09\_02\_05](#larana-v09_02_05)
    -   [larreco v09\_06\_05](#larreco-v09_06_05)
    -   [larsim v09\_13\_02](#larsim-v09_13_02)
    -   [larg4 v09\_03\_06](#larg4-v09_03_06)
    -   [larevt v09\_02\_05](#larevt-v09_02_05)
    -   [lardata v09\_02\_03](#lardata-v09_02_03)
    -   [larcore v09\_02\_01](#larcore-v09_02_01)
    -   [larpandoracontent v03\_23\_00](#larpandoracontent-v03_23_00)
    -   [larsoftobj v09\_05\_03](#larsoftobj-v09_05_03)
    -   [lardataobj v09\_01\_02](#lardataobj-v09_01_02)
    -   [lardataalg v09\_04\_03](#lardataalg-v09_04_03)
    -   [larcorealg v09\_01\_01](#larcorealg-v09_01_01)
    -   [larcoreobj v09\_02\_00](#larcoreobj-v09_02_00)
    -   [webevd v09\_05\_04](#webevd-v09_05_04)
    -   [larbatch v01\_56\_01](#larbatch-v01_56_01)
    -   [larutils v1\_28\_00](#larutils-v1_28_00)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v09\_24\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_24_00/larsoft-v09_24_00.html)\
Download instructions for [just larsoftobj v09\_05\_03](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_05_03/larsoftobj-v09_05_03.html)

Purpose
--------------------

-   NOTE: We are no longer supplying an e19 build.

-   changes in develop
-   approved PRs

New features
------------------------------

-   larpandoracontent PR 24
    -   This pull request contains functionality for a new three view based matching reconstruction procedure for the delta rays and michel electrons within the cosmic ray reconstruction pass of pandora. This PR accompanies the PR of the feature/larpandoracontent\_v03\_23\_00 branch to larpandora (LArSoft/larpandora\#16). It is important to mention that these PRs must be merged at the same time as this larpandoracontent PR relies on the accompanied larpandora PR adding information to our LArMCParticle objects.
    -   The new delta ray/michel electron reconstruction introduced in this pull request allows for a more sophisticated reconstruction than that which was achieved by the LArDeltaRayMatchingAlgorithm. Here, delta ray/michel electron clusters are matched across views and tools are employed to modify the clusters making them more pure and complete. In the LArThreeViewDeltaRayMatchingAlgorithm matches require three views and in the subsequent LArTwoViewDeltaRayMatchingAlgorithm this is reduced to two views, allowing us to recover clusters in the remaining third view and optimising the DR/michel electron reconstruction efficiency. Following this, there is a LArOneViewDeltaRayMatchingAlgorithm that creates delta ray/michel electron particles from any remaining clusters, using the parent cosmic ray to project into other views and making cluster merges where appropriate. Here is a presentation outlining these algorithms in more detail ([https://indico.fnal.gov/event/46502/contributions/206710/attachments/139379/174921/DeltaRay\_Collab\_27\_01\_21.pdf](https://indico.fnal.gov/event/46502/contributions/206710/attachments/139379/174921/DeltaRay_Collab_27_01_21.pdf)).
-   larpandora PR 16
    -   This pull request contains a small modification to larpandora/LArPandoraInterface/LArPandoraInput.cxx which adds the simb::MCParticle process information to the pandora LArMCParticle object parameters.
    -   This PR is a necessary companion to larpandoracontent PR 24

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   h5py v3\_1\_0d
    -   fix table file bug that resulted in an incorrect PYTHONPATH
-   mrb v4\_04\_04
    -   recognize garsoft

Change List
============================

larsoft v09\_24\_00
------------------------------------------

-   2021-05-25 Lynn Garren : larsoft v09\_24\_00 for larsoft v09\_24\_00
-   2021-05-25 Lynn Garren : cmake is finicky
-   2021-05-25 Lynn Garren : product versions
-   2021-05-25 Lynn Garren : mrb v4\_04\_04 and hep\_hpc\_toolkit v0\_14\_01\_02

lareventdisplay v09\_01\_09
----------------------------------------------------------

larexamples v09\_01\_09
--------------------------------------------------

larpandora v09\_06\_00
------------------------------------------------

-   2021-05-25 Lynn Garren : larpandora v09\_06\_00 for larsoft v09\_24\_00
-   2021-05-21 AndyChappell : Merge pull request [\#17](/redmine/issues/17 "Support: Email setup (Closed)") from imawby/feature/mc\_updates
-   2021-01-15 Andrew Chappell : Add MC process to Pandora MC particles

larsimrad v09\_01\_09
----------------------------------------------

larrecodnn v09\_07\_00
------------------------------------------------

larwirecell v09\_02\_07
--------------------------------------------------

larana v09\_02\_05
----------------------------------------

larreco v09\_06\_05
------------------------------------------

larsim v09\_13\_02
----------------------------------------

larg4 v09\_03\_06
--------------------------------------

larevt v09\_02\_05
----------------------------------------

lardata v09\_02\_03
------------------------------------------

larcore v09\_02\_01
------------------------------------------

larpandoracontent v03\_23\_00
--------------------------------------------------------------

-   2021-05-25 Lynn Garren : larpandoracontent v03\_23\_00 for larsoft v09\_24\_00
-   2021-05-24 John Marshall : Merge branch ‘feature/IsobelDeltaRay’ into feature/larpandoracontent\_v03\_23\_00
-   2021-05-24 Isobel Mawby : whitespace removal
-   2021-05-24 Isobel Mawby : clang formatting
-   2021-05-24 Isobel Mawby : Removal DR visualization tools
-   2021-05-21 AndyChappell : Merge pull request [\#165](/redmine/issues/165 "Bug: Sweave runs out of file connections (Closed)") from imawby/feature/DeltaRayPreClang
-   2021-05-03 Isobel Mawby : Account for empty calohitlists in GetClosestDistance and update DeltaRayMatchingContainer constructor
-   2021-04-30 Isobel Mawby : OneViewDeltaRayMatching PR update - creating a new DeltaRayMatchingContainers class
-   2021-04-29 Isobel Mawby : NViewAlg PR updates
-   2021-04-29 Isobel Mawby : PR CR/DR removal tool updates
-   2021-04-23 Isobel Mawby : TwoViewAmbiguousDeltaRayTool PR comments
-   2021-04-23 Isobel Mawby : AmbiguousDeltaRayTool PR comments
-   2021-04-23 Isobel Mawby : UnambiguousDeltaRayTool PR comments
-   2021-04-23 Isobel Mawby : DeltaRayMerge PR comments
-   2021-04-23 Isobel Mawby : typo fix
-   2021-04-21 Isobel Mawby : PR 2 updates
-   2021-04-21 Isobel Mawby : &hitType -\> hitType part 2
-   2021-04-21 Isobel Mawby : &hitType -\> hitType
-   2021-04-21 Isobel Mawby : Adding pParentAlgorithm member variable to the matching tools
-   2021-04-14 Isobel Mawby : versioning LArMCParticle
-   2021-04-14 Isobel Mawby : adding changes to DR algs
-   2021-04-04 Isobel Mawby : TwoViewCosmicRayRemovalTool cleanup
-   2021-04-03 Isobel Mawby : Cleanup TwoViewDeltaRayMerge
-   2021-04-03 Isobel Mawby : TwoViewDeltaRayMatching Cleanup
-   2021-04-02 Isobel Mawby : removing diffs from NViewMatchingAlgorithm.h
-   2021-04-02 Isobel Mawby : UnambiguousDeltaRay cleanup
-   2021-04-02 Isobel Mawby : LArThreeViewDeltaRayMatching alg cleanup
-   2021-04-02 Isobel Mawby : LArRemovalBaseTool cleanup
-   2021-04-02 Isobel Mawby : cleanup of LArOneViewDeltaRayMatching alg
-   2021-04-01 Isobel Mawby : First PR changes
-   2021-04-01 Isobel Mawby : NViewDeltaRayMatchingAlgorithm cleanup
-   2021-03-31 Isobel Mawby : DeltaRayRemoval Cleanup
-   2021-03-31 Isobel Mawby : DeltaRayParent cleanup
-   2021-03-31 Isobel Mawby : Cleanup of DeltaRayMergeTool
-   2021-03-31 Isobel Mawby : Cleanup of LArAmbiguousDeltaRayTool
-   2021-03-30 Isobel Mawby : Removing LArMCParticleHelper syntax diffs
-   2021-02-23 Isobel Mawby : minor AmbiguousDeltaRayTool cleanup
-   2021-02-23 Isobel Mawby : DeltaRayMerge tool cleanup
-   2021-02-23 Isobel Mawby : minor removal tool changes
-   2021-02-23 Isobel Mawby : Cleanup three view removal tools
-   2021-02-22 Isobel Mawby : DR vertex upgrade with visualization check
-   2021-02-18 Isobel Mawby : adding vertex visualization to validation alg
-   2021-02-15 Isobel Mawby : changes to LArMuonHelper to build
-   2021-02-15 Isobel Mawby : compiler issue
-   2021-02-04 Isobel Mawby : Validation updates
-   2021-02-04 Isobel Mawby : TwoViewCosmicRayRemoval bug fix
-   2021-02-03 Isobel Mawby : change multiple muon consideration logic in one view
-   2021-01-31 Isobel Mawby : one view update
-   2021-01-28 Isobel Mawby : one view matching fix
-   2021-01-28 Isobel Mawby : one view matching update
-   2021-01-28 Isobel Mawby : null ptr fix
-   2021-01-25 Isobel Mawby : discontinuity fix
-   2021-01-21 Isobel Mawby : code cleanup
-   2021-01-20 Isobel Mawby : adding two view to class structure
-   2021-01-20 Isobel Mawby : adding three view alg into class structure
-   2021-01-20 Isobel Mawby : code cleanup, before class creation
-   2021-01-20 Isobel Mawby : brackets for indents
-   2021-01-11 Isobel Mawby : two view updates
-   2021-01-07 Isobel Mawby : quick fix
-   2021-01-07 Isobel Mawby : adding prints
-   2021-01-07 Isobel Mawby : DRMerge code cleanup
-   2021-01-07 Isobel Mawby : CRRemoval and DRMerge tool improvements - hit network removal
-   2021-01-06 Isobel Mawby : removal of print statements for testing
-   2020-12-30 Isobel Mawby : fixing stray hits seg fault
-   2020-12-29 Isobel Mawby : seg fault fix
-   2020-12-29 Isobel Mawby : fixing seg fault
-   2020-12-29 Isobel Mawby : compiler issue
-   2020-12-29 Isobel Mawby : adding base tool - hit network removal
-   2020-12-28 Isobel Mawby : seg fault fix and CR removal code cleanup - remove hit network
-   2020-12-28 Isobel Mawby : bringing in validation alg part 2 - fixing helper functions
-   2020-12-28 Isobel Mawby : bringing in validation alg part 1 - remove hit network
-   2020-12-28 Isobel Mawby : Removing print statements for validation - remove hit network
-   2020-12-18 Isobel Mawby : fixing different compiler issue
-   2020-12-14 Isobel Mawby : improvements to cluster selection
-   2020-12-14 Isobel Mawby : before CRRemoval tool restriction to transverse tracks
-   2020-12-05 Isobel Mawby : adding in stray cluster addition to longspan tool - remove hit network
-   2020-12-04 Isobel Mawby : adding in hit collection - remove hit network
-   2020-11-29 Isobel Mawby : ShortSpan tool
-   2020-11-25 Isobel Mawby : Adding in muon proximity check
-   2020-11-23 Isobel Mawby : distance/numViews bug
-   2020-11-22 Isobel Mawby : Adding TwoViewClear tool and parent-child links
-   2020-11-06 Isobel Mawby : 2D-\>3D matching cluster truth print added
-   2020-11-04 Isobel Mawby : addition of delta ray tensor visualization algorithm
-   2020-11-04 Isobel Mawby : addition of three view delta ray matching algorithm
-   2021-05-20 Andrew Chappell : Update version and ChangeLog
-   2021-05-20 Valentin Volkl : Fix compilation: -Werror=range-loop-construct

larsoftobj v09\_05\_03
------------------------------------------------

lardataobj v09\_01\_02
------------------------------------------------

lardataalg v09\_04\_03
------------------------------------------------

larcorealg v09\_01\_01
------------------------------------------------

larcoreobj v09\_02\_00
------------------------------------------------

webevd v09\_05\_04
----------------------------------------

larbatch v01\_56\_01
--------------------------------------------

larutils v1\_28\_00
------------------------------------------
