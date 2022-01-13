LArSoft v06_19_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06_19_00 Release Notes](#LArSoft-v06_19_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Known problems](#Known-problems)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06_19_00](#larsoft-v06_19_00)
    -   [lareventdisplay v06_02_07](#lareventdisplay-v06_02_07)
    -   [larexamples v06_01_08](#larexamples-v06_01_08)
    -   [larpandora v06_05_00](#larpandora-v06_05_00)
    -   [larwirecell v06_00_05](#larwirecell-v06_00_05)
    -   [larana v06_03_11](#larana-v06_03_11)
    -   [larreco v06_15_00](#larreco-v06_15_00)
    -   [larsim v06_10_02](#larsim-v06_10_02)
    -   [larevt v06_07_02](#larevt-v06_07_02)
    -   [lardata v06_11_01](#lardata-v06_11_01)
    -   [larcore v06_05_01](#larcore-v06_05_01)
    -   [larsoftobj v1_08_02](#larsoftobj-v1_08_02)
    -   [lardataobj v1_08_00](#lardataobj-v1_08_00)
    -   [larcoreobj v1_06_01](#larcoreobj-v1_06_01)
    -   [larbatch v01_26_01](#larbatch-v01_26_01)
    -   [larutils v1_11_00](#larutils-v1_11_00)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06_19_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_19_00/larsoft-v06_19_00.html)
Download instructions for [just larsoftobj v1_08_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_08_02/larsoftobj-v1_08_02.html)

Purpose
--------------------

-   changes to develop
-   include feature branches

New features
------------------------------

-   feature/blake_standardpandora for larpandora, dunetpc and uboonecode.
    -   move the MicroBooNEPandora package from larpandora to uboonecode
-   larreco feature/cerati_kffit-fix-length

Bug fixes
------------------------

Known problems
----------------------------------

-   If photon backtracker was not run in largeant stage, any later larsoft jobs will fail when trying to initialize the photon backtracker service. [redmine issue 15012](https://cdcvs.fnal.gov/redmine/issues/15012)

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v06_19_00
------------------------------------------

-   2017-01-04 Lynn Garren : larsoft v06_19_00 for larsoft v06_19_00
-   2017-01-04 Lynn Garren : update product versions
-   2017-01-04 Lynn Garren : update dependency database

lareventdisplay v06_02_07
----------------------------------------------------------

-   2017-01-04 Lynn Garren : lareventdisplay v06_02_07 for larsoft v06_19_00
-   2016-12-21 Patrick Gartung : Merge branch ‘master’ into develop
-   2016-12-21 Patrick Gartung : lareventdisplay v06_02_06 for larsoft v06_18_01

larexamples v06_01_08
--------------------------------------------------

-   2017-01-04 Lynn Garren : larexamples v06_01_08 for larsoft v06_19_00

larpandora v06_05_00
------------------------------------------------

-   2017-01-04 Lynn Garren : larpandora v06_05_00 for larsoft v06_19_00
-   2017-01-04 Lynn Garren : Merge branch ‘feature/blake_standardpandora’ into release/v06_19_00
-   2016-12-28 Gianluca Petrillo : Pandora driver modules don’t try to delete an unexisting pandora any more.
-   2016-12-20 Andrew Blake : Re-basing feature/blake_standardpandora
-   2016-12-20 Andrew Blake : Installing xml scripts via install_fw command.
-   2016-12-11 Andrew Blake : Moving MicroBooNEPandora package from larpandora to uboonecode, and moving PFParticleStitcher code from larpandora to dunetpc
-   2016-12-11 Andrew Blake : Moving MicroBooNEPandora package from larpandora to uboonecode, and moving PFParticleStitcher code from larpandora to dunetpc

larwirecell v06_00_05
--------------------------------------------------

-   2017-01-04 Lynn Garren : find headers
-   2017-01-04 Lynn Garren : larwirecell v06_00_05 for larsoft v06_19_00
-   2016-12-21 Patrick Gartung : Merge branch ‘release/v06_18_01’ into develop
-   2016-12-21 Usher, Tracy L : Fix inadvertent reversion of rms value in RawDigit
-   2016-12-21 Usher, Tracy L : consistent use of window size…
-   2016-12-21 Usher, Tracy L : Change override of \#def as suggested by Brett, simplify the setup of the truncation (or not truncation). I think this is done now…
-   2016-12-21 Usher, Tracy L : Removing the using namespaces

larana v06_03_11
----------------------------------------

-   2017-01-04 Lynn Garren : larana v06_03_11 for larsoft v06_19_00

larreco v06_15_00
------------------------------------------

-   2017-01-04 Lynn Garren : larreco v06_15_00 for larsoft v06_19_00
-   2017-01-04 Lynn Garren : Merge branch ‘feature/cerati_kffit-fix-length’ into release/v06_19_00
-   2017-01-01 Dorota Stefan : fix in penalty function calculation
-   2016-12-28 Giuseppe Cerati : minor changes
-   2016-11-14 Gianluca Petrillo : Replacing another deprecated GeometryCore::PlaneIDs() with GeometryCore::IteratePlaneIDs().
-   2016-12-28 Giuseppe Cerati : minor fixes
-   2016-12-27 Giuseppe Cerati : add options to fix track length problem
-   2016-12-22 Gianluca Petrillo : FuzzyClusterMerger now excludes hits with negative charge.

larsim v06_10_02
----------------------------------------

-   2017-01-04 Lynn Garren : larsim v06_10_02 for larsoft v06_19_00

larevt v06_07_02
----------------------------------------

-   2017-01-04 Lynn Garren : larevt v06_07_02 for larsoft v06_19_00
-   2017-01-03 Joseph Zennamo : Merge remote-tracking branch ‘origin/develop’ into rmurrell_final_state_particle_filter
-   2017-01-03 Joseph Zennamo : Fixed a lot of bugs, debugged, checked edge cases, currently contains a hack to address a possible GENIE bug related to diphoton parentage
-   2016-12-21 Joseph Zennamo : Merge tag ‘v06_07_01’ into rmurrell_final_state_particle_filter
-   2016-12-21 Herbert Greenlee : Add missing install_source.
-   2016-12-20 Joseph Zennamo : Added the new filter to the initialization fcl file (including a little example)
-   2016-12-20 Joseph Zennamo : cleaned up unnecessary initializations
-   2016-12-20 Joseph Zennamo : Added the inclusive filteration but had to expand the number of input variables for the fhicl file (this shouldn’t be a problem), now we need to test this and verify it is giving us what we want
-   2016-12-20 Joseph Zennamo : Finalized the check on the exclusive final states such that the filter will return the exact number final state topology requested, STILL TO DO the inclusive final state filtering
-   2016-12-20 Joseph Zennamo : Adding a new filter that gives more freedom to select inclusive and exclusive final states along with the number of final state particles to be selected

lardata v06_11_01
------------------------------------------

-   2017-01-04 Lynn Garren : lardata v06_11_01 for larsoft v06_19_00
-   2016-11-21 Gianluca Petrillo : Cosmetic change to documentation

larcore v06_05_01
------------------------------------------

larsoftobj v1_08_02
----------------------------------------------

lardataobj v1_08_00
----------------------------------------------

larcoreobj v1_06_01
----------------------------------------------

larbatch v01_26_01
--------------------------------------------

-   2017-01-04 Lynn Garren : larbatch v01_26_01 for larsoft v06_19_00
-   2016-12-19 Herbert Greenlee : Fix tarball creation.

larutils v1_11_00
------------------------------------------
