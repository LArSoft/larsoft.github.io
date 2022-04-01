# LArSoft v09_05_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v09_05_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_05_00/larsoft-v09_05_00.html)  
Download instructions for [just larsoftobj v09_01_00](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_01_00/larsoftobj-v09_01_00.html)

## Purpose

-   changes in develop
-   approved PRs

## New features

-   larg4 PR 13
    -   Add ability to provide a G4 macro file at run time in order to execute additional commands.
-   larsim PR 41
    -   This PR ports the relevant code that has been developed, implemented and tested in OpFastScintillation on the LegacyLArG4 folder.
    -   This module still doesn't support reflected light, and I haven't added that myself. However, judging for the way it's currently implemented I'm guessing it will still use the same functions. Hence, I've taken the liberty to copy the functions used for reflected light in here.
    -   I've added some of the features to accommodate ICARUS-like geometry, but still some extra effort needs to go to make this module useful for ICARUS.
-   larpandoracontent PR 11
    -   **dunetpc feature/chappell_pfo_ts**
    -   This PR implements a BDT to perform track/shower characterisation on PF particles. For these changes to take effect in DUNEFD a related dunetpc feature branch will also need to be merged. There are no associated larpandora changes.
    -   Given that the update changes the track/shower characterisation of some PF particles, we expect to see changes to the products of pandoraTrack and pandoraShower, and in downstream products depending upon this characterisation for DUNEFD - we expect no changes in other contexts, as the new algorithm only runs for DUNEFD at this time. The results of a CI run using the updated dunetpc branch appear consistent with this expectation.

## Bug fixes

## Updated dependencies

# Change List

## larsoft v09_05_00

-   2020-09-29 Lynn Garren : larsoft v09_05_00 for larsoft v09_05_00
-   2020-09-29 Lynn Garren : product versions

## lareventdisplay v09_00_07

-   2020-09-29 Lynn Garren : lareventdisplay v09_00_07 for larsoft v09_05_00

## larexamples v09_00_07

-   2020-09-29 Lynn Garren : larexamples v09_00_07 for larsoft v09_05_00

## larg4 v09_01_00

-   2020-09-29 Lynn Garren : larg4 v09_01_00 for larsoft v09_05_00
-   2020-09-29 Lynn Garren : Merge pull request \#13 from drivera-fnal/feature/drivera_use_G4Macro
-   2020-09-28 David Rivera : Added access to a macro file during the beginning of the run. The default behavior is to search in the FW_SEARCH_PATH for the macro file, but the path can be set in the fhicl file as well. Created a directory to store G4 macro files which are installed in the fw_dir for larg4.

## larpandora v09_01_03

-   2020-09-29 Lynn Garren : larpandora v09_01_03 for larsoft v09_05_00

## larsimrad v09_00_07

-   2020-09-29 Lynn Garren : larsimrad v09_00_07 for larsoft v09_05_00

## larrecodnn v09_01_02

-   2020-09-29 Lynn Garren : larrecodnn v09_01_02 for larsoft v09_05_00

## larwirecell v09_01_02

## larana v09_00_07

-   2020-09-29 Lynn Garren : larana v09_00_07 for larsoft v09_05_00

## larreco v09_02_02

-   2020-09-29 Lynn Garren : larreco v09_02_02 for larsoft v09_05_00

## larsim v09_04_00

-   2020-09-29 Lynn Garren : larsim v09_04_00 for larsoft v09_05_00
-   2020-09-28 Lynn Garren : Merge pull request \#41 from ikatza/feature/icaza_PhotProp_performance_improvements
-   2020-09-24 Iker de Icaza Astiz : Reduce verbosity by sending messages to mf
-   2020-09-24 Iker de Icaza Astiz : Reduce verbosity by sending to message facility
-   2020-09-22 Iker de Icaza Astiz : Use geo::Point_t and geo::Vector_t in the implementation too
-   2020-09-21 Iker de Icaza Astiz : Remove unused variables, comment another that is not yet relevant, initialise a couple, add a warning about another.
-   2020-09-15 Iker de Icaza Astiz : Right clang-format now
-   2020-09-15 Iker de Icaza Astiz : Merge branch 'develop' into feature/icaza_PhotProp_performance_improvements
-   2020-09-14 Iker de Icaza Astiz : This is PDFastSimPAR
-   2020-09-14 Iker de Icaza Astiz : Deal with convertion type issues or at least note potential issues
-   2020-09-14 Iker de Icaza Astiz : Use GeometryCore and put some order on cathode_central repeated vars
-   2020-09-09 Iker de Icaza Astiz : Add functions to check geometry conditions to assess if it's worth to compute hits
-   2020-09-09 Iker de Icaza Astiz : Use CLHEP Rands not TRandoms
-   2020-09-09 Iker de Icaza Astiz : Cleanup
-   2020-09-09 Iker de Icaza Astiz : Make fPVS a class variable and part of the member initialiser list
-   2020-09-09 Iker de Icaza Astiz : Do not “using namespace std”
-   2020-09-09 Iker de Icaza Astiz : Backporting code from OpFastScintillation
-   2020-09-09 Iker de Icaza Astiz : Order headers
-   2020-08-27 Iker de Icaza Astiz : Simplify arapuca size assignment
-   2020-08-25 Iker de Icaza Astiz : Merge branch 'develop' into feature/icaza_PhotProp_performance_improvements
-   2020-08-25 Iker de Icaza Astiz : Clang-format only.
-   2020-07-08 Iker de Icaza Astiz : Port in the performance oriented changes I made on LegacyLArG4
-   2020-06-23 Iker de Icaza Astiz : Merge branch 'develop' of github.com:LArSoft/larsim into develop
-   2020-05-18 Iker de Icaza Astiz : Prevent implicit downcasting from double to int in VUVHits() and VISHits()

## larevt v09_00_05

## lardata v09_01_00

## larcore v09_00_00

## larpandoracontent v03_20_00

-   2020-09-29 Lynn Garren : larpandoracontent v03_20_00 for larsoft v09_05_00
-   2020-09-29 Andrew Chappell : Read list names for training mode conditionally
-   2020-09-25 Andrew Chappell : Fix whitespace and tabulation
-   2020-09-25 AndyChappell : Merge pull request \#138 from MoteyMousam/feature/BdtPfoCharacterisation_rebase
-   2020-09-23 Mousam Rai : updated CMakeLists to v03_20_00 and added comments to ChangeLog
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
-   2019-12-18 Mousam Rai : implement isobel's functions
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

## larsoftobj v09_01_00

## lardataobj v09_00_00

## lardataalg v09_01_00

## larcorealg v09_00_00

## larcoreobj v09_00_00

## webevd v09_00_05

## larbatch v01_53_01

## larutils v1_26_01
