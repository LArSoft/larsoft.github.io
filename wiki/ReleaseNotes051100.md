LArSoft v05\_11\_00 Release Notes(#LArSoft-v05_11_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v05\_11\_00 Release Notes](#LArSoft-v05_11_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Breaking changes](#Breaking-changes)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v05\_11\_00](#larsoft-v05_11_00)
    -   [lareventdisplay v05\_06\_06](#lareventdisplay-v05_06_06)
    -   [larexamples v05\_06\_06](#larexamples-v05_06_06)
    -   [larpandora v05\_09\_03](#larpandora-v05_09_03)
    -   [larana v05\_09\_00](#larana-v05_09_00)
    -   [larreco v05\_11\_00](#larreco-v05_11_00)
    -   [larsim v05\_11\_00](#larsim-v05_11_00)
    -   [larevt v05\_06\_06](#larevt-v05_06_06)
    -   [lardata v05\_08\_00](#lardata-v05_08_00)
    -   [larcore v05\_07\_01](#larcore-v05_07_01)
    -   [larbatch v01\_21\_03](#larbatch-v01_21_03)
    -   [larutils v1\_06\_01](#larutils-v1_06_01)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v05_11_00/larsoft-v05_11_00.html)

Purpose(#Purpose)
--------------------

-   Changes to develop
-   Replace SeedService with LArSeedService

New features(#New-features)
------------------------------

-   use LArSeedService and drop artextensions [\#12429](/redmine/issues/12429 "Feature: Update LArSoft code to use LArSeedService service in larsim (Closed)")
    -   lardata, larsim, larreco, larana
    -   experiment code needs feature/gp\_LArSeedService
        -   argoneutcode, dunetpc, lar1ndcode, lariatsoft, uboonecode
-   lardata feature/gp\_CreateAssnForFilters

Breaking changes(#Breaking-changes)
--------------------------------------

-   [use LArSeedService](https://cdcvs.fnal.govBreaking_Changes#SeedService-from-artextensions-replaced-by-LArSeedService)

Bug fixes(#Bug-fixes)
------------------------

Updated dependencies(#Updated-dependencies)
----------------------------------------------

  ------------------- ------------- ------------------ -------------------------------------------------------------------------------------------------------------
  Product             Version       Qualifiers         Notes
  larpandoracontent   v02\_07\_02   e9                 [\#12424](/redmine/issues/12424 "Bug: The output of LArPandoraOutput module is not reproducible  (Closed)")
  genie\_xsec         v2\_10\_6a    defaultplusccmec   
  ------------------- ------------- ------------------ -------------------------------------------------------------------------------------------------------------

Change List(#Change-List)
============================

larsoft v05\_11\_00(#larsoft-v05_11_00)
------------------------------------------

-   2016-05-03 Lynn Garren : the nu distribution version is different than the nutools version
-   2016-05-03 Lynn Garren : larsoft v05\_11\_00 for larsoft v05\_11\_00
-   2016-05-03 Lynn Garren : drop artextensions

lareventdisplay v05\_06\_06(#lareventdisplay-v05_06_06)
----------------------------------------------------------

-   2016-05-03 Lynn Garren : lareventdisplay v05\_06\_06 for larsoft v05\_11\_00

larexamples v05\_06\_06(#larexamples-v05_06_06)
--------------------------------------------------

-   2016-05-03 Lynn Garren : larexamples v05\_06\_06 for larsoft v05\_11\_00

larpandora v05\_09\_03(#larpandora-v05_09_03)
------------------------------------------------

-   2016-05-04 Lynn Garren : fix the logic
-   2016-05-04 Lynn Garren : larpandoracontent qualifiers
-   2016-05-03 Lynn Garren : larpandora v05\_09\_03 for larsoft v05\_11\_00
-   2016-05-03 Lynn Garren : allow for building larpandoracontent with mrb

larana v05\_09\_00(#larana-v05_09_00)
----------------------------------------

-   2016-05-03 Lynn Garren : larana v05\_09\_00 for larsoft v05\_11\_00
-   2016-05-03 Lynn Garren : LArSoft no longer uses artextensions
-   2016-05-02 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp\_LArSeedService
-   2016-04-25 Gianluca Petrillo : Update after moving from SeedService to LArSeedService

larreco v05\_11\_00(#larreco-v05_11_00)
------------------------------------------

-   2016-05-03 Lynn Garren : larreco v05\_11\_00 for larsoft v05\_11\_00
-   2016-05-03 Lynn Garren : LArSoft no longer uses artextensions
-   2016-05-02 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp\_LArSeedService
-   2016-04-25 Gianluca Petrillo : Update after moving from SeedService to LArSeedService

larsim v05\_11\_00(#larsim-v05_11_00)
----------------------------------------

-   2016-05-03 Lynn Garren : genie\_xsec v2\_10\_6a
-   2016-05-03 Lynn Garren : larsim v05\_11\_00 for larsoft v05\_11\_00
-   2016-05-03 Lynn Garren : LArSoft no longer uses artextensions
-   2016-05-03 Lynn Garren : we no longer use artextensions
-   2016-05-02 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp\_LArSeedService
-   2016-04-25 Gianluca Petrillo : Update after moving from SeedService to LArSeedService

larevt v05\_06\_06(#larevt-v05_06_06)
----------------------------------------

-   2016-05-03 Lynn Garren : larevt v05\_06\_06 for larsoft v05\_11\_00

lardata v05\_08\_00(#lardata-v05_08_00)
------------------------------------------

-   2016-05-03 Lynn Garren : lardata v05\_08\_00 for larsoft v05\_11\_00
-   2016-05-03 Lynn Garren : Merge branch ‘feature/gp\_CreateAssnForFilters’ into release/v05\_11\_00
-   2016-05-02 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp\_LArSeedService
-   2016-05-02 Gianluca Petrillo : More C++-friendly recob::Shower constructor
-   2016-04-25 Gianluca Petrillo : Update after moving from SeedService to LArSeedService
-   2016-04-25 Gianluca Petrillo : Update after moving from SeedService to LArSeedService
-   2016-04-19 Hamlet : Enable filter modules to use the CreateAssns() functions

larcore v05\_07\_01(#larcore-v05_07_01)
------------------------------------------

larbatch v01\_21\_03(#larbatch-v01_21_03)
--------------------------------------------

-   2016-05-03 Lynn Garren : larbatch v01\_21\_03 for larsoft v05\_11\_00
-   2016-04-29 yuntse : Merge remote-tracking branch ‘refs/remotes/origin/develop’ into develop
-   2016-04-29 yuntse : Revert dag structure to one line per job.
-   2016-04-29 yuntse : os.path.exists -\> safeexist.

larutils v1\_06\_01(#larutils-v1_06_01)
------------------------------------------
