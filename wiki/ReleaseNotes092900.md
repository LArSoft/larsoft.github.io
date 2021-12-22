LArSoft v09\_29\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v09\_29\_00 Release Notes](#LArSoft-v09_29_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_29\_00](#larsoft-v09_29_00)
    -   [lareventdisplay v09\_01\_20](#lareventdisplay-v09_01_20)
    -   [larexamples v09\_01\_19](#larexamples-v09_01_19)
    -   [larpandora v09\_07\_06](#larpandora-v09_07_06)
    -   [larsimrad v09\_01\_19](#larsimrad-v09_01_19)
    -   [larrecodnn v09\_08\_06](#larrecodnn-v09_08_06)
    -   [larwirecell v09\_03\_00](#larwirecell-v09_03_00)
    -   [larana v09\_02\_16](#larana-v09_02_16)
    -   [larreco v09\_06\_16](#larreco-v09_06_16)
    -   [larsim v09\_14\_08](#larsim-v09_14_08)
    -   [larg4 v09\_03\_15](#larg4-v09_03_15)
    -   [larevt v09\_02\_11](#larevt-v09_02_11)
    -   [lardata v09\_02\_09](#lardata-v09_02_09)
    -   [larcore v09\_02\_04](#larcore-v09_02_04)
    -   [larpandoracontent v03\_24\_02](#larpandoracontent-v03_24_02)
    -   [larsoftobj v09\_08\_00](#larsoftobj-v09_08_00)
    -   [lardataobj v09\_01\_06](#lardataobj-v09_01_06)
    -   [lardataalg v09\_05\_00](#lardataalg-v09_05_00)
    -   [larcorealg v09\_02\_01](#larcorealg-v09_02_01)
    -   [larcoreobj v09\_02\_01](#larcoreobj-v09_02_01)
    -   [webevd v09\_05\_10](#webevd-v09_05_10)
    -   [larbatch v01\_56\_01](#larbatch-v01_56_01)
    -   [larutils v1\_28\_02](#larutils-v1_28_02)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v09\_29\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_29_00/larsoft-v09_29_00.html)\
Download instructions for [just larsoftobj v09\_08\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_08_00/larsoftobj-v09_08_00.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

-   lardataalg PR 24
    -   Update drift velocity calculation to include an additional optional model
-   larwirecell PR 12
    -   Fix translation between wct and larsoft for labelling plane views
    -   Relevant for some VD geometries especially

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v09\_29\_00
------------------------------------------

-   2021-09-14 Lynn Garren : larsoft v09\_29\_00 for larsoft v09\_29\_00
-   2021-09-14 Lynn Garren : product versons

lareventdisplay v09\_01\_20
----------------------------------------------------------

-   2021-09-14 Lynn Garren : lareventdisplay v09\_01\_20 for larsoft v09\_29\_00

larexamples v09\_01\_19
--------------------------------------------------

-   2021-09-14 Lynn Garren : larexamples v09\_01\_19 for larsoft v09\_29\_00

larpandora v09\_07\_06
------------------------------------------------

-   2021-09-14 Lynn Garren : larpandora v09\_07\_06 for larsoft v09\_29\_00

larsimrad v09\_01\_19
----------------------------------------------

-   2021-09-14 Lynn Garren : larsimrad v09\_01\_19 for larsoft v09\_29\_00

larrecodnn v09\_08\_06
------------------------------------------------

-   2021-09-14 Lynn Garren : larrecodnn v09\_08\_06 for larsoft v09\_29\_00

larwirecell v09\_03\_00
--------------------------------------------------

-   2021-09-14 Lynn Garren : larwirecell v09\_03\_00 for larsoft v09\_29\_00
-   2021-09-14 Lynn Garren : whitespace cleanup
-   2021-09-10 Lynn Garren : Merge pull request \#12 from nitish-nayak/develop
-   2021-09-08 nitish-nayak : Have to cast Json::Value into int first to convert it to geo::View\_t
-   2021-09-07 nitish-nayak : remove comments + allow exception to be thrown when view is not resolved
-   2021-09-07 nitish-nayak : Fix translation between wct and larsoft for labelling plane views, relevant for VD especially

larana v09\_02\_16
----------------------------------------

-   2021-09-14 Lynn Garren : larana v09\_02\_16 for larsoft v09\_29\_00

larreco v09\_06\_16
------------------------------------------

-   2021-09-14 Lynn Garren : larreco v09\_06\_16 for larsoft v09\_29\_00

larsim v09\_14\_08
----------------------------------------

-   2021-09-14 Lynn Garren : larsim v09\_14\_08 for larsoft v09\_29\_00

larg4 v09\_03\_15
--------------------------------------

-   2021-09-14 Lynn Garren : larg4 v09\_03\_15 for larsoft v09\_29\_00

larevt v09\_02\_11
----------------------------------------

-   2021-09-14 Lynn Garren : larevt v09\_02\_11 for larsoft v09\_29\_00

lardata v09\_02\_09
------------------------------------------

-   2021-09-14 Lynn Garren : lardata v09\_02\_09 for larsoft v09\_29\_00

larcore v09\_02\_04
------------------------------------------

larpandoracontent v03\_24\_02
--------------------------------------------------------------

larsoftobj v09\_08\_00
------------------------------------------------

-   2021-09-14 Lynn Garren : larsoftobj v09\_08\_00 for larsoft v09\_29\_00
-   2021-09-14 Lynn Garren : product versons

lardataobj v09\_01\_06
------------------------------------------------

lardataalg v09\_05\_00
------------------------------------------------

-   2021-09-14 Lynn Garren : lardataalg v09\_05\_00 for larsoft v09\_29\_00
-   2021-09-14 Lynn Garren : Merge pull request \#24 from brucehoward-physics/feature/howard\_driftVel
-   2021-09-13 Bruce Howard : Make the UseIcarusMicrobooneDriftModel default to false.
-   2021-09-07 Bruce Howard : Change std pow in the polynomial for optional drift velocity calc to instead use cet pow. Thanks Kyle.
-   2021-09-03 Bruce Howard : Applying clang-format to lardataalg/DetectorInfo/DetectorPropertiesStandard.cxx and lardataalg/DetectorInfo/DetectorPropertiesStandard.h
-   2021-09-03 Bruce Howard : Add alternative formulation of drift velocity calculation from arXiv:2008.09765 of MicroBooNE using ICARUS and MicroBooNE data. This is allowed to be used optionally via a UseIcarusMicrobooneDriftModel fhicl switch.

larcorealg v09\_02\_01
------------------------------------------------

larcoreobj v09\_02\_01
------------------------------------------------

webevd v09\_05\_10
----------------------------------------

-   2021-09-14 Lynn Garren : webevd v09\_05\_10 for larsoft v09\_29\_00

larbatch v01\_56\_01
--------------------------------------------

larutils v1\_28\_02
------------------------------------------
