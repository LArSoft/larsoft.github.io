LArSoft v08_41_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08_41_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_41_00/larsoft-v08_41_00.html)
Download instructions for [just larsoftobj v08_26_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_26_00/larsoftobj-v08_26_00.html)

Purpose
--------------------

-   upgrade to art v3_04_00
-   python 3 is now the default

New features
------------------------------

-   **The default e19 and c7 builds now use python 3**. To use python 2, setup with e19:py2 or c7:py2.
-   Only the py2 qualified builds are available for SLF6.
-   feature/team_for_art_v3_04 is available for most experiment code

Bug fixes
------------------------

-   Doxygen documentation fixes for lardata, larcoreobj, larcorealg and lardataalg

Updated dependencies
----------------------------------------------

-   critic v2_02_00 (s94)
    -   art v3_04_00
    -   root v6_18_04c
    -   canvas_root_io v1_05_00
    -   art_root_io v1_02_00
    -   gallery v1_14_00
-   nulite v3_06_00
    -   genie v3_00_06e
    -   dk2nudata v01_08_00f
    -   dk2nugenie v01_08_00h
    -   nusimdata v1_21_00
    -   nuevdb v1_02_00
    -   nug4 v1_04_00
    -   nugen v1_10_00
    -   nurandom v1_04_00
    -   nutools v3_06_00
    -   geant4reweight v01_00_02
    -   artdaq_core v3_05_09
    -   ifdh_art v2_10_01
-   marley v1_1_1d
-   pandora v03_11_01f
-   hdf5 v1_10_5
-   glpk v4_65
-   h5cpp v1_10_4_1
-   wirecell v0_13_1a
-   tensorflow v1_3_0g
-   systematicstools v00_06_00
-   nusystematics v00_09_00
-   artg4tk v09_07_00

Change List
============================

larsoft v08_41_00
------------------------------------------

-   2020-01-21 Lynn Garren : larsoft v08_41_00 for larsoft v08_41_00
-   2020-01-21 Lynn Garren : put tensorflow back
-   2020-01-21 Lynn Garren : product versions
-   2020-01-17 Lynn Garren : larsoft v08_41_00_rc0 for the larbase build
-   2020-01-17 Lynn Garren : fixing the build config
-   2020-01-17 Lynn Garren : for art 3.04
-   2020-01-17 Lynn Garren : for art 3.04
-   2020-01-16 Lynn Garren : update BASEQUAL

lareventdisplay v08_12_00
----------------------------------------------------------

-   2020-01-21 Lynn Garren : lareventdisplay v08_12_00 for larsoft v08_41_00
-   2020-01-17 Lynn Garren : for art 3.04

larexamples v08_06_00
--------------------------------------------------

-   2020-01-21 Lynn Garren : larexamples v08_06_00 for larsoft v08_41_00
-   2020-01-17 Lynn Garren : for art 3.04

larg4 v08_11_00
--------------------------------------

-   2020-01-21 Lynn Garren : larg4 v08_11_00 for larsoft v08_41_00
-   2020-01-17 Lynn Garren : for art 3.04
-   2020-01-16 David Rivera : Corrected the function used for PDG code retrieval from G4Step in SimEnergyDepositSD. Pointed out by W. Gu

larpandora v08_11_00
------------------------------------------------

-   2020-01-21 Lynn Garren : larpandora v08_11_00 for larsoft v08_41_00
-   2020-01-17 Lynn Garren : for art 3.04

larwirecell v08_12_00
--------------------------------------------------

-   2020-01-21 Lynn Garren : larwirecell v08_12_00 for larsoft v08_41_00
-   2020-01-17 Lynn Garren : for art 3.04

larana v08_16_00
----------------------------------------

-   2020-01-21 Lynn Garren : larana v08_16_00 for larsoft v08_41_00
-   2020-01-21 Lynn Garren : remove unused variable
-   2020-01-17 Lynn Garren : for art 3.04

larreco v08_27_00
------------------------------------------

-   2020-01-21 Lynn Garren : larreco v08_27_00 for larsoft v08_41_00
-   2020-01-21 Lynn Garren : remove unused variables
-   2020-01-17 Lynn Garren : for art 3.04

