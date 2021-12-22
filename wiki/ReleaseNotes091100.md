LArSoft v09\_11\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v09\_11\_00 Release Notes](#LArSoft-v09_11_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_11\_00](#larsoft-v09_11_00)
    -   [lareventdisplay v09\_00\_16](#lareventdisplay-v09_00_16)
    -   [larexamples v09\_00\_15](#larexamples-v09_00_15)
    -   [larpandora v09\_03\_07](#larpandora-v09_03_07)
    -   [larsimrad v09\_00\_15](#larsimrad-v09_00_15)
    -   [larrecodnn v09\_02\_07](#larrecodnn-v09_02_07)
    -   [larwirecell v09\_01\_09](#larwirecell-v09_01_09)
    -   [larana v09\_00\_16](#larana-v09_00_16)
    -   [larreco v09\_04\_06](#larreco-v09_04_06)
    -   [larsim v09\_07\_03](#larsim-v09_07_03)
    -   [larg4 v09\_02\_00](#larg4-v09_02_00)
    -   [larevt v09\_01\_03](#larevt-v09_01_03)
    -   [lardata v09\_01\_06](#lardata-v09_01_06)
    -   [larcore v09\_00\_01](#larcore-v09_00_01)
    -   [larpandoracontent v03\_22\_03](#larpandoracontent-v03_22_03)
    -   [larsoftobj v09\_03\_03](#larsoftobj-v09_03_03)
    -   [lardataobj v09\_00\_05](#lardataobj-v09_00_05)
    -   [lardataalg v09\_03\_03](#lardataalg-v09_03_03)
    -   [larcorealg v09\_00\_01](#larcorealg-v09_00_01)
    -   [larcoreobj v09\_00\_00](#larcoreobj-v09_00_00)
    -   [webevd v09\_01\_00](#webevd-v09_01_00)
    -   [larbatch v01\_54\_01](#larbatch-v01_54_01)
    -   [larutils v1\_27\_03](#larutils-v1_27_03)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v09\_11\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_11_00/larsoft-v09_11_00.html)\
Download instructions for [just larsoftobj v09\_03\_03](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_03_03/larsoftobj-v09_03_03.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

-   larg4 PR 19 for [\#25279](/redmine/issues/25279 "Bug: LArG4: Sparsifying sometimes cuts out 2nd to last trajectory point (Closed)")
    -   This includes changes to keep the second to last point during sparsification.
    -   An updated nusimdata was also required
-   larg4 PR 18
    -   Using the MCParticle method to keep transportation steps, with configurable parameter in ParticleListAction
-   webevd PR 17
    -   Support detectors with Z/Y views rather than Z/U/V.

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

nusimdata v1\_21\_05 for [\#25279](/redmine/issues/25279 "Bug: LArG4: Sparsifying sometimes cuts out 2nd to last trajectory point (Closed)")\
nuevdb v1\_02\_09\
nug4 v1\_05\_04\
nugen v1\_10\_12\
nurandom v1\_04\_05\
nutools v3\_07\_05\
geant4reweight v01\_06\_03\
nusystematics v00\_10\_08\
mrb v4\_04\_01

Change List
============================

larsoft v09\_11\_00
------------------------------------------

-   2020-12-16 Lynn Garren : larsoft v09\_11\_00 for larsoft v09\_11\_00
-   2020-12-16 Lynn Garren : product versions

lareventdisplay v09\_00\_16
----------------------------------------------------------

-   2020-12-16 Lynn Garren : lareventdisplay v09\_00\_16 for larsoft v09\_11\_00

larexamples v09\_00\_15
--------------------------------------------------

-   2020-12-16 Lynn Garren : larexamples v09\_00\_15 for larsoft v09\_11\_00

larpandora v09\_03\_07
------------------------------------------------

-   2020-12-16 Lynn Garren : larpandora v09\_03\_07 for larsoft v09\_11\_00

larsimrad v09\_00\_15
----------------------------------------------

-   2020-12-16 Lynn Garren : larsimrad v09\_00\_15 for larsoft v09\_11\_00

larrecodnn v09\_02\_07
------------------------------------------------

-   2020-12-16 Lynn Garren : larrecodnn v09\_02\_07 for larsoft v09\_11\_00

larwirecell v09\_01\_09
--------------------------------------------------

-   2020-12-16 Lynn Garren : larwirecell v09\_01\_09 for larsoft v09\_11\_00

larana v09\_00\_16
----------------------------------------

-   2020-12-16 Lynn Garren : larana v09\_00\_16 for larsoft v09\_11\_00

larreco v09\_04\_06
------------------------------------------

-   2020-12-16 Lynn Garren : larreco v09\_04\_06 for larsoft v09\_11\_00

larsim v09\_07\_03
----------------------------------------

-   2020-12-16 Lynn Garren : larsim v09\_07\_03 for larsoft v09\_11\_00

larg4 v09\_02\_00
--------------------------------------

-   2020-12-16 Lynn Garren : larg4 v09\_02\_00 for larsoft v09\_11\_00
-   2020-12-15 Lynn Garren : Merge branch ‘feature/calcuttj\_second\_to\_last’ into release/v09\_11\_00
-   2020-12-15 Lynn Garren : Merge pull request \#18 from calcuttj/feature/calcuttj\_keep\_transportation
-   2020-12-14 Jacob Calcutt : Implementing keeping second-to-last point in sparsification with configurable fcl parameter
-   2020-12-14 Jacob Calcutt : Merge tag ‘tags/v09\_01\_06’ into feature/calcuttj\_second\_to\_last
-   2020-12-11 Jacob Calcutt : Added default value for KeepTransportation
-   2020-12-03 Jacob Calcutt : Added KeepTransportation flag to ParticleListAction

larevt v09\_01\_03
----------------------------------------

-   2020-12-16 Lynn Garren : larevt v09\_01\_03 for larsoft v09\_11\_00

lardata v09\_01\_06
------------------------------------------

-   2020-12-16 Lynn Garren : lardata v09\_01\_06 for larsoft v09\_11\_00

larcore v09\_00\_01
------------------------------------------

larpandoracontent v03\_22\_03
--------------------------------------------------------------

larsoftobj v09\_03\_03
------------------------------------------------

-   2020-12-16 Lynn Garren : larsoftobj v09\_03\_03 for larsoft v09\_11\_00
-   2020-12-16 Lynn Garren : product versions

lardataobj v09\_00\_05
------------------------------------------------

-   2020-12-16 Lynn Garren : lardataobj v09\_00\_05 for larsoft v09\_11\_00

lardataalg v09\_03\_03
------------------------------------------------

-   2020-12-16 Lynn Garren : lardataalg v09\_03\_03 for larsoft v09\_11\_00

larcorealg v09\_00\_01
------------------------------------------------

larcoreobj v09\_00\_00
------------------------------------------------

webevd v09\_01\_00
----------------------------------------

-   2020-12-16 Lynn Garren : webevd v09\_01\_00 for larsoft v09\_11\_00
-   2020-12-16 Lynn Garren : Merge pull request [\#17](/redmine/issues/17 "Support: Email setup (Closed)") from LArSoft/feature/yview\_support
-   2020-12-16 Christopher Backhouse : Add a fcl that selects the correct services for VD simulation.
-   2020-12-16 Christopher Backhouse : Support detectors with Z/Y views rather than Z/U/V. Tested on a vertical drift file, but probably would help with ProtoDUNE-DP too.

larbatch v01\_54\_01
--------------------------------------------

larutils v1\_27\_03
------------------------------------------
