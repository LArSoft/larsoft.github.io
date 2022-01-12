LArSoft v08_05_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08_05_00 Release Notes](#LArSoft-v08_05_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08_05_00](#larsoft-v08_05_00)
    -   [lareventdisplay v08_02_00](#lareventdisplay-v08_02_00)
    -   [larexamples v08_01_00](#larexamples-v08_01_00)
    -   [larg4 v08_01_00](#larg4-v08_01_00)
    -   [larpandora v08_03_00](#larpandora-v08_03_00)
    -   [larwirecell v08_02_00](#larwirecell-v08_02_00)
    -   [larana v08_01_00](#larana-v08_01_00)
    -   [larreco v08_04_00](#larreco-v08_04_00)
    -   [larsim v08_02_00](#larsim-v08_02_00)
    -   [larevt v08_01_00](#larevt-v08_01_00)
    -   [lardata v08_02_00](#lardata-v08_02_00)
    -   [larcore v08_01_00](#larcore-v08_01_00)
    -   [larpandoracontent v03_14_04](#larpandoracontent-v03_14_04)
    -   [larsoftobj v08_03_00](#larsoftobj-v08_03_00)
    -   [lardataobj v08_01_00](#lardataobj-v08_01_00)
    -   [lardataalg v08_03_00](#lardataalg-v08_03_00)
    -   [larcorealg v08_01_00](#larcorealg-v08_01_00)
    -   [larcoreobj v08_01_00](#larcoreobj-v08_01_00)
    -   [larbatch v01_47_03](#larbatch-v01_47_03)
    -   [larutils v1_23_09](#larutils-v1_23_09)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08_05_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_05_00/larsoft-v08_05_00.html)
Download instructions for [just larsoftobj v08_03_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_03_00/larsoftobj-v08_03_00.html)

Purpose
--------------------

-   first build with art v3_01_00

New features
------------------------------

-   All art LOG_XXX macros are now MF_LOG_XXX.
-   See the [art v3_01 release notes](/redmine/projects/art/wiki/Series_301) for more information.

-   feature/team_for_art_v3_01 is provided for experiment code.
-   There is a migration script in message facility.
    -   \$MESSAGEFACILITY_FQ_DIR/bin/fix-mf-macros
    -   This script must be used with care. For instance, some code contains its own (unqualified) LOG macros.

Bug fixes
------------------------

-   art v3_00_00 uses the “rdtscp” instruction, which is not avaliable on the older CPUs at sites like SU-ITS, Wisconsin, and SGridOxford. This problem is resolved in art v3_01_00.

Updated dependencies
----------------------------------------------

-   art v3_01_00
-   canvas v3_05_00
-   artdaq_core v3_04_06
-   gallery v1_11_00
-   nusimdata v1_15_01
-   nutools v2_26_03
-   artg4tk v09_01_01
-   systematicstools v00_02_01
-   nusystematics v00_02_03

Change List
============================

larsoft v08_05_00
------------------------------------------

-   2019-01-15 Lynn Garren : larsoft v08_05_00 for larsoft v08_05_00
-   2019-01-15 Lynn Garren : product versions
-   2019-01-15 Lynn Garren : for art v3_01_00
-   2019-01-15 Lynn Garren : update dependency database

lareventdisplay v08_02_00
----------------------------------------------------------

-   2019-01-15 Lynn Garren : lareventdisplay v08_02_00 for larsoft v08_05_00
-   2019-01-15 Lynn Garren : LOG_ macros are now MF_LOG_

larexamples v08_01_00
--------------------------------------------------

-   2019-01-15 Lynn Garren : larexamples v08_01_00 for larsoft v08_05_00
-   2019-01-15 Lynn Garren : LOG_ macros are now MF_LOG_

larg4 v08_01_00
--------------------------------------

-   2019-01-15 Lynn Garren : larg4 v08_01_00 for larsoft v08_05_00
-   2019-01-15 Lynn Garren : LOG_ macros are now MF_LOG_

larpandora v08_03_00
------------------------------------------------

-   2019-01-15 Lynn Garren : larpandora v08_03_00 for larsoft v08_05_00

larwirecell v08_02_00
--------------------------------------------------

-   2019-01-15 Lynn Garren : larwirecell v08_02_00 for larsoft v08_05_00

larana v08_01_00
----------------------------------------

-   2019-01-15 Lynn Garren : larana v08_01_00 for larsoft v08_05_00
-   2019-01-15 Lynn Garren : LOG_ macros are now MF_LOG_

larreco v08_04_00
------------------------------------------

-   2019-01-15 Lynn Garren : larreco v08_04_00 for larsoft v08_05_00
-   2019-01-15 Lynn Garren : LOG_ macros are now MF_LOG_
-   2019-01-15 Lynn Garren : for art v3_01_00

larsim v08_02_00
----------------------------------------

-   2019-01-15 Lynn Garren : larsim v08_02_00 for larsoft v08_05_00
-   2019-01-15 Lynn Garren : LOG_ macros are now MF_LOG_

larevt v08_01_00
----------------------------------------

-   2019-01-15 Lynn Garren : larevt v08_01_00 for larsoft v08_05_00
-   2019-01-15 Lynn Garren : LOG_ macros are now MF_LOG_

lardata v08_02_00
------------------------------------------

-   2019-01-15 Lynn Garren : lardata v08_02_00 for larsoft v08_05_00
-   2019-01-15 Lynn Garren : for art v3_01_00
-   2019-01-15 Lynn Garren : LOG_ macros are now MF_LOG_

larcore v08_01_00
------------------------------------------

-   2019-01-15 Lynn Garren : larcore v08_01_00 for larsoft v08_05_00
-   2019-01-15 Lynn Garren : for art v3_01_00
-   2019-01-15 Lynn Garren : LOG_ macros are now MF_LOG_

larpandoracontent v03_14_04
--------------------------------------------------------------

larsoftobj v08_03_00
------------------------------------------------

-   2019-01-15 Lynn Garren : larsoftobj v08_03_00 for larsoft v08_05_00
-   2019-01-15 Lynn Garren : product versions
-   2019-01-15 Lynn Garren : for art v3_01_00

lardataobj v08_01_00
------------------------------------------------

-   2019-01-15 Lynn Garren : lardataobj v08_01_00 for larsoft v08_05_00
-   2019-01-15 Lynn Garren : LOG_ macros are now MF_LOG_
-   2019-01-15 Lynn Garren : for art v3_01_00

lardataalg v08_03_00
------------------------------------------------

-   2019-01-15 Lynn Garren : lardataalg v08_03_00 for larsoft v08_05_00
-   2019-01-15 Lynn Garren : LOG_ macros are now MF_LOG_

larcorealg v08_01_00
------------------------------------------------

-   2019-01-15 Lynn Garren : larcorealg v08_01_00 for larsoft v08_05_00
-   2019-01-15 Lynn Garren : LOG_ macros are now MF_LOG_

larcoreobj v08_01_00
------------------------------------------------

-   2019-01-15 Lynn Garren : larcoreobj v08_01_00 for larsoft v08_05_00
-   2019-01-15 Lynn Garren : for art v3_01_00

larbatch v01_47_03
--------------------------------------------

larutils v1_23_09
------------------------------------------
