LArSoft v07\_11\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v07\_11\_00 Release Notes](#LArSoft-v07_11_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Breaking changes](#Breaking-changes)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v07\_11\_00](#larsoft-v07_11_00)
    -   [lareventdisplay v07\_01\_14](#lareventdisplay-v07_01_14)
    -   [larexamples v07\_00\_17](#larexamples-v07_00_17)
    -   [larg4 v07\_03\_01](#larg4-v07_03_01)
    -   [larpandora v07\_04\_00](#larpandora-v07_04_00)
    -   [larwirecell v07\_04\_00](#larwirecell-v07_04_00)
    -   [larana v07\_03\_00](#larana-v07_03_00)
    -   [larreco v07\_09\_00](#larreco-v07_09_00)
    -   [larsim v07\_07\_01](#larsim-v07_07_01)
    -   [larevt v07\_01\_03](#larevt-v07_01_03)
    -   [lardata v07\_00\_15](#lardata-v07_00_15)
    -   [larcore v07\_00\_05](#larcore-v07_00_05)
    -   [larpandoracontent v03\_14\_02](#larpandoracontent-v03_14_02)
    -   [larsoftobj v07\_07\_01](#larsoftobj-v07_07_01)
    -   [lardataobj v07\_05\_00](#lardataobj-v07_05_00)
    -   [lardataalg v07\_02\_05](#lardataalg-v07_02_05)
    -   [larcorealg v07\_03\_00](#larcorealg-v07_03_00)
    -   [larcoreobj v07\_00\_01](#larcoreobj-v07_00_01)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v07\_11\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v07_11_00/larsoft-v07_11_00.html)
Download instructions for [just larsoftobj v07\_07\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v07_07_01/larsoftobj-v07_07_01.html)

Purpose
--------------------

Weekly release.

New features
------------------------------

Feature branches merged.

-   larpandora/feature/escudero\_PFParticleMetadataTemporaryNamespaceFix
-   larwirecell/feature/weihy\_larwirecell
-   larana/feature/cerati\_double2float\_v2
-   larreco/feature/cerati\_fix-flags-tracks
-   larreco/feature/cerati\_double2float\_v2
-   larsim/feature/wketchum\_TestIonization
-   lardataobj/feature/escudero\_PFParticleMetadataTemporaryNamespaceFix
-   lardataobj/feature/cerati\_double2float\_v2

Breaking changes
--------------------------------------

Please note that with the inclusion of

feature/cerati\_double2float\_v2

in this release your will need to merge the corresponding branch for these packages

ubana, ublite, dunetpc

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   wirecell 0.9.4

Change List
============================

larsoft v07\_11\_00
------------------------------------------

-   2018-11-14 Patrick Gartung : update larevt tag
-   2018-11-13 Patrick Gartung : update releaseDB
-   2018-11-13 Patrick Gartung : update versions
-   2018-11-13 Patrick Gartung : update releaseDB
-   2018-11-13 Patrick Gartung : larsoft v07\_11\_00 for larsoft v07\_11\_00
-   2018-11-12 Patrick Gartung : larsoft v07\_10\_00\_01 for larsoft v07\_10\_00\_01
-   2018-11-12 Patrick Gartung : update releaseDB

lareventdisplay v07\_01\_14
----------------------------------------------------------

-   2018-11-13 Patrick Gartung : lareventdisplay v07\_01\_14 for larsoft v07\_11\_00
-   2018-11-12 Patrick Gartung : lareventdisplay v07\_01\_13 for larsoft v07\_10\_00\_01

larexamples v07\_00\_17
--------------------------------------------------

-   2018-11-13 Patrick Gartung : larexamples v07\_00\_16 larsoft v07\_11\_00
-   2018-11-12 Patrick Gartung : larexamples v07\_00\_16 for larsoft v07\_10\_00\_01 with corrected larsim tag
-   2018-11-12 Patrick Gartung : larexamples v07\_00\_16 larsoft v07\_10\_00\_01

larg4 v07\_03\_01
--------------------------------------

-   2018-11-13 Patrick Gartung : larg4 v07\_03\_01 for larsoft v07\_11\_00

larpandora v07\_04\_00
------------------------------------------------

-   2018-11-13 Patrick Gartung : larpandora v07\_04\_00 for larsoft v07\_11\_00
-   2018-11-13 Patrick Gartung : Merge remote-tracking branch ‘origin/feature/escudero\_PFParticleMetadataTemporaryNamespaceFix’ into release/v07\_11\_00
-   2018-11-13 loressa : Moved PFParticleMetadata to larpandoraobj namespace for backwards compatibility following LArSoft team guidelines
-   2018-11-12 Patrick Gartung : larpandora v07\_03\_01 for larsoft v07\_10\_00\_01

larwirecell v07\_04\_00
--------------------------------------------------

-   2018-11-13 Patrick Gartung : larwirecell v07\_04\_00 for larsoft v07\_11\_00
-   2018-11-08 Hanyu Wei : Merge branch ‘develop’ into feature/weihy\_larwirecell
-   2018-11-08 Hanyu Wei : dynamic misconfigured channels for simulation overlay

larana v07\_03\_00
----------------------------------------

-   2018-11-13 Patrick Gartung : larana v07\_02\_09 for larsoft v07\_11\_00
-   2018-11-13 Patrick Gartung : Merge remote-tracking branch ‘origin/feature/cerati\_double2float\_v2’ into develop
-   2018-11-12 Patrick Gartung : larana v07\_02\_09 for larsoft v07\_10\_00\_01
-   2018-11-05 Giuseppe Cerati : fix downstream code after double-\>float migration

larreco v07\_09\_00
------------------------------------------

-   2018-11-14 Patrick Gartung : Merge remote-tracking branch ‘origin/feature/cerati\_fix-flags-tracks’
-   2018-11-13 Patrick Gartung : restore changes from origin/feature/cerati\_double2float\_v2 wiped out by commit a2af2a89bd44b0103d56ff7392835703c300d2cd
-   2018-11-13 Patrick Gartung : fix larsim tag
-   2018-11-13 Patrick Gartung : Merge branch ‘release/v07\_11\_00’
-   2018-11-13 Patrick Gartung : larreco v07\_09\_00 for larsoft v07\_11\_00
-   2018-11-13 Patrick Gartung : Merge remote-tracking branch ‘origin/feature/cerati\_double2float\_v2’ into develop
-   2018-11-12 Patrick Gartung : larreco v07\_08\_01 for larsoft v07\_10\_00\_01 with corrected larsim tag
-   2018-11-12 Patrick Gartung : larreco v07\_08\_01 for larsoft v07\_10\_00\_01
-   2018-11-12 Giuseppe Cerati : add metadata to hit-track association

larsim v07\_07\_01
----------------------------------------

-   2018-11-14 Patrick Gartung : Merge branch ‘develop’
-   2018-11-14 Wesley Ketchum : mcreco option for different particle and simchannel input sources
-   2018-11-13 Patrick Gartung : larsim v07\_07\_01 for larsoft v07\_11\_00
-   2018-11-12 Patrick Gartung : larsim v07\_07\_00 for larsoft v07\_10\_00\_01
-   2018-11-12 Patrick Gartung : larsim v07\_08\_01 for larsoft v07\_10\_00\_01
-   2018-11-09 Wesley Ketchum : Merge remote branch ‘origin/develop’ into feature/wketchum\_TestIonization
-   2018-11-09 Wesley Ketchum : remove TRACE statements again
-   2018-11-09 Wesley Ketchum : some cleanup of variables extracted from larg4 service
-   2018-11-09 Wesley Ketchum : fix for ds being zero…BAD BUG!
-   2018-11-08 Lynn Garren : larsoft v07\_10\_00
-   2018-11-07 Jason Stock : Update to PBT to fix Flash to OpHit functions.

larevt v07\_01\_03
----------------------------------------

-   2018-11-13 Patrick Gartung : larevt v07\_01\_03 for larsoft v07\_11\_00

lardata v07\_00\_15
------------------------------------------

-   2018-11-13 Patrick Gartung : lardata v07\_00\_15 got larsoft v07\_11\_00

larcore v07\_00\_05
------------------------------------------

larpandoracontent v03\_14\_02
--------------------------------------------------------------

larsoftobj v07\_07\_01
------------------------------------------------

lardataobj v07\_05\_00
------------------------------------------------

-   2018-11-13 Patrick Gartung : update bundle CMakeLists.txt with right vesions
-   2018-11-13 Patrick Gartung : larsoftobj v07\_07\_01 for larsoft v07\_11\_00
-   2018-11-14 Patrick Gartung : use the correct name
-   2018-11-14 Patrick Gartung : add larcorealg as a dependency as it is request in CMakeLists.txt
-   2018-11-13 Patrick Gartung : lardataobj v07\_05\_00 for larsoft v07\_11\_00
-   2018-11-13 Patrick Gartung : Merge remote-tracking branch ‘origin/feature/escudero\_PFParticleMetadataTemporaryNamespaceFix’ into release/v07\_11\_00
-   2018-11-13 Patrick Gartung : Merge remote-tracking branch ‘origin/feature/cerati\_double2float\_v2’ into release/v07\_11\_00
-   2018-11-13 Patrick Gartung : Merge remote-tracking branch ‘origin/feature/cerati\_double2float\_v2’ into develop
-   2018-11-13 loressa : Cosmetics
-   2018-11-13 loressa : Moved PFParticleMetadata to larpandoraobj namespace for backwards compatibility following LArSoft team guidelines
-   2018-11-12 Giuseppe Cerati : add documentation about Double32\_t
-   2018-11-08 Giuseppe Cerati : get rid of offending (and unnecessary) i/o rules
-   2018-11-07 Giuseppe Cerati : i/o rules for double-\>float migration
-   2018-11-06 Giuseppe Cerati : add TpIndices to anab::Calorimetry and add conversion tools to TrackingTypes.h
-   2018-11-05 Giuseppe Cerati : SpacePoints as well
-   2018-11-04 Giuseppe Cerati : double-\>float conversion

lardataalg v07\_02\_05
------------------------------------------------

larcorealg v07\_03\_00
------------------------------------------------

larcoreobj v07\_00\_01
------------------------------------------------
