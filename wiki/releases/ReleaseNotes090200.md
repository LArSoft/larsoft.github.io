LArSoft v09_02_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v09_02_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_02_00/larsoft-v09_02_00.html)
Download instructions for [just larsoftobj v09_00_03](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_00_03/larsoftobj-v09_00_03.html)

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
    -   Please note this PR depends upon changes to the Cluster class in the SDK as found in pandora v03_16_00
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
    -   resolve [redmine issue 24924](https://cdcvs.fnal.gov/redmine/issues/24924)
-   larsim PR 38
    -   improve documentation

Updated dependencies
----------------------------------------------

-   pandora v03_16_00

Change List
============================

larsoft v09_02_00
------------------------------------------

-   2020-09-09 Lynn Garren : larsoft v09_02_00 for larsoft v09_02_00
-   2020-09-09 Lynn Garren : product versions

lareventdisplay v09_00_03
----------------------------------------------------------

-   2020-09-09 Lynn Garren : lareventdisplay v09_00_03 for larsoft v09_02_00

larexamples v09_00_03
--------------------------------------------------

-   2020-09-09 Lynn Garren : larexamples v09_00_03 for larsoft v09_02_00

larg4 v09_00_03
--------------------------------------

-   2020-09-09 Lynn Garren : larg4 v09_00_03 for larsoft v09_02_00

larpandora v09_00_03
------------------------------------------------

-   2020-09-09 Lynn Garren : larpandora v09_00_03 for larsoft v09_02_00

larsimrad v09_00_03
----------------------------------------------

-   2020-09-09 Lynn Garren : larsimrad v09_00_03 for larsoft v09_02_00

larrecodnn v09_00_03
------------------------------------------------

-   2020-09-09 Lynn Garren : larrecodnn v09_00_03 for larsoft v09_02_00

larwirecell v09_01_00
--------------------------------------------------

-   2020-09-09 Lynn Garren : larwirecell v09_01_00 for larsoft v09_02_00
-   2020-09-09 Lynn Garren : Merge branch ‘feature/lg_fix_pr_7’ into release/v09_02_00
-   2020-09-09 Lynn Garren : Merge branch ‘wenqiang-gu-develop’ into release/v09_02_00
-   2020-09-09 Lynn Garren : a bit of whitespace cleanup
-   2020-09-09 Lynn Garren : Merge branch ‘wenqiang-gu-develop’ into feature/lg_fix_pr_7
-   2020-09-09 Lynn Garren : remove unused variable
-   2020-09-09 Wenqiang Gu : comment the unused header
-   2020-09-08 Wenqiang Gu : clean up fhicls
-   2020-09-08 Wenqiang Gu : clean up fhicls
-   2020-08-30 Wenqiang Gu : sync to develop version for the dependency
-   2020-08-30 Wenqiang Gu : minor update
-   2020-08-30 Wenqiang Gu : add associated simenergydepo for keeping the prior info before SCE
-   2020-08-30 Wenqiang Gu : a new module to dump wire geometry in txt for feeding to wire-cell
-   2020-08-30 Wenqiang Gu : add configurable params

larana v09_00_03
----------------------------------------

-   2020-09-09 Lynn Garren : larana v09_00_03 for larsoft v09_02_00

larreco v09_00_03
------------------------------------------

-   2020-09-09 Lynn Garren : larreco v09_00_03 for larsoft v09_02_00

larsim v09_02_00
----------------------------------------

-   2020-09-09 Lynn Garren : larsim v09_02_00 for larsoft v09_02_00
-   2020-09-09 Lynn Garren : Merge branch ‘feature/wgu_priorSCE_depo’ into release/v09_02_00
-   2020-09-09 Lynn Garren : Merge pull request \#40 from knoepfel/bugfix/knoepfel_reset_state
-   2020-09-09 Kyle Knoepfel : Fix bug [redmine issue 24924](https://cdcvs.fnal.gov/redmine/issues/24924): Don’t forget to reset ISCalc state.
-   2020-09-08 Lynn Garren : Merge pull request \#38 from PetrilloAtWork/feature/gp_ECutDocFix
-   2020-09-04 Gianluca Petrillo : Documentation fix.
-   2020-08-30 Wenqiang Gu : change the SavePriorSCE to false by default
-   2020-08-30 Wenqiang Gu : (optional) save the energy depos before SCE

larevt v09_00_03
----------------------------------------

-   2020-09-09 Lynn Garren : larevt v09_00_03 for larsoft v09_02_00

lardata v09_00_03
------------------------------------------

-   2020-09-09 Lynn Garren : lardata v09_00_03 for larsoft v09_02_00

larcore v09_00_00
------------------------------------------

larpandoracontent v03_19_03
--------------------------------------------------------------

-   2020-09-09 Lynn Garren : larpandoracontent v03_19_03 for larsoft v09_02_00
-   2020-09-09 Lynn Garren : pandora v03_16_00
-   2020-09-07 AndyChappell : Merge pull request [redmine issue 136](https://cdcvs.fnal.gov/redmine/issues/136) from AndyChappell/feature/pdsp_performance
-   2020-09-02 Andrew Chappell : CMakeLists.txt and ChangeLog.txt updates
-   2020-08-12 Andrew Chappell : Update cluster span calls on z to use version in Cluster
-   2020-08-10 Andrew Chappell : Update cluster span calls to use new caching version in Cluster

larsoftobj v09_00_03
------------------------------------------------

-   2020-09-09 Lynn Garren : larsoftobj v09_00_03 for larsoft v09_02_00
-   2020-09-09 Lynn Garren : product versions

lardataobj v09_00_00
------------------------------------------------

lardataalg v09_00_03
------------------------------------------------

-   2020-09-09 Lynn Garren : lardataalg v09_00_03 for larsoft v09_02_00
-   2020-09-09 Lynn Garren : Merge pull request \#10 from PetrilloAtWork/feature/gp_detTimingDataCopy
-   2020-09-08 Gianluca Petrillo : DetectorTimings now takes a copy of the clocks data.

larcorealg v09_00_00
------------------------------------------------

larcoreobj v09_00_00
------------------------------------------------

webevd v09_00_03
----------------------------------------

-   2020-09-09 Lynn Garren : webevd v09_00_03 for larsoft v09_02_00

larbatch v01_53_01
--------------------------------------------

larutils v1_26_01
------------------------------------------
