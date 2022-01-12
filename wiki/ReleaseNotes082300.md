LArSoft v08\_23\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08\_23\_00 Release Notes](#LArSoft-v08_23_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_23\_00](#larsoft-v08_23_00)
    -   [lareventdisplay v08\_08\_00](#lareventdisplay-v08_08_00)
    -   [larexamples v08\_02\_08](#larexamples-v08_02_08)
    -   [larg4 v08\_03\_07](#larg4-v08_03_07)
    -   [larpandora v08\_07\_04](#larpandora-v08_07_04)
    -   [larwirecell v08\_05\_07](#larwirecell-v08_05_07)
    -   [larana v08\_10\_00](#larana-v08_10_00)
    -   [larreco v08\_15\_00](#larreco-v08_15_00)
    -   [larsim v08\_09\_00](#larsim-v08_09_00)
    -   [larevt v08\_06\_00](#larevt-v08_06_00)
    -   [lardata v08\_06\_00](#lardata-v08_06_00)
    -   [larcore v08\_04\_04](#larcore-v08_04_04)
    -   [larpandoracontent v03\_14\_08](#larpandoracontent-v03_14_08)
    -   [larsoftobj v08\_15\_02](#larsoftobj-v08_15_02)
    -   [lardataobj v08\_04\_03](#lardataobj-v08_04_03)
    -   [lardataalg v08\_07\_02](#lardataalg-v08_07_02)
    -   [larcorealg v08\_12\_01](#larcorealg-v08_12_01)
    -   [larcoreobj v08\_05\_01](#larcoreobj-v08_05_01)
    -   [larbatch v01\_51\_04](#larbatch-v01_51_04)
    -   [larutils v1\_24\_00](#larutils-v1_24_00)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08\_23\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_23_00/larsoft-v08_23_00.html)
Download instructions for [just larsoftobj v08\_15\_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_15_02/larsoftobj-v08_15_02.html)

Purpose
--------------------

-   changes in develop
-   approved feature branches

New features
------------------------------

-   larreco feature/bb\_new3D
-   removal of bezier and other unused modules for [\#20618](/redmine/issues/20618 "Support: remove liblarreco_Deprecated (Closed)")
    -   **This is a breaking change.**
    -   larsim: feature/knoepfel\_rm\_unused\_modules
    -   larreco: feature/knoepfel\_rm\_bezier
    -   larevt: feature/knoepfel\_rm\_unused\_modules
    -   lareventdisplay: feature/knoepfel\_rm\_bezier
    -   lardata: feature/knoepfel\_rm\_unused\_modules
    -   larana: feature/team\_rm\_bezier
    -   experiments
        -   argoneutcode: feature/knoepfel\_rm\_bezier
        -   dunetpc: feature/knoepfel\_rm\_bezier
        -   lariatsoft: feature/knoepfel\_rm\_bezier
        -   sbndcode: feature/team\_for\_nutools\_v3
        -   ubreco: feature/knoepfel\_rm\_bezier
        -   ublite: feature/knoepfel\_rm\_bezier
        -   ubana: feature/knoepfel\_rm\_bezier

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   ifdhc\_config v2\_4\_5
    -   see bug [\#22738](/redmine/issues/22738 "Bug: gfal utilities not working under larsoft setups (Closed)")
    -   only the config is changed with respect to v2\_4\_4

Change List
============================

larsoft v08\_23\_00
------------------------------------------

-   2019-06-20 Lynn Garren : larsoft v08\_23\_00 for larsoft v08\_23\_00
-   2019-06-20 Lynn Garren : product versions
-   2019-06-20 Lynn Garren : build hdf5
-   2019-06-20 Lynn Garren : distribute hdf5
-   2019-06-19 Lynn Garren : bug fix ifdhc\_config v2\_4\_5
-   2019-06-10 Lynn Garren : s84

lareventdisplay v08\_08\_00
----------------------------------------------------------

-   2019-06-20 Lynn Garren : lareventdisplay v08\_08\_00 for larsoft v08\_23\_00
-   2019-06-19 Lynn Garren : Merge branch ‘feature/knoepfel\_rm\_bezier’ into release/v08\_23\_00
-   2019-06-10 Lynn Garren : larsoft v08\_22\_00
-   2019-06-06 Tom Junk : put some protection in to check the recob::Wire pointer gotten from the Assn
-   2019-06-05 Kyle Knoepfel : Remove unused Landed system.
-   2019-06-04 Kyle Knoepfel : Merge branch ‘develop’ into feature/knoepfel\_rm\_bezier
-   2019-05-24 Kyle Knoepfel : Remove deprecated Bezier constructs.

larexamples v08\_02\_08
--------------------------------------------------

-   2019-06-20 Lynn Garren : larexamples v08\_02\_08 for larsoft v08\_23\_00

larg4 v08\_03\_07
--------------------------------------

-   2019-06-20 Lynn Garren : larg4 v08\_03\_07 for larsoft v08\_23\_00

larpandora v08\_07\_04
------------------------------------------------

-   2019-06-20 Lynn Garren : larpandora v08\_07\_04 for larsoft v08\_23\_00

larwirecell v08\_05\_07
--------------------------------------------------

-   2019-06-20 Lynn Garren : larwirecell v08\_05\_07 for larsoft v08\_23\_00

larana v08\_10\_00
----------------------------------------

-   2019-06-20 Lynn Garren : larana v08\_10\_00 for larsoft v08\_23\_00
-   2019-06-20 Lynn Garren : Merge branch ‘feature/team\_rm\_bezier’ into release/v08\_23\_00
-   2019-06-20 Lynn Garren : removing modules per Kyle
-   2019-06-04 Kyle Knoepfel : Merge branch ‘develop’ into feature/knoepfel\_rm\_bezier
-   2019-05-24 Kyle Knoepfel : Remove deprecated Bezier constructs.

larreco v08\_15\_00
------------------------------------------

-   2019-06-20 Lynn Garren : larreco v08\_15\_00 for larsoft v08\_23\_00
-   2019-06-19 Lynn Garren : Merge branch ‘feature/knoepfel\_rm\_bezier’ into release/v08\_23\_00
-   2019-06-19 Lynn Garren : from Bruce’s email2019-06-19 Lynn Garren : from Bruce’s email
-   2019-06-19 Lynn Garren : Merge branch ‘feature/bb\_new3D’ into release/v08\_23\_00
-   2019-06-14 Chao Zhang : add truth depo; add mc traj; add support for icarus.
-   2019-06-13 Usher, Tracy L : correct usage of emplace\_back
-   2019-06-13 Usher, Tracy L : Testing a new metric for determining the least cost path which uses the individual 3D hit “chi-square” rather than the distance between hits
-   2019-06-11 Usher, Tracy L : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2019-06-11 Usher, Tracy L : Simplify nearest neighbor lookup
-   2019-06-10 baller : fix int/unsigned int comparison error
-   2019-06-10 baller : fix int/unsigned int comparison error
-   2019-06-08 baller : Performance improvements and bug fixes.
-   2019-06-08 baller : Performance improvements and bug fixes.
-   2019-06-08 baller : Performance improvements and bug fixes.
-   2019-06-08 baller : Performance improvements and bug fixes.
-   2019-06-08 baller : Performance improvements and bug fixes.
-   2019-06-08 baller : Performance improvements and bug fixes.
-   2019-06-08 baller : Performance improvements and bug fixes.
-   2019-06-08 baller : Performance improvements and bug fixes.
-   2019-06-08 baller : Performance improvements and bug fixes.
-   2019-06-08 baller : Performance improvements and bug fixes.
-   2019-06-08 baller : Performance improvements and bug fixes.
-   2019-06-05 Kyle Knoepfel : Remove unused modules.
-   2019-06-04 Kyle Knoepfel : Merge branch ‘develop’ into feature/knoepfel\_rm\_bezier
-   2019-06-04 baller : Performance improvements
-   2019-06-04 baller : Performance improvements
-   2019-06-04 baller : Performance improvements
-   2019-06-01 baller : Merge branch ‘develop’ into feature/bb\_new3D
-   2019-06-01 baller : Merge branch ‘feature/bb\_new3D’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb\_new3D
-   2019-06-01 baller : Optional use of SpacePoints, bug fixes and improvements
-   2019-06-01 baller : Optional use of SpacePoints, bug fixes and improvements
-   2019-06-01 baller : Optional use of SpacePoints, bug fixes and improvements
-   2019-06-01 baller : Optional use of SpacePoints, bug fixes and improvements
-   2019-06-01 baller : Optional use of SpacePoints, bug fixes and improvements
-   2019-06-01 baller : Optional use of SpacePoints, bug fixes and improvements
-   2019-06-01 baller : Optional use of SpacePoints, bug fixes and improvements
-   2019-06-01 baller : Optional use of SpacePoints, bug fixes and improvements
-   2019-06-01 baller : Optional use of SpacePoints, bug fixes and improvements
-   2019-06-01 baller : Optional use of SpacePoints, bug fixes and improvements
-   2019-06-01 baller : Optional use of SpacePoints, bug fixes and improvements
-   2019-06-01 baller : Remove unused variable
-   2019-05-23 Kyle Knoepfel : Remove deprecated Bezier constructs.

larsim v08\_09\_00
----------------------------------------

-   2019-06-20 Lynn Garren : Merge branch ‘feature/knoepfel\_rm\_unused\_modules’ into release/v08\_23\_00
-   2019-06-20 Lynn Garren : larsim v08\_09\_00
-   2019-06-20 Lynn Garren : using larevt v08\_06\_00
-   2019-06-20 Lynn Garren : larsim v08\_09\_00 for larsoft v08\_23\_00
-   2019-06-19 Lynn Garren : Merge branch ‘release/v08\_23\_00’ into feature/knoepfel\_rm\_unused\_modules
-   2019-06-17 Gianluca Petrillo : Bug fix: PhotonVisibilityService::NOpChannel() now refers to the mapping.
-   2019-06-05 Kyle Knoepfel : Remove unused modules.

larevt v08\_06\_00
----------------------------------------

-   2019-06-20 Lynn Garren : larevt v08\_06\_00 for larsoft v08\_23\_00
-   2019-06-19 Lynn Garren : Merge branch ‘feature/knoepfel\_rm\_unused\_modules’ into release/v08\_23\_00
-   2019-06-05 Kyle Knoepfel : Remove unused modules.

lardata v08\_06\_00
------------------------------------------

-   2019-06-20 Lynn Garren : lardata v08\_06\_00 for larsoft v08\_23\_00
-   2019-06-19 Lynn Garren : Merge branch ‘feature/knoepfel\_rm\_unused\_modules’ into release/v08\_23\_00
-   2019-06-13 Kyle Knoepfel : Remove FileCatalogMetadataExtras.

larcore v08\_04\_04
------------------------------------------

larpandoracontent v03\_14\_08
--------------------------------------------------------------

larsoftobj v08\_15\_02
------------------------------------------------

lardataobj v08\_04\_03
------------------------------------------------

lardataalg v08\_07\_02
------------------------------------------------

larcorealg v08\_12\_01
------------------------------------------------

larcoreobj v08\_05\_01
------------------------------------------------

larbatch v01\_51\_04
--------------------------------------------

larutils v1\_24\_00
------------------------------------------

-   2019-06-20 Lynn Garren : larutils v1\_24\_00 for larsoft v08\_23\_00
-   2019-06-18 Lynn Garren : skip py3 on SLF6
-   2019-06-17 Lynn Garren : support -l py3 build
-   2019-06-14 Lynn Garren : start adding py3 build option
-   2019-06-13 Lynn Garren : fix typo
-   2019-06-13 Lynn Garren : modernize
-   2019-06-13 Lynn Garren : add s84
