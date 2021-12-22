LArSoft v04\_00\_01 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v04\_00\_01 Release Notes](#LArSoft-v04_00_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04\_00\_01](#larsoft-v04_00_01)
    -   [lareventdisplay v04\_00\_01](#lareventdisplay-v04_00_01)
    -   [larexamples v04\_00\_01](#larexamples-v04_00_01)
    -   [larpandora v04\_00\_01](#larpandora-v04_00_01)
    -   [larana v04\_00\_01](#larana-v04_00_01)
    -   [larreco v04\_00\_01](#larreco-v04_00_01)
    -   [larsim v04\_00\_01](#larsim-v04_00_01)
    -   [larevt v04\_00\_01](#larevt-v04_00_01)
    -   [lardata v04\_00\_01](#lardata-v04_00_01)
    -   [larcore v04\_00\_01](#larcore-v04_00_01)
    -   [larbatch v01\_04\_02](#larbatch-v01_04_02)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_00_01/larsoft-v04_00_01.html)

Purpose
--------------------

Rollup of changes since v04\_00\_00. Will be used for both MicroBooNE MCC6 and ELBNF MCC2.

New features
------------------------------

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

  --------------- ------------ ----------- -------------
  Product         Version      Qualifier   Notes
  artextensions   v1\_00\_02   e6:nu       SeedService
  --------------- ------------ ----------- -------------

Change List
============================

larsoft v04\_00\_01
------------------------------------------

-   2015-02-18 Lynn Garren : Merge branch ‘release/v04\_00\_01’
-   2015-02-18 Lynn Garren : only s6-e6 is supported
-   2015-02-18 Lynn Garren : larsoft v04\_00\_01 for larsoft v04\_00\_01
-   2015-02-18 Lynn Garren : blank line
-   2015-02-18 Lynn Garren : Merge branch ‘release/v04\_00\_01’
-   2015-02-18 Lynn Garren : larsoft v04\_00\_01
-   2015-02-18 Lynn Garren : larsoft v04\_00\_01 for larsoft v04\_00\_01
-   2015-02-18 Lynn Garren : larsoft v04\_00\_01 for larsoft v04\_00\_01
-   2015-02-12 Lynn Garren : Merge branch ‘v04\_00\_rc’ into develop

lareventdisplay v04\_00\_01
----------------------------------------------------------

-   2015-02-18 Lynn Garren : Merge branch ‘release/v04\_00\_01’
-   2015-02-18 Lynn Garren : lareventdisplay v04\_00\_01
-   2015-02-12 Lynn Garren : Merge branch ‘v04\_00\_rc’ into develop

larexamples v04\_00\_01
--------------------------------------------------

-   2015-02-18 Lynn Garren : Merge branch ‘release/v04\_00\_01’
-   2015-02-18 Lynn Garren : larexamples v04\_00\_01
-   2015-02-12 Lynn Garren : Merge branch ‘v04\_00\_rc’ into develop

larpandora v04\_00\_01
------------------------------------------------

-   2015-02-18 Lynn Garren : Merge branch ‘release/v04\_00\_01’
-   2015-02-18 Lynn Garren : larpandora v04\_00\_01
-   2015-02-12 Lynn Garren : Merge branch ‘v04\_00\_rc’ into develop

larana v04\_00\_01
----------------------------------------

-   2015-02-18 Lynn Garren : Merge branch ‘release/v04\_00\_01’
-   2015-02-18 Lynn Garren : larana v04\_00\_01
-   2015-02-13 Thomas Warburton : Calorimetry module did not work for odd TPC’s, so added that declaration. Retuned 35ton constants so that all planes peak at 1.8 MeV cm-1.
-   2015-02-12 Lynn Garren : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larana into develop

larreco v04\_00\_01
------------------------------------------

-   2015-02-18 Lynn Garren : Merge branch ‘release/v04\_00\_01’
-   2015-02-18 Lynn Garren : larreco v04\_00\_01
-   2015-02-17 Gianluca Petrillo : Issue [\#7055](/redmine/issues/7055 "Bug: FindManyP() usage in PrimaryVertexFinder module (Closed)"): association queries moved out of PrimaryVertexFinder module loops
-   2015-02-17 Gianluca Petrillo : Issue [\#7049](/redmine/issues/7049 "Bug: FindManyP() usage in ShowerCheater, ShowerFinder and ShowerReco modules (Closed)"): association queries moved out of shower module loops
-   2015-02-14 Gianluca Petrillo : Some internal redesign of OverriddenClusterParamsAlg. This time I even tested it.
-   2015-02-13 Gianluca Petrillo : Fix to OverriddenClusterParamsAlg, now used by Cluster3D module
-   2015-02-12 Lynn Garren : Merge branch ‘v04\_00\_rc’ into develop

larsim v04\_00\_01
----------------------------------------

-   2015-02-18 Lynn Garren : larsim v04\_00\_01 for larsoft v04\_00\_01
-   2015-02-18 Lynn Garren : larsim v04\_00\_01 for larsoft v04\_00\_01
-   2015-02-12 Lynn Garren : Merge branch ‘v04\_00\_rc’ into develop

larevt v04\_00\_01
----------------------------------------

-   2015-02-18 Lynn Garren : Merge branch ‘release/v04\_00\_01’
-   2015-02-18 Lynn Garren : larevt v04\_00\_01
-   2015-02-12 Lynn Garren : Merge branch ‘v04\_00\_rc’ into develop

lardata v04\_00\_01
------------------------------------------

-   2015-02-18 Lynn Garren : lardata v04\_00\_01
-   2015-02-18 Thomas Warburton : Merge branch ‘test’ into develop
-   2015-02-18 Thomas Warburton : Making PitchInView detector agnostic
-   2015-02-17 Gianluca Petrillo : recob::SpacePoint constructor arguments made constant
-   2015-02-12 Lynn Garren : Merge branch ‘v04\_00\_rc’ into develop

larcore v04\_00\_01
------------------------------------------

-   2015-02-18 Lynn Garren : larcore v04\_00\_01
-   2015-02-18 Thomas Warburton : Making the function call WireAngleToVertical detector agnostic

larbatch v01\_04\_02
--------------------------------------------

-   2015-02-18 Lynn Garren : Merge branch ‘release/v04\_00\_01’
-   2015-02-18 Lynn Garren : larbatch v01\_04\_02
-   2015-02-18 Herbert Greenlee : Fix sam submission.
-   2015-02-16 Herbert Greenlee : Fix bug with kill batch jobs function.
-   2015-02-16 Herbert Greenlee : Enclose call to root\_metadata in a try-block to protect against possible exceptions.
-   2015-02-12 Tingjun Yang : Save merged ntuple to /scratch and then move it to /pnfs.
