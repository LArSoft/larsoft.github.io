LArSoft v09_00_00_rc0 Release Notes
===============================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v09_00_00_rc0](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_00_00_rc0/larsoft-v09_00_00_rc0.html)
Download instructions for [just larsoftobj v09_00_00_rc0](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_00_00_rc0/larsoftobj-v09_00_00_rc0.html)

Purpose
--------------------

-   release candidate for thread safe detector clocks and properties
-   This release candidate is based off the larsoft v08_54_00 release.

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

Experiment code
------------------------------------

This is a breaking change. Feature branches are provided.

-   argoneutcode feature/team_detector_services
    -   [https://dbweb0.fnal.gov/LarCI/app/ns:ArgoNeuT/view_builds/index?offset=0&builds=argoneut_ci/4606&builds=](https://dbweb0.fnal.gov/LarCI/app/ns:ArgoNeuT/view_builds/index?offset=0&builds=argoneut_ci/4606&builds=)
-   dunetpc feature/team_detector_services
    -   [https://dbweb0.fnal.gov/LarCI/app/ns:DUNE/view_builds/index?offset=0&builds=dune_ci/9293&builds=](https://dbweb0.fnal.gov/LarCI/app/ns:DUNE/view_builds/index?offset=0&builds=dune_ci/9293&builds=)
-   uboone suite feature/team_detector_services
    -   ubcore ubcv ublite uboonecode ubraw ubsim ubana ubcrt ubevt ubobj ubreco
-   icaruscode PR 2
-   sbndcode PR 2

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v09_00_00_rc0
---------------------------------------------------

-   2020-05-28 Lynn Garren : larsoft v09_00_00_rc0 for larsoft v09_00_00_rc0
-   2020-05-28 Lynn Garren : product versions

lareventdisplay v09_00_00_rc0
-------------------------------------------------------------------

-   2020-05-29 Lynn Garren : add missing library
-   2020-05-28 Lynn Garren : lareventdisplay v09_00_00_rc0 for larsoft v09_00_00_rc0
-   2020-04-02 Kyle Knoepfel : Accommodate breaking changes.
-   2020-04-29 Kyle Knoepfel : Apply clang-format.

larexamples v09_00_00_rc0
-----------------------------------------------------------

-   2020-05-28 Lynn Garren : larexamples v09_00_00_rc0 for larsoft v09_00_00_rc0
-   2020-04-02 Kyle Knoepfel : Accommodate breaking changes.
-   2020-04-30 Kyle Knoepfel : Apply clang-format.

larg4 v09_00_00_rc0
-----------------------------------------------

-   2020-05-28 Lynn Garren : larg4 v09_00_00_rc0 for larsoft v09_00_00_rc0

larpandora v09_00_00_rc0
---------------------------------------------------------

-   2020-05-29 Lynn Garren : add missing library
-   2020-05-28 Lynn Garren : larpandora v09_00_00_rc0 for larsoft v09_00_00_rc0
-   2020-04-01 Kyle Knoepfel : Accommodate breaking changes.
-   2020-04-29 Kyle Knoepfel : Apply clang-format.

larrecodnn v09_00_00_rc0
---------------------------------------------------------

-   2020-05-29 Lynn Garren : add missing library
-   2020-05-28 Lynn Garren : larrecodnn v09_00_00_rc0 for larsoft v09_00_00_rc0
-   2020-04-02 Kyle Knoepfel : Accommodate breaking changes.
-   2020-05-14 Kyle Knoepfel : Apply clang-format.

larwirecell v09_00_00_rc0
-----------------------------------------------------------

-   2020-05-28 Lynn Garren : larwirecell v09_00_00_rc0 for larsoft v09_00_00_rc0
-   2020-04-02 Kyle Knoepfel : Accommodate breaking changes.
-   2020-04-29 Kyle Knoepfel : Apply clang-format.

larana v09_00_00_rc0
-------------------------------------------------

-   2020-05-29 Lynn Garren : add missing library
-   2020-05-28 Lynn Garren : larana v09_00_00_rc0 for larsoft v09_00_00_rc0
-   2020-04-01 Kyle Knoepfel : Accommodate breaking changes.
-   2020-04-29 Kyle Knoepfel : Apply clang-format.

larreco v09_00_00_rc0
---------------------------------------------------

-   2020-05-29 Lynn Garren : add missing library
-   2020-05-28 Lynn Garren : larreco v09_00_00_rc0 for larsoft v09_00_00_rc0
-   2020-03-27 Kyle Knoepfel : Accommodate breaking changes.
-   2020-05-14 Kyle Knoepfel : Apply clang-format.
-   2020-04-23 Kyle Knoepfel : Remove unused files.

larsim v09_00_00_rc0
-------------------------------------------------

-   2020-05-29 Kyle Knoepfel : c7 fixes
-   2020-05-29 Lynn Garren : add missing library
-   2020-05-28 Lynn Garren : larsim v09_00_00_rc0 for larsoft v09_00_00_rc0
-   2020-05-28 Kyle Knoepfel : Revert to correct .gitignore file.
-   2020-05-22 Kyle Knoepfel : Accommodate breaking changes.
-   2020-05-28 Kyle Knoepfel : Apply clang-format.

larevt v09_00_00_rc0
-------------------------------------------------

-   2020-05-28 Lynn Garren : add missing library
-   2020-05-28 Lynn Garren : larevt v09_00_00_rc0 for larsoft v09_00_00_rc0
-   2020-03-26 Kyle Knoepfel : Accommodate breaking changes.
-   2020-04-28 Kyle Knoepfel : Apply clang-format.

lardata v09_00_00_rc0
---------------------------------------------------

-   2020-05-28 Lynn Garren : lardata v09_00_00_rc0 for larsoft v09_00_00_rc0
-   2020-03-26 Kyle Knoepfel : Thread-safe detector services.
-   2020-04-28 Kyle Knoepfel : Apply clang-format.

larcore v09_00_00_rc0
---------------------------------------------------

-   2020-05-28 Lynn Garren : larcore v09_00_00_rc0 for larsoft v09_00_00_rc0

larpandoracontent v03_16_00
--------------------------------------------------------------

larsoftobj v09_00_00_rc0
---------------------------------------------------------

-   2020-05-28 Lynn Garren : product versions
-   2020-05-28 Lynn Garren : larsoftobj v09_00_00_rc0 for larsoft v09_00_00_rc0

lardataobj v09_00_00_rc0
---------------------------------------------------------

-   2020-05-28 Lynn Garren : lardataobj v09_00_00_rc0 for larsoft v09_00_00_rc0

lardataalg v09_00_00_rc0
---------------------------------------------------------

-   2020-05-28 Lynn Garren : find headers
-   2020-05-28 Lynn Garren : lardataalg v09_00_00_rc0 for larsoft v09_00_00_rc0
-   2020-03-26 Kyle Knoepfel : Make DetectorClocks and DetectorProperties threadsafe.
-   2020-04-28 Kyle Knoepfel : Apply clang-format.

larcorealg v09_00_00_rc0
---------------------------------------------------------

-   2020-05-28 Lynn Garren : larcorealg v09_00_00_rc0 for larsoft v09_00_00_rc0

larcoreobj v09_00_00_rc0
---------------------------------------------------------

-   2020-05-28 Lynn Garren : larcoreobj v09_00_00_rc0 for larsoft v09_00_00_rc0

webevd v09_00_00_rc0
-------------------------------------------------

-   2020-05-28 Lynn Garren : webevd v09_00_00_rc0 for larsoft v09_00_00_rc0
-   2020-05-28 Lynn Garren : Merge branch ‘feature/knoepfel_detector_services’ into v09_00_00_rc_br
-   2020-05-22 Kyle Knoepfel : Accommodate breaking changes.
