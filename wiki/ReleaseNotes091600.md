LArSoft v09\_16\_00 Release Notes(#LArSoft-v09_16_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v09\_16\_00 Release Notes](#LArSoft-v09_16_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_16\_00](#larsoft-v09_16_00)
    -   [lareventdisplay v09\_01\_00](#lareventdisplay-v09_01_00)
    -   [larexamples v09\_01\_00](#larexamples-v09_01_00)
    -   [larpandora v09\_05\_00](#larpandora-v09_05_00)
    -   [larsimrad v09\_01\_00](#larsimrad-v09_01_00)
    -   [larrecodnn v09\_05\_00](#larrecodnn-v09_05_00)
    -   [larwirecell v09\_02\_00](#larwirecell-v09_02_00)
    -   [larana v09\_01\_00](#larana-v09_01_00)
    -   [larreco v09\_05\_00](#larreco-v09_05_00)
    -   [larsim v09\_09\_00](#larsim-v09_09_00)
    -   [larg4 v09\_03\_00](#larg4-v09_03_00)
    -   [larevt v09\_02\_00](#larevt-v09_02_00)
    -   [lardata v09\_02\_00](#lardata-v09_02_00)
    -   [larcore v09\_02\_00](#larcore-v09_02_00)
    -   [larpandoracontent v03\_22\_05](#larpandoracontent-v03_22_05)
    -   [larsoftobj v09\_05\_00](#larsoftobj-v09_05_00)
    -   [lardataobj v09\_01\_00](#lardataobj-v09_01_00)
    -   [lardataalg v09\_04\_00](#lardataalg-v09_04_00)
    -   [larcorealg v09\_01\_00](#larcorealg-v09_01_00)
    -   [larcoreobj v09\_02\_00](#larcoreobj-v09_02_00)
    -   [webevd v09\_03\_00](#webevd-v09_03_00)
    -   [larbatch v01\_54\_01](#larbatch-v01_54_01)
    -   [larutils v1\_27\_04](#larutils-v1_27_04)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v09\_16\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_16_00/larsoft-v09_16_00.html)\
Download instructions for [just larsoftobj v09\_05\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_05_00/larsoftobj-v09_05_00.html)

Purpose(#Purpose)
--------------------

-   use art 3.06.03, art\_root\_io 1.05.02, canvas\_root\_io 1.07.02, and gallery 1.16.02 (s106)

New features(#New-features)
------------------------------

-   This is the first larsoft release with art 3.06.
-   Most of the ups product dependencies have been updated.
-   cetbuildtools v7\_17\_01 is required for the updated boost.
-   **Branch feature/team\_for\_art\_v3\_06 is provided for experiment code.**
    -   The changes are small, but important.
    -   Entries in ups/product\_deps for py2 have been removed.
    -   e20 has been added to ups/product\_deps.
    -   Modernizing the top level CMakeLists.txt file.
    -   Deal with a tiny typo discovered in root. See [root v6\_22\_06a typo](Breaking_Changes#root-v6_22_06a-typo)
-   Although an e20 prof distribution is available, larsoft still officially supports only the e19 and c7 distributions.

Updated dependencies(#Updated-dependencies)
----------------------------------------------

-   art v3\_06\_03
-   artdaq\_core v3\_06\_09
-   artg4tk v10\_02\_00
-   art\_root\_io v1\_05\_02
-   boost v1\_73\_0
-   canvas\_root\_io v1\_07\_02
-   eigen v3\_3\_9a
-   geant4 v4\_10\_6\_p01c
-   genie v3\_00\_06k
-   hdf5 v1\_12\_0b
-   ifdh\_art v2\_11\_04
-   libtorch v1\_6\_0a
-   nuevdb v1\_03\_02
-   nug4 v1\_06\_02
-   nugen v1\_11\_02
-   nurandom v1\_05\_02
-   nusimdata v1\_22\_02
-   nutools v3\_09\_02
-   nusystematics v00\_11\_02
-   openblas v0\_3\_10a
    -   replaces lapack
-   protobuf v3\_12\_3
-   python v3\_8\_3b
-   range v3\_0\_10\_0b
-   root v6\_22\_06a
    -   **root has an additional qualifier**: e19:p383b:prof, etc.
-   tbb v2020\_2a
-   tensorflow v1\_12\_0d
-   trtis\_clients v19\_11c
-   This list is not exhaustive.

Change List(#Change-List)
============================

larsoft v09\_16\_00(#larsoft-v09_16_00)
------------------------------------------

-   2021-02-04 Lynn Garren : larsoft v09\_16\_00 for larsoft v09\_16\_00
-   2021-02-04 Lynn Garren : product updates for art 3.06
-   2021-02-02 Lynn Garren : Merge branch ‘develop’ into v09\_20\_00\_rc\_br
-   2021-02-02 Lynn Garren : v09\_20\_00\_rc0
-   2021-02-02 Lynn Garren : new product stack for s106
-   2021-01-25 Lynn Garren : remove find\_ups\_product( cetbuildtools )
-   2021-01-20 Lynn Garren : nulite v3\_09\_01
-   2021-01-20 Lynn Garren : add e20
-   2021-01-20 Lynn Garren : cmake 3.18
-   2021-01-18 Lynn Garren : python v3\_8\_3b

lareventdisplay v09\_01\_00(#lareventdisplay-v09_01_00)
----------------------------------------------------------

-   2021-02-04 Lynn Garren : lareventdisplay v09\_01\_00 for larsoft v09\_16\_00
-   2021-02-02 Lynn Garren : Merge branch ‘develop’ into v09\_20\_00\_rc\_br
-   2021-02-02 Lynn Garren : nuevdb v1\_03\_02
-   2021-02-02 Lynn Garren : add header
-   2021-01-25 Lynn Garren : remove find\_ups\_product( cetbuildtools )
-   2021-01-20 Lynn Garren : cmake 3.18
-   2021-01-20 Lynn Garren : add e20

larexamples v09\_01\_00(#larexamples-v09_01_00)
--------------------------------------------------

-   2021-02-04 Lynn Garren : larexamples v09\_01\_00 for larsoft v09\_16\_00
-   2021-02-02 Lynn Garren : add missing array header
-   2021-02-02 Lynn Garren : Merge branch ‘develop’ into v09\_20\_00\_rc\_br
-   2021-02-02 Lynn Garren : v09\_20\_00\_rc0
-   2021-01-25 Lynn Garren : remove find\_ups\_product( cetbuildtools )
-   2021-01-20 Lynn Garren : cmake 3.18
-   2021-01-20 Lynn Garren : add e20

larpandora v09\_05\_00(#larpandora-v09_05_00)
------------------------------------------------

-   2021-02-04 Lynn Garren : larpandora v09\_05\_00 for larsoft v09\_16\_00
-   2021-02-02 Lynn Garren : Merge branch ‘develop’ into v09\_20\_00\_rc\_br
-   2021-02-02 Lynn Garren : v09\_20\_00\_rc0
-   2021-01-25 Lynn Garren : remove find\_ups\_product( cetbuildtools )
-   2021-01-20 Lynn Garren : add e20
-   2021-01-20 Lynn Garren : cmake 3.18

larsimrad v09\_01\_00(#larsimrad-v09_01_00)
----------------------------------------------

-   2021-02-04 Lynn Garren : larsimrad v09\_01\_00 for larsoft v09\_16\_00
-   2021-02-02 Lynn Garren : Merge branch ‘develop’ into v09\_20\_00\_rc\_br
-   2021-02-02 Lynn Garren : v09\_20\_00\_rc0
-   2021-01-25 Lynn Garren : remove find\_ups\_product( cetbuildtools )
-   2021-01-20 Lynn Garren : cmake 3.18
-   2021-01-20 Lynn Garren : add e20

larrecodnn v09\_05\_00(#larrecodnn-v09_05_00)
------------------------------------------------

-   2021-02-04 Lynn Garren : larrecodnn v09\_05\_00 for larsoft v09\_16\_00
-   2021-02-02 Lynn Garren : Merge branch ‘develop’ into v09\_20\_00\_rc\_br
-   2021-02-02 Lynn Garren : v09\_20\_00\_rc0
-   2021-01-25 Lynn Garren : remove find\_ups\_product( cetbuildtools )
-   2021-01-20 Lynn Garren : cmake 3.18
-   2021-01-20 Lynn Garren : add e20

larwirecell v09\_02\_00(#larwirecell-v09_02_00)
--------------------------------------------------

-   2021-02-04 Lynn Garren : larwirecell v09\_02\_00 for larsoft v09\_16\_00
-   2021-02-02 Lynn Garren : Merge branch ‘develop’ into v09\_20\_00\_rc\_br
-   2021-02-02 Lynn Garren : wirecell v0\_14\_0d
-   2021-01-25 Lynn Garren : remove find\_ups\_product( cetbuildtools )
-   2021-01-20 Lynn Garren : add e20
-   2021-01-20 Lynn Garren : cmake 3.18

larana v09\_01\_00(#larana-v09_01_00)
----------------------------------------

-   2021-02-04 Lynn Garren : larana v09\_01\_00 for larsoft v09\_16\_00
-   2021-02-02 Lynn Garren : Merge branch ‘develop’ into v09\_20\_00\_rc\_br
-   2021-02-02 Lynn Garren : v09\_20\_00\_rc0
-   2021-01-25 Lynn Garren : remove find\_ups\_product( cetbuildtools )
-   2021-01-20 Lynn Garren : add e20
-   2021-01-20 Lynn Garren : cmake 3.18

larreco v09\_05\_00(#larreco-v09_05_00)
------------------------------------------

-   2021-02-04 Lynn Garren : larreco v09\_05\_00 for larsoft v09\_16\_00
-   2021-02-02 Lynn Garren : Merge branch ‘develop’ into v09\_20\_00\_rc\_br
-   2021-02-02 Lynn Garren : eigen v3\_3\_9a
-   2021-01-25 Kyle Knoepfel : Replace use of deprecated TBB header.
-   2021-01-25 Lynn Garren : remove find\_ups\_product( cetbuildtools )
-   2021-01-20 Lynn Garren : ranges::view is now ranges::views
-   2020-12-09 Kyle Knoepfel : Don’t forget range headers.
-   2021-01-20 Lynn Garren : add e20
-   2021-01-20 Lynn Garren : cmake 3.18
-   2021-01-18 Lynn Garren : ROOT::VMC no longer exists

larsim v09\_09\_00(#larsim-v09_09_00)
----------------------------------------

-   2021-02-04 Lynn Garren : larsim v09\_09\_00 for larsoft v09\_16\_00
-   2021-02-02 Lynn Garren : Merge branch ‘develop’ into v09\_20\_00\_rc\_br
-   2021-02-02 Lynn Garren : nug4 v1\_06\_02, nugen v1\_11\_02, nurandom v1\_05\_02, nutools v3\_09\_02, marley v1\_1\_1g
-   2021-01-25 Lynn Garren : remove find\_ups\_product( cetbuildtools )
-   2021-01-20 Lynn Garren : ranges::view is now ranges::views
-   2021-01-20 Lynn Garren : add e20
-   2021-01-20 Lynn Garren : cmake 3.18

larg4 v09\_03\_00(#larg4-v09_03_00)
--------------------------------------

-   2021-02-04 Lynn Garren : larg4 v09\_03\_00 for larsoft v09\_16\_00
-   2021-02-02 Lynn Garren : Merge branch ‘develop’ into v09\_20\_00\_rc\_br
-   2021-02-02 Lynn Garren : artg4tk v10\_02\_00, nug4 v1\_06\_02, nurandom v1\_05\_02
-   2021-01-20 Lynn Garren : nug4 v1\_06\_01
-   2020-12-09 Kyle Knoepfel : Don’t forget Assns header.
-   2020-12-09 Kyle Knoepfel : Remove inappropriate base class.
-   2021-01-18 Lynn Garren : add e20
-   2021-01-18 Lynn Garren : cmake 3.18

larevt v09\_02\_00(#larevt-v09_02_00)
----------------------------------------

-   2021-02-04 Lynn Garren : larevt v09\_02\_00 for larsoft v09\_16\_00
-   2021-02-02 Lynn Garren : Merge branch ‘develop’ into v09\_20\_00\_rc\_br
-   2021-02-02 Lynn Garren : v09\_20\_00\_rc0
-   2021-01-25 Lynn Garren : remove find\_ups\_product( cetbuildtools )
-   2021-01-20 Lynn Garren : add e20
-   2021-01-20 Lynn Garren : cmake 3.18

lardata v09\_02\_00(#lardata-v09_02_00)
------------------------------------------

-   2021-02-04 Lynn Garren : lardata v09\_02\_00 for larsoft v09\_16\_00
-   2021-02-02 Lynn Garren : Merge branch ‘develop’ into v09\_20\_00\_rc\_br
-   2021-02-02 Lynn Garren : v09\_20\_00\_rc0
-   2021-01-25 Lynn Garren : remove find\_ups\_product( cetbuildtools )
-   2021-01-20 Lynn Garren : ranges::view is now ranges::views
-   2021-01-20 Lynn Garren : boost floating\_point\_comparison.hpp
-   2020-12-09 Kyle Knoepfel : Remove unnecessary/incorrect cast.
-   2021-01-18 Lynn Garren : add e20
-   2021-01-18 Lynn Garren : cmake 3.18

larcore v09\_02\_00(#larcore-v09_02_00)
------------------------------------------

-   2021-02-04 Lynn Garren : larcore v09\_02\_00 for larsoft v09\_16\_00
-   2021-02-02 Lynn Garren : art\_root\_io v1\_05\_02
-   2021-01-25 Lynn Garren : use find\_package cetbuildtools
-   2021-01-20 Lynn Garren : add e20
-   2021-01-20 Lynn Garren : cmake 3.18

larpandoracontent v03\_22\_05(#larpandoracontent-v03_22_05)
--------------------------------------------------------------

-   2021-02-04 Lynn Garren : larpandoracontent v03\_22\_05 for larsoft v09\_16\_00
-   2021-02-04 Lynn Garren : larpandoracontent v03\_22\_05 for art 3.06
-   2021-02-02 Lynn Garren : Merge branch ‘develop’ into v09\_20\_00\_rc\_br
-   2021-02-02 Lynn Garren : eigen v3\_3\_9a, pandora v03\_16\_00b, libtorch v1\_6\_0a
-   2021-01-20 Lynn Garren : add e20

larsoftobj v09\_05\_00(#larsoftobj-v09_05_00)
------------------------------------------------

-   2021-02-04 Lynn Garren : larsoftobj v09\_05\_00 for larsoft v09\_16\_00
-   2021-02-04 Lynn Garren : product updates for art 3.06
-   2021-02-02 Lynn Garren : Merge branch ‘develop’ into v09\_20\_00\_rc\_br
-   2021-02-02 Lynn Garren : gallery v1\_16\_02
-   2021-02-02 Lynn Garren : new product stack for s106
-   2021-01-25 Lynn Garren : remove find\_ups\_product( cetbuildtools )
-   2021-01-20 Lynn Garren : cmake 3.18
-   2021-01-20 Lynn Garren : add e20
-   2021-01-20 Lynn Garren : nulite v3\_09\_01

lardataobj v09\_01\_00(#lardataobj-v09_01_00)
------------------------------------------------

-   2021-02-04 Lynn Garren : lardataobj v09\_01\_00 for larsoft v09\_16\_00
-   2021-02-02 Lynn Garren : Merge branch ‘develop’ into v09\_20\_00\_rc\_br
-   2021-02-02 Lynn Garren : nusimdata v1\_22\_02
-   2021-01-25 Lynn Garren : use find\_package cetbuildtools
-   2021-01-20 Lynn Garren : add e20
-   2021-01-20 Lynn Garren : cmake 3.18
-   2021-01-20 Lynn Garren : boost floating\_point\_comparison.hpp

lardataalg v09\_04\_00(#lardataalg-v09_04_00)
------------------------------------------------

-   2021-02-04 Lynn Garren : lardataalg v09\_04\_00 for larsoft v09\_16\_00
-   2021-02-02 Lynn Garren : Merge branch ‘develop’ into v09\_20\_00\_rc\_br
-   2021-02-02 Lynn Garren : v09\_20\_00\_rc0
-   2021-01-25 Lynn Garren : remove find\_ups\_product( cetbuildtools )
-   2021-01-20 Lynn Garren : boost floating\_point\_comparison.hpp
-   2021-01-20 Lynn Garren : cmake 3.18
-   2021-01-20 Lynn Garren : add e20

larcorealg v09\_01\_00(#larcorealg-v09_01_00)
------------------------------------------------

-   2021-02-04 Lynn Garren : larcorealg v09\_01\_00 for larsoft v09\_16\_00
-   2021-02-02 Lynn Garren : v09\_20\_00\_rc0
-   2021-01-25 Lynn Garren : use find\_package cetbuildtools
-   2021-01-20 Lynn Garren : add e20
-   2021-01-20 Lynn Garren : cmake 3.18
-   2021-01-20 Lynn Garren : ranges::view is now ranges::views
-   2021-01-20 Lynn Garren : boost floating\_point\_comparison.hpp

larcoreobj v09\_02\_00(#larcoreobj-v09_02_00)
------------------------------------------------

-   2021-02-04 Lynn Garren : larcoreobj v09\_02\_00 for larsoft v09\_16\_00
-   2021-02-02 Lynn Garren : canvas\_root\_io v1\_07\_02
-   2021-01-25 Lynn Garren : use find\_package cetbuildtools
-   2021-01-20 Lynn Garren : add e20
-   2021-01-20 Lynn Garren : cmake 3.18

webevd v09\_03\_00(#webevd-v09_03_00)
----------------------------------------

-   2021-02-04 Lynn Garren : webevd v09\_03\_00 for larsoft v09\_16\_00
-   2021-02-02 Lynn Garren : Merge branch ‘develop’ into v09\_20\_00\_rc\_br
-   2021-02-02 Lynn Garren : gallery v1\_16\_02
-   2021-01-25 Lynn Garren : remove find\_ups\_product( cetbuildtools )
-   2021-01-20 Lynn Garren : cmake 3.18
-   2021-01-20 Lynn Garren : add e20

larbatch v01\_54\_01(#larbatch-v01_54_01)
--------------------------------------------

larutils v1\_27\_04(#larutils-v1_27_04)
------------------------------------------
