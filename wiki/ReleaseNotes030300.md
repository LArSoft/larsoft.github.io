LArSoft v03\_03\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v03\_03\_00 Release Notes](#LArSoft-v03_03_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v03\_03\_00](#larsoft-v03_03_00)
    -   [lareventdisplay v03\_02\_01](#lareventdisplay-v03_02_01)
    -   [larexamples v03\_02\_01](#larexamples-v03_02_01)
    -   [larpandora v03\_03\_00](#larpandora-v03_03_00)
    -   [larana v03\_02\_01](#larana-v03_02_01)
    -   [larreco v03\_02\_01](#larreco-v03_02_01)
    -   [larsim v03\_02\_01](#larsim-v03_02_01)
    -   [larevt v03\_02\_01](#larevt-v03_02_01)
    -   [lardata v03\_02\_01](#lardata-v03_02_01)
    -   [larcore v03\_02\_01](#larcore-v03_02_01)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/projects/larsoft/v03_03_00/larsoft-v03_03_00.html)

Purpose
--------------------

Include changes in development since v03\_02\_00.
Use pandora v00\_17.

New features
------------------------------

Use pandora v00\_17.
\$LARSOFT\_DIR/releaseDB/product\_list contains the list of larsoft products and their versions for this release. This file will be used by a new release of mrb.

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifier|Notes|
|pandora|v00\_17|e6||

Change List
============================

larsoft v03\_03\_00
------------------------------------------

-   2014-10-16 Lynn Garren : product version list for a larsoft release - to be used by mrb
-   2014-10-16 Lynn Garren : larpandora changes for pandora v00\_17

lareventdisplay v03\_02\_01
----------------------------------------------------------

-   2014-10-16 Lynn Garren : for larsoft v03\_02\_01

larexamples v03\_02\_01
--------------------------------------------------

-   2014-10-16 Lynn Garren : for larsoft v03\_02\_01

larpandora v03\_03\_00
------------------------------------------------

-   2014-10-16 Lynn Garren : Merge branch ‘feature/preparation\_for\_pandora-v00-17’
-   2014-10-16 Lynn Garren : use pandora v00\_17
-   2014-09-23 Lynn Garren : larpandora v03\_00\_00 with art v1\_12\_00, pandora v00\_16c, and gcc v4\_9\_1
-   2014-09-26 Lynn Garren : the expectd -std=c++ flag is now set by cetbuildtools
-   2014-09-23 Lynn Garren : use cetbuildtools v4\_02\_02
-   2014-10-15 John Marshall : Improvements to shower reconstruction and track/shower separation. Framework for vertex reconstruction.
-   2014-09-22 John Marshall : Improvements motivated by Coverity Software Testing and Static Analysis Tools.
-   2014-09-19 John Marshall : Improved cluster-splitting mechanics.
-   2014-09-19 John Marshall : Improvements motivated by Coverity Software Testing and Static Analysis Tools. Respond to changes to Pandora SDK. Improved monitoring functionality.
-   2014-09-12 John Marshall : Cosmetic: remove tab characters.
-   2014-09-12 John Marshall : Update algorithm configuration, adding new configurations for separate cosmic and neutrino reconstruction processes.
-   2014-09-11 John Marshall : Correct parameter initialization for muon id plugin.
-   2014-09-11 John Marshall : Modifications required for use with Pandora v00-17. Now support multiple concurrent instances of Pandora and the LArPandoraAlgorithms. This allows for separate processes for e.g. each of multiple TPCs, or for separate Pandora processes pre- and post-cosmic removal.

larana v03\_02\_01
----------------------------------------

-   2014-10-09 Wesley Ketchum : Merge branch ‘feature/wketchum\_CosmicTagWork’ into develop
-   2014-10-09 Wesley Ketchum : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larana into develop
-   2014-10-09 Wesley Ketchum : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larana into feature/wketchum\_CosmicTagWork
-   2014-10-07 Sarah Lockwitz : switching to Tracy s suggestion of counting each boundary once (eg two track end points near the top of the tpc will only be counted as one boundary)
-   2014-10-06 Wesley Ketchum : update BFTM to use LArProperties and OpDigiProperties, rather than rely on a fcl parameter; also, some merging in with updated cosmic stuff
-   2014-10-03 Wesley Ketchum : putting in quick bug fix found by Tracy
-   2014-10-03 Wesley Ketchum : Merge tag ‘v02\_06\_02’ into develop

larreco v03\_02\_01
------------------------------------------

-   2014-10-15 Eric Church : Address the FindManyP problems identified in LArSoft Redmine issues in 7050 and 7057.
-   2014-10-14 Brian Rebel : fix typo - missed a 0 –\> p change in an index
-   2014-10-14 Brian Rebel : change use of c style arrays to std::vectors to account for variable number of planes when determining distance between wires in a plane and xy scale factor based on drift velocity, etc

larsim v03\_02\_01
----------------------------------------

-   2014-10-08 Alex Himmel : Merge branch ‘feature/storePhotonFinalPosition’ into develop
-   2014-10-08 Alex Himmel : Merge branch ‘develop’ into feature/storePhotonFinalPosition
-   2014-09-25 Alex Himmel : Store the final local position of the photon when it hits the photon detector in the SimPhotons class. Required for implementing light guide photon detectors.

larevt v03\_02\_01
----------------------------------------

-   2014-10-16 Lynn Garren : for larsoft v03\_02\_01

lardata v03\_02\_01
------------------------------------------

-   2014-10-13 drinkingkazu : Adding MCShower –kazu
-   2014-10-09 Wesley Ketchum : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/lardata into feature/wketchum\_ConstLArPAccess
-   2014-10-06 Wesley Ketchum : provide const return values for optical stuff

larcore v03\_02\_01
------------------------------------------

-   2014-10-08 Alex Himmel : Merge branch ‘feature/OpDetGeoFix’ into develop
-   2014-10-08 Alex Himmel : Merge branch ‘develop’ into feature/OpDetGeoFix
-   2014-09-25 Alex Himmel : Fixed a bug in the WorldToLocal conversion commands in OpDetGeo. The arguments were reversed to match the behavior of TGeoMatrix::MasterToLocal. This also make OpDetGeo consistent with other LarCore classes for the behavior of this and similarly named function.
