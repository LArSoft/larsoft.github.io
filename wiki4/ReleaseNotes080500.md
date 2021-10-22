LArSoft v08\_05\_00 Release Notes[¶](#LArSoft-v08_05_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v08\_05\_00 Release Notes](#LArSoft-v08_05_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_05\_00](#larsoft-v08_05_00)
    -   [lareventdisplay v08\_02\_00](#lareventdisplay-v08_02_00)
    -   [larexamples v08\_01\_00](#larexamples-v08_01_00)
    -   [larg4 v08\_01\_00](#larg4-v08_01_00)
    -   [larpandora v08\_03\_00](#larpandora-v08_03_00)
    -   [larwirecell v08\_02\_00](#larwirecell-v08_02_00)
    -   [larana v08\_01\_00](#larana-v08_01_00)
    -   [larreco v08\_04\_00](#larreco-v08_04_00)
    -   [larsim v08\_02\_00](#larsim-v08_02_00)
    -   [larevt v08\_01\_00](#larevt-v08_01_00)
    -   [lardata v08\_02\_00](#lardata-v08_02_00)
    -   [larcore v08\_01\_00](#larcore-v08_01_00)
    -   [larpandoracontent v03\_14\_04](#larpandoracontent-v03_14_04)
    -   [larsoftobj v08\_03\_00](#larsoftobj-v08_03_00)
    -   [lardataobj v08\_01\_00](#lardataobj-v08_01_00)
    -   [lardataalg v08\_03\_00](#lardataalg-v08_03_00)
    -   [larcorealg v08\_01\_00](#larcorealg-v08_01_00)
    -   [larcoreobj v08\_01\_00](#larcoreobj-v08_01_00)
    -   [larbatch v01\_47\_03](#larbatch-v01_47_03)
    -   [larutils v1\_23\_09](#larutils-v1_23_09)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_05\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_05_00/larsoft-v08_05_00.html)\
Download instructions for [just larsoftobj v08\_03\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_03_00/larsoftobj-v08_03_00.html)


Purpose[¶](#Purpose)
--------------------

-   first build with art v3\_01\_00


New features[¶](#New-features)
------------------------------

-   All art LOG\_XXX macros are now MF\_LOG\_XXX.
-   See the [art v3\_01 release notes](/redmine/projects/art/wiki/Series_301) for more information.

-   feature/team\_for\_art\_v3\_01 is provided for experiment code.
-   There is a migration script in message facility.
    -   \$MESSAGEFACILITY\_FQ\_DIR/bin/fix-mf-macros
    -   This script must be used with care. For instance, some code contains its own (unqualified) LOG macros.


Bug fixes[¶](#Bug-fixes)
------------------------

-   art v3\_00\_00 uses the “rdtscp” instruction, which is not avaliable on the older CPUs at sites like SU-ITS, Wisconsin, and SGridOxford. This problem is resolved in art v3\_01\_00.


Updated dependencies[¶](#Updated-dependencies)
----------------------------------------------

-   art v3\_01\_00
-   canvas v3\_05\_00
-   artdaq\_core v3\_04\_06
-   gallery v1\_11\_00
-   nusimdata v1\_15\_01
-   nutools v2\_26\_03
-   artg4tk v09\_01\_01
-   systematicstools v00\_02\_01
-   nusystematics v00\_02\_03


Change List[¶](#Change-List)
============================


larsoft v08\_05\_00[¶](#larsoft-v08_05_00)
------------------------------------------

-   2019-01-15 Lynn Garren : larsoft v08\_05\_00 for larsoft v08\_05\_00
-   2019-01-15 Lynn Garren : product versions
-   2019-01-15 Lynn Garren : for art v3\_01\_00
-   2019-01-15 Lynn Garren : update dependency database


lareventdisplay v08\_02\_00[¶](#lareventdisplay-v08_02_00)
----------------------------------------------------------

-   2019-01-15 Lynn Garren : lareventdisplay v08\_02\_00 for larsoft v08\_05\_00
-   2019-01-15 Lynn Garren : LOG\_ macros are now MF\_LOG\_


larexamples v08\_01\_00[¶](#larexamples-v08_01_00)
--------------------------------------------------

-   2019-01-15 Lynn Garren : larexamples v08\_01\_00 for larsoft v08\_05\_00
-   2019-01-15 Lynn Garren : LOG\_ macros are now MF\_LOG\_


larg4 v08\_01\_00[¶](#larg4-v08_01_00)
--------------------------------------

-   2019-01-15 Lynn Garren : larg4 v08\_01\_00 for larsoft v08\_05\_00
-   2019-01-15 Lynn Garren : LOG\_ macros are now MF\_LOG\_


larpandora v08\_03\_00[¶](#larpandora-v08_03_00)
------------------------------------------------

-   2019-01-15 Lynn Garren : larpandora v08\_03\_00 for larsoft v08\_05\_00


larwirecell v08\_02\_00[¶](#larwirecell-v08_02_00)
--------------------------------------------------

-   2019-01-15 Lynn Garren : larwirecell v08\_02\_00 for larsoft v08\_05\_00


larana v08\_01\_00[¶](#larana-v08_01_00)
----------------------------------------

-   2019-01-15 Lynn Garren : larana v08\_01\_00 for larsoft v08\_05\_00
-   2019-01-15 Lynn Garren : LOG\_ macros are now MF\_LOG\_


larreco v08\_04\_00[¶](#larreco-v08_04_00)
------------------------------------------

-   2019-01-15 Lynn Garren : larreco v08\_04\_00 for larsoft v08\_05\_00
-   2019-01-15 Lynn Garren : LOG\_ macros are now MF\_LOG\_
-   2019-01-15 Lynn Garren : for art v3\_01\_00


larsim v08\_02\_00[¶](#larsim-v08_02_00)
----------------------------------------

-   2019-01-15 Lynn Garren : larsim v08\_02\_00 for larsoft v08\_05\_00
-   2019-01-15 Lynn Garren : LOG\_ macros are now MF\_LOG\_


larevt v08\_01\_00[¶](#larevt-v08_01_00)
----------------------------------------

-   2019-01-15 Lynn Garren : larevt v08\_01\_00 for larsoft v08\_05\_00
-   2019-01-15 Lynn Garren : LOG\_ macros are now MF\_LOG\_


lardata v08\_02\_00[¶](#lardata-v08_02_00)
------------------------------------------

-   2019-01-15 Lynn Garren : lardata v08\_02\_00 for larsoft v08\_05\_00
-   2019-01-15 Lynn Garren : for art v3\_01\_00
-   2019-01-15 Lynn Garren : LOG\_ macros are now MF\_LOG\_


larcore v08\_01\_00[¶](#larcore-v08_01_00)
------------------------------------------

-   2019-01-15 Lynn Garren : larcore v08\_01\_00 for larsoft v08\_05\_00
-   2019-01-15 Lynn Garren : for art v3\_01\_00
-   2019-01-15 Lynn Garren : LOG\_ macros are now MF\_LOG\_


larpandoracontent v03\_14\_04[¶](#larpandoracontent-v03_14_04)
--------------------------------------------------------------


larsoftobj v08\_03\_00[¶](#larsoftobj-v08_03_00)
------------------------------------------------

-   2019-01-15 Lynn Garren : larsoftobj v08\_03\_00 for larsoft v08\_05\_00
-   2019-01-15 Lynn Garren : product versions
-   2019-01-15 Lynn Garren : for art v3\_01\_00


lardataobj v08\_01\_00[¶](#lardataobj-v08_01_00)
------------------------------------------------

-   2019-01-15 Lynn Garren : lardataobj v08\_01\_00 for larsoft v08\_05\_00
-   2019-01-15 Lynn Garren : LOG\_ macros are now MF\_LOG\_
-   2019-01-15 Lynn Garren : for art v3\_01\_00


lardataalg v08\_03\_00[¶](#lardataalg-v08_03_00)
------------------------------------------------

-   2019-01-15 Lynn Garren : lardataalg v08\_03\_00 for larsoft v08\_05\_00
-   2019-01-15 Lynn Garren : LOG\_ macros are now MF\_LOG\_


larcorealg v08\_01\_00[¶](#larcorealg-v08_01_00)
------------------------------------------------

-   2019-01-15 Lynn Garren : larcorealg v08\_01\_00 for larsoft v08\_05\_00
-   2019-01-15 Lynn Garren : LOG\_ macros are now MF\_LOG\_


larcoreobj v08\_01\_00[¶](#larcoreobj-v08_01_00)
------------------------------------------------

-   2019-01-15 Lynn Garren : larcoreobj v08\_01\_00 for larsoft v08\_05\_00
-   2019-01-15 Lynn Garren : for art v3\_01\_00


larbatch v01\_47\_03[¶](#larbatch-v01_47_03)
--------------------------------------------


larutils v1\_23\_09[¶](#larutils-v1_23_09)
------------------------------------------
