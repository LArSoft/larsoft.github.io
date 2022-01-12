LArSoft v06\_38\_00\_01 Release Notes
=============================================================================

-   **Table of contents**
-   [LArSoft v06\_38\_00\_01 Release Notes](#LArSoft-v06_38_00_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Notes](#Notes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_38\_00\_01](#larsoft-v06_38_00_01)
    -   [lareventdisplay v06\_05\_07\_01](#lareventdisplay-v06_05_07_01)
    -   [larexamples v06\_03\_07\_01](#larexamples-v06_03_07_01)
    -   [larpandora v06\_11\_01\_01](#larpandora-v06_11_01_01)
    -   [larwirecell v06\_04\_06\_01](#larwirecell-v06_04_06_01)
    -   [larana v06\_06\_02\_01](#larana-v06_06_02_01)
    -   [larreco v06\_30\_00\_01](#larreco-v06_30_00_01)
    -   [larsim v06\_23\_00\_01](#larsim-v06_23_00_01)
    -   [larevt v06\_13\_04\_01](#larevt-v06_13_04_01)
    -   [lardata v06\_21\_01\_01](#lardata-v06_21_01_01)
    -   [larcore v06\_09\_02](#larcore-v06_09_02)
    -   [larpandoracontent v03\_06\_00](#larpandoracontent-v03_06_00)
    -   [larsoftobj v1\_20\_00](#larsoftobj-v1_20_00)
    -   [lardataobj v1\_16\_00](#lardataobj-v1_16_00)
    -   [larcoreobj v1\_13\_01](#larcoreobj-v1_13_01)
    -   [larbatch v01\_32\_01](#larbatch-v01_32_01)
    -   [larutils v1\_14\_00](#larutils-v1_14_00)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06\_38\_00\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_38_00_01/larsoft-v06_38_00_01.html)
Download instructions for [just larsoftobj v1\_20\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_20_00/larsoftobj-v1_20_00.html)

Purpose
--------------------

-   allow the experiments to test genie v2\_12\_6 and geant4 v4\_10\_3\_p01a

New features
------------------------------

-   This release is based on larsoft v06\_38\_00
-   The only changes are those required to use genie v2\_12\_6 and geant4 v4\_10\_3\_p01a
-   This tag is on the v06\_38\_00\_01\_branch in the relevant larsoft repositories.

Notes
----------------

-   Branch feature/team\_for\_v06\_38\_00\_01 with required changes is available for argoneutcode, dunetpc, and uboonecode.
-   genie v2\_12\_6
    -   this release comes with genie\_xsec v2\_12\_6 and genie\_phyopt v2\_12\_6
    -   **BREAKING CHANGE**: “Default+MEC” in fcl files is obsolete. See [https://cdcvs.fnal.gov/redmine/projects/nutools/wiki/GENIE\_Configuration\_Files](https://cdcvs.fnal.gov/redmine/projects/nutools/wiki/GENIE_Configuration_Files). Branch feature/team\_for\_v06\_38\_00\_01 for dunetpc and uboonecode reflects this change.
-   geant v4\_10\_3\_p01a
    -   modifications were required in larsim LArG4
    -   See [\#16567](/redmine/issues/16567 "Support: Please patch geant4 10.2.p03 and 10.3.p01 (Closed)") for a description of the p01a patch

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|nutools|v2\_13\_03|e14|[NuTools\_Release\_Notes](/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_13_03)|
|genie|v2\_12\_6|e14|[http://releases.genie-mc.org/](http://releases.genie-mc.org/)|
|geant4|v4\_10\_3\_p01a|e14|[http://geant4.web.cern.ch/geant4/support/Patch4.10.3-1.txt](http://geant4.web.cern.ch/geant4/support/Patch4.10.3-1.txt)|

Change List
============================

larsoft v06\_38\_00\_01
-------------------------------------------------

-   2017-06-02 Lynn Garren : using nutools v2\_13\_03
-   2017-06-02 Lynn Garren : larsoft v06\_38\_00\_01
-   2017-06-02 Lynn Garren : upate versions
-   2017-06-01 Lynn Garren : Merge branch ‘feature/team\_for\_v06\_34\_01\_01’ into feature/team\_for\_v06\_38\_00\_01
-   2017-05-04 Lynn Garren : for larsoft v06\_34\_01\_01 with geant4 v4\_10\_3\_p01
-   2017-05-04 Lynn Garren : for ifdhc v2\_0\_6

lareventdisplay v06\_05\_07\_01
-----------------------------------------------------------------

-   2017-06-02 Lynn Garren : lareventdisplay v06\_05\_07\_01
-   2017-06-01 Lynn Garren : Merge branch ‘feature/team\_for\_v06\_34\_01\_01’ into feature/team\_for\_v06\_38\_00\_01
-   2017-05-04 Lynn Garren : for larsoft v06\_34\_01\_01 with geant4 v4\_10\_3\_p01

larexamples v06\_03\_07\_01
---------------------------------------------------------

-   2017-06-02 Lynn Garren : larexamples v06\_03\_07\_01
-   2017-06-01 Lynn Garren : Merge branch ‘feature/team\_for\_v06\_34\_01\_01’ into feature/team\_for\_v06\_38\_00\_01
-   2017-05-04 Lynn Garren : for larsoft v06\_34\_01\_01 with geant4 v4\_10\_3\_p01

larpandora v06\_11\_01\_01
-------------------------------------------------------

-   2017-06-02 Lynn Garren : larpandora v06\_11\_01\_01
-   2017-06-01 Lynn Garren : Merge branch ‘feature/team\_for\_v06\_34\_01\_01’ into feature/team\_for\_v06\_38\_00\_01
-   2017-05-04 Lynn Garren : for larsoft v06\_34\_01\_01 with geant4 v4\_10\_3\_p01

larwirecell v06\_04\_06\_01
---------------------------------------------------------

-   2017-06-02 Lynn Garren : larwirecell v06\_04\_06\_01
-   2017-06-01 Lynn Garren : Merge branch ‘feature/team\_for\_v06\_34\_01\_01’ into feature/team\_for\_v06\_38\_00\_01
-   2017-05-04 Lynn Garren : for larsoft v06\_34\_01\_01 with geant4 v4\_10\_3\_p01

larana v06\_06\_02\_01
-----------------------------------------------

-   2017-06-02 Lynn Garren : larana v06\_06\_02\_01
-   2017-06-01 Lynn Garren : Merge branch ‘feature/team\_for\_v06\_34\_01\_01’ into feature/team\_for\_v06\_38\_00\_01
-   2017-05-04 Lynn Garren : for larsoft v06\_34\_01\_01 with geant4 v4\_10\_3\_p01

larreco v06\_30\_00\_01
-------------------------------------------------

-   2017-06-02 Lynn Garren : larreco v06\_30\_00\_01
-   2017-06-01 Lynn Garren : Merge branch ‘feature/team\_for\_v06\_34\_01\_01’ into feature/team\_for\_v06\_38\_00\_01
-   2017-05-04 Lynn Garren : for larsoft v06\_34\_01\_01 with geant4 v4\_10\_3\_p01
-   2017-05-04 Lynn Garren : use nutools v2\_13\_02

larsim v06\_23\_00\_01
-----------------------------------------------

-   2017-06-02 Lynn Garren : larsim v06\_23\_00\_01
-   2017-06-01 Lynn Garren : Merge branch ‘feature/team\_for\_v06\_34\_01\_01’ into feature/team\_for\_v06\_38\_00\_01
-   2017-05-17 Hans Wenzel : make sure that physics is initialized
-   2017-05-04 Lynn Garren : for larsoft v06\_34\_01\_01 with geant4 v4\_10\_3\_p01
-   2017-05-04 Lynn Garren : modify to make it work with geant 10.3.p01

larevt v06\_13\_04\_01
-----------------------------------------------

-   2017-06-02 Lynn Garren : larevt v06\_13\_04\_01
-   2017-06-01 Lynn Garren : Merge branch ‘feature/team\_for\_v06\_34\_01\_01’ into feature/team\_for\_v06\_38\_00\_01
-   2017-05-04 Lynn Garren : for larsoft v06\_34\_01\_01 with geant4 v4\_10\_3\_p01

lardata v06\_21\_01\_01
-------------------------------------------------

-   2017-06-02 Lynn Garren : lardata v06\_21\_01\_01
-   2017-06-01 Lynn Garren : Merge branch ‘feature/team\_for\_v06\_34\_01\_01’ into feature/team\_for\_v06\_38\_00\_01
-   2017-05-04 Lynn Garren : for larsoft v06\_34\_01\_01 with geant4 v4\_10\_3\_p01
-   2017-05-04 Lynn Garren : use nutools v2\_13\_02

larcore v06\_09\_02
------------------------------------------

larpandoracontent v03\_06\_00
--------------------------------------------------------------

larsoftobj v1\_20\_00
----------------------------------------------

lardataobj v1\_16\_00
----------------------------------------------

larcoreobj v1\_13\_01
----------------------------------------------

larbatch v01\_32\_01
--------------------------------------------

larutils v1\_14\_00
------------------------------------------
