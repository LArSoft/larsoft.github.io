LArSoft v09_00_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v09_00_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_00_00/larsoft-v09_00_00.html)
Download instructions for [just larsoftobj v09_00_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_00_00/larsoftobj-v09_00_00.html)

Purpose
--------------------

-   thread safe detector clocks and properties
-   ***drop SLF6 and macOS builds***

Synopsis
----------------------

In order to access detector clocks and properties information in a multithreaded environment, the interactions with the corresponding services and providers have changed. A summary of the changes can be found here:

-   [https://indico.fnal.gov/event/43323/contributions/185976/attachments/128392/155303/larsoft-coordination-2020-05-19.pdf](https://indico.fnal.gov/event/43323/contributions/185976/attachments/128392/155303/larsoft-coordination-2020-05-19.pdf)

To summarize some of the changes:

-   Users may no longer directly access the detector clocks/properties providers through the services.
    -   Explicit `art::ServiceHandle`s to those services must be constructed.
    -   Calling `lar::providerFrom<detinfo::DetectorClocksService>()` or `lar::providerFrom<detinfo::DetectorPropertiesService>()` is no longer allowed.
-   Although the interface is similar as before, users now must retrieve a `DetectorClocksData` or `DetectorPropertiesData` object to access clocks/properties data.
-   Various member functions of the `BackTracker` service now require a `DetectorClocksData` object to be passed as a `const` reference.
-   Custom physics lists as provided by `larsim/LegacyLArG4` must now be explicitly constructed by the entity that requires it (see the above link).
-   Many `reconfigure(...)` calls have been removed wherever possible as the framework does not support reconfiguration.
-   Various unused files were removed.

Breaking change
------------------------------------

This is a breaking change. Feature branches are provided.

-   argoneutcode
    -   feature/team_detector_services
-   dunetpc
    -   feature/team_detector_services
-   uboone suite
    -   feature/team_detector_services
-   lariatsoft, lariatutil
    -   feature/knoepfel_detector_services
-   icaruscode PR 43
    -   [https://github.com/SBNSoftware/icaruscode/pull/43](https://github.com/SBNSoftware/icaruscode/pull/43)
    -   Unfortunately, because of the convoluted history with the initial icaruscode PR with these changes, there are merge conflicts that will need to be sorted out when icaruscode is ready to merge the PR.
-   sbndcode PR 2
    -   [https://github.com/SBNSoftware/sbndcode/pull/2](https://github.com/SBNSoftware/sbndcode/pull/2)

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v09_00_00
------------------------------------------

-   2020-08-19 Lynn Garren : slf6 and macOS builds dropped
-   2020-08-19 Lynn Garren : larsoft v09_00_00 for larsoft parent larsoft v09_00_00
-   2020-08-19 Lynn Garren : larsoft v09_00_00 for larsoft v09_00_00
-   2020-08-19 Lynn Garren : for larsoft v09_00_00
-   2020-08-11 Lynn Garren : Merge branch ‘develop’ into v09_00_00_rc_br
-   2020-06-05 Lynn Garren : larsoft v09_00_00_rc1 for larsoft v09_00_00_rc1
-   2020-06-05 Lynn Garren : for larsoft v09_00_00_rc1
-   2020-05-28 Lynn Garren : larsoft v09_00_00_rc0 for larsoft v09_00_00_rc0
-   2020-05-28 Lynn Garren : product versions

lareventdisplay v09_00_00
----------------------------------------------------------

-   2020-08-19 Lynn Garren : lareventdisplay v09_00_00 for larsoft parent larsoft v09_00_00
-   2020-08-19 Lynn Garren : lareventdisplay v09_00_00 for larsoft v09_00_00
-   2020-08-12 Kyle Knoepfel : Merge branch ‘clang-format-only’ into test
-   2020-08-12 Kyle Knoepfel : Clang-format only.
-   2020-08-12 Kyle Knoepfel : Clang-format only.
-   2020-06-05 Lynn Garren : lareventdisplay v09_00_00_rc1 for larsoft v09_00_00_rc1
-   2020-05-29 Lynn Garren : add missing library
-   2020-05-28 Lynn Garren : lareventdisplay v09_00_00_rc0 for larsoft v09_00_00_rc0
-   2020-04-02 Kyle Knoepfel : Accommodate breaking changes.
-   2020-04-29 Kyle Knoepfel : Apply clang-format.

larexamples v09_00_00
--------------------------------------------------

-   2020-08-19 Lynn Garren : larexamples v09_00_00 for larsoft v09_00_00
-   2020-08-11 Lynn Garren : Merge branch ‘develop’ into v09_00_00_rc_br
-   2020-06-05 Lynn Garren : larexamples v09_00_00_rc1 for larsoft v09_00_00_rc1
-   2020-05-28 Lynn Garren : larexamples v09_00_00_rc0 for larsoft v09_00_00_rc0
-   2020-04-02 Kyle Knoepfel : Accommodate breaking changes.
-   2020-04-30 Kyle Knoepfel : Apply clang-format.

larg4 v09_00_00
--------------------------------------

-   2020-08-19 Lynn Garren : larg4 v09_00_00 for larsoft v09_00_00
-   2020-08-11 Lynn Garren : Merge branch ‘develop’ into v09_00_00_rc_br
-   2020-06-05 Lynn Garren : larg4 v09_00_00_rc1 for larsoft v09_00_00_rc1
-   2020-05-28 Lynn Garren : larg4 v09_00_00_rc0 for larsoft v09_00_00_rc0

larpandora v09_00_00
------------------------------------------------

-   2020-08-19 Lynn Garren : larpandora v09_00_00 for larsoft parent larsoft v09_00_00
-   2020-08-19 Lynn Garren : larpandora v09_00_00 for larsoft v09_00_00
-   2020-08-14 Kyle Knoepfel : Merge branch ‘clang-format-only’ into v09_00_00_rc_br
-   2020-08-14 Kyle Knoepfel : Clang-format only.
-   2020-08-14 Kyle Knoepfel : Clang-format only.
-   2020-06-05 Lynn Garren : larpandora v09_00_00_rc1 for larsoft v09_00_00_rc1
-   2020-05-29 Lynn Garren : add missing library
-   2020-05-28 Lynn Garren : larpandora v09_00_00_rc0 for larsoft v09_00_00_rc0
-   2020-04-01 Kyle Knoepfel : Accommodate breaking changes.
-   2020-04-29 Kyle Knoepfel : Apply clang-format.

larsimrad v09_00_00
----------------------------------------------

-   2020-08-19 Lynn Garren : missing library lardataalg_DetectorInfo
-   2020-08-19 Lynn Garren : larsimrad v09_00_00 for larsoft v09_00_00
-   2020-08-13 Kyle Knoepfel : Accommodate DetectorClocks/DetectorProperties API changes.
-   2020-08-11 Lynn Garren : v09_00_00_rc1

larrecodnn v09_00_00
------------------------------------------------

-   2020-08-19 Lynn Garren : larrecodnn v09_00_00 for larsoft parent larsoft v09_00_00
-   2020-08-19 Lynn Garren : larrecodnn v09_00_00 for larsoft v09_00_00
-   2020-08-12 Kyle Knoepfel : Merge branch ‘clang-format-only’ into v09_00_00_rc_br
-   2020-08-12 Kyle Knoepfel : Clang-format only.
-   2020-06-05 Lynn Garren : larrecodnn v09_00_00_rc1 for larsoft v09_00_00_rc1
-   2020-06-05 Lynn Garren : Merge pull request \#8 from knoepfel/bugfix/knoepfel_fix_fhicl
-   2020-06-02 Kyle Knoepfel : Un-clang-format FHiCL files.
-   2020-05-29 Lynn Garren : add missing library
-   2020-05-28 Lynn Garren : larrecodnn v09_00_00_rc0 for larsoft v09_00_00_rc0
-   2020-04-02 Kyle Knoepfel : Accommodate breaking changes.
-   2020-05-14 Kyle Knoepfel : Apply clang-format.

larwirecell v09_00_00
--------------------------------------------------

-   2020-08-19 Lynn Garren : larwirecell v09_00_00 for larsoft v09_00_00
-   2020-08-11 Lynn Garren : Merge branch ‘develop’ into v09_00_00_rc_br
-   2020-06-05 Lynn Garren : larwirecell v09_00_00_rc1 for larsoft v09_00_00_rc1
-   2020-05-28 Lynn Garren : larwirecell v09_00_00_rc0 for larsoft v09_00_00_rc0
-   2020-04-02 Kyle Knoepfel : Accommodate breaking changes.
-   2020-04-29 Kyle Knoepfel : Apply clang-format.

larana v09_00_00
----------------------------------------

-   2020-08-19 Lynn Garren : larana v09_00_00 for larsoft parent larsoft v09_00_00
-   2020-08-19 Lynn Garren : larana v09_00_00 for larsoft v09_00_00
-   2020-08-11 Lynn Garren : Merge branch ‘develop’ into v09_00_00_rc_br
-   2020-06-05 Lynn Garren : larana v09_00_00_rc1 for larsoft v09_00_00_rc1
-   2020-05-29 Lynn Garren : add missing library
-   2020-05-28 Lynn Garren : larana v09_00_00_rc0 for larsoft v09_00_00_rc0
-   2020-04-01 Kyle Knoepfel : Accommodate breaking changes.
-   2020-04-29 Kyle Knoepfel : Apply clang-format.

larreco v09_00_00
------------------------------------------

-   2020-08-19 Lynn Garren : larreco v09_00_00 for larsoft v09_00_00
-   2020-08-18 Kyle Knoepfel : Merge branch ‘develop’ into v09_00_00_rc_br
-   2020-08-11 Lynn Garren : Merge branch ‘develop’ into v09_00_00_rc_br
-   2020-06-05 Lynn Garren : larreco v09_00_00_rc1 for larsoft v09_00_00_rc1
-   2020-06-05 Lynn Garren : Merge pull request \#15 from knoepfel/bugfix/knoepfel_segfault
-   2020-06-01 Kyle Knoepfel : Restore correct PmaTrack3D copy c’tor.
-   2020-05-29 Lynn Garren : add missing library
-   2020-05-28 Lynn Garren : larreco v09_00_00_rc0 for larsoft v09_00_00_rc0
-   2020-03-27 Kyle Knoepfel : Accommodate breaking changes.
-   2020-05-14 Kyle Knoepfel : Apply clang-format.
-   2020-04-23 Kyle Knoepfel : Remove unused files.

larsim v09_00_00
----------------------------------------

-   2020-08-19 Lynn Garren : larsim v09_00_00 for larsoft v09_00_00
-   2020-08-13 Kyle Knoepfel : Merge branch ‘clang-format-only’ into tmp
-   2020-08-12 Kyle Knoepfel : Clang-format only.
-   2020-08-12 Kyle Knoepfel : Clang-format only.
-   2020-06-05 Lynn Garren : larsim v09_00_00_rc1 for larsoft v09_00_00_rc1
-   2020-05-29 Kyle Knoepfel : c7 fixes
-   2020-05-29 Lynn Garren : add missing library
-   2020-05-28 Lynn Garren : larsim v09_00_00_rc0 for larsoft v09_00_00_rc0
-   2020-05-28 Kyle Knoepfel : Revert to correct .gitignore file.
-   2020-05-22 Kyle Knoepfel : Accommodate breaking changes.
-   2020-05-28 Kyle Knoepfel : Apply clang-format.

larevt v09_00_00
----------------------------------------

-   2020-08-19 Lynn Garren : larevt v09_00_00 for larsoft v09_00_00
-   2020-08-11 Lynn Garren : Merge branch ‘develop’ into v09_00_00_rc_br
-   2020-06-05 Lynn Garren : larevt v09_00_00_rc1 for larsoft v09_00_00_rc1
-   2020-05-28 Lynn Garren : add missing library
-   2020-05-28 Lynn Garren : larevt v09_00_00_rc0 for larsoft v09_00_00_rc0
-   2020-03-26 Kyle Knoepfel : Accommodate breaking changes.
-   2020-04-28 Kyle Knoepfel : Apply clang-format.

lardata v09_00_00
------------------------------------------

-   2020-08-19 Lynn Garren : lardata v09_00_00 for larsoft v09_00_00
-   2020-08-11 Lynn Garren : Merge branch ‘develop’ into v09_00_00_rc_br
-   2020-06-05 Lynn Garren : lardata v09_00_00_rc1 for larsoft v09_00_00_rc1
-   2020-05-28 Lynn Garren : lardata v09_00_00_rc0 for larsoft v09_00_00_rc0
-   2020-03-26 Kyle Knoepfel : Thread-safe detector services.
-   2020-04-28 Kyle Knoepfel : Apply clang-format.

larcore v09_00_00
------------------------------------------

-   2020-08-19 Lynn Garren : larcore v09_00_00 for larsoft v09_00_00
-   2020-08-11 Lynn Garren : Merge branch ‘develop’ into v09_00_00_rc_br
-   2020-06-05 Lynn Garren : larcore v09_00_00_rc1 for larsoft v09_00_00_rc1
-   2020-05-28 Lynn Garren : larcore v09_00_00_rc0 for larsoft v09_00_00_rc0

larpandoracontent v03_19_02
--------------------------------------------------------------

larsoftobj v09_00_00
------------------------------------------------

-   2020-08-19 Lynn Garren : larsoftobj v09_00_00 for larsoft v09_00_00
-   2020-08-19 Lynn Garren : for larsoft v09_00_00
-   2020-08-11 Lynn Garren : Merge branch ‘develop’ into v09_00_00_rc_br
-   2020-06-05 Lynn Garren : larsoftobj v09_00_00_rc1 for larsoft v09_00_00_rc1
-   2020-06-05 Lynn Garren : for larsoft v09_00_00_rc1
-   2020-05-28 Lynn Garren : product versions
-   2020-05-28 Lynn Garren : larsoftobj v09_00_00_rc0 for larsoft v09_00_00_rc0

lardataobj v09_00_00
------------------------------------------------

-   2020-08-19 Lynn Garren : lardataobj v09_00_00 for larsoft v09_00_00
-   2020-08-11 Lynn Garren : Merge branch ‘develop’ into v09_00_00_rc_br
-   2020-06-05 Lynn Garren : lardataobj v09_00_00_rc1 for larsoft v09_00_00_rc1
-   2020-05-28 Lynn Garren : lardataobj v09_00_00_rc0 for larsoft v09_00_00_rc0

lardataalg v09_00_00
------------------------------------------------

-   2020-08-19 Lynn Garren : lardataalg v09_00_00 for larsoft v09_00_00
-   2020-08-11 Lynn Garren : Merge branch ‘develop’ into v09_00_00_rc_br
-   2020-06-05 Lynn Garren : lardataalg v09_00_00_rc1 for larsoft v09_00_00_rc1
-   2020-06-05 Lynn Garren : Merge pull request \#7 from knoepfel/bugfix/knoepfel_provider_pack
-   2020-06-03 Kyle Knoepfel : Fix provider pack.
-   2020-05-28 Lynn Garren : find headers
-   2020-05-28 Lynn Garren : lardataalg v09_00_00_rc0 for larsoft v09_00_00_rc0
-   2020-03-26 Kyle Knoepfel : Make DetectorClocks and DetectorProperties threadsafe.
-   2020-04-28 Kyle Knoepfel : Apply clang-format.

larcorealg v09_00_00
------------------------------------------------

-   2020-08-19 Lynn Garren : larcorealg v09_00_00 for larsoft v09_00_00
-   2020-08-11 Lynn Garren : Merge branch ‘develop’ into v09_00_00_rc_br
-   2020-06-05 Lynn Garren : larcorealg v09_00_00_rc1 for larsoft v09_00_00_rc1
-   2020-05-28 Lynn Garren : larcorealg v09_00_00_rc0 for larsoft v09_00_00_rc0

larcoreobj v09_00_00
------------------------------------------------

-   2020-08-19 Lynn Garren : larcoreobj v09_00_00 for larsoft v09_00_00
-   2020-08-11 Lynn Garren : Merge branch ‘develop’ into v09_00_00_rc_br
-   2020-06-05 Lynn Garren : larcoreobj v09_00_00_rc1 for larsoft v09_00_00_rc1
-   2020-05-28 Lynn Garren : larcoreobj v09_00_00_rc0 for larsoft v09_00_00_rc0

webevd v09_00_00
----------------------------------------

-   2020-08-19 Lynn Garren : webevd v09_00_00 for larsoft v09_00_00
-   2020-08-12 Kyle Knoepfel : Merge branch ‘develop’ into v09_00_00_rc_br
-   2020-06-05 Lynn Garren : webevd v09_00_00_rc1 for larsoft v09_00_00_rc1
-   2020-05-28 Lynn Garren : webevd v09_00_00_rc0 for larsoft v09_00_00_rc0
-   2020-05-28 Lynn Garren : Merge branch ‘feature/knoepfel_detector_services’ into v09_00_00_rc_br
-   2020-05-22 Kyle Knoepfel : Accommodate breaking changes.

larbatch v01_52_02
--------------------------------------------

larutils v1_26_01
------------------------------------------