larsim v08_19_00
----------------------------------------

-   2020-01-21 Lynn Garren : larsim v08_19_00 for larsoft v08_41_00
-   2020-01-17 Lynn Garren : for art 3.04

larevt v08_10_00
----------------------------------------

-   2020-01-21 Lynn Garren : larevt v08_10_00 for larsoft v08_41_00
-   2020-01-17 Lynn Garren : for art 3.04

lardata v08_14_00
------------------------------------------

-   2020-01-21 Lynn Garren : lardata v08_14_00 for larsoft v08_41_00
-   2020-01-21 Lynn Garren : Merge branch ‘feature/team_for_art_v3_04’ into release/v08_41_00
-   2020-01-17 Gianluca Petrillo : It turns out energy in SimEnergyDeopsits is in MeV.
-   2020-01-17 Lynn Garren : assn_iterator was removed in favor of const_iterator
-   2020-01-17 Lynn Garren : for art 3.04

larcore v08_10_00
------------------------------------------

-   2020-01-21 Lynn Garren : larcore v08_10_00 for larsoft v08_41_00
-   2020-01-17 Lynn Garren : for art 3.04

larpandoracontent v03_15_13
--------------------------------------------------------------

-   2020-01-21 Lynn Garren : larpandoracontent v03_15_13 for larsoft v08_41_00
-   2020-01-21 Lynn Garren : v03_15_13 for art 3.04
-   2020-01-17 Lynn Garren : for art 3.04

larsoftobj v08_26_00
------------------------------------------------

-   2020-01-21 Lynn Garren : e19
-   2020-01-21 Lynn Garren : using py2
-   2020-01-21 Lynn Garren : larsoftobj v08_26_00 for larsoft v08_41_00
-   2020-01-21 Lynn Garren : product versions
-   2020-01-16 Lynn Garren : for art 3.04

lardataobj v08_10_00
------------------------------------------------

-   2020-01-21 Lynn Garren : lardataobj v08_10_00 for larsoft v08_41_00
-   2020-01-21 Lynn Garren : Merge branch ‘feature/team_for_art_v3_04’ into release/v08_41_00
-   2020-01-17 Gianluca Petrillo : Code style: removed unnecessary headers, standardized include guard.
-   2020-01-17 Gianluca Petrillo : Fixed format of Doxygen documentation.
-   2020-01-17 Gianluca Petrillo : Fixes to Doxygen documentation.
-   2020-01-16 Lynn Garren : for art 3.04

lardataalg v08_13_00
------------------------------------------------

-   2020-01-21 Lynn Garren : lardataalg v08_13_00 for larsoft v08_41_00
-   2020-01-21 Lynn Garren : Merge branch ‘feature/team_for_art_v3_04’ into release/v08_41_00
-   2020-01-17 Gianluca Petrillo : Bug fix: do not confuse namespaces with the same name.
-   2020-01-17 Gianluca Petrillo : Fixes to Doxygen documentation.
-   2020-01-16 Lynn Garren : for art 3.04

larcorealg v08_20_00
------------------------------------------------

-   2020-01-21 Lynn Garren : larcorealg v08_20_00 for larsoft v08_41_00
-   2020-01-21 Lynn Garren : Merge branch ‘feature/team_for_art_v3_04’ into release/v08_41_00
-   2020-01-17 Gianluca Petrillo : Fixes to Doxygen documentation.
-   2020-01-16 Lynn Garren : for art 3.04

larcoreobj v08_10_00
------------------------------------------------

-   2020-01-21 Lynn Garren : larcoreobj v08_10_00 for larsoft v08_41_00
-   2020-01-21 Lynn Garren : Merge branch ‘feature/team_for_art_v3_04’ into release/v08_41_00
-   2020-01-17 Gianluca Petrillo : Fixes to Doxygen documentation.
-   2020-01-16 Lynn Garren : for art 3.04

larbatch v01_51_12
--------------------------------------------

larutils v1_25_05
------------------------------------------

-   2020-01-21 Lynn Garren : larutils v1_25_05 for larsoft v08_41_00
-   2020-01-17 Lynn Garren : for py2
