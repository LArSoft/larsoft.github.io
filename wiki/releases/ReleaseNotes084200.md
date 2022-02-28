# LArSoft v08_42_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v08_42_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_42_00/larsoft-v08_42_00.html)  
Download instructions for [just larsoftobj v08_26_01](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_26_01/larsoftobj-v08_26_01.html)

## Purpose

-   changes in develop
-   approved PRs

## New features

-   Improvements to larpandora and larg4
-   larbatch has been significantly updated to support Python 3

## Updated dependencies

The following dependencies have either changes or been added for this release

|                |                      |                  |                                    |
|----------------|----------------------|------------------|------------------------------------|
| **Product**    | **Previous release** | **This release** | **Notes**                          |
| geant4reweight | v01_00_02            | v01_00_03        |                                    |
| hep_hpc        | —-                   | v0_12_01         | *New as of larsoft v08_42_00*      |
| ifbeam         | v2_4_1              | v2_4_2          |                                    |
| ifdh_art       | v2_10_01             | v2_10_02         |                                    |
| ifdhc          | v2_5_2              | v2_5_4          |                                    |
| libwda         | v2_26_0              | v2_27_0          |                                    |
| nucondb        | v2_4_1              | v2_4_2          |                                    |
| nuevdb         | v1_02_00             | v1_02_01         |                                    |
| nugen          | v1_10_00             | v1_10_01         |                                    |
| protobuf       | v3_5_2a             | v3_11_2          | *Not supported for c7 SLF6 builds* |
| tensorflow     | v1_3_0g             | v1_3_0h         | *Supported only for e19 builds*    |
| wirecell       | v0_13_1a             | v0_13_1b         |                                    |

# Change List

## larsoft v08_42_00

-   2020-02-06 Kyle Knoepfel : Moved tag for various reasons.
-   2020-02-05 Kyle Knoepfel : larsoft v08_42_00 for larsoft v08_42_00
-   2020-02-05 Kyle Knoepfel : product versions
-   2020-02-04 Patrick Gartung : Add two github actions to move new pull requests or issues to the LArSoft pull requests project
-   2020-02-04 Kyle Knoepfel : Include hep_hpc in larsoft distribution.

## lareventdisplay v08_12_02

-   2020-02-06 Kyle Knoepfel : Moved tag to use nuevdb v1_02_01
-   2020-02-05 Kyle Knoepfel : lareventdisplay v08_12_02 for larsoft v08_42_00
-   2020-02-04 Fermilab build bot account : Merge pull request \#2 from gartung/gartung-add-github-actions
-   2020-02-04 Patrick Gartung : Add two github actions to move new pull requests or issues to the LArSoft pull requests project

## larexamples v08_06_02

-   2020-02-05 Kyle Knoepfel : larexamples v08_06_02 for larsoft v08_42_00
-   2020-02-04 Fermilab build bot account : Merge pull request \#2 from gartung/gartung-add-github-actions
-   2020-02-04 Patrick Gartung : Add two github actions to move new pull requests or issues to the LArSoft pull requests project

## larg4 v08_12_00

-   2020-02-06 Kyle Knoepfel : Moved tag with larevt v08_10_02
-   2020-02-05 Kyle Knoepfel : larg4 v08_12_00 for larsoft v08_42_00
-   2020-02-04 Patrick Gartung : Add two github actions to move new pull requests or issues to the LArSoft pull requests project
-   2020-02-04 David Rivera : Applied suggestions by Kyle Knoepfel on PR. Also, only print NotStored summary when there is something to report.
-   2020-02-03 David Rivera : Merge branch 'develop' of github.com:LArSoft/larg4 into develop
-   2020-02-03 David Rivera : Remove trailing white space for PLAS
-   2020-02-03 David Rivera : Add report of how many instances of NotStoredPhysics are skipped in the end of event action for PLAS and other debug statements.
-   2020-02-03 Hans-joachim Wenzel : remove white spaces
-   2020-02-03 David Rivera : Added info log messages to PLA
-   2020-02-02 David Rivera : Added NotStoredPhysics fhicl parameter which serves as an optional way to choose what physics processes are stored and which are not. If the NotStoredPHysics list is not provided, the keepEmShowerDaughters fhicl parameter behaves as usual.
-   2020-01-29 Hans : auxdet that merges steps by particle, change verbosity of the analysis module

## larpandora v08_11_02

-   2020-02-05 Kyle Knoepfel : larpandora v08_11_02 for larsoft v08_42_00
-   2020-02-04 Patrick Gartung : Add two github actions to move new pull requests or issues to the LArSoft pull requests project

## larwirecell v08_12_02

-   2020-02-06 Kyle Knoepfel : Moved tag with larevt v08_10_02
-   2020-02-05 Kyle Knoepfel : larwirecell v08_12_02 for larsoft v08_42_00
-   2020-02-04 Patrick Gartung : Add two github actions to move new pull requests or issues to the LArSoft pull requests project

## larana v08_16_02

