LArSoft v06_26_01_06 Release Notes
=============================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06_26_01_06](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_26_01_06/larsoft-v06_26_01_06.html)
Download instructions for [just larsoftobj v1_11_00_03](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_11_00_03/larsoftobj-v1_11_00_03.html)

Purpose
--------------------

-   MicroBooNE support request [redmine issue 17849](https://cdcvs.fnal.gov/redmine/issues/17849)

New features
------------------------------

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v06_26_01_06
-------------------------------------------------

-   2017-10-10 Lynn Garren : for larsoft v06_26_01_06

lareventdisplay v06_02_14_06
-----------------------------------------------------------------

-   2017-10-10 Lynn Garren : for larsoft v06_26_01_06

larexamples v06_01_15_04
---------------------------------------------------------

-   2017-10-10 Lynn Garren : for larsoft v06_26_01_06

larpandora v06_08_00_06
-------------------------------------------------------

-   2017-10-10 Lynn Garren : for larsoft v06_26_01_06

larwirecell v06_00_13_06
---------------------------------------------------------

-   2017-10-10 Lynn Garren : for larsoft v06_26_01_06

larana v06_03_18_06
-----------------------------------------------

-   2017-10-10 Lynn Garren : for larsoft v06_26_01_06

larreco v06_20_00_06
-------------------------------------------------

-   2017-10-10 Lynn Garren : for larsoft v06_26_01_06

larsim v06_13_01_04
-----------------------------------------------

-   2017-10-10 Lynn Garren : for larsoft v06_26_01_06

larevt v06_07_09_04
-----------------------------------------------

-   2017-10-10 Lynn Garren : for larsoft v06_26_01_06

lardata v06_14_04_03
-------------------------------------------------

-   2017-10-10 Lynn Garren : for larsoft v06_26_01_06

larcore v06_05_03_01
-------------------------------------------------

larpandoracontent v03_07_02_05
---------------------------------------------------------------------

-   2017-10-10 Lynn Garren : for larsoft v06_26_01_06
-   2017-10-02 Herbert Greenlee : Merge remote-tracking branch ‘origin/feature/LArPandoraContent_v03_07_04’ into v06_26_01_01_branch
-   2017-08-29 John Marshall : Merge branch ‘feature/ChangeLog’
-   2017-08-10 John Marshall : Update changelog.
-   2017-08-29 John Marshall : Merge branch ‘feature/TrackShowerTweaks’
-   2017-08-15 loressa : Strengthen tie-breaking in shower and track overlap result operators
-   2017-08-14 loressa : Added the possibility to work with probabilities instead of binary classification
-   2017-08-29 John Marshall : Merge branch ‘feature/TrackDirections’
-   2017-08-20 Andy Blake : Modifying track direction bug fix for compatibility with LArSoft. Fixing forward/backward asymmetries in 2D and 3D sliding linear fits. Simplifying PcaShowerParticleBuildingAlgorithm by moving bulk of PCA calculations to LArPfoHelper (will later facilitate standalone shower-building module in LArSoft). Fixing STATUS_CODE_NOT_FOUND exceptions in ParticleRecoveryAlgorithm caused by PFOs which don’t have a valid 2D sliding linear fit.
-   2017-08-08 John Marshall : Refactor SlidingFitTrajectory implementation.
-   2017-08-07 Andy Blake : Move calculation of track trajectory from TrackParticleBuildingAlgorithm and LArPfoHelper and remove assumption about direction of 3D sliding fit.
-   2017-08-01 Lynn Garren : larpandoracontent v03_07_03 for larsoft v06_45_01
-   2017-08-01 Lynn Garren : v03_07_03
-   2017-07-18 John Marshall : Merge branch ‘updates’
-   2017-07-18 John Marshall : Update change log.
-   2017-07-07 John Marshall : Merge branch ‘updates’
-   2017-07-07 John Marshall : Pass CODECOV_TOKEN to running docker image.
-   2017-07-06 John Marshall : Merge branch ‘updates’
-   2017-07-06 John Marshall : Hide COVERITY_TARGET_EMAIL.
-   2017-07-06 Multi-algorithm pattern recognition : Merge pull request \#16 from jaw86/CodeCov
-   2017-07-06 Jack Anthony : Added login step for private docker repo.
-   2017-07-06 Jack Anthony : Moved codecov build to cron job.
-   2017-07-06 Jack Anthony : Added codecov badge and build step.
-   2017-07-03 John Marshall : Merge branch ‘updates’
-   2017-07-03 John Marshall : Address issues highlighted by coverity.
-   2017-07-03 Multi-algorithm pattern recognition : Merge pull request \#15 from jaw86/CoverityFixes
-   2017-07-03 Jack Anthony : SvmVertexSelectionAlgorithm Coverity recommendations: removed logically-dead code, check return value of PandoraContentApi::GetList.
-   2017-06-29 John Marshall : Merge branch ‘updates’
-   2017-06-29 John Marshall : Added Coverity build to .travis.yml file.
-   2017-06-29 John Marshall : Merge branch ‘coverity’
-   2017-06-29 John Marshall : Add Coverity Scan build status badge.
-   2017-06-29 John Marshall : Merge branch ‘gplv3’
-   2017-06-29 John Marshall : Select license: GPLv3.

larsoftobj v1_11_00_03
-----------------------------------------------------

-   2017-10-10 Lynn Garren : for larsoft v06_26_01_06

lardataobj v1_11_00_03
-----------------------------------------------------

-   2017-10-10 Lynn Garren : for larsoft v06_26_01_06
-   2017-10-03 Herbert Greenlee : Add missing inline.

larcoreobj v1_06_02_01
-----------------------------------------------------

larbatch v01_32_05
--------------------------------------------

-   2017-09-20 Lynn Garren : cetbuildtools v5_14_00
-   2017-09-19 Lynn Garren : larbatch v01_32_05 for larsoft v06_50_00
-   2017-09-18 Herbert Greenlee : Run helper scripts from local directory.

larutils v1_19_02
------------------------------------------

-   2017-09-12 Lynn Garren : larutils v1_19_02 for larsoft v06_49_01
-   2017-09-08 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larutils into develop
-   2017-09-08 Herbert Greenlee : Get larbatch version for manifest from ubutil product_deps.
-   2017-09-06 Lynn Garren : larsoft v06_49_00
-   2017-09-06 Lynn Garren : add s54
