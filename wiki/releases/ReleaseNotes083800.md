LArSoft v08\_38\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08\_38\_00 Release Notes](#LArSoft-v08_38_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_38\_00](#larsoft-v08_38_00)
    -   [lareventdisplay v08\_10\_00](#lareventdisplay-v08_10_00)
    -   [larexamples v08\_04\_00](#larexamples-v08_04_00)
    -   [larg4 v08\_08\_00](#larg4-v08_08_00)
    -   [larpandora v08\_09\_00](#larpandora-v08_09_00)
    -   [larwirecell v08\_10\_00](#larwirecell-v08_10_00)
    -   [larana v08\_14\_00](#larana-v08_14_00)
    -   [larreco v08\_25\_00](#larreco-v08_25_00)
    -   [larsim v08\_17\_00](#larsim-v08_17_00)
    -   [larevt v08\_08\_00](#larevt-v08_08_00)
    -   [lardata v08\_11\_00](#lardata-v08_11_00)
    -   [larcore v08\_08\_00](#larcore-v08_08_00)
    -   [larpandoracontent v03\_15\_10](#larpandoracontent-v03_15_10)
    -   [larsoftobj v08\_23\_00](#larsoftobj-v08_23_00)
    -   [lardataobj v08\_08\_00](#lardataobj-v08_08_00)
    -   [lardataalg v08\_10\_00](#lardataalg-v08_10_00)
    -   [larcorealg v08\_18\_00](#larcorealg-v08_18_00)
    -   [larcoreobj v08\_08\_00](#larcoreobj-v08_08_00)
    -   [larbatch v01\_51\_12](#larbatch-v01_51_12)
    -   [larutils v1\_25\_02](#larutils-v1_25_02)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08\_38\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_38_00/larsoft-v08_38_00.html)
Download instructions for [just larsoftobj v08\_23\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_23_00/larsoftobj-v08_23_00.html)

Purpose
--------------------

-   changes in develop
-   approved feature branch
-   add e19 and c7 builds

New features
------------------------------

-   This release is available for c2, c7, e17, and 19. The e17 build remains the default.
    -   Please use the feature/team\_for\_e19 branch in all experiment code.
    -   In order to build with the newer compilers, it was necessary to drop the old fortran lhapdf5 build and use the C++ lhapdf6. At this time, there is no matching pdfset package. Instead, genie is using internal pdfsets. The physics has been checked. It remains unchanged.
-   lardataalg feature/gp\_FHiCLquantities
    -   This adds an extension allowing to read FHiCL configuration parameters of types derived from \`Quantity\<\>\`, \`Point\<\>\` and \`Interval\<\>\` (for example, it can convert a “6 us” parameter value into a \`util::quantities::microsecond\` object with value 6\_us).

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   lhapdf v6\_2\_3
-   genie v3\_00\_06d
-   dk2nudata v01\_08\_00e
-   dk2nugenie v01\_08\_00g
-   nusimdata v1\_20\_01
-   nuevdb v1\_01\_02
-   nug4 v1\_03\_01
-   nugen v1\_08\_00
-   nurandom v1\_03\_01
-   nutools v3\_05\_01
-   jsoncpp v1\_7\_7d
-   jsonnet v0\_12\_1
-   wirecell v0\_12\_4f
-   nusystematics v00\_08\_00

Change List
============================

larsoft v08\_38\_00
------------------------------------------

-   2019-12-11 Lynn Garren : more products
-   2019-12-11 Lynn Garren : build larbatch and larutils
-   2019-12-11 Lynn Garren : nulite v3\_05\_01
-   2019-12-11 Lynn Garren : larsoft v08\_38\_00 for larsoft v08\_38\_00
-   2019-12-11 Lynn Garren : product versions
-   2019-12-10 Lynn Garren : fix syntax
-   2019-12-10 Lynn Garren : build tensorflow for e19
-   2019-12-09 Lynn Garren : Merge branch ‘feature/team\_for\_e19’ into release/v08\_38\_00
-   2019-12-05 Lynn Garren : match lar\_product\_stack
-   2019-12-05 Lynn Garren : do not distribute larbatch or larutils with test builds
-   2019-12-05 Lynn Garren : product updates for e19 and c7
-   2019-12-05 Lynn Garren : add e19 and c7

lareventdisplay v08\_10\_00
----------------------------------------------------------

-   2019-12-11 Lynn Garren : lareventdisplay v08\_10\_00 for larsoft v08\_38\_00
-   2019-12-06 Kyle Knoepfel : Catch exceptions by reference.
-   2019-12-05 Lynn Garren : add e19 and c7

larexamples v08\_04\_00
--------------------------------------------------

-   2019-12-11 Lynn Garren : larexamples v08\_04\_00 for larsoft v08\_38\_00
-   2019-12-05 Lynn Garren : add e19 and c7

larg4 v08\_08\_00
--------------------------------------

-   2019-12-11 Lynn Garren : larg4 v08\_08\_00 for larsoft v08\_38\_00
-   2019-12-05 Lynn Garren : add e19 and c7

larpandora v08\_09\_00
------------------------------------------------

-   2019-12-11 Lynn Garren : larpandora v08\_09\_00 for larsoft v08\_38\_00
-   2019-12-05 Lynn Garren : add e19 and c7

larwirecell v08\_10\_00
--------------------------------------------------

-   2019-12-11 Lynn Garren : larwirecell v08\_10\_00 for larsoft v08\_38\_00
-   2019-12-05 Lynn Garren : add e19 and c7

larana v08\_14\_00
----------------------------------------

-   2019-12-11 Lynn Garren : larana v08\_14\_00 for larsoft v08\_38\_00
-   2019-12-05 Lynn Garren : add e19 and c7

larreco v08\_25\_00
------------------------------------------

-   2019-12-11 Lynn Garren : larreco v08\_25\_00 for larsoft v08\_38\_00
-   2019-12-06 Kyle Knoepfel : Changes to satisfy c7.
-   2019-12-06 Kyle Knoepfel : Various changes to satisfy e19.
-   2019-12-05 Lynn Garren : add e19 and c7

larsim v08\_17\_00
----------------------------------------

-   2019-12-11 Lynn Garren : larsim v08\_17\_00 for larsoft v08\_38\_00
-   2019-12-06 Kyle Knoepfel : Changes to support e19 and c7.
-   2019-12-05 Lynn Garren : add e19 and c7

larevt v08\_08\_00
----------------------------------------

-   2019-12-11 Lynn Garren : larevt v08\_08\_00 for larsoft v08\_38\_00
-   2019-12-05 Lynn Garren : add e19 and c7

lardata v08\_11\_00
------------------------------------------

-   2019-12-11 Lynn Garren : lardata v08\_11\_00 for larsoft v08\_38\_00
-   2019-12-06 Kyle Knoepfel : Don’t return reference to temporary.
-   2019-12-06 Kyle Knoepfel : Avoid copying.
-   2019-12-05 Lynn Garren : add e19 and c7

larcore v08\_08\_00
------------------------------------------

-   2019-12-11 Lynn Garren : larcore v08\_08\_00 for larsoft v08\_38\_00
-   2019-12-09 Lynn Garren : Merge branch ‘feature/team\_for\_e19’ into release/v08\_38\_00
-   2019-10-03 Gianluca Petrillo : Fix to message stream in dump\_lartpcdetector\_geometry.fcl
-   2019-12-05 Lynn Garren : add e19 and c7

larpandoracontent v03\_15\_10
--------------------------------------------------------------

-   2019-12-11 Lynn Garren : larpandoracontent v03\_15\_10 for larsoft v08\_38\_00
-   2019-12-11 Lynn Garren : v03\_15\_10 with e19 and c7 build options
-   2019-12-05 Lynn Garren : add e19 and c7

larsoftobj v08\_23\_00
------------------------------------------------

-   2019-12-11 Lynn Garren : dk2nudata v01\_08\_00e
-   2019-12-11 Lynn Garren : larsoftobj v08\_23\_00 for larsoft v08\_38\_00
-   2019-12-11 Lynn Garren : product versions
-   2019-12-05 Lynn Garren : nusimdata v1\_20\_01 for e19 and c7
-   2019-12-05 Lynn Garren : add e19 and c7

lardataobj v08\_08\_00
------------------------------------------------

-   2019-12-11 Lynn Garren : lardataobj v08\_08\_00 for larsoft v08\_38\_00
-   2019-12-06 Kyle Knoepfel : Flag unused variables.
-   2019-12-06 Kyle Knoepfel : Catch exception by reference.
-   2019-12-05 Lynn Garren : add e19 and c7

lardataalg v08\_10\_00
------------------------------------------------

-   2019-12-11 Lynn Garren : lardataalg v08\_10\_00 for larsoft v08\_38\_00
-   2019-12-10 Lynn Garren : remove trailing whitespace
-   2019-12-10 Lynn Garren : Merge branch ‘feature/gp\_FHiCLquantities’ into release/v08\_38\_00
-   2019-12-09 Gianluca Petrillo : Switched the main implementation of makeQuantity() to std::string version.
-   2019-12-09 Gianluca Petrillo : Fixed missing library in SLF7
-   2019-11-27 Gianluca Petrillo : Added facilities to read quantities with units from FHiCL configuration.
-   2019-12-06 Kyle Knoepfel : Remove unused variable.
-   2019-12-05 Lynn Garren : add e19 and c7

larcorealg v08\_18\_00
------------------------------------------------

-   2019-12-11 Lynn Garren : larcorealg v08\_18\_00 for larsoft v08\_38\_00
-   2019-12-09 Lynn Garren : Merge branch ‘feature/team\_for\_e19’ into release/v08\_38\_00
-   2019-12-06 Gianluca Petrillo : Fixed a bug in \`util::const\_values()\`.
-   2019-12-05 Gianluca Petrillo : util::to\_string now handles strings and string views.
-   2019-12-06 Kyle Knoepfel : Replaced transformationFromPath static function with free function.
-   2019-12-06 Kyle Knoepfel : Changes to accommodate e19.
-   2019-12-05 Lynn Garren : add c7 and e19

larcoreobj v08\_08\_00
------------------------------------------------

-   2019-12-11 Lynn Garren : larcoreobj v08\_08\_00 for larsoft v08\_38\_00
-   2019-12-05 Lynn Garren : add e19 and c7

larbatch v01\_51\_12
--------------------------------------------

-   2019-12-11 Lynn Garren : larbatch v01\_51\_12 for larsoft v08\_38\_00
-   2019-12-04 Herbert Greenlee : Add sam query caching.

larutils v1\_25\_02
------------------------------------------
