LArSoft v09\_02\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v09\_02\_00 Release Notes](#LArSoft-v09_02_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_02\_00](#larsoft-v09_02_00)
    -   [lareventdisplay v09\_00\_03](#lareventdisplay-v09_00_03)
    -   [larexamples v09\_00\_03](#larexamples-v09_00_03)
    -   [larg4 v09\_00\_03](#larg4-v09_00_03)
    -   [larpandora v09\_00\_03](#larpandora-v09_00_03)
    -   [larsimrad v09\_00\_03](#larsimrad-v09_00_03)
    -   [larrecodnn v09\_00\_03](#larrecodnn-v09_00_03)
    -   [larwirecell v09\_01\_00](#larwirecell-v09_01_00)
    -   [larana v09\_00\_03](#larana-v09_00_03)
    -   [larreco v09\_00\_03](#larreco-v09_00_03)
    -   [larsim v09\_02\_00](#larsim-v09_02_00)
    -   [larevt v09\_00\_03](#larevt-v09_00_03)
    -   [lardata v09\_00\_03](#lardata-v09_00_03)
    -   [larcore v09\_00\_00](#larcore-v09_00_00)
    -   [larpandoracontent v03\_19\_03](#larpandoracontent-v03_19_03)
    -   [larsoftobj v09\_00\_03](#larsoftobj-v09_00_03)
    -   [lardataobj v09\_00\_00](#lardataobj-v09_00_00)
    -   [lardataalg v09\_00\_03](#lardataalg-v09_00_03)
    -   [larcorealg v09\_00\_00](#larcorealg-v09_00_00)
    -   [larcoreobj v09\_00\_00](#larcoreobj-v09_00_00)
    -   [webevd v09\_00\_03](#webevd-v09_00_03)
    -   [larbatch v01\_53\_01](#larbatch-v01_53_01)
    -   [larutils v1\_26\_01](#larutils-v1_26_01)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v09\_02\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_02_00/larsoft-v09_02_00.html)\
Download instructions for [just larsoftobj v09\_00\_03](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_00_03/larsoftobj-v09_00_03.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

-   lardataalg PR 10
    -   Make DetectorTimings use a copy of clocks data
-   larpandoracontent PR 10
    -   This PR contains computational performance improvements related to the calculation of cluster spans. These improvements reduce reconstruction time in the ProtoDUNE-SP context by 25%, and 15% in the DUNEFD context by caching a cluster-related variable.
    -   Please note this PR depends upon changes to the Cluster class in the SDK as found in pandora v03\_16\_00
-   larwirecell PR 7
    -   There is a request to the protoDUNE simulation task force, which is to save out the TrackIDE with the original XYZ while not the position after SCE distortion. Since the original position information has been wiped out during the SCE simulation, we suggest that the upstream simulation chain can save out two instances of vector. One is with SCE, the other is without SCE. Wire-Cell can read in the two, and make a “link” between them. When it’s necessary to save the original XYZ, we can get the initial depo from any corresponding depo after TPC drift simulation.
    -   This PR implements an optional logic for the task above, it should not change any default behavior for any experiment so far.
    -   Clang bug fix in PR 8
-   larsim PR 39
    -   related to larwirecell PR 7
    -   An additional option “fSavePriorSCE” is available now, once the option is “true”, the module will produce an extra instance of std::vector. This additional std::vector is for saving the information without the space charge effect (SCE).

Bug fixes
------------------------

-   larsim PR 40
    -   resolve [\#24924](/redmine/issues/24924 "Bug: 0 MeV photons on LegacyOpFastScintillation (Closed)")
-   larsim PR 38
    -   improve documentation

Updated dependencies
----------------------------------------------

-   pandora v03\_16\_00

Change List
============================

larsoft v09\_02\_00
------------------------------------------

-   2020-09-09 Lynn Garren : larsoft v09\_02\_00 for larsoft v09\_02\_00
-   2020-09-09 Lynn Garren : product versions

lareventdisplay v09\_00\_03
----------------------------------------------------------

-   2020-09-09 Lynn Garren : lareventdisplay v09\_00\_03 for larsoft v09\_02\_00

larexamples v09\_00\_03
--------------------------------------------------

-   2020-09-09 Lynn Garren : larexamples v09\_00\_03 for larsoft v09\_02\_00

larg4 v09\_00\_03
--------------------------------------

-   2020-09-09 Lynn Garren : larg4 v09\_00\_03 for larsoft v09\_02\_00

larpandora v09\_00\_03
------------------------------------------------

-   2020-09-09 Lynn Garren : larpandora v09\_00\_03 for larsoft v09\_02\_00

larsimrad v09\_00\_03
----------------------------------------------

-   2020-09-09 Lynn Garren : larsimrad v09\_00\_03 for larsoft v09\_02\_00

larrecodnn v09\_00\_03
------------------------------------------------

-   2020-09-09 Lynn Garren : larrecodnn v09\_00\_03 for larsoft v09\_02\_00

larwirecell v09\_01\_00
--------------------------------------------------

-   2020-09-09 Lynn Garren : larwirecell v09\_01\_00 for larsoft v09\_02\_00
-   2020-09-09 Lynn Garren : Merge branch ‘feature/lg\_fix\_pr\_7’ into release/v09\_02\_00
-   2020-09-09 Lynn Garren : Merge branch ‘wenqiang-gu-develop’ into release/v09\_02\_00
-   2020-09-09 Lynn Garren : a bit of whitespace cleanup
-   2020-09-09 Lynn Garren : Merge branch ‘wenqiang-gu-develop’ into feature/lg\_fix\_pr\_7
-   2020-09-09 Lynn Garren : remove unused variable
-   2020-09-09 Wenqiang Gu : comment the unused header
-   2020-09-08 Wenqiang Gu : clean up fhicls
-   2020-09-08 Wenqiang Gu : clean up fhicls
-   2020-08-30 Wenqiang Gu : sync to develop version for the dependency
-   2020-08-30 Wenqiang Gu : minor update
-   2020-08-30 Wenqiang Gu : add associated simenergydepo for keeping the prior info before SCE
-   2020-08-30 Wenqiang Gu : a new module to dump wire geometry in txt for feeding to wire-cell
-   2020-08-30 Wenqiang Gu : add configurable params

larana v09\_00\_03
----------------------------------------

-   2020-09-09 Lynn Garren : larana v09\_00\_03 for larsoft v09\_02\_00

larreco v09\_00\_03
------------------------------------------

-   2020-09-09 Lynn Garren : larreco v09\_00\_03 for larsoft v09\_02\_00

larsim v09\_02\_00
----------------------------------------

-   2020-09-09 Lynn Garren : larsim v09\_02\_00 for larsoft v09\_02\_00
-   2020-09-09 Lynn Garren : Merge branch ‘feature/wgu\_priorSCE\_depo’ into release/v09\_02\_00
-   2020-09-09 Lynn Garren : Merge pull request \#40 from knoepfel/bugfix/knoepfel\_reset\_state
-   2020-09-09 Kyle Knoepfel : Fix bug [\#24924](/redmine/issues/24924 "Bug: 0 MeV photons on LegacyOpFastScintillation (Closed)"): Don’t forget to reset ISCalc state.
-   2020-09-08 Lynn Garren : Merge pull request \#38 from PetrilloAtWork/feature/gp\_ECutDocFix
-   2020-09-04 Gianluca Petrillo : Documentation fix.
-   2020-08-30 Wenqiang Gu : change the SavePriorSCE to false by default
-   2020-08-30 Wenqiang Gu : (optional) save the energy depos before SCE

larevt v09\_00\_03
----------------------------------------

-   2020-09-09 Lynn Garren : larevt v09\_00\_03 for larsoft v09\_02\_00

lardata v09\_00\_03
------------------------------------------

-   2020-09-09 Lynn Garren : lardata v09\_00\_03 for larsoft v09\_02\_00

larcore v09\_00\_00
------------------------------------------

larpandoracontent v03\_19\_03
--------------------------------------------------------------

-   2020-09-09 Lynn Garren : larpandoracontent v03\_19\_03 for larsoft v09\_02\_00
-   2020-09-09 Lynn Garren : pandora v03\_16\_00
-   2020-09-07 AndyChappell : Merge pull request [\#136](/redmine/issues/136 "Bug: instructions at https://cdcvs4.fnal.gov/redmine/documents/show/11 cause error (Closed)") from AndyChappell/feature/pdsp\_performance
-   2020-09-02 Andrew Chappell : CMakeLists.txt and ChangeLog.txt updates
-   2020-08-12 Andrew Chappell : Update cluster span calls on z to use version in Cluster
-   2020-08-10 Andrew Chappell : Update cluster span calls to use new caching version in Cluster

larsoftobj v09\_00\_03
------------------------------------------------

-   2020-09-09 Lynn Garren : larsoftobj v09\_00\_03 for larsoft v09\_02\_00
-   2020-09-09 Lynn Garren : product versions

lardataobj v09\_00\_00
------------------------------------------------

lardataalg v09\_00\_03
------------------------------------------------

-   2020-09-09 Lynn Garren : lardataalg v09\_00\_03 for larsoft v09\_02\_00
-   2020-09-09 Lynn Garren : Merge pull request \#10 from PetrilloAtWork/feature/gp\_detTimingDataCopy
-   2020-09-08 Gianluca Petrillo : DetectorTimings now takes a copy of the clocks data.

larcorealg v09\_00\_00
------------------------------------------------

larcoreobj v09\_00\_00
------------------------------------------------

webevd v09\_00\_03
----------------------------------------

-   2020-09-09 Lynn Garren : webevd v09\_00\_03 for larsoft v09\_02\_00

larbatch v01\_53\_01
--------------------------------------------

larutils v1\_26\_01
------------------------------------------
