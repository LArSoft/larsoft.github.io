LArSoft v08_07_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08_07_00 Release Notes](#LArSoft-v08_07_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08_07_00](#larsoft-v08_07_00)
    -   [lareventdisplay v08_03_01](#lareventdisplay-v08_03_01)
    -   [larexamples v08_01_01](#larexamples-v08_01_01)
    -   [larg4 v08_01_01](#larg4-v08_01_01)
    -   [larpandora v08_04_00](#larpandora-v08_04_00)
    -   [larwirecell v08_02_01](#larwirecell-v08_02_01)
    -   [larana v08_01_02](#larana-v08_01_02)
    -   [larreco v08_06_00](#larreco-v08_06_00)
    -   [larsim v08_02_01](#larsim-v08_02_01)
    -   [larevt v08_01_01](#larevt-v08_01_01)
    -   [lardata v08_02_01](#lardata-v08_02_01)
    -   [larcore v08_01_01](#larcore-v08_01_01)
    -   [larpandoracontent v03_14_04](#larpandoracontent-v03_14_04)
    -   [larsoftobj v08_04_00](#larsoftobj-v08_04_00)
    -   [lardataobj v08_01_01](#lardataobj-v08_01_01)
    -   [lardataalg v08_03_01](#lardataalg-v08_03_01)
    -   [larcorealg v08_02_00](#larcorealg-v08_02_00)
    -   [larcoreobj v08_02_00](#larcoreobj-v08_02_00)
    -   [larbatch v01_47_03](#larbatch-v01_47_03)
    -   [larutils v1_23_10](#larutils-v1_23_10)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08_07_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_07_00/larsoft-v08_07_00.html)
Download instructions for [just larsoftobj v08_04_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_04_00/larsoftobj-v08_04_00.html)

Purpose
--------------------

-   changes in develop
-   approved feature branches

New features
------------------------------

-   larpandora feature/sgreen_DUNEFD_DualPhase
    -   These changes allow Pandora to read in the dual phase DUNE far detector geometry and perform the reconstruction. No additional configuration changes are required for this as the geometry description is interpreted at runtime to identify when in the dual phase scenario.
-   larcoreobj larcorealg feature/gp_pythonSupport
    -   The content is modifications to the geometry-related code which have no
        consequence in C++ but make it possible to use some geometry class features
        when using the python interpreter.
-   larreco feature/usher_hitfinderupdates
    -   update CandHitMorphological_tool.cc

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   nutools v2_26_05
    -   register more Geant4 physics lists with the “factory” in NuTools/G4Base
-   ifdhc v2_3_10
-   ifdh_art v2_07_00
-   nusystematics v00_02_04
-   mrb v2_00_03
    -   fix typo affecting mrb g for lariatfragments

Change List
============================

larsoft v08_07_00
------------------------------------------

-   2019-01-30 Lynn Garren : larsoft v08_07_00 for larsoft v08_07_00
-   2019-01-30 Lynn Garren : product versions
-   2019-01-30 Lynn Garren : mrb v2_00_03 for lariat

lareventdisplay v08_03_01
----------------------------------------------------------

-   2019-01-30 Lynn Garren : lareventdisplay v08_03_01 for larsoft v08_07_00

larexamples v08_01_01
--------------------------------------------------

-   2019-01-30 Lynn Garren : larexamples v08_01_01 for larsoft v08_07_00

larg4 v08_01_01
--------------------------------------

-   2019-01-30 Lynn Garren : larg4 v08_01_01 for larsoft v08_07_00

larpandora v08_04_00
------------------------------------------------

-   2019-01-30 Lynn Garren : larpandora v08_04_00 for larsoft v08_07_00
-   2019-01-25 Steven Green : Cosmetic changes.
-   2019-01-22 Steven Green : Removed the switching of u and v views for the dual phase scenario.
-   2019-01-21 Steven Green : Adding ATTN describing single/dual phase LArTPC geometry expectations
-   2019-01-03 Steven Green : Modifications to LArPandora to allow Pandora to read in the DUNEFD_DualPhase geometry.

larwirecell v08_02_01
--------------------------------------------------

-   2019-01-30 Lynn Garren : larwirecell v08_02_01 for larsoft v08_07_00

larana v08_01_02
----------------------------------------

-   2019-01-30 Lynn Garren : larana v08_01_02 for larsoft v08_07_00

larreco v08_06_00
------------------------------------------

-   2019-01-30 Lynn Garren : larreco v08_06_00 for larsoft v08_07_00
-   2019-01-30 Usher, Tracy L : BuildIt
-   2019-01-30 Usher, Tracy L : Add a few more histograms if the are asked for, fix possible issue with thresholds. ICARUS only code at the moment…
-   2019-01-29 Usher, Tracy L : Modify method of identifying candidate hits to pick up special cases seen in ICARUS. Note this code is used only by ICARUS at this point so should not impact other experiments.
-   2019-01-26 Usher, Tracy L : Fix the bug introduced inadvertently in the last release… then add a few more histograms and, finally, exchange .at with [] .

larsim v08_02_01
----------------------------------------

-   2019-01-30 Lynn Garren : larsim v08_02_01 for larsoft v08_07_00

larevt v08_01_01
----------------------------------------

-   2019-01-30 Lynn Garren : larevt v08_01_01 for larsoft v08_07_00

lardata v08_02_01
------------------------------------------

-   2019-01-30 Lynn Garren : lardata v08_02_01 for larsoft v08_07_00

larcore v08_01_01
------------------------------------------

-   2019-01-30 Lynn Garren : larcore v08_01_01 for larsoft v08_07_00

larpandoracontent v03_14_04
--------------------------------------------------------------

larsoftobj v08_04_00
------------------------------------------------

-   2019-01-30 Lynn Garren : larsoftobj v08_04_00 for larsoft v08_07_00
-   2019-01-30 Lynn Garren : product versions

lardataobj v08_01_01
------------------------------------------------

-   2019-01-30 Lynn Garren : lardataobj v08_01_01 for larsoft v08_07_00

lardataalg v08_03_01
------------------------------------------------

-   2019-01-30 Lynn Garren : lardataalg v08_03_01 for larsoft v08_07_00

larcorealg v08_02_00
------------------------------------------------

-   2019-01-30 Lynn Garren : larcorealg v08_02_00 for larsoft v08_07_00
-   2019-01-28 Gianluca Petrillo : Non-template methods replacing default template ones.
-   2019-01-28 Gianluca Petrillo : Added \`XxxInfo()\` methods describing geometry objects into strings.

larcoreobj v08_02_00
------------------------------------------------

-   2019-01-30 Lynn Garren : larcoreobj v08_02_00 for larsoft v08_07_00
-   2019-01-28 Gianluca Petrillo : Added explicit string conversion methods to geometry IDs.

larbatch v01_47_03
--------------------------------------------

larutils v1_23_10
------------------------------------------
