# LArSoft v08_38_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v08_38_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_38_00/larsoft-v08_38_00.html)  
Download instructions for [just larsoftobj v08_23_00](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_23_00/larsoftobj-v08_23_00.html)

## Purpose

-   changes in develop
-   approved feature branch
-   add e19 and c7 builds

## New features

-   This release is available for c2, c7, e17, and 19. The e17 build remains the default.
    -   Please use the feature/team_for_e19 branch in all experiment code.
    -   In order to build with the newer compilers, it was necessary to drop the old fortran lhapdf5 build and use the C lhapdf6. At this time, there is no matching pdfset package. Instead, genie is using internal pdfsets. The physics has been checked. It remains unchanged.
-   lardataalg feature/gp_FHiCLquantities
    -   This adds an extension allowing to read FHiCL configuration parameters of types derived from \`Quantity\<\>\`, \`Point\<\>\` and \`Interval\<\>\` (for example, it can convert a “6 us” parameter value into a \`util::quantities::microsecond\` object with value 6_us).

## Bug fixes

## Updated dependencies

-   lhapdf v6_2_3
-   genie v3_00_06d
-   dk2nudata v01_08_00e
-   dk2nugenie v01_08_00g
-   nusimdata v1_20_01
-   nuevdb v1_01_02
-   nug4 v1_03_01
-   nugen v1_08_00
-   nurandom v1_03_01
-   nutools v3_05_01
-   jsoncpp v1_7_7d
-   jsonnet v0_12_1
-   wirecell v0_12_4f
-   nusystematics v00_08_00

# Change List

## larsoft v08_38_00

-   2019-12-11 Lynn Garren : more products
-   2019-12-11 Lynn Garren : build larbatch and larutils
-   2019-12-11 Lynn Garren : nulite v3_05_01
-   2019-12-11 Lynn Garren : larsoft v08_38_00 for larsoft v08_38_00
-   2019-12-11 Lynn Garren : product versions
-   2019-12-10 Lynn Garren : fix syntax
-   2019-12-10 Lynn Garren : build tensorflow for e19
-   2019-12-09 Lynn Garren : Merge branch 'feature/team_for_e19' into release/v08_38_00
-   2019-12-05 Lynn Garren : match lar_product_stack
-   2019-12-05 Lynn Garren : do not distribute larbatch or larutils with test builds
-   2019-12-05 Lynn Garren : product updates for e19 and c7
-   2019-12-05 Lynn Garren : add e19 and c7

## lareventdisplay v08_10_00

-   2019-12-11 Lynn Garren : lareventdisplay v08_10_00 for larsoft v08_38_00
-   2019-12-06 Kyle Knoepfel : Catch exceptions by reference.
-   2019-12-05 Lynn Garren : add e19 and c7

## larexamples v08_04_00

-   2019-12-11 Lynn Garren : larexamples v08_04_00 for larsoft v08_38_00
-   2019-12-05 Lynn Garren : add e19 and c7

## larg4 v08_08_00

-   2019-12-11 Lynn Garren : larg4 v08_08_00 for larsoft v08_38_00
-   2019-12-05 Lynn Garren : add e19 and c7

## larpandora v08_09_00

-   2019-12-11 Lynn Garren : larpandora v08_09_00 for larsoft v08_38_00
-   2019-12-05 Lynn Garren : add e19 and c7

## larwirecell v08_10_00

-   2019-12-11 Lynn Garren : larwirecell v08_10_00 for larsoft v08_38_00
-   2019-12-05 Lynn Garren : add e19 and c7

## larana v08_14_00

-   2019-12-11 Lynn Garren : larana v08_14_00 for larsoft v08_38_00
-   2019-12-05 Lynn Garren : add e19 and c7

## larreco v08_25_00

-   2019-12-11 Lynn Garren : larreco v08_25_00 for larsoft v08_38_00
-   2019-12-06 Kyle Knoepfel : Changes to satisfy c7.
-   2019-12-06 Kyle Knoepfel : Various changes to satisfy e19.
-   2019-12-05 Lynn Garren : add e19 and c7

## larsim v08_17_00

-   2019-12-11 Lynn Garren : larsim v08_17_00 for larsoft v08_38_00
-   2019-12-06 Kyle Knoepfel : Changes to support e19 and c7.
-   2019-12-05 Lynn Garren : add e19 and c7

## larevt v08_08_00

-   2019-12-11 Lynn Garren : larevt v08_08_00 for larsoft v08_38_00
-   2019-12-05 Lynn Garren : add e19 and c7

## lardata v08_11_00

-   2019-12-11 Lynn Garren : lardata v08_11_00 for larsoft v08_38_00
-   2019-12-06 Kyle Knoepfel : Don't return reference to temporary.
-   2019-12-06 Kyle Knoepfel : Avoid copying.
-   2019-12-05 Lynn Garren : add e19 and c7

## larcore v08_08_00

-   2019-12-11 Lynn Garren : larcore v08_08_00 for larsoft v08_38_00
-   2019-12-09 Lynn Garren : Merge branch 'feature/team_for_e19' into release/v08_38_00
-   2019-10-03 Gianluca Petrillo : Fix to message stream in dump_lartpcdetector_geometry.fcl
-   2019-12-05 Lynn Garren : add e19 and c7

## larpandoracontent v03_15_10

-   2019-12-11 Lynn Garren : larpandoracontent v03_15_10 for larsoft v08_38_00
-   2019-12-11 Lynn Garren : v03_15_10 with e19 and c7 build options
-   2019-12-05 Lynn Garren : add e19 and c7

## larsoftobj v08_23_00

-   2019-12-11 Lynn Garren : dk2nudata v01_08_00e
-   2019-12-11 Lynn Garren : larsoftobj v08_23_00 for larsoft v08_38_00
-   2019-12-11 Lynn Garren : product versions
-   2019-12-05 Lynn Garren : nusimdata v1_20_01 for e19 and c7
-   2019-12-05 Lynn Garren : add e19 and c7

## lardataobj v08_08_00

-   2019-12-11 Lynn Garren : lardataobj v08_08_00 for larsoft v08_38_00
-   2019-12-06 Kyle Knoepfel : Flag unused variables.
-   2019-12-06 Kyle Knoepfel : Catch exception by reference.
-   2019-12-05 Lynn Garren : add e19 and c7

## lardataalg v08_10_00

-   2019-12-11 Lynn Garren : lardataalg v08_10_00 for larsoft v08_38_00
-   2019-12-10 Lynn Garren : remove trailing whitespace
-   2019-12-10 Lynn Garren : Merge branch 'feature/gp_FHiCLquantities' into release/v08_38_00
-   2019-12-09 Gianluca Petrillo : Switched the main implementation of makeQuantity() to std::string version.
-   2019-12-09 Gianluca Petrillo : Fixed missing library in SLF7
-   2019-11-27 Gianluca Petrillo : Added facilities to read quantities with units from FHiCL configuration.
-   2019-12-06 Kyle Knoepfel : Remove unused variable.
-   2019-12-05 Lynn Garren : add e19 and c7

## larcorealg v08_18_00

-   2019-12-11 Lynn Garren : larcorealg v08_18_00 for larsoft v08_38_00
-   2019-12-09 Lynn Garren : Merge branch 'feature/team_for_e19' into release/v08_38_00
-   2019-12-06 Gianluca Petrillo : Fixed a bug in \`util::const_values()\`.
-   2019-12-05 Gianluca Petrillo : util::to_string now handles strings and string views.
-   2019-12-06 Kyle Knoepfel : Replaced transformationFromPath static function with free function.
-   2019-12-06 Kyle Knoepfel : Changes to accommodate e19.
-   2019-12-05 Lynn Garren : add c7 and e19

## larcoreobj v08_08_00

-   2019-12-11 Lynn Garren : larcoreobj v08_08_00 for larsoft v08_38_00
-   2019-12-05 Lynn Garren : add e19 and c7

## larbatch v01_51_12

-   2019-12-11 Lynn Garren : larbatch v01_51_12 for larsoft v08_38_00
-   2019-12-04 Herbert Greenlee : Add sam query caching.

## larutils v1_25_02
