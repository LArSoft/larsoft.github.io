LArSoft v09\_05\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v09\_05\_00 Release Notes](#LArSoft-v09_05_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_05\_00](#larsoft-v09_05_00)
    -   [lareventdisplay v09\_00\_07](#lareventdisplay-v09_00_07)
    -   [larexamples v09\_00\_07](#larexamples-v09_00_07)
    -   [larg4 v09\_01\_00](#larg4-v09_01_00)
    -   [larpandora v09\_01\_03](#larpandora-v09_01_03)
    -   [larsimrad v09\_00\_07](#larsimrad-v09_00_07)
    -   [larrecodnn v09\_01\_02](#larrecodnn-v09_01_02)
    -   [larwirecell v09\_01\_02](#larwirecell-v09_01_02)
    -   [larana v09\_00\_07](#larana-v09_00_07)
    -   [larreco v09\_02\_02](#larreco-v09_02_02)
    -   [larsim v09\_04\_00](#larsim-v09_04_00)
    -   [larevt v09\_00\_05](#larevt-v09_00_05)
    -   [lardata v09\_01\_00](#lardata-v09_01_00)
    -   [larcore v09\_00\_00](#larcore-v09_00_00)
    -   [larpandoracontent v03\_20\_00](#larpandoracontent-v03_20_00)
    -   [larsoftobj v09\_01\_00](#larsoftobj-v09_01_00)
    -   [lardataobj v09\_00\_00](#lardataobj-v09_00_00)
    -   [lardataalg v09\_01\_00](#lardataalg-v09_01_00)
    -   [larcorealg v09\_00\_00](#larcorealg-v09_00_00)
    -   [larcoreobj v09\_00\_00](#larcoreobj-v09_00_00)
    -   [webevd v09\_00\_05](#webevd-v09_00_05)
    -   [larbatch v01\_53\_01](#larbatch-v01_53_01)
    -   [larutils v1\_26\_01](#larutils-v1_26_01)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v09\_05\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_05_00/larsoft-v09_05_00.html)\
Download instructions for [just larsoftobj v09\_01\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_01_00/larsoftobj-v09_01_00.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

-   larg4 PR 13
    -   Add ability to provide a G4 macro file at run time in order to execute additional commands.
-   larsim PR 41
    -   This PR ports the relevant code that has been developed, implemented and tested in OpFastScintillation on the LegacyLArG4 folder.
    -   This module still doesn’t support reflected light, and I haven’t added that myself. However, judging for the way it’s currently implemented I’m guessing it will still use the same functions. Hence, I’ve taken the liberty to copy the functions used for reflected light in here.
    -   I’ve added some of the features to accommodate ICARUS-like geometry, but still some extra effort needs to go to make this module useful for ICARUS.
-   larpandoracontent PR 11
    -   **dunetpc feature/chappell\_pfo\_ts**
    -   This PR implements a BDT to perform track/shower characterisation on PF particles. For these changes to take effect in DUNEFD a related dunetpc feature branch will also need to be merged. There are no associated larpandora changes.
    -   Given that the update changes the track/shower characterisation of some PF particles, we expect to see changes to the products of pandoraTrack and pandoraShower, and in downstream products depending upon this characterisation for DUNEFD - we expect no changes in other contexts, as the new algorithm only runs for DUNEFD at this time. The results of a CI run using the updated dunetpc branch appear consistent with this expectation.

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v09\_05\_00
------------------------------------------

-   2020-09-29 Lynn Garren : larsoft v09\_05\_00 for larsoft v09\_05\_00
-   2020-09-29 Lynn Garren : product versions

lareventdisplay v09\_00\_07
----------------------------------------------------------

-   2020-09-29 Lynn Garren : lareventdisplay v09\_00\_07 for larsoft v09\_05\_00

larexamples v09\_00\_07
--------------------------------------------------

-   2020-09-29 Lynn Garren : larexamples v09\_00\_07 for larsoft v09\_05\_00

larg4 v09\_01\_00
--------------------------------------

-   2020-09-29 Lynn Garren : larg4 v09\_01\_00 for larsoft v09\_05\_00
-   2020-09-29 Lynn Garren : Merge pull request \#13 from drivera-fnal/feature/drivera\_use\_G4Macro
-   2020-09-28 David Rivera : Added access to a macro file during the beginning of the run. The default behavior is to search in the FW\_SEARCH\_PATH for the macro file, but the path can be set in the fhicl file as well. Created a directory to store G4 macro files which are installed in the fw\_dir for larg4.

larpandora v09\_01\_03
------------------------------------------------

-   2020-09-29 Lynn Garren : larpandora v09\_01\_03 for larsoft v09\_05\_00

larsimrad v09\_00\_07
----------------------------------------------

-   2020-09-29 Lynn Garren : larsimrad v09\_00\_07 for larsoft v09\_05\_00

larrecodnn v09\_01\_02
------------------------------------------------

-   2020-09-29 Lynn Garren : larrecodnn v09\_01\_02 for larsoft v09\_05\_00

larwirecell v09\_01\_02
--------------------------------------------------

larana v09\_00\_07
----------------------------------------

-   2020-09-29 Lynn Garren : larana v09\_00\_07 for larsoft v09\_05\_00

larreco v09\_02\_02
------------------------------------------

-   2020-09-29 Lynn Garren : larreco v09\_02\_02 for larsoft v09\_05\_00

larsim v09\_04\_00
----------------------------------------

-   2020-09-29 Lynn Garren : larsim v09\_04\_00 for larsoft v09\_05\_00
-   2020-09-28 Lynn Garren : Merge pull request \#41 from ikatza/feature/icaza\_PhotProp\_performance\_improvements
-   2020-09-24 Iker de Icaza Astiz : Reduce verbosity by sending messages to mf
-   2020-09-24 Iker de Icaza Astiz : Reduce verbosity by sending to message facility
-   2020-09-22 Iker de Icaza Astiz : Use geo::Point\_t and geo::Vector\_t in the implementation too
-   2020-09-21 Iker de Icaza Astiz : Remove unused variables, comment another that is not yet relevant, initialise a couple, add a warning about another.
-   2020-09-15 Iker de Icaza Astiz : Right clang-format now
-   2020-09-15 Iker de Icaza Astiz : Merge branch ‘develop’ into feature/icaza\_PhotProp\_performance\_improvements
-   2020-09-14 Iker de Icaza Astiz : This is PDFastSimPAR
-   2020-09-14 Iker de Icaza Astiz : Deal with convertion type issues or at least note potential issues
-   2020-09-14 Iker de Icaza Astiz : Use GeometryCore and put some order on cathode\_central repeated vars
-   2020-09-09 Iker de Icaza Astiz : Add functions to check geometry conditions to assess if it’s worth to compute hits
-   2020-09-09 Iker de Icaza Astiz : Use CLHEP Rands not TRandoms
-   2020-09-09 Iker de Icaza Astiz : Cleanup
-   2020-09-09 Iker de Icaza Astiz : Make fPVS a class variable and part of the member initialiser list
-   2020-09-09 Iker de Icaza Astiz : Do not “using namespace std”
-   2020-09-09 Iker de Icaza Astiz : Backporting code from OpFastScintillation
-   2020-09-09 Iker de Icaza Astiz : Order headers
-   2020-08-27 Iker de Icaza Astiz : Simplify arapuca size assignment
-   2020-08-25 Iker de Icaza Astiz : Merge branch ‘develop’ into feature/icaza\_PhotProp\_performance\_improvements
-   2020-08-25 Iker de Icaza Astiz : Clang-format only.
-   2020-07-08 Iker de Icaza Astiz : Port in the performance oriented changes I made on LegacyLArG4
-   2020-06-23 Iker de Icaza Astiz : Merge branch ‘develop’ of github.com:LArSoft/larsim into develop
-   2020-05-18 Iker de Icaza Astiz : Prevent implicit downcasting from double to int in VUVHits() and VISHits()

larevt v09\_00\_05
----------------------------------------

lardata v09\_01\_00
------------------------------------------

larcore v09\_00\_00
------------------------------------------

larpandoracontent v03\_20\_00
--------------------------------------------------------------

-   2020-09-29 Lynn Garren : larpandoracontent v03\_20\_00 for larsoft v09\_05\_00
-   2020-09-29 Andrew Chappell : Read list names for training mode conditionally
-   2020-09-25 Andrew Chappell : Fix whitespace and tabulation
-   2020-09-25 AndyChappell : Merge pull request [\#138](/redmine/issues/138 "Bug: LHAPDF config fails with setup_nova_fnal.csh (Closed)") from MoteyMousam/feature/BdtPfoCharacterisation\_rebase
-   2020-09-23 Mousam Rai : updated CMakeLists to v03\_20\_00 and added comments to ChangeLog
-   2020-09-23 Mousam Rai : removed ROOT dependencies
-   2020-09-23 Mousam Rai : minor changes to BDT variables to make it compatible with ProtoDUNE
-   2020-08-27 Mousam Rai : Fixed MC-related call issues during testing
-   2020-08-17 Mousam Rai : add conditional block that requires presense of output file and tree if writeToTree is true
-   2020-08-17 Mousam Rai : remove trailing whitespace
-   2020-08-15 Mousam Rai : minor changes to diffAngle, vertexDistance, pca1, and pca2
-   2020-08-11 Mousam Rai : Tuned BDT PFO Characterisation
-   2020-06-25 Mousam Rai : Tuned BDT for PfoCharacterisation
-   2020-04-01 John Marshall : Fixup.
-   2020-04-01 Mousam Rai : Deleting some more files
-   2020-04-01 Mousam Rai : Removing unnecessary files
-   2020-02-24 Mousam Rai : reformatting
-   2020-02-24 Mousam Rai : Minor changes made to support Tree writing and fix existing bugs
-   2020-02-11 Mousam Rai : Minor Identation changes as suggested by Andy Chappell
-   2020-02-05 Mousam Rai : minor changes to SvmPfoCharacterisation alg
-   2020-01-22 Mousam Rai : Documentation on how to implement SKLearn BDT for TrackShowerId
-   2020-01-22 Mousam Rai : BDT training and output files
-   2020-01-22 Mousam Rai : TrackShowerID using SKLearn BDT
-   2020-01-16 Mousam Rai : added true KE
-   2019-12-19 Mousam Rai : added nhitsshared etc
-   2019-12-19 Mousam Rai : unfolded pfo
-   2019-12-18 Mousam Rai : implement isobel’s functions
-   2019-12-05 Isobel Mawby : Added new ParticleEfficiency and PullData algorithms
-   2019-11-20 Isobel Mawby : initial push
-   2019-12-18 Mousam Rai : dune cuts 2
-   2019-12-17 Mousam Rai : DUNE cuts
-   2019-12-12 Mousam Rai : removed most comments
-   2019-12-12 Mousam Rai : sklearn Implementation
-   2019-11-21 Mousam Rai : sklearn Implementation
-   2019-10-15 Mousam Rai : Backup following presentation in DUNE UK meeting on 15 Oct 2019.
-   2019-09-27 Mousam Rai : Status as of Sept Collaboration Meeting
-   2019-05-21 Mousam Rai : Use of TMVA to test BDT classifications in algorithm. Note hardcoded weights, variables and cuts.
-   2019-05-13 Mousam Rai : Work in progress: tree writing for testing track/shower variables.

larsoftobj v09\_01\_00
------------------------------------------------

lardataobj v09\_00\_00
------------------------------------------------

lardataalg v09\_01\_00
------------------------------------------------

larcorealg v09\_00\_00
------------------------------------------------

larcoreobj v09\_00\_00
------------------------------------------------

webevd v09\_00\_05
----------------------------------------

larbatch v01\_53\_01
--------------------------------------------

larutils v1\_26\_01
------------------------------------------
