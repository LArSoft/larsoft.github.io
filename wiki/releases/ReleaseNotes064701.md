LArSoft v06_47_01 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06_47_01 Release Notes](#LArSoft-v06_47_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06_47_01](#larsoft-v06_47_01)
    -   [lareventdisplay v06_11_01](#lareventdisplay-v06_11_01)
    -   [larexamples v06_05_06](#larexamples-v06_05_06)
    -   [larpandora v06_15_06](#larpandora-v06_15_06)
    -   [larwirecell v06_05_10](#larwirecell-v06_05_10)
    -   [larana v06_09_01](#larana-v06_09_01)
    -   [larreco v06_38_01](#larreco-v06_38_01)
    -   [larsim v06_29_02](#larsim-v06_29_02)
    -   [larevt v06_15_06](#larevt-v06_15_06)
    -   [lardata v06_26_02](#lardata-v06_26_02)
    -   [larcore v06_14_00](#larcore-v06_14_00)
    -   [larpandoracontent v03_07_03](#larpandoracontent-v03_07_03)
    -   [larsoftobj v1_25_00](#larsoftobj-v1_25_00)
    -   [lardataobj v1_19_00](#lardataobj-v1_19_00)
    -   [larcorealg v1_06_01](#larcorealg-v1_06_01)
    -   [larcoreobj v1_15_01](#larcoreobj-v1_15_01)
    -   [larbatch v01_32_04](#larbatch-v01_32_04)
    -   [larutils v1_19_00](#larutils-v1_19_00)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06_47_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_47_01/larsoft-v06_47_01.html)
Download instructions for [just larsoftobj v1_25_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_25_00/larsoftobj-v1_25_00.html)

Purpose
--------------------

-   changes in develop

New features
------------------------------

Bug fixes
------------------------

-   [\#17552](/redmine/issues/17552 "Support: Cannot preserve changes to event display services (Closed)") fixed with nutools v2_15_01

Updated dependencies
----------------------------------------------

-   nutools [v2_15_01](/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_15_01-8222017)

Change List
============================

larsoft v06_47_01
------------------------------------------

-   2017-08-22 Lynn Garren : larsoft v06_47_01 for larsoft v06_47_01
-   2017-08-22 Lynn Garren : update product versions
-   2017-08-22 Lynn Garren : update dependency database

lareventdisplay v06_11_01
----------------------------------------------------------

-   2017-08-22 Lynn Garren : lareventdisplay v06_11_01 for larsoft v06_47_01
-   2017-08-19 Tingjun Yang : Change spacepoint pointers to art pointers.

larexamples v06_05_06
--------------------------------------------------

-   2017-08-22 Lynn Garren : larexamples v06_05_06 for larsoft v06_47_01

larpandora v06_15_06
------------------------------------------------

-   2017-08-22 Lynn Garren : larpandora v06_15_06 for larsoft v06_47_01

larwirecell v06_05_10
--------------------------------------------------

-   2017-08-22 Lynn Garren : larwirecell v06_05_10 for larsoft v06_47_01

larana v06_09_01
----------------------------------------

-   2017-08-22 Lynn Garren : larana v06_09_01 for larsoft v06_47_01

larreco v06_38_01
------------------------------------------

-   2017-08-22 Lynn Garren : larreco v06_38_01 for larsoft v06_47_01
-   2017-08-21 Usher, Tracy L : Code cleanup
-   2017-08-21 Usher, Tracy L : Convert to using list instead of vector for results
-   2017-08-21 Usher, Tracy L : Convert to using kd tree for looking up neighborhood, vast simplification of module results…
-   2017-08-21 Usher, Tracy L : restore to set to get ordered hit timing for 2D event display
-   2017-08-21 Usher, Tracy L : Remove cut on hit time and “hiding” of overlap value in chi-square of space point
-   2017-08-18 Usher, Tracy L : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-08-18 Usher, Tracy L : Temporary extra output since xcode debug not availalbe on Sierra…
-   2017-08-18 Usher, Tracy L : Clean up to help build process
-   2017-08-18 Usher, Tracy L : Updates for new/rearranged tools and algorithms
-   2017-08-18 Usher, Tracy L : Implement a cluster merging tool which uses the PCA to find and merge consistent clusters
-   2017-08-17 Usher, Tracy L : Keeping pace with the changes to the algorithms/tools
-   2017-08-17 Usher, Tracy L : Commenting out the “quiet wires” handling since from MCC8 this is now corrected by wirecell noise filter (in theory)
-   2017-08-17 Usher, Tracy L : Clustering tools are now implemented as art tools to facilitate changing via fhicl
-   2017-08-17 Usher, Tracy L : Moving to its own module in order to make available to other algorithms
-   2017-08-17 Usher, Tracy L : Breaking out the handling of cluster parameters since this appears to be shared code
-   2017-08-17 Usher, Tracy L : Converting to art tools, removing the old code

larsim v06_29_02
----------------------------------------

-   2017-08-22 Lynn Garren : larsim v06_29_02 for larsoft v06_47_01

larevt v06_15_06
----------------------------------------

-   2017-08-22 Lynn Garren : larevt v06_15_06 for larsoft v06_47_01

lardata v06_26_02
------------------------------------------

-   2017-08-22 Lynn Garren : lardata v06_26_02 for larsoft v06_47_01
-   2017-08-21 Usher, Tracy L : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/lardata into develop
-   2017-08-21 Usher, Tracy L : Fix the order of variables in the 3D hit constructor
-   2017-08-18 Gianluca Petrillo : begin() and end() methods of RangeForWrapper are made constant.
-   2017-08-18 Gianluca Petrillo : Added support for up to bidirectional iterators in util::RangeForWrapper.
-   2017-08-18 Usher, Tracy L : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/lardata into develop
-   2017-08-18 Usher, Tracy L : Add structure definition

larcore v06_14_00
------------------------------------------

larpandoracontent v03_07_03
--------------------------------------------------------------

larsoftobj v1_25_00
----------------------------------------------

lardataobj v1_19_00
----------------------------------------------

larcorealg v1_06_01
----------------------------------------------

larcoreobj v1_15_01
----------------------------------------------

larbatch v01_32_04
--------------------------------------------

larutils v1_19_00
------------------------------------------

-   2017-08-22 Lynn Garren : larutils v1_19_00 for larsoft v06_47_01
-   2017-08-18 Herbert Greenlee : Use official repos.
-   2017-08-18 Herbert Greenlee : Use clone.
-   2017-08-18 Herbert Greenlee : Add missing quote.
-   2017-08-18 Herbert Greenlee : Use clone.
-   2017-08-18 Herbert Greenlee : Use clone.
-   2017-08-18 Herbert Greenlee : Get rid of nolarlite qualifier.
-   2017-08-18 Herbert Greenlee : Fix tarball name.
-   2017-08-18 Herbert Greenlee : Add nolarlite qualifier.
-   2017-08-18 Herbert Greenlee : Add stand alone larcv build script.
