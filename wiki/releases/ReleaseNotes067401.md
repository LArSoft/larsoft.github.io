LArSoft v06_74_01 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06_74_01 Release Notes](#LArSoft-v06_74_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06_74_01](#larsoft-v06_74_01)
    -   [lareventdisplay v06_19_02](#lareventdisplay-v06_19_02)
    -   [larexamples v06_13_02](#larexamples-v06_13_02)
    -   [larpandora v06_26_02](#larpandora-v06_26_02)
    -   [larwirecell v06_12_02](#larwirecell-v06_12_02)
    -   [larana v06_19_02](#larana-v06_19_02)
    -   [larreco v06_59_01](#larreco-v06_59_01)
    -   [larsim v06_44_01](#larsim-v06_44_01)
    -   [larevt v06_20_02](#larevt-v06_20_02)
    -   [lardata v06_43_02](#lardata-v06_43_02)
    -   [larcore v06_19_01](#larcore-v06_19_01)
    -   [larpandoracontent v03_11_01](#larpandoracontent-v03_11_01)
    -   [larsoftobj v1_43_01](#larsoftobj-v1_43_01)
    -   [lardataobj v1_31_00](#lardataobj-v1_31_00)
    -   [larcorealg v1_19_01](#larcorealg-v1_19_01)
    -   [larcoreobj v1_23_00](#larcoreobj-v1_23_00)
    -   [larbatch v01_39_00](#larbatch-v01_39_00)
    -   [larutils v1_22_03](#larutils-v1_22_03)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06_74_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_74_01/larsoft-v06_74_01.html)
Download instructions for [just larsoftobj v1_43_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_43_01/larsoftobj-v1_43_01.html)

Purpose
--------------------

New features
------------------------------

Bug fixes
------------------------

-   `feature/gp_Issue18199` of `larsim` for issue [\#18199](/redmine/issues/18199 "Necessary Maintenance: Remove unmoveable MCParticle workaround (Closed)")
-   [\#18001](/redmine/issues/18001 "Bug: lar::ProviderPack should accept objects of classes derived from the required ones (Closed)")

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v06_74_01
------------------------------------------

-   2018-04-18 Lynn Garren : larsoft v06_74_01 for larsoft v06_74_01
-   2018-04-18 Lynn Garren : product versions
-   2018-04-12 Lynn Garren : larsoft v06_74_00
-   2018-03-26 Gianluca Petrillo : Added pointer to LArSoft timing documentation

lareventdisplay v06_19_02
----------------------------------------------------------

-   2018-04-18 Lynn Garren : lareventdisplay v06_19_02 for larsoft v06_74_01

larexamples v06_13_02
--------------------------------------------------

-   2018-04-18 Lynn Garren : larexamples v06_13_02 for larsoft v06_74_01

larpandora v06_26_02
------------------------------------------------

-   2018-04-18 Lynn Garren : larpandora v06_26_02 for larsoft v06_74_01

larwirecell v06_12_02
--------------------------------------------------

-   2018-04-18 Lynn Garren : larwirecell v06_12_02 for larsoft v06_74_01

larana v06_19_02
----------------------------------------

-   2018-04-18 Lynn Garren : larana v06_19_02 for larsoft v06_74_01

larreco v06_59_01
------------------------------------------

-   2018-04-18 Lynn Garren : larreco v06_59_01 for larsoft v06_74_01
-   2018-04-16 Christoph Alt : pmtrack: added option to flip track along x-axis (=downwards in dual phase)
-   2018-04-16 Christoph Alt : bug fix

larsim v06_44_01
----------------------------------------

-   2018-04-18 Lynn Garren : larsim v06_44_01 for larsoft v06_74_01
-   2018-04-17 Lynn Garren : Merge branch ‘feature/gp_Issue18199’ into release/v06_74_01
-   2018-04-16 Aaron Higuera Pichardo : Adding hadron MC fate information
-   2018-04-13 Gianluca Petrillo : Removed workaround for unmoveable simb::MCParticle
-   2018-02-01 Gianluca Petrillo : Documentation format fix.

larevt v06_20_02
----------------------------------------

-   2018-04-18 Lynn Garren : larevt v06_20_02 for larsoft v06_74_01

lardata v06_43_02
------------------------------------------

-   2018-04-18 Lynn Garren : lardata v06_43_02 for larsoft v06_74_01

larcore v06_19_01
------------------------------------------

-   2018-04-18 Lynn Garren : larcore v06_19_01 for larsoft v06_74_01

larpandoracontent v03_11_01
--------------------------------------------------------------

larsoftobj v1_43_01
----------------------------------------------

-   2018-04-18 Lynn Garren : larsoftobj v1_43_01 for larsoft v06_74_01
-   2018-04-18 Lynn Garren : product versions

lardataobj v1_31_00
----------------------------------------------

larcorealg v1_19_01
----------------------------------------------

-   2018-04-18 Lynn Garren : larcorealg v1_19_01 for larsoft v06_74_01
-   2018-04-12 Gianluca Petrillo : Merge branch ‘feature/gp_Issue18001’ into develop
-   2018-04-11 Gianluca Petrillo : ProviderPack now supports initialisation from derived classes.
-   2018-04-11 Gianluca Petrillo : Updated comments of ProviderPack.h

larcoreobj v1_23_00
----------------------------------------------

larbatch v01_39_00
--------------------------------------------

-   2018-04-18 Lynn Garren : larbatch v01_39_00 for larsoft v06_74_01
-   2018-04-12 Lynn Garren : larsoft v06_74_00
-   2018-04-12 Herbert Greenlee : Merge branch ‘feature/greenlee_maintain_parentage’ into develop
-   2018-04-12 Herbert Greenlee : Don’t exit if no files were consumed.
-   2018-04-09 Herbert Greenlee : Add maintain_parentage flag for validate_in_job.py.

larutils v1_22_03
------------------------------------------

-   2018-04-18 Lynn Garren : larutils v1_22_03 for larsoft v06_74_01
-   2018-04-17 Thomas Junk : add some new echo statements and fix some old echo statements
-   2018-04-16 Thomas Junk : more robust discovery of dune_raw_data, lbne_raw_data, and dunepdsprce versions and qualifiers – use ups active instead of grepping product_deps
