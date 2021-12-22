LArSoft v06\_74\_00 Release Notes(#LArSoft-v06_74_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v06\_74\_00 Release Notes](#LArSoft-v06_74_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_74\_00](#larsoft-v06_74_00)
    -   [lareventdisplay v06\_19\_01](#lareventdisplay-v06_19_01)
    -   [larexamples v06\_13\_01](#larexamples-v06_13_01)
    -   [larpandora v06\_26\_01](#larpandora-v06_26_01)
    -   [larwirecell v06\_12\_01](#larwirecell-v06_12_01)
    -   [larana v06\_19\_01](#larana-v06_19_01)
    -   [larreco v06\_59\_00](#larreco-v06_59_00)
    -   [larsim v06\_44\_00](#larsim-v06_44_00)
    -   [larevt v06\_20\_01](#larevt-v06_20_01)
    -   [lardata v06\_43\_01](#lardata-v06_43_01)
    -   [larcore v06\_19\_00](#larcore-v06_19_00)
    -   [larpandoracontent v03\_11\_01](#larpandoracontent-v03_11_01)
    -   [larsoftobj v1\_43\_00](#larsoftobj-v1_43_00)
    -   [lardataobj v1\_31\_00](#lardataobj-v1_31_00)
    -   [larcorealg v1\_19\_00](#larcorealg-v1_19_00)
    -   [larcoreobj v1\_23\_00](#larcoreobj-v1_23_00)
    -   [larbatch v01\_38\_03](#larbatch-v01_38_03)
    -   [larutils v1\_22\_02](#larutils-v1_22_02)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_74\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_74_00/larsoft-v06_74_00.html) \
Download instructions for [just larsoftobj v1\_43\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_43_00/larsoftobj-v1_43_00.html)

Purpose(#Purpose)
--------------------

New features(#New-features)
------------------------------

-   Add metadata to `simb::MCParticle` / `simb::MCTruth` association with index to the associated particle in MCTruth
    -   new release of nutools - see [\#12067](/redmine/issues/12067 "Bug: Add move operations to simb::MCParticle (Closed)") and [\#18716](/redmine/issues/18716 "Feature: G4Helper: store the index of the true particle within MCTruth in the primary particle information (Closed)")
        -   nutools/nusimdata: `feature/gp_Issue12067` (issue [\#12067](/redmine/issues/12067 "Bug: Add move operations to simb::MCParticle (Closed)")), `feature/gp_Issue18716` (issue [\#18716](/redmine/issues/18716 "Feature: G4Helper: store the index of the true particle within MCTruth in the primary particle information (Closed)")),
    -   `lardataobj` and `larsim`: `feature/gp_Issue17804` (issue [\#17804](/redmine/issues/17804 "Feature: Provide a way to associate MCParticles between generator and G4 steps (Closed)"))

Bug fixes(#Bug-fixes)
------------------------

Updated dependencies(#Updated-dependencies)
----------------------------------------------

-   nutools v2\_21\_01
-   nusimdata v1\_12\_01

Change List(#Change-List)
============================

larsoft v06\_74\_00(#larsoft-v06_74_00)
------------------------------------------

-   2018-04-11 Lynn Garren : larsoft v06\_74\_00 for larsoft v06\_74\_00
-   2018-04-11 Lynn Garren : update product versions
-   2018-04-11 Lynn Garren : update depenency database

lareventdisplay v06\_19\_01(#lareventdisplay-v06_19_01)
----------------------------------------------------------

-   2018-04-11 Lynn Garren : lareventdisplay v06\_19\_01 for larsoft v06\_74\_00

larexamples v06\_13\_01(#larexamples-v06_13_01)
--------------------------------------------------

-   2018-04-11 Lynn Garren : larexamples v06\_13\_01 for larsoft v06\_74\_00
-   2018-04-05 Lynn Garren : larsoft v06\_73\_00
-   2018-04-04 Gianluca Petrillo : Installing missing Doxygen file

larpandora v06\_26\_01(#larpandora-v06_26_01)
------------------------------------------------

-   2018-04-11 Lynn Garren : larpandora v06\_26\_01 for larsoft v06\_74\_00

larwirecell v06\_12\_01(#larwirecell-v06_12_01)
--------------------------------------------------

-   2018-04-11 Lynn Garren : larwirecell v06\_12\_01 for larsoft v06\_74\_00
-   2018-04-05 Lynn Garren : add missing library

larana v06\_19\_01(#larana-v06_19_01)
----------------------------------------

-   2018-04-11 Lynn Garren : larana v06\_19\_01 for larsoft v06\_74\_00

larreco v06\_59\_00(#larreco-v06_59_00)
------------------------------------------

-   2018-04-11 Lynn Garren : larreco v06\_59\_00 for larsoft v06\_74\_00
-   2018-04-10 Christoph Alt : Merge branch ‘develop’ into feature/chalt\_DPRawHitFinderUpdate
-   2018-04-10 Christoph Alt : Update handling of long pulse trains
-   2018-04-10 Tingjun Yang : Change the first argument to 0, resolving [\#19619](/redmine/issues/19619 "Bug: Slowness in reconstruction since v06_73_00 (Closed)").
-   2018-04-06 Chao Zhang : move nSample to fcl file
-   2018-04-05 Lynn Garren : add missing library

larsim v06\_44\_00(#larsim-v06_44_00)
----------------------------------------

-   2018-04-11 Lynn Garren : larsim v06\_44\_00 for larsoft v06\_74\_00
-   2018-04-11 Lynn Garren : Merge branch ‘feature/gp\_Issue17804’ into release/v06\_74\_00
-   2018-04-11 Gianluca Petrillo : Fixed an error in particle dumper
-   2018-04-10 Lynn Garren : Merge branch ‘feature/gp\_Issue17804’ into release/v06\_74\_00
-   2018-01-10 Gianluca Petrillo : LArG4 now saves the index of the original particle in its MCTruth

larevt v06\_20\_01(#larevt-v06_20_01)
----------------------------------------

-   2018-04-11 Lynn Garren : larevt v06\_20\_01 for larsoft v06\_74\_00

lardata v06\_43\_01(#lardata-v06_43_01)
------------------------------------------

-   2018-04-11 Lynn Garren : lardata v06\_43\_01 for larsoft v06\_74\_00

larcore v06\_19\_00(#larcore-v06_19_00)
------------------------------------------

larpandoracontent v03\_11\_01(#larpandoracontent-v03_11_01)
--------------------------------------------------------------

larsoftobj v1\_43\_00(#larsoftobj-v1_43_00)
----------------------------------------------

-   2018-04-11 Lynn Garren : larsoftobj v1\_43\_00 for larsoft v06\_74\_00
-   2018-04-11 Lynn Garren : update product versions

lardataobj v1\_31\_00(#lardataobj-v1_31_00)
----------------------------------------------

-   2018-04-11 Lynn Garren : lardataobj v1\_31\_00 for larsoft v06\_74\_00
-   2018-04-10 Lynn Garren : Merge branch ‘feature/gp\_Issue17804’ into release/v06\_74\_00
-   2018-04-10 Lynn Garren : nusimdata v1\_12\_01
-   2018-01-10 Gianluca Petrillo : Added infrastructure for new association.

larcorealg v1\_19\_00(#larcorealg-v1_19_00)
----------------------------------------------

larcoreobj v1\_23\_00(#larcoreobj-v1_23_00)
----------------------------------------------

larbatch v01\_38\_03(#larbatch-v01_38_03)
--------------------------------------------

-   2018-04-11 Lynn Garren : larbatch v01\_38\_03 for larsoft v06\_74\_00
-   2018-04-09 Herbert Greenlee : Add command line option –check\_input.
-   2018-04-06 Herbert Greenlee : Fix typo.
-   2018-04-06 Herbert Greenlee : Limit number of jobs in dag to the number of input files.
-   2018-04-06 Herbert Greenlee : Don’t do targetsize of maxfilesperjob is one.
-   2018-04-05 Herbert Greenlee : Add documentation for validation options.

larutils v1\_22\_02(#larutils-v1_22_02)
------------------------------------------

-   2018-04-11 Lynn Garren : larutils v1\_22\_02 for larsoft v06\_74\_00
-   2018-04-11 Lynn Garren : disable e15 macOS builds
-   2018-04-11 Herbert Greenlee : Done testing. Switch back to official repos.
-   2018-04-11 Herbert Greenlee : Fix typo.
-   2018-04-11 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larutils into develop
-   2018-04-11 Herbert Greenlee : Add messages.
-   2018-04-10 Thomas Junk : better comments
-   2018-04-10 Thomas Junk : put back compiler setup – need it to get runtime shareables
-   2018-04-10 Thomas Junk : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larutils into develop
-   2018-04-10 Thomas Junk : make a table file with all of the compiler qualifiers passed in as a list
-   2018-04-10 Herbert Greenlee : Add support for clang.
-   2018-04-10 Herbert Greenlee : Use the correct compiler.
-   2018-04-10 Herbert Greenlee : Add support for clang.
-   2018-04-10 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larutils into develop
-   2018-04-10 Herbert Greenlee : Add support for clang.
-   2018-04-10 Thomas Junk : don’t query g++ if using clang
-   2018-04-10 Thomas Junk : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larutils into develop
-   2018-04-10 Thomas Junk : add clang support
-   2018-04-10 Herbert Greenlee : For testing.
-   2018-04-10 Herbert Greenlee : Switch back to official repo.
-   2018-04-10 Herbert Greenlee : Test support for clang.
-   2018-04-09 Herbert Greenlee : Back to default repo.
-   2018-04-09 Herbert Greenlee : Switch to Herb’s github for testing.
