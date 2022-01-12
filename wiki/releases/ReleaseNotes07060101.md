LArSoft v07\_06\_01\_01 Release Notes
=============================================================================

-   **Table of contents**
-   [LArSoft v07\_06\_01\_01 Release Notes](#LArSoft-v07_06_01_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [Required changes](#Required-changes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v07\_06\_01\_01](#larsoft-v07_06_01_01)
    -   [lareventdisplay v07\_01\_05\_01](#lareventdisplay-v07_01_05_01)
    -   [larexamples v07\_00\_08\_01](#larexamples-v07_00_08_01)
    -   [larg4 v07\_01\_03\_01](#larg4-v07_01_03_01)
    -   [larpandora v07\_01\_05\_01](#larpandora-v07_01_05_01)
    -   [larwirecell v07\_01\_02\_01](#larwirecell-v07_01_02_01)
    -   [larana v07\_02\_01\_01](#larana-v07_02_01_01)
    -   [larreco v07\_04\_01\_01](#larreco-v07_04_01_01)
    -   [larsim v07\_03\_01\_01](#larsim-v07_03_01_01)
    -   [larevt v07\_00\_08\_01](#larevt-v07_00_08_01)
    -   [lardata v07\_00\_08\_01](#lardata-v07_00_08_01)
    -   [larcore v07\_00\_02](#larcore-v07_00_02)
    -   [larpandoracontent v03\_14\_01](#larpandoracontent-v03_14_01)
    -   [larsoftobj v07\_03\_01\_01](#larsoftobj-v07_03_01_01)
    -   [lardataobj v07\_02\_03\_01](#lardataobj-v07_02_03_01)
    -   [lardataalg v07\_01\_01\_01](#lardataalg-v07_01_01_01)
    -   [larcorealg v07\_01\_01](#larcorealg-v07_01_01)
    -   [larcoreobj v07\_00\_01](#larcoreobj-v07_00_01)
    -   [larbatch v01\_45\_00](#larbatch-v01_45_00)
    -   [larutils v1\_23\_02](#larutils-v1_23_02)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v07\_06\_01\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v07_06_01_01/larsoft-v07_06_01_01.html)
Download instructions for [just larsoftobj v07\_03\_01\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v07_03_01_01/larsoftobj-v07_03_01_01.html)

Purpose
--------------------

-   This release is identical to v07\_06\_01 with the exception of changes needed to use genie v3\_0\_0\_b4a.
-   feature/team\_for\_genie\_v3 is provided for argoneutcode, dunetpc, sbndcode, and uboonecode
-   ***THIS IS A TEST RELEASE.***

Required changes
--------------------------------------

-   All headers have moved. Most retain the same name, but NeutronOscMode.h is now NNBarOscMode.h with a corresponding class name change.
-   The libraries have been completely rearranged and renamed.
-   There is now an explicit library link time dependence on gsl and gslcblas.
    -   see uboonecode feature/team\_for\_genie\_v3
-   **A migration script is provided: UpdateGenie3.sh**
    -   setup larsoft v07\_06\_01\_01 to use the migration script.
    -   NOTE: Because of the library rearrangement, you may need to add new libraries to your link list. (see uboonecode feature/team\_for\_genie\_v3)

Updated dependencies
----------------------------------------------

-   genie v3\_0\_0\_b4a
-   dk2nugenie v01\_07\_02a
-   nutools v2\_25\_01
-   nusystematics v0\_02\_00

Change List
============================

larsoft v07\_06\_01\_01
-------------------------------------------------

-   2018-09-20 Lynn Garren : larsoft v07\_06\_01\_01 for larsoft v07\_06\_01\_01\_br
-   2018-09-20 Lynn Garren : product versions
-   2018-09-20 Lynn Garren : deal with NeutronOscMode to NNBarOscMode changes
-   2018-09-19 Lynn Garren : genie v3 migration scripts

lareventdisplay v07\_01\_05\_01
-----------------------------------------------------------------

-   2018-09-20 Lynn Garren : lareventdisplay v07\_01\_05\_01 for larsoft v07\_06\_01\_01\_br

larexamples v07\_00\_08\_01
---------------------------------------------------------

-   2018-09-20 Lynn Garren : larexamples v07\_00\_08\_01 for larsoft v07\_06\_01\_01\_br

larg4 v07\_01\_03\_01
---------------------------------------------

-   2018-09-20 Lynn Garren : larg4 v07\_01\_03\_01 for larsoft v07\_06\_01\_01\_br

larpandora v07\_01\_05\_01
-------------------------------------------------------

-   2018-09-20 Lynn Garren : larpandora v07\_01\_05\_01 for larsoft v07\_06\_01\_01\_br

larwirecell v07\_01\_02\_01
---------------------------------------------------------

-   2018-09-20 Lynn Garren : larwirecell v07\_01\_02\_01 for larsoft v07\_06\_01\_01\_br

larana v07\_02\_01\_01
-----------------------------------------------

-   2018-09-20 Lynn Garren : larana v07\_02\_01\_01 for larsoft v07\_06\_01\_01\_br

larreco v07\_04\_01\_01
-------------------------------------------------

-   2018-09-20 Lynn Garren : larreco v07\_04\_01\_01 for larsoft v07\_06\_01\_01\_br
-   2018-09-20 Lynn Garren : nutools v2\_25\_00

larsim v07\_03\_01\_01
-----------------------------------------------

-   2018-09-20 Lynn Garren : larsim v07\_03\_01\_01 for larsoft v07\_06\_01\_01\_br
-   2018-09-20 Lynn Garren : NeutronOscMode is now NNBarOscMode
-   2018-09-19 Lynn Garren : using new genie v3 library names
-   2018-09-18 Lynn Garren : remove unnecessary find library commands
-   2018-09-18 Lynn Garren : genie v3 headers

larevt v07\_00\_08\_01
-----------------------------------------------

-   2018-09-20 Lynn Garren : larevt v07\_00\_08\_01 for larsoft v07\_06\_01\_01\_br

lardata v07\_00\_08\_01
-------------------------------------------------

-   2018-09-20 Lynn Garren : lardata v07\_00\_08\_01 for larsoft v07\_06\_01\_01\_br
-   2018-09-20 Lynn Garren : nutools v2\_25\_00

larcore v07\_00\_02
------------------------------------------

larpandoracontent v03\_14\_01
--------------------------------------------------------------

larsoftobj v07\_03\_01\_01
-------------------------------------------------------

-   2018-09-20 Lynn Garren : larsoftobj v07\_03\_01\_01 for larsoft v07\_06\_01\_01\_br
-   2018-09-20 Lynn Garren : product versions

lardataobj v07\_02\_03\_01
-------------------------------------------------------

-   2018-09-20 Lynn Garren : lardataobj v07\_02\_03\_01 for larsoft v07\_06\_01\_01\_br
-   2018-09-20 Lynn Garren : nusimdata v1\_14\_02

lardataalg v07\_01\_01\_01
-------------------------------------------------------

-   2018-09-20 Lynn Garren : lardataalg v07\_01\_01\_01 for larsoft v07\_06\_01\_01\_br

larcorealg v07\_01\_01
------------------------------------------------

larcoreobj v07\_00\_01
------------------------------------------------

larbatch v01\_45\_00
--------------------------------------------

larutils v1\_23\_02
------------------------------------------
