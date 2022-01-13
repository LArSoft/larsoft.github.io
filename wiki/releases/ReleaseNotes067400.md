LArSoft v06_74_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06_74_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_74_00/larsoft-v06_74_00.html)
Download instructions for [just larsoftobj v1_43_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_43_00/larsoftobj-v1_43_00.html)

Purpose
--------------------

New features
------------------------------

-   Add metadata to `simb::MCParticle` / `simb::MCTruth` association with index to the associated particle in MCTruth
    -   new release of nutools - see [redmine issue 12067](https://cdcvs.fnal.gov/redmine/issues/12067) and [redmine issue 18716](https://cdcvs.fnal.gov/redmine/issues/18716 "Feature: G4Helper: store the index of the true particle within MCTruth in the primary particle information (Closed)")
        -   nutools/nusimdata: `feature/gp_Issue12067` (issue [redmine issue 12067](https://cdcvs.fnal.gov/redmine/issues/12067)), `feature/gp_Issue18716` (issue [redmine issue 18716](https://cdcvs.fnal.gov/redmine/issues/18716 "Feature: G4Helper: store the index of the true particle within MCTruth in the primary particle information (Closed)")),
    -   `lardataobj` and `larsim`: `feature/gp_Issue17804` (issue [redmine issue 17804](https://cdcvs.fnal.gov/redmine/issues/17804))

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   nutools v2_21_01
-   nusimdata v1_12_01

Change List
============================

larsoft v06_74_00
------------------------------------------

-   2018-04-11 Lynn Garren : larsoft v06_74_00 for larsoft v06_74_00
-   2018-04-11 Lynn Garren : update product versions
-   2018-04-11 Lynn Garren : update depenency database

lareventdisplay v06_19_01
----------------------------------------------------------

-   2018-04-11 Lynn Garren : lareventdisplay v06_19_01 for larsoft v06_74_00

larexamples v06_13_01
--------------------------------------------------

-   2018-04-11 Lynn Garren : larexamples v06_13_01 for larsoft v06_74_00
-   2018-04-05 Lynn Garren : larsoft v06_73_00
-   2018-04-04 Gianluca Petrillo : Installing missing Doxygen file

larpandora v06_26_01
------------------------------------------------

-   2018-04-11 Lynn Garren : larpandora v06_26_01 for larsoft v06_74_00

larwirecell v06_12_01
--------------------------------------------------

-   2018-04-11 Lynn Garren : larwirecell v06_12_01 for larsoft v06_74_00
-   2018-04-05 Lynn Garren : add missing library

larana v06_19_01
----------------------------------------

-   2018-04-11 Lynn Garren : larana v06_19_01 for larsoft v06_74_00

larreco v06_59_00
------------------------------------------

-   2018-04-11 Lynn Garren : larreco v06_59_00 for larsoft v06_74_00
-   2018-04-10 Christoph Alt : Merge branch ‘develop’ into feature/chalt_DPRawHitFinderUpdate
-   2018-04-10 Christoph Alt : Update handling of long pulse trains
-   2018-04-10 Tingjun Yang : Change the first argument to 0, resolving [redmine issue 19619](https://cdcvs.fnal.gov/redmine/issues/19619).
-   2018-04-06 Chao Zhang : move nSample to fcl file
-   2018-04-05 Lynn Garren : add missing library

larsim v06_44_00
----------------------------------------

-   2018-04-11 Lynn Garren : larsim v06_44_00 for larsoft v06_74_00
-   2018-04-11 Lynn Garren : Merge branch ‘feature/gp_Issue17804’ into release/v06_74_00
-   2018-04-11 Gianluca Petrillo : Fixed an error in particle dumper
-   2018-04-10 Lynn Garren : Merge branch ‘feature/gp_Issue17804’ into release/v06_74_00
-   2018-01-10 Gianluca Petrillo : LArG4 now saves the index of the original particle in its MCTruth

larevt v06_20_01
----------------------------------------

-   2018-04-11 Lynn Garren : larevt v06_20_01 for larsoft v06_74_00

lardata v06_43_01
------------------------------------------

-   2018-04-11 Lynn Garren : lardata v06_43_01 for larsoft v06_74_00

larcore v06_19_00
------------------------------------------

larpandoracontent v03_11_01
--------------------------------------------------------------

larsoftobj v1_43_00
----------------------------------------------

-   2018-04-11 Lynn Garren : larsoftobj v1_43_00 for larsoft v06_74_00
-   2018-04-11 Lynn Garren : update product versions

lardataobj v1_31_00
----------------------------------------------

-   2018-04-11 Lynn Garren : lardataobj v1_31_00 for larsoft v06_74_00
-   2018-04-10 Lynn Garren : Merge branch ‘feature/gp_Issue17804’ into release/v06_74_00
-   2018-04-10 Lynn Garren : nusimdata v1_12_01
-   2018-01-10 Gianluca Petrillo : Added infrastructure for new association.

larcorealg v1_19_00
----------------------------------------------

larcoreobj v1_23_00
----------------------------------------------

larbatch v01_38_03
--------------------------------------------

-   2018-04-11 Lynn Garren : larbatch v01_38_03 for larsoft v06_74_00
-   2018-04-09 Herbert Greenlee : Add command line option –check_input.
-   2018-04-06 Herbert Greenlee : Fix typo.
-   2018-04-06 Herbert Greenlee : Limit number of jobs in dag to the number of input files.
-   2018-04-06 Herbert Greenlee : Don’t do targetsize of maxfilesperjob is one.
-   2018-04-05 Herbert Greenlee : Add documentation for validation options.

larutils v1_22_02
------------------------------------------

-   2018-04-11 Lynn Garren : larutils v1_22_02 for larsoft v06_74_00
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
