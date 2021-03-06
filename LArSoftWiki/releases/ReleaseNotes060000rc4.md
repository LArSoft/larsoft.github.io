# LArSoft v06_00_00_rc4 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
[Download instructions](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_00_00_rc4/larsoft-v06_00_00_rc4.html)

## Purpose

-   build with art 2.00.02 and nutools 2.00.00
-   refactor to use larcoreobj, lardataobj, and larsimobj
-   Because this release candidate has more refactoring, it is on the v06_00_00_art2 branch.
-   [Migration_to_root_6](Migration_to_root_6)
-   This release is consistent with larsoft v05_12_00 plus changes from develop as of June 2.

## New features

Several products have been split into separate parts. The new products make a suite, larsoftobj, that does not depend on art.

|          |                     |                                                                                                         |
|----------|---------------------|---------------------------------------------------------------------------------------------------------|
| art 1.xx | art 2.xx            | notes                                                                                                   |
| art      | art, canvas         | [art:Release Notes 2.00.02](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_2.00.02)                                                                       |
| nutools  | nutools, nusimdata  | nusimdata contains SimulationBase [nutools:NuTools_Release_Notes#nutools-v2_00_00](https://cdcvs.fnal.gov/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_00_00)                |
| larcore  | larcore, larcoreobj | larcoreobj contains SimpleTypesAndConstants and SummaryData                                             |
| lardata  | lardata, lardataobj | lardataobj contains AnalysisBase, MCBase, OpticalDetectorData, RawData, RecoBase, and part of Utilities |
| larsim   | larsim, larsimobj   | larsimobj contains part of Simulation                                                                   |

## Required changes

-   The v06_00_00_art2 branch is supplied for dunetpc, duneutil, uboonecode, ubutil, argoneutcode, lar1ndcode, and lariatsoft.
-   [UpdateToLArSoftObj.sh](Migration_to_root_6#UpdateToLArSoftObjsh) will make all required changes in user code.

## Updated dependencies

-   This release uses a new product stack built with gcc v4_9_3a (e10)
-   art v2_00_02 (s33) [art:Release_Notes_20002](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_20002)
-   nutools v2_00_00 [nutools:NuTools_Release_Notes#nutools-v2_00_00](https://cdcvs.fnal.gov/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_00_00)
-   [larsoftobj v1_02_00](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_02_00/larsoftobj-v1_02_00.html)

# Change List

## larsoft v06_00_00_rc4

-   2016-06-06 Lynn Garren : fix the g4 versions
-   2016-06-06 Lynn Garren : fix buildcfg
-   2016-06-03 Lynn Garren : larsoftobj v1_02_00
-   2016-06-03 Lynn Garren : update the dependency database
-   2016-06-03 Lynn Garren : for larsoft v06_00_00_rc4
-   2016-06-03 Lynn Garren : for larsoft v06_00_00_rc4
-   2016-06-03 Lynn Garren : larsoft v06_00_00_rc4
-   2016-06-02 Lynn Garren : e10 and s33
-   2016-06-02 Lynn Garren : Merge branch 'develop' into v06_00_00_art2
-   2016-06-02 Lynn Garren : use nutools 2.00.00
-   2016-06-02 Lynn Garren : update scripts for larsoftobj with nutools 2.0 and art 2.0
-   2016-06-02 Lynn Garren : build with nutools 2.00.00 and art 2.00.02
-   2016-05-25 Lynn Garren : larsoft v05_12_00 for larsoft v05_12_00
-   2016-05-25 Lynn Garren : update product list
-   2016-05-25 Lynn Garren : update dependency database

## lareventdisplay v06_00_00_rc4

-   2016-06-03 Lynn Garren : lareventdisplay v06_00_00_rc4
-   2016-06-03 Lynn Garren : build with art 2.00.02 and nutools 2.00.00
-   2016-06-02 Lynn Garren : Merge branch 'develop' into v06_00_00_art2
-   2016-06-02 Lynn Garren : changes for nutools 2.00.00 and larsoftobj
-   2016-06-02 Lynn Garren : changes for nutools 2.00.00 and larsoftobj
-   2016-06-02 Matt Robinson : Landed: switched from cerr and cout to mf:: and replaced ::length with ::empty on checks to see if outputFilename_ is unset.
-   2016-06-02 Matt Robinson : Landed events filter now ignored when running over unix socket.
-   2016-06-02 Matt Robinson : Missing 'events' parameter now tolerated (was throwing exception before)
-   2016-06-02 Matt Robinson : Landed module now builds with boost asio implementation of unix sockets
-   2016-06-02 Matt Robinson : Converting low level unix socket i/o to boost asio
-   2016-05-26 Lynn Garren : workaround for MSG_NOSIGNAL
-   2016-05-25 Lynn Garren : lareventdisplay v05_07_00 for larsoft v05_12_00
-   2016-05-25 Lynn Garren : Merge branch 'feature/mrobinso_LandedEventDisplay' into release/v05_12_00
-   2016-05-11 Lynn Garren : lareventdisplay v05_06_07 for larsoft v05_11_01
-   2016-05-10 Matt Robinson : Added Landed event display moduule and service (corrected e-mail address)
-   2016-05-10 Matt Robinson : Added Landed event display moduule and service

## larexamples v06_00_00_rc4

-   2016-06-03 Lynn Garren : larexamples v06_00_00_rc4
-   2016-06-02 Lynn Garren : more changes for larsimobj and lardataobj
-   2016-06-02 Lynn Garren : Merge branch 'develop' into v06_00_00_art2
-   2016-06-02 Lynn Garren : changes for nutools 2.00.00
-   2016-06-02 Lynn Garren : changes for nutools 2.00.00
-   2016-05-25 Lynn Garren : larexamples v05_06_08 for larsoft v05_12_00
-   2016-05-11 Lynn Garren : larexamples v05_06_07 for larsoft v05_11_01

## larpandora v06_00_00_rc4

-   2016-06-06 Lynn Garren : fix larpandoracontent qualifier
-   2016-06-03 Lynn Garren : larpandora v06_00_00_rc4
-   2016-06-02 Lynn Garren : changes for larsoftobj
-   2016-06-02 Lynn Garren : changes for larsoftobj
-   2016-06-02 Lynn Garren : Merge branch 'develop' into v06_00_00_art2
-   2016-06-02 Lynn Garren : changes for nutools 2.00.00
-   2016-05-25 Lynn Garren : larpandora v05_09_05 for larsoft v05_12_00

## larana v06_00_00_rc4

-   2016-06-03 Lynn Garren : larana v06_00_00_rc4
-   2016-06-03 Lynn Garren : more changes for art 2
-   2016-06-02 Lynn Garren : changes for larsoftobj
-   2016-06-02 Lynn Garren : Merge branch 'develop' into v06_00_00_art2
-   2016-06-02 Lynn Garren : build with nutools 2.00.00
-   2016-06-02 Lynn Garren : build with nutools 2.00.00
-   2016-05-25 Lynn Garren : larana v05_09_02 for larsoft v05_12_00
-   2016-05-11 Lynn Garren : larana v05_09_01 for larsoft v05_11_01

## larreco v06_00_00_rc4

-   2016-06-03 Lynn Garren : larreco v06_00_00_rc4
-   2016-06-02 Lynn Garren : more changes for larsoftobj
-   2016-06-02 Lynn Garren : more changes for larsoftobj
-   2016-06-02 Lynn Garren : changes for nutools 2.00.00

## larsim v06_00_00_rc4

-   2016-06-03 Lynn Garren : larsim v06_00_00_rc4
-   2016-06-02 Lynn Garren : more changes for lardataobj and larsimobj
-   2016-06-02 Lynn Garren : Merge branch 'develop' into v06_00_00_art2
-   2016-06-02 Lynn Garren : use larsimobj v1_01_01
-   2016-06-02 Lynn Garren : move files in larsimobj v1_01_01
-   2016-06-02 Lynn Garren : use larsimobj v1_01_01
-   2016-06-02 Lynn Garren : changes for nutools 2.00.00 and art 2.00.02
-   2016-06-02 Lynn Garren : changes for nutools 2.00.00 and art 2.00.02
-   2016-06-02 Lynn Garren : build with art 2.00.02
-   2016-05-25 Lynn Garren : larsim v05_12_00 for larsoft v05_12_00
-   2016-05-25 Lynn Garren : Merge branch 'feature/mrmooney_SpaceChargeMay6th2016' into release/v05_12_00
-   2016-05-11 Lynn Garren : larsim v05_11_01 for larsoft v05_11_01
-   2016-05-06 Michael Mooney : Fixed sign error in space charge implementation of LArVoxelReadout.cxx
-   2016-05-06 Michael Mooney : New space charge service implementation

## larevt v06_00_00_rc4

-   2016-06-06 Lynn Garren : make sure we use the fhicl library
-   2016-06-03 Lynn Garren : larevt v06_00_00_rc4
-   2016-06-02 Lynn Garren : changes for lardataobj
-   2016-06-02 Lynn Garren : Merge branch 'develop' into v06_00_00_art2
-   2016-06-02 Lynn Garren : build with art 2, lardataobj, and larcoreobj
-   2016-05-25 Lynn Garren : larevt v05_07_00 for larsoft v05_12_00
-   2016-05-25 Lynn Garren : Merge branch 'feature/mrmooney_SpaceChargeMay6th2016' into release/v05_12_00
-   2016-05-11 Lynn Garren : larevt v05_06_07 for larsoft v05_11_01
-   2016-05-06 Michael Mooney : New space charge service implementation

## lardata v06_00_00_rc4

-   2016-06-03 Lynn Garren : lardata v06_00_00_rc4
-   2016-06-03 Lynn Garren : still have RawData/utils
-   2016-06-02 Lynn Garren : more changes for lardataobj
-   2016-06-02 Lynn Garren : more changes for lardataobj
-   2016-06-02 Lynn Garren : use lardataobj v1_01_01
-   2016-06-02 Lynn Garren : build with lardataobj v1_01_01
-   2016-06-02 Lynn Garren : use lardataobj v1_01_01
-   2016-06-02 Lynn Garren : rename code now in lardataobj
-   2016-06-02 Lynn Garren : Merge branch 'develop' into v06_00_00_art2
-   2016-06-02 Lynn Garren : changes for nutools v2_00_00 and art v2_00_02
-   2016-06-02 Lynn Garren : changes for nutools v2_00_00 and art v2_00_02
-   2016-06-02 Lynn Garren : use nutools v2_00_00
-   2016-05-27 Tingjun Yang : Add space charge service.
-   2016-05-25 Lynn Garren : lardata v05_08_02 for larsoft v05_12_00
-   2016-05-11 Lynn Garren : lardata v05_08_01 for larsoft v05_11_01

## larcore v06_00_00_rc4

-   2016-06-03 Lynn Garren : larcore v06_00_00_rc4
-   2016-06-03 Lynn Garren : larsoft v06_00_00_rc4
-   2016-06-03 Lynn Garren : these tests are now in larcoreobj
-   2016-06-03 Lynn Garren : these tests are now in larcoreobj
-   2016-06-02 Gianluca Petrillo : Updated tests to Boost 1.61
-   2016-06-02 Lynn Garren : rename SummaryData and SimpleTypesAndConstants prior to removing them
-   2016-06-02 Lynn Garren : Merge branch 'develop' into v06_00_00_art2
-   2016-06-02 Lynn Garren : temporarily disable Geometry tests
-   2016-06-02 Lynn Garren : changes for art v2_00_02 and larcoreobj v1_01_01
-   2016-06-02 Lynn Garren : using art v2_00_02 and larcoreobj v1_01_01
-   2016-05-25 Lynn Garren : larcore v05_07_03 for larsoft v05_12_00
-   2016-05-21 Christoph Rudolf von Rohr : BoxBoundedGeo.cxx: Fixed a bug which caused wrong results in rare cases (due to floating point inaccuracies). BoxBoundedGeo.h: added std::vector include for completeness reasons (better usability with IDE programms)
-   2016-05-11 Lynn Garren : larcore v05_07_02 for larsoft v05_11_01
