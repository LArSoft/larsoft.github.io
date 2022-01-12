LArSoft v09\_37\_01 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v09\_37\_01 Release Notes](#LArSoft-v09_37_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_37\_01](#larsoft-v09_37_01)
    -   [lareventdisplay v09\_02\_08](#lareventdisplay-v09_02_08)
    -   [larexamples v09\_02\_08](#larexamples-v09_02_08)
    -   [larpandora v09\_10\_02](#larpandora-v09_10_02)
    -   [larsimrad v09\_03\_07](#larsimrad-v09_03_07)
    -   [larrecodnn v09\_09\_09](#larrecodnn-v09_09_09)
    -   [larwirecell v09\_04\_05](#larwirecell-v09_04_05)
    -   [larana v09\_03\_09](#larana-v09_03_09)
    -   [larreco v09\_07\_08](#larreco-v09_07_08)
    -   [larsim v09\_19\_01](#larsim-v09_19_01)
    -   [larg4 v09\_06\_02](#larg4-v09_06_02)
    -   [larevt v09\_03\_05](#larevt-v09_03_05)
    -   [lardata v09\_04\_02](#lardata-v09_04_02)
    -   [larcore v09\_03\_02](#larcore-v09_03_02)
    -   [larpandoracontent v03\_26\_01](#larpandoracontent-v03_26_01)
    -   [larsoftobj v09\_12\_00](#larsoftobj-v09_12_00)
    -   [lardataobj v09\_03\_05](#lardataobj-v09_03_05)
    -   [lardataalg v09\_07\_02](#lardataalg-v09_07_02)
    -   [larcorealg v09\_04\_00](#larcorealg-v09_04_00)
    -   [larcoreobj v09\_03\_01](#larcoreobj-v09_03_01)
    -   [webevd v09\_06\_05](#webevd-v09_06_05)
    -   [larbatch v01\_56\_02](#larbatch-v01_56_02)
    -   [larutils v1\_28\_02](#larutils-v1_28_02)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v09\_37\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_37_01/larsoft-v09_37_01.html)
Download instructions for [just larsoftobj v09\_12\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_12_00/larsoftobj-v09_12_00.html)

Purpose
--------------------

-   pickup larsim PR 81 at the request of SBND

New features
------------------------------

-   larsim PR 81
    -   This PR adds the option to merge sim::AuxDetHits from different streams in the MergeSimSources modules. This is needed when we run more than one instance of LArG4 and we then want to merge the output.
    -   The default behavior of MergeSimSources is unchanged, this PR only adds an additional option that right now we need in SBND.

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v09\_37\_01
------------------------------------------

-   2021-11-19 Lynn Garren : larsoft v09\_37\_01 for larsoft v09\_37\_01
-   2021-11-19 Lynn Garren : larsoft v09\_37\_01 for larsoft v09\_37\_01
-   2021-11-19 Lynn Garren : product versions

lareventdisplay v09\_02\_08
----------------------------------------------------------

-   2021-11-19 Lynn Garren : lareventdisplay v09\_02\_08 for larsoft v09\_37\_01
-   2021-11-19 Lynn Garren : lareventdisplay v09\_02\_08 for larsoft v09\_37\_01

larexamples v09\_02\_08
--------------------------------------------------

-   2021-11-19 Lynn Garren : larexamples v09\_02\_08 for larsoft v09\_37\_01
-   2021-11-19 Lynn Garren : larexamples v09\_02\_08 for larsoft v09\_37\_01

larpandora v09\_10\_02
------------------------------------------------

-   2021-11-19 Lynn Garren : larpandora v09\_10\_02 for larsoft v09\_37\_01
-   2021-11-19 Lynn Garren : larpandora v09\_10\_02 for larsoft v09\_37\_01

larsimrad v09\_03\_07
----------------------------------------------

-   2021-11-19 Lynn Garren : larsimrad v09\_03\_07 for larsoft v09\_37\_01
-   2021-11-19 Lynn Garren : larsimrad v09\_03\_07 for larsoft v09\_37\_01

larrecodnn v09\_09\_09
------------------------------------------------

-   2021-11-19 Lynn Garren : larrecodnn v09\_09\_09 for larsoft v09\_37\_01
-   2021-11-19 Lynn Garren : larrecodnn v09\_09\_09 for larsoft v09\_37\_01

larwirecell v09\_04\_05
--------------------------------------------------

larana v09\_03\_09
----------------------------------------

-   2021-11-19 Lynn Garren : larana v09\_03\_09 for larsoft v09\_37\_01
-   2021-11-19 Lynn Garren : larana v09\_03\_09 for larsoft v09\_37\_01

larreco v09\_07\_08
------------------------------------------

-   2021-11-19 Lynn Garren : larreco v09\_07\_08 for larsoft v09\_37\_01
-   2021-11-19 Lynn Garren : larreco v09\_07\_08 for larsoft v09\_37\_01

larsim v09\_19\_01
----------------------------------------

-   2021-11-19 Lynn Garren : larsim v09\_19\_01 for larsoft v09\_37\_01
-   2021-11-19 Lynn Garren : Merge pull request \#81 from SBNSoftware/mdeltutt\_mergesimsources
-   2021-11-19 Marco Del Tutto : Move the use of std::unique\_ptr to e.put
-   2021-11-17 Marco Del Tutto : Add option to merge AuxDetHits

larg4 v09\_06\_02
--------------------------------------

larevt v09\_03\_05
----------------------------------------

lardata v09\_04\_02
------------------------------------------

larcore v09\_03\_02
------------------------------------------

larpandoracontent v03\_26\_01
--------------------------------------------------------------

larsoftobj v09\_12\_00
------------------------------------------------

lardataobj v09\_03\_05
------------------------------------------------

lardataalg v09\_07\_02
------------------------------------------------

larcorealg v09\_04\_00
------------------------------------------------

larcoreobj v09\_03\_01
------------------------------------------------

webevd v09\_06\_05
----------------------------------------

larbatch v01\_56\_02
--------------------------------------------

larutils v1\_28\_02
------------------------------------------
