# LArSoft v09_16_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v09_16_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_16_00/larsoft-v09_16_00.html)  
Download instructions for [just larsoftobj v09_05_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_05_00/larsoftobj-v09_05_00.html)

## Purpose

-   use art 3.06.03, art_root_io 1.05.02, canvas_root_io 1.07.02, and gallery 1.16.02 (s106)

## New features

-   This is the first larsoft release with art 3.06.
-   Most of the ups product dependencies have been updated.
-   cetbuildtools v7_17_01 is required for the updated boost.
-   **Branch feature/team_for_art_v3_06 is provided for experiment code.**
    -   The changes are small, but important.
    -   Entries in ups/product_deps for py2 have been removed.
    -   e20 has been added to ups/product_deps.
    -   Modernizing the top level CMakeLists.txt file.
    -   Deal with a tiny typo discovered in root. See [root v6_22_06a typo](Breaking_Changes#root-v6_22_06a-typo)
-   Although an e20 prof distribution is available, larsoft still officially supports only the e19 and c7 distributions.

## Updated dependencies

-   art v3_06_03
-   artdaq_core v3_06_09
-   artg4tk v10_02_00
-   art_root_io v1_05_02
-   boost v1_73_0
-   canvas_root_io v1_07_02
-   eigen v3_3_9a
-   geant4 v4_10_6_p01c
-   genie v3_00_06k
-   hdf5 v1_12_0b
-   ifdh_art v2_11_04
-   libtorch v1_6_0a
-   nuevdb v1_03_02
-   nug4 v1_06_02
-   nugen v1_11_02
-   nurandom v1_05_02
-   nusimdata v1_22_02
-   nutools v3_09_02
-   nusystematics v00_11_02
-   openblas v0_3_10a
    -   replaces lapack
-   protobuf v3_12_3
-   python v3_8_3b
-   range v3_0_10_0b
-   root v6_22_06a
    -   **root has an additional qualifier**: e19:p383b:prof, etc.
-   tbb v2020_2a
-   tensorflow v1_12_0d
-   trtis_clients v19_11c
-   This list is not exhaustive.

# Change List

## larsoft v09_16_00

-   2021-02-04 Lynn Garren : larsoft v09_16_00 for larsoft v09_16_00
-   2021-02-04 Lynn Garren : product updates for art 3.06
-   2021-02-02 Lynn Garren : Merge branch 'develop' into v09_20_00_rc_br
-   2021-02-02 Lynn Garren : v09_20_00_rc0
-   2021-02-02 Lynn Garren : new product stack for s106
-   2021-01-25 Lynn Garren : remove find_ups_product( cetbuildtools )
-   2021-01-20 Lynn Garren : nulite v3_09_01
-   2021-01-20 Lynn Garren : add e20
-   2021-01-20 Lynn Garren : cmake 3.18
-   2021-01-18 Lynn Garren : python v3_8_3b

## lareventdisplay v09_01_00

-   2021-02-04 Lynn Garren : lareventdisplay v09_01_00 for larsoft v09_16_00
-   2021-02-02 Lynn Garren : Merge branch 'develop' into v09_20_00_rc_br
-   2021-02-02 Lynn Garren : nuevdb v1_03_02
-   2021-02-02 Lynn Garren : add header
-   2021-01-25 Lynn Garren : remove find_ups_product( cetbuildtools )
-   2021-01-20 Lynn Garren : cmake 3.18
-   2021-01-20 Lynn Garren : add e20

## larexamples v09_01_00

-   2021-02-04 Lynn Garren : larexamples v09_01_00 for larsoft v09_16_00
-   2021-02-02 Lynn Garren : add missing array header
-   2021-02-02 Lynn Garren : Merge branch 'develop' into v09_20_00_rc_br
-   2021-02-02 Lynn Garren : v09_20_00_rc0
-   2021-01-25 Lynn Garren : remove find_ups_product( cetbuildtools )
-   2021-01-20 Lynn Garren : cmake 3.18
-   2021-01-20 Lynn Garren : add e20

## larpandora v09_05_00

-   2021-02-04 Lynn Garren : larpandora v09_05_00 for larsoft v09_16_00
-   2021-02-02 Lynn Garren : Merge branch 'develop' into v09_20_00_rc_br
-   2021-02-02 Lynn Garren : v09_20_00_rc0
-   2021-01-25 Lynn Garren : remove find_ups_product( cetbuildtools )
-   2021-01-20 Lynn Garren : add e20
-   2021-01-20 Lynn Garren : cmake 3.18

## larsimrad v09_01_00

-   2021-02-04 Lynn Garren : larsimrad v09_01_00 for larsoft v09_16_00
-   2021-02-02 Lynn Garren : Merge branch 'develop' into v09_20_00_rc_br
-   2021-02-02 Lynn Garren : v09_20_00_rc0
-   2021-01-25 Lynn Garren : remove find_ups_product( cetbuildtools )
-   2021-01-20 Lynn Garren : cmake 3.18
-   2021-01-20 Lynn Garren : add e20

## larrecodnn v09_05_00

-   2021-02-04 Lynn Garren : larrecodnn v09_05_00 for larsoft v09_16_00
-   2021-02-02 Lynn Garren : Merge branch 'develop' into v09_20_00_rc_br
-   2021-02-02 Lynn Garren : v09_20_00_rc0
-   2021-01-25 Lynn Garren : remove find_ups_product( cetbuildtools )
-   2021-01-20 Lynn Garren : cmake 3.18
-   2021-01-20 Lynn Garren : add e20

## larwirecell v09_02_00

-   2021-02-04 Lynn Garren : larwirecell v09_02_00 for larsoft v09_16_00
-   2021-02-02 Lynn Garren : Merge branch 'develop' into v09_20_00_rc_br
-   2021-02-02 Lynn Garren : wirecell v0_14_0d
-   2021-01-25 Lynn Garren : remove find_ups_product( cetbuildtools )
-   2021-01-20 Lynn Garren : add e20
-   2021-01-20 Lynn Garren : cmake 3.18

## larana v09_01_00

-   2021-02-04 Lynn Garren : larana v09_01_00 for larsoft v09_16_00
-   2021-02-02 Lynn Garren : Merge branch 'develop' into v09_20_00_rc_br
-   2021-02-02 Lynn Garren : v09_20_00_rc0
-   2021-01-25 Lynn Garren : remove find_ups_product( cetbuildtools )
-   2021-01-20 Lynn Garren : add e20
-   2021-01-20 Lynn Garren : cmake 3.18

## larreco v09_05_00

-   2021-02-04 Lynn Garren : larreco v09_05_00 for larsoft v09_16_00
-   2021-02-02 Lynn Garren : Merge branch 'develop' into v09_20_00_rc_br
-   2021-02-02 Lynn Garren : eigen v3_3_9a
-   2021-01-25 Kyle Knoepfel : Replace use of deprecated TBB header.
-   2021-01-25 Lynn Garren : remove find_ups_product( cetbuildtools )
-   2021-01-20 Lynn Garren : ranges::view is now ranges::views
-   2020-12-09 Kyle Knoepfel : Don't forget range headers.
-   2021-01-20 Lynn Garren : add e20
-   2021-01-20 Lynn Garren : cmake 3.18
-   2021-01-18 Lynn Garren : ROOT::VMC no longer exists

## larsim v09_09_00

-   2021-02-04 Lynn Garren : larsim v09_09_00 for larsoft v09_16_00
-   2021-02-02 Lynn Garren : Merge branch 'develop' into v09_20_00_rc_br
-   2021-02-02 Lynn Garren : nug4 v1_06_02, nugen v1_11_02, nurandom v1_05_02, nutools v3_09_02, marley v1_1_1g
-   2021-01-25 Lynn Garren : remove find_ups_product( cetbuildtools )
-   2021-01-20 Lynn Garren : ranges::view is now ranges::views
-   2021-01-20 Lynn Garren : add e20
-   2021-01-20 Lynn Garren : cmake 3.18

## larg4 v09_03_00

-   2021-02-04 Lynn Garren : larg4 v09_03_00 for larsoft v09_16_00
-   2021-02-02 Lynn Garren : Merge branch 'develop' into v09_20_00_rc_br
-   2021-02-02 Lynn Garren : artg4tk v10_02_00, nug4 v1_06_02, nurandom v1_05_02
-   2021-01-20 Lynn Garren : nug4 v1_06_01
-   2020-12-09 Kyle Knoepfel : Don't forget Assns header.
-   2020-12-09 Kyle Knoepfel : Remove inappropriate base class.
-   2021-01-18 Lynn Garren : add e20
-   2021-01-18 Lynn Garren : cmake 3.18

## larevt v09_02_00

-   2021-02-04 Lynn Garren : larevt v09_02_00 for larsoft v09_16_00
-   2021-02-02 Lynn Garren : Merge branch 'develop' into v09_20_00_rc_br
-   2021-02-02 Lynn Garren : v09_20_00_rc0
-   2021-01-25 Lynn Garren : remove find_ups_product( cetbuildtools )
-   2021-01-20 Lynn Garren : add e20
-   2021-01-20 Lynn Garren : cmake 3.18

## lardata v09_02_00

-   2021-02-04 Lynn Garren : lardata v09_02_00 for larsoft v09_16_00
-   2021-02-02 Lynn Garren : Merge branch 'develop' into v09_20_00_rc_br
-   2021-02-02 Lynn Garren : v09_20_00_rc0
-   2021-01-25 Lynn Garren : remove find_ups_product( cetbuildtools )
-   2021-01-20 Lynn Garren : ranges::view is now ranges::views
-   2021-01-20 Lynn Garren : boost floating_point_comparison.hpp
-   2020-12-09 Kyle Knoepfel : Remove unnecessary/incorrect cast.
-   2021-01-18 Lynn Garren : add e20
-   2021-01-18 Lynn Garren : cmake 3.18

## larcore v09_02_00

-   2021-02-04 Lynn Garren : larcore v09_02_00 for larsoft v09_16_00
-   2021-02-02 Lynn Garren : art_root_io v1_05_02
-   2021-01-25 Lynn Garren : use find_package cetbuildtools
-   2021-01-20 Lynn Garren : add e20
-   2021-01-20 Lynn Garren : cmake 3.18

## larpandoracontent v03_22_05

-   2021-02-04 Lynn Garren : larpandoracontent v03_22_05 for larsoft v09_16_00
-   2021-02-04 Lynn Garren : larpandoracontent v03_22_05 for art 3.06
-   2021-02-02 Lynn Garren : Merge branch 'develop' into v09_20_00_rc_br
-   2021-02-02 Lynn Garren : eigen v3_3_9a, pandora v03_16_00b, libtorch v1_6_0a
-   2021-01-20 Lynn Garren : add e20

## larsoftobj v09_05_00

-   2021-02-04 Lynn Garren : larsoftobj v09_05_00 for larsoft v09_16_00
-   2021-02-04 Lynn Garren : product updates for art 3.06
-   2021-02-02 Lynn Garren : Merge branch 'develop' into v09_20_00_rc_br
-   2021-02-02 Lynn Garren : gallery v1_16_02
-   2021-02-02 Lynn Garren : new product stack for s106
-   2021-01-25 Lynn Garren : remove find_ups_product( cetbuildtools )
-   2021-01-20 Lynn Garren : cmake 3.18
-   2021-01-20 Lynn Garren : add e20
-   2021-01-20 Lynn Garren : nulite v3_09_01

## lardataobj v09_01_00

-   2021-02-04 Lynn Garren : lardataobj v09_01_00 for larsoft v09_16_00
-   2021-02-02 Lynn Garren : Merge branch 'develop' into v09_20_00_rc_br
-   2021-02-02 Lynn Garren : nusimdata v1_22_02
-   2021-01-25 Lynn Garren : use find_package cetbuildtools
-   2021-01-20 Lynn Garren : add e20
-   2021-01-20 Lynn Garren : cmake 3.18
-   2021-01-20 Lynn Garren : boost floating_point_comparison.hpp

## lardataalg v09_04_00

-   2021-02-04 Lynn Garren : lardataalg v09_04_00 for larsoft v09_16_00
-   2021-02-02 Lynn Garren : Merge branch 'develop' into v09_20_00_rc_br
-   2021-02-02 Lynn Garren : v09_20_00_rc0
-   2021-01-25 Lynn Garren : remove find_ups_product( cetbuildtools )
-   2021-01-20 Lynn Garren : boost floating_point_comparison.hpp
-   2021-01-20 Lynn Garren : cmake 3.18
-   2021-01-20 Lynn Garren : add e20

## larcorealg v09_01_00

-   2021-02-04 Lynn Garren : larcorealg v09_01_00 for larsoft v09_16_00
-   2021-02-02 Lynn Garren : v09_20_00_rc0
-   2021-01-25 Lynn Garren : use find_package cetbuildtools
-   2021-01-20 Lynn Garren : add e20
-   2021-01-20 Lynn Garren : cmake 3.18
-   2021-01-20 Lynn Garren : ranges::view is now ranges::views
-   2021-01-20 Lynn Garren : boost floating_point_comparison.hpp

## larcoreobj v09_02_00

-   2021-02-04 Lynn Garren : larcoreobj v09_02_00 for larsoft v09_16_00
-   2021-02-02 Lynn Garren : canvas_root_io v1_07_02
-   2021-01-25 Lynn Garren : use find_package cetbuildtools
-   2021-01-20 Lynn Garren : add e20
-   2021-01-20 Lynn Garren : cmake 3.18

## webevd v09_03_00

-   2021-02-04 Lynn Garren : webevd v09_03_00 for larsoft v09_16_00
-   2021-02-02 Lynn Garren : Merge branch 'develop' into v09_20_00_rc_br
-   2021-02-02 Lynn Garren : gallery v1_16_02
-   2021-01-25 Lynn Garren : remove find_ups_product( cetbuildtools )
-   2021-01-20 Lynn Garren : cmake 3.18
-   2021-01-20 Lynn Garren : add e20

## larbatch v01_54_01

## larutils v1_27_04
