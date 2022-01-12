LArSoft v08\_41\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08\_41\_00 Release Notes](#LArSoft-v08_41_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_41\_00](#larsoft-v08_41_00)
    -   [lareventdisplay v08\_12\_00](#lareventdisplay-v08_12_00)
    -   [larexamples v08\_06\_00](#larexamples-v08_06_00)
    -   [larg4 v08\_11\_00](#larg4-v08_11_00)
    -   [larpandora v08\_11\_00](#larpandora-v08_11_00)
    -   [larwirecell v08\_12\_00](#larwirecell-v08_12_00)
    -   [larana v08\_16\_00](#larana-v08_16_00)
    -   [larreco v08\_27\_00](#larreco-v08_27_00)
    -   [larsim v08\_19\_00](#larsim-v08_19_00)
    -   [larevt v08\_10\_00](#larevt-v08_10_00)
    -   [lardata v08\_14\_00](#lardata-v08_14_00)
    -   [larcore v08\_10\_00](#larcore-v08_10_00)
    -   [larpandoracontent v03\_15\_13](#larpandoracontent-v03_15_13)
    -   [larsoftobj v08\_26\_00](#larsoftobj-v08_26_00)
    -   [lardataobj v08\_10\_00](#lardataobj-v08_10_00)
    -   [lardataalg v08\_13\_00](#lardataalg-v08_13_00)
    -   [larcorealg v08\_20\_00](#larcorealg-v08_20_00)
    -   [larcoreobj v08\_10\_00](#larcoreobj-v08_10_00)
    -   [larbatch v01\_51\_12](#larbatch-v01_51_12)
    -   [larutils v1\_25\_05](#larutils-v1_25_05)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08\_41\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_41_00/larsoft-v08_41_00.html)
Download instructions for [just larsoftobj v08\_26\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_26_00/larsoftobj-v08_26_00.html)

Purpose
--------------------

-   upgrade to art v3\_04\_00
-   python 3 is now the default

New features
------------------------------

-   **The default e19 and c7 builds now use python 3**. To use python 2, setup with e19:py2 or c7:py2.
-   Only the py2 qualified builds are available for SLF6.
-   feature/team\_for\_art\_v3\_04 is available for most experiment code

Bug fixes
------------------------

-   Doxygen documentation fixes for lardata, larcoreobj, larcorealg and lardataalg

Updated dependencies
----------------------------------------------

-   critic v2\_02\_00 (s94)
    -   art v3\_04\_00
    -   root v6\_18\_04c
    -   canvas\_root\_io v1\_05\_00
    -   art\_root\_io v1\_02\_00
    -   gallery v1\_14\_00
-   nulite v3\_06\_00
    -   genie v3\_00\_06e
    -   dk2nudata v01\_08\_00f
    -   dk2nugenie v01\_08\_00h
    -   nusimdata v1\_21\_00
    -   nuevdb v1\_02\_00
    -   nug4 v1\_04\_00
    -   nugen v1\_10\_00
    -   nurandom v1\_04\_00
    -   nutools v3\_06\_00
    -   geant4reweight v01\_00\_02
    -   artdaq\_core v3\_05\_09
    -   ifdh\_art v2\_10\_01
-   marley v1\_1\_1d
-   pandora v03\_11\_01f
-   hdf5 v1\_10\_5
-   glpk v4\_65
-   h5cpp v1\_10\_4\_1
-   wirecell v0\_13\_1a
-   tensorflow v1\_3\_0g
-   systematicstools v00\_06\_00
-   nusystematics v00\_09\_00
-   artg4tk v09\_07\_00

Change List
============================

larsoft v08\_41\_00
------------------------------------------

-   2020-01-21 Lynn Garren : larsoft v08\_41\_00 for larsoft v08\_41\_00
-   2020-01-21 Lynn Garren : put tensorflow back
-   2020-01-21 Lynn Garren : product versions
-   2020-01-17 Lynn Garren : larsoft v08\_41\_00\_rc0 for the larbase build
-   2020-01-17 Lynn Garren : fixing the build config
-   2020-01-17 Lynn Garren : for art 3.04
-   2020-01-17 Lynn Garren : for art 3.04
-   2020-01-16 Lynn Garren : update BASEQUAL

lareventdisplay v08\_12\_00
----------------------------------------------------------

-   2020-01-21 Lynn Garren : lareventdisplay v08\_12\_00 for larsoft v08\_41\_00
-   2020-01-17 Lynn Garren : for art 3.04

larexamples v08\_06\_00
--------------------------------------------------

-   2020-01-21 Lynn Garren : larexamples v08\_06\_00 for larsoft v08\_41\_00
-   2020-01-17 Lynn Garren : for art 3.04

larg4 v08\_11\_00
--------------------------------------

-   2020-01-21 Lynn Garren : larg4 v08\_11\_00 for larsoft v08\_41\_00
-   2020-01-17 Lynn Garren : for art 3.04
-   2020-01-16 David Rivera : Corrected the function used for PDG code retrieval from G4Step in SimEnergyDepositSD. Pointed out by W. Gu

larpandora v08\_11\_00
------------------------------------------------

-   2020-01-21 Lynn Garren : larpandora v08\_11\_00 for larsoft v08\_41\_00
-   2020-01-17 Lynn Garren : for art 3.04

larwirecell v08\_12\_00
--------------------------------------------------

-   2020-01-21 Lynn Garren : larwirecell v08\_12\_00 for larsoft v08\_41\_00
-   2020-01-17 Lynn Garren : for art 3.04

larana v08\_16\_00
----------------------------------------

-   2020-01-21 Lynn Garren : larana v08\_16\_00 for larsoft v08\_41\_00
-   2020-01-21 Lynn Garren : remove unused variable
-   2020-01-17 Lynn Garren : for art 3.04

larreco v08\_27\_00
------------------------------------------

-   2020-01-21 Lynn Garren : larreco v08\_27\_00 for larsoft v08\_41\_00
-   2020-01-21 Lynn Garren : remove unused variables
-   2020-01-17 Lynn Garren : for art 3.04

larsim v08\_19\_00
----------------------------------------

-   2020-01-21 Lynn Garren : larsim v08\_19\_00 for larsoft v08\_41\_00
-   2020-01-17 Lynn Garren : for art 3.04

larevt v08\_10\_00
----------------------------------------

-   2020-01-21 Lynn Garren : larevt v08\_10\_00 for larsoft v08\_41\_00
-   2020-01-17 Lynn Garren : for art 3.04

lardata v08\_14\_00
------------------------------------------

-   2020-01-21 Lynn Garren : lardata v08\_14\_00 for larsoft v08\_41\_00
-   2020-01-21 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3\_04’ into release/v08\_41\_00
-   2020-01-17 Gianluca Petrillo : It turns out energy in SimEnergyDeopsits is in MeV.
-   2020-01-17 Lynn Garren : assn\_iterator was removed in favor of const\_iterator
-   2020-01-17 Lynn Garren : for art 3.04

larcore v08\_10\_00
------------------------------------------

-   2020-01-21 Lynn Garren : larcore v08\_10\_00 for larsoft v08\_41\_00
-   2020-01-17 Lynn Garren : for art 3.04

larpandoracontent v03\_15\_13
--------------------------------------------------------------

-   2020-01-21 Lynn Garren : larpandoracontent v03\_15\_13 for larsoft v08\_41\_00
-   2020-01-21 Lynn Garren : v03\_15\_13 for art 3.04
-   2020-01-17 Lynn Garren : for art 3.04

larsoftobj v08\_26\_00
------------------------------------------------

-   2020-01-21 Lynn Garren : e19
-   2020-01-21 Lynn Garren : using py2
-   2020-01-21 Lynn Garren : larsoftobj v08\_26\_00 for larsoft v08\_41\_00
-   2020-01-21 Lynn Garren : product versions
-   2020-01-16 Lynn Garren : for art 3.04

lardataobj v08\_10\_00
------------------------------------------------

-   2020-01-21 Lynn Garren : lardataobj v08\_10\_00 for larsoft v08\_41\_00
-   2020-01-21 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3\_04’ into release/v08\_41\_00
-   2020-01-17 Gianluca Petrillo : Code style: removed unnecessary headers, standardized include guard.
-   2020-01-17 Gianluca Petrillo : Fixed format of Doxygen documentation.
-   2020-01-17 Gianluca Petrillo : Fixes to Doxygen documentation.
-   2020-01-16 Lynn Garren : for art 3.04

lardataalg v08\_13\_00
------------------------------------------------

-   2020-01-21 Lynn Garren : lardataalg v08\_13\_00 for larsoft v08\_41\_00
-   2020-01-21 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3\_04’ into release/v08\_41\_00
-   2020-01-17 Gianluca Petrillo : Bug fix: do not confuse namespaces with the same name.
-   2020-01-17 Gianluca Petrillo : Fixes to Doxygen documentation.
-   2020-01-16 Lynn Garren : for art 3.04

larcorealg v08\_20\_00
------------------------------------------------

-   2020-01-21 Lynn Garren : larcorealg v08\_20\_00 for larsoft v08\_41\_00
-   2020-01-21 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3\_04’ into release/v08\_41\_00
-   2020-01-17 Gianluca Petrillo : Fixes to Doxygen documentation.
-   2020-01-16 Lynn Garren : for art 3.04

larcoreobj v08\_10\_00
------------------------------------------------

-   2020-01-21 Lynn Garren : larcoreobj v08\_10\_00 for larsoft v08\_41\_00
-   2020-01-21 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3\_04’ into release/v08\_41\_00
-   2020-01-17 Gianluca Petrillo : Fixes to Doxygen documentation.
-   2020-01-16 Lynn Garren : for art 3.04

larbatch v01\_51\_12
--------------------------------------------

larutils v1\_25\_05
------------------------------------------

-   2020-01-21 Lynn Garren : larutils v1\_25\_05 for larsoft v08\_41\_00
-   2020-01-17 Lynn Garren : for py2
