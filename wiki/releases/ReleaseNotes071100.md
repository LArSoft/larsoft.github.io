LArSoft v07_11_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v07_11_00 Release Notes](#LArSoft-v07_11_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Breaking changes](#Breaking-changes)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v07_11_00](#larsoft-v07_11_00)
    -   [lareventdisplay v07_01_14](#lareventdisplay-v07_01_14)
    -   [larexamples v07_00_17](#larexamples-v07_00_17)
    -   [larg4 v07_03_01](#larg4-v07_03_01)
    -   [larpandora v07_04_00](#larpandora-v07_04_00)
    -   [larwirecell v07_04_00](#larwirecell-v07_04_00)
    -   [larana v07_03_00](#larana-v07_03_00)
    -   [larreco v07_09_00](#larreco-v07_09_00)
    -   [larsim v07_07_01](#larsim-v07_07_01)
    -   [larevt v07_01_03](#larevt-v07_01_03)
    -   [lardata v07_00_15](#lardata-v07_00_15)
    -   [larcore v07_00_05](#larcore-v07_00_05)
    -   [larpandoracontent v03_14_02](#larpandoracontent-v03_14_02)
    -   [larsoftobj v07_07_01](#larsoftobj-v07_07_01)
    -   [lardataobj v07_05_00](#lardataobj-v07_05_00)
    -   [lardataalg v07_02_05](#lardataalg-v07_02_05)
    -   [larcorealg v07_03_00](#larcorealg-v07_03_00)
    -   [larcoreobj v07_00_01](#larcoreobj-v07_00_01)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v07_11_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v07_11_00/larsoft-v07_11_00.html)
Download instructions for [just larsoftobj v07_07_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v07_07_01/larsoftobj-v07_07_01.html)

Purpose
--------------------

Weekly release.

New features
------------------------------

Feature branches merged.

-   larpandora/feature/escudero_PFParticleMetadataTemporaryNamespaceFix
-   larwirecell/feature/weihy_larwirecell
-   larana/feature/cerati_double2float_v2
-   larreco/feature/cerati_fix-flags-tracks
-   larreco/feature/cerati_double2float_v2
-   larsim/feature/wketchum_TestIonization
-   lardataobj/feature/escudero_PFParticleMetadataTemporaryNamespaceFix
-   lardataobj/feature/cerati_double2float_v2

Breaking changes
--------------------------------------

Please note that with the inclusion of

feature/cerati_double2float_v2

in this release your will need to merge the corresponding branch for these packages

ubana, ublite, dunetpc

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   wirecell 0.9.4

Change List
============================

larsoft v07_11_00
------------------------------------------

-   2018-11-14 Patrick Gartung : update larevt tag
-   2018-11-13 Patrick Gartung : update releaseDB
-   2018-11-13 Patrick Gartung : update versions
-   2018-11-13 Patrick Gartung : update releaseDB
-   2018-11-13 Patrick Gartung : larsoft v07_11_00 for larsoft v07_11_00
-   2018-11-12 Patrick Gartung : larsoft v07_10_00_01 for larsoft v07_10_00_01
-   2018-11-12 Patrick Gartung : update releaseDB

lareventdisplay v07_01_14
----------------------------------------------------------

-   2018-11-13 Patrick Gartung : lareventdisplay v07_01_14 for larsoft v07_11_00
-   2018-11-12 Patrick Gartung : lareventdisplay v07_01_13 for larsoft v07_10_00_01

larexamples v07_00_17
--------------------------------------------------

-   2018-11-13 Patrick Gartung : larexamples v07_00_16 larsoft v07_11_00
-   2018-11-12 Patrick Gartung : larexamples v07_00_16 for larsoft v07_10_00_01 with corrected larsim tag
-   2018-11-12 Patrick Gartung : larexamples v07_00_16 larsoft v07_10_00_01

larg4 v07_03_01
--------------------------------------

-   2018-11-13 Patrick Gartung : larg4 v07_03_01 for larsoft v07_11_00

larpandora v07_04_00
------------------------------------------------

-   2018-11-13 Patrick Gartung : larpandora v07_04_00 for larsoft v07_11_00
-   2018-11-13 Patrick Gartung : Merge remote-tracking branch ‘origin/feature/escudero_PFParticleMetadataTemporaryNamespaceFix’ into release/v07_11_00
-   2018-11-13 loressa : Moved PFParticleMetadata to larpandoraobj namespace for backwards compatibility following LArSoft team guidelines
-   2018-11-12 Patrick Gartung : larpandora v07_03_01 for larsoft v07_10_00_01

larwirecell v07_04_00
--------------------------------------------------

-   2018-11-13 Patrick Gartung : larwirecell v07_04_00 for larsoft v07_11_00
-   2018-11-08 Hanyu Wei : Merge branch ‘develop’ into feature/weihy_larwirecell
-   2018-11-08 Hanyu Wei : dynamic misconfigured channels for simulation overlay

larana v07_03_00
----------------------------------------

-   2018-11-13 Patrick Gartung : larana v07_02_09 for larsoft v07_11_00
-   2018-11-13 Patrick Gartung : Merge remote-tracking branch ‘origin/feature/cerati_double2float_v2’ into develop
-   2018-11-12 Patrick Gartung : larana v07_02_09 for larsoft v07_10_00_01
-   2018-11-05 Giuseppe Cerati : fix downstream code after double-\>float migration

larreco v07_09_00
------------------------------------------

-   2018-11-14 Patrick Gartung : Merge remote-tracking branch ‘origin/feature/cerati_fix-flags-tracks’
-   2018-11-13 Patrick Gartung : restore changes from origin/feature/cerati_double2float_v2 wiped out by commit a2af2a89bd44b0103d56ff7392835703c300d2cd
-   2018-11-13 Patrick Gartung : fix larsim tag
-   2018-11-13 Patrick Gartung : Merge branch ‘release/v07_11_00’
-   2018-11-13 Patrick Gartung : larreco v07_09_00 for larsoft v07_11_00
-   2018-11-13 Patrick Gartung : Merge remote-tracking branch ‘origin/feature/cerati_double2float_v2’ into develop
-   2018-11-12 Patrick Gartung : larreco v07_08_01 for larsoft v07_10_00_01 with corrected larsim tag
-   2018-11-12 Patrick Gartung : larreco v07_08_01 for larsoft v07_10_00_01
-   2018-11-12 Giuseppe Cerati : add metadata to hit-track association

larsim v07_07_01
----------------------------------------

-   2018-11-14 Patrick Gartung : Merge branch ‘develop’
-   2018-11-14 Wesley Ketchum : mcreco option for different particle and simchannel input sources
-   2018-11-13 Patrick Gartung : larsim v07_07_01 for larsoft v07_11_00
-   2018-11-12 Patrick Gartung : larsim v07_07_00 for larsoft v07_10_00_01
-   2018-11-12 Patrick Gartung : larsim v07_08_01 for larsoft v07_10_00_01
-   2018-11-09 Wesley Ketchum : Merge remote branch ‘origin/develop’ into feature/wketchum_TestIonization
-   2018-11-09 Wesley Ketchum : remove TRACE statements again
-   2018-11-09 Wesley Ketchum : some cleanup of variables extracted from larg4 service
-   2018-11-09 Wesley Ketchum : fix for ds being zero…BAD BUG!
-   2018-11-08 Lynn Garren : larsoft v07_10_00
-   2018-11-07 Jason Stock : Update to PBT to fix Flash to OpHit functions.

larevt v07_01_03
----------------------------------------

-   2018-11-13 Patrick Gartung : larevt v07_01_03 for larsoft v07_11_00

lardata v07_00_15
------------------------------------------

-   2018-11-13 Patrick Gartung : lardata v07_00_15 got larsoft v07_11_00

larcore v07_00_05
------------------------------------------

larpandoracontent v03_14_02
--------------------------------------------------------------

larsoftobj v07_07_01
------------------------------------------------

lardataobj v07_05_00
------------------------------------------------

-   2018-11-13 Patrick Gartung : update bundle CMakeLists.txt with right vesions
-   2018-11-13 Patrick Gartung : larsoftobj v07_07_01 for larsoft v07_11_00
-   2018-11-14 Patrick Gartung : use the correct name
-   2018-11-14 Patrick Gartung : add larcorealg as a dependency as it is request in CMakeLists.txt
-   2018-11-13 Patrick Gartung : lardataobj v07_05_00 for larsoft v07_11_00
-   2018-11-13 Patrick Gartung : Merge remote-tracking branch ‘origin/feature/escudero_PFParticleMetadataTemporaryNamespaceFix’ into release/v07_11_00
-   2018-11-13 Patrick Gartung : Merge remote-tracking branch ‘origin/feature/cerati_double2float_v2’ into release/v07_11_00
-   2018-11-13 Patrick Gartung : Merge remote-tracking branch ‘origin/feature/cerati_double2float_v2’ into develop
-   2018-11-13 loressa : Cosmetics
-   2018-11-13 loressa : Moved PFParticleMetadata to larpandoraobj namespace for backwards compatibility following LArSoft team guidelines
-   2018-11-12 Giuseppe Cerati : add documentation about Double32_t
-   2018-11-08 Giuseppe Cerati : get rid of offending (and unnecessary) i/o rules
-   2018-11-07 Giuseppe Cerati : i/o rules for double-\>float migration
-   2018-11-06 Giuseppe Cerati : add TpIndices to anab::Calorimetry and add conversion tools to TrackingTypes.h
-   2018-11-05 Giuseppe Cerati : SpacePoints as well
-   2018-11-04 Giuseppe Cerati : double-\>float conversion

lardataalg v07_02_05
------------------------------------------------

larcorealg v07_03_00
------------------------------------------------

larcoreobj v07_00_01
------------------------------------------------