-   2020-02-05 Kyle Knoepfel : larana v08_16_02 for larsoft v08_42_00
-   2020-02-04 Patrick Gartung : Add two github actions to move new pull requests or issues to the LArSoft pull requests project

## larreco v08_27_02

-   2020-02-05 Kyle Knoepfel : larreco v08_27_02 for larsoft v08_42_00
-   2020-02-04 Patrick Gartung : Add two github actions to move new pull requests or issues to the LArSoft pull requests project

## larsim v08_19_02

-   2020-02-06 Kyle Knoepfel : Moved tag with larevt v08_10_02
-   2020-02-05 Kyle Knoepfel : larsim v08_19_02 for larsoft v08_42_00
-   2020-02-04 Patrick Gartung : Add two github actions to move new pull requests or issues to the LArSoft pull requests project
-   2020-01-23 Kyle Knoepfel : Use clearer addSingle interface.
-   2020-01-23 Kyle Knoepfel : Remove unnecessary CreateAssn argument.

## larevt v08_10_02

-   2020-02-06 Kyle Knoepfel : larevt v08_10_02 for larsoft v08_42_00
-   2020-02-04 Patrick Gartung : Add two github actions to move new pull requests or issues to the LArSoft pull requests project

## larpandoracontent v03_15_14

-   2020-02-05 Kyle Knoepfel : larpandoracontent v03_15_14 for larsoft v08_42_00
-   2020-02-04 Patrick Gartung : Add two github actions to move new pull requests or issues to the LArSoft pull requests project
-   2020-02-04 John Marshall : Remove trailing whitespace.
-   2020-01-22 John Marshall : Merge branch 'feature/CosmicRayBuildingDP'
-   2020-01-16 John Marshall : Update version and change log.
-   2020-01-15 Etienne Chardonnet : Clearer use of IsDualPhase parameter in CosmicVertexBuilding algorithm
-   2020-01-07 Etienne Chardonnet : Added dual-phase option to change vertex from highest-Y to highest-X in CosmicRayVertexBuilding algorithm.

## larbatch v01_52_00

-   2020-02-05 Kyle Knoepfel : Merge branch 'release/v08_42_00'
-   2020-02-05 Kyle Knoepfel : larbatch v01_52_00 for larsoft v08_42_00
-   2020-02-05 Herbert Greenlee : Add test for availability of jobsub_client.
-   2020-02-05 Herbert Greenlee : Tweak bytes/unicode/str conversion functions.
-   2020-02-05 Herbert Greenlee : More bytes vs. unicode.
-   2020-02-05 Herbert Greenlee : Add convert_bytes.
-   2020-02-05 Herbert Greenlee : More unicode vs. bytes conversion fixes.
-   2020-02-04 Herbert Greenlee : Dict conversion compatibility.
-   2020-02-04 Herbert Greenlee : Get rid of string module. Address some unicode vs. bytes convertion issues.
-   2020-02-04 Patrick Gartung : Add two github actions to move new pull requests or issues to the LArSoft pull requests project
-   2020-02-04 Herbert Greenlee : Add utility for converting to standard str using utf-8 encoding.
-   2020-02-04 Herbert Greenlee : Open plain xml files using open().
-   2020-02-04 Herbert Greenlee : Make tkinter module imports python 2/3 agnostic.
-   2020-02-04 Herbert Greenlee : Fix relative imports.
-   2020-02-04 Herbert Greenlee : Fix some broken imports.
-   2020-02-04 Herbert Greenlee : Get rid of module sets.
-   2020-02-04 Herbert Greenlee : int -\> long.
-   2020-02-04 Herbert Greenlee : Python 2/3 compatible use of urllib.
-   2020-02-04 Herbert Greenlee : Get rid of xreadlines.
-   2020-02-04 Herbert Greenlee : Python 2/3 compatible use of next function.
-   2020-02-04 Herbert Greenlee : More dictionary methods.
-   2020-02-04 Herbert Greenlee : Use python 2/3 compatible dictionary methods.
-   2020-02-04 Herbert Greenlee : Use python 2/3 import of module Queue/queue.
-   2020-02-04 Herbert Greenlee : Convert tabs to spaces.
-   2020-02-04 Herbert Greenlee : Use python 3 style except.
-   2020-02-04 Herbert Greenlee : Get rid of “has_key.”
-   2020-02-04 Herbert Greenlee : Update python 3 module renaming.
-   2020-02-04 Herbert Greenlee : Use python 3 style numeric literals.
-   2020-02-04 Herbert Greenlee : Use python 3 style raise.
-   2020-02-04 Herbert Greenlee : Use python 3 style print statements. Add future imports.
-   2020-02-04 Herbert Greenlee : Update product_deps.
-   2020-02-04 Herbert Greenlee : Don't set up jobsub_client.
-   2020-02-03 Herbert Greenlee : Merge branch 'develop' of github.com:hgreenlee/larbatch into develop
-   2020-02-03 Herbert Greenlee : Get rid of pycurl. Use urllib instead.
-   2020-01-15 Herbert Greenlee : Update documentary comments.
