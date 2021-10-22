LArSoft v08\_40\_00 Release Notes[¶](#LArSoft-v08_40_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v08\_40\_00 Release Notes](#LArSoft-v08_40_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_40\_00](#larsoft-v08_40_00)
    -   [lareventdisplay v08\_11\_01](#lareventdisplay-v08_11_01)
    -   [larexamples v08\_05\_01](#larexamples-v08_05_01)
    -   [larg4 v08\_10\_00](#larg4-v08_10_00)
    -   [larpandora v08\_10\_01](#larpandora-v08_10_01)
    -   [larwirecell v08\_11\_01](#larwirecell-v08_11_01)
    -   [larana v08\_15\_01](#larana-v08_15_01)
    -   [larreco v08\_26\_01](#larreco-v08_26_01)
    -   [larsim v08\_18\_01](#larsim-v08_18_01)
    -   [larevt v08\_09\_01](#larevt-v08_09_01)
    -   [lardata v08\_13\_00](#lardata-v08_13_00)
    -   [larcore v08\_09\_00](#larcore-v08_09_00)
    -   [larpandoracontent v03\_15\_12](#larpandoracontent-v03_15_12)
    -   [larsoftobj v08\_25\_00](#larsoftobj-v08_25_00)
    -   [lardataobj v08\_09\_01](#lardataobj-v08_09_01)
    -   [lardataalg v08\_12\_00](#lardataalg-v08_12_00)
    -   [larcorealg v08\_19\_00](#larcorealg-v08_19_00)
    -   [larcoreobj v08\_09\_00](#larcoreobj-v08_09_00)
    -   [larbatch v01\_51\_12](#larbatch-v01_51_12)
    -   [larutils v1\_25\_04](#larutils-v1_25_04)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_40\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_40_00/larsoft-v08_40_00.html)\
Download instructions for [just larsoftobj v08\_25\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_25_00/larsoftobj-v08_25_00.html)


Purpose[¶](#Purpose)
--------------------

-   changes in develop
-   approved feature branches


New features[¶](#New-features)
------------------------------

-   larpandoracontent
    -   Change the Pandora Neutrino ID tool to use a template so that it can be used with an arbitrary MVA, in this case an SVM or a BDT.
    -   “feature/larpandoracontent\_v03\_15\_12” for larpandoracontent
    -   sbndcode, ubreco feature/larpandoracontent\_v03\_15\_12
-   lardata feature/gp\_EnergyDepositDumper
    -   The \`DumpSimEnergyDeposits\` module prints on screen the content of one data product collection of \`sim::SimEnergyDeposits\`.


Bug fixes[¶](#Bug-fixes)
------------------------

-   feature/gp\_sharedOpDetDict (bug fix)
    -   icaruscode, sbndcode, lardataobj
    -   One of the objects necessary for a optical hit/flash association was missing a \
        dictionary. That dictionary specification was added in \`icaruscode\` by ICARUS people \
        during optical flash code development, and it never made to where it belongs \
        (\`lardataobj\`). SBND then copied that code into \`sbndcode\`. The result is that this dictionary is present in two separate libraries and \
        when both \`icaruscode\` and \`sbndcode\` are set up ROOT is not happy and *art* \
        sympathises (at least on SLF7).
    -   This bug fix moves the dictionary from experiment code to lardataobj.


Updated dependencies[¶](#Updated-dependencies)
----------------------------------------------

-   nulite v3\_05\_01b
    -   nurandom v1\_03\_02 with bug fix
    -   artdaq\_core v3\_05\_09
-   geant4reweight v01\_00\_01 ([\#23835](/redmine/issues/23835 "Support: Support for Geant4Reweight package (Closed)"))


Change List[¶](#Change-List)
============================


larsoft v08\_40\_00[¶](#larsoft-v08_40_00)
------------------------------------------

-   2020-01-15 Lynn Garren : fixing the geant4reweight build
-   2020-01-14 Lynn Garren : larsoft v08\_40\_00
-   2020-01-14 Lynn Garren : larsoft v08\_39\_01 for larsoft v08\_40\_00
-   2020-01-14 Lynn Garren : product versions
-   2020-01-14 Lynn Garren : add geant4reweight
-   2020-01-13 Lynn Garren : nulite v3\_05\_01b


lareventdisplay v08\_11\_01[¶](#lareventdisplay-v08_11_01)
----------------------------------------------------------

-   2020-01-14 Lynn Garren : lareventdisplay v08\_11\_01 for larsoft v08\_40\_00


larexamples v08\_05\_01[¶](#larexamples-v08_05_01)
--------------------------------------------------

-   2020-01-14 Lynn Garren : larexamples v08\_05\_01 for larsoft v08\_40\_00


larg4 v08\_10\_00[¶](#larg4-v08_10_00)
--------------------------------------

-   2020-01-14 Lynn Garren : larg4 v08\_10\_00 for larsoft v08\_40\_00
-   2020-01-12 David Rivera : MessageFacility and general cleanup in ParticleListAction\_service
-   2019-12-17 David Rivera : Example fhicl incorporating multiple generators in order to test the effectiveness of the multigenerator ParticleListAction fix.
-   2019-12-17 David Rivera : Added a Map to store the PrimaryParticleInformation::MCTIndex() for each particle. For secondaries, the MCTIndex is inherited from it’s primary ancestor. This is required to properly generate the Truth-MCParticle Assns produced by the larg4 ParticleListAction\_service. Previously the Assns were being created multiple times (once per generator) and the MCTruth Index was not determined this led to issue with the ParticleInventory creation since there were multiple particles that had the same TrackID and the wrong MCT associations. This is a first attempt at fixing this bug.
-   2019-12-17 David Rivera : Include the GeneratedParticleInfo object in the Truth-MCParticle Assn. generated in the ParticleListAction\_service. Added some debug messages.


larpandora v08\_10\_01[¶](#larpandora-v08_10_01)
------------------------------------------------

-   2020-01-14 Lynn Garren : larpandora v08\_10\_01 for larsoft v08\_40\_00


larwirecell v08\_11\_01[¶](#larwirecell-v08_11_01)
--------------------------------------------------

-   2020-01-14 Lynn Garren : larwirecell v08\_11\_01 for larsoft v08\_40\_00


larana v08\_15\_01[¶](#larana-v08_15_01)
----------------------------------------

-   2020-01-14 Lynn Garren : larana v08\_15\_01 for larsoft v08\_40\_00


larreco v08\_26\_01[¶](#larreco-v08_26_01)
------------------------------------------

-   2020-01-14 Lynn Garren : larreco v08\_26\_01 for larsoft v08\_40\_00


larsim v08\_18\_01[¶](#larsim-v08_18_01)
----------------------------------------

-   2020-01-14 Lynn Garren : larsim v08\_18\_01 for larsoft v08\_40\_00
-   2020-01-13 Lynn Garren : nurandom v1\_03\_02


larevt v08\_09\_01[¶](#larevt-v08_09_01)
----------------------------------------

-   2020-01-14 Lynn Garren : larevt v08\_09\_01 for larsoft v08\_40\_00


lardata v08\_13\_00[¶](#lardata-v08_13_00)
------------------------------------------

-   2020-01-14 Lynn Garren : lardata v08\_13\_00 for larsoft v08\_40\_00
-   2020-01-13 Gianluca Petrillo : Added event summary to DumpSimEnergyDeposits output.
-   2020-01-12 Gianluca Petrillo : Added DumpSimEnergyDeposits module for dump of \`sim::SimEnergyDeposit\` objects on screen.


larcore v08\_09\_00[¶](#larcore-v08_09_00)
------------------------------------------


larpandoracontent v03\_15\_12[¶](#larpandoracontent-v03_15_12)
--------------------------------------------------------------

-   2020-01-14 Lynn Garren : larpandoracontent v03\_15\_12 for larsoft v08\_40\_00
-   2020-01-09 John Marshall : Merge branch ‘updates’
-   2019-12-17 John Marshall : Update version and change log.
-   2020-01-09 John Marshall : Merge branch ‘feature/etyley\_SliceIDMVA’
-   2019-12-13 etyley : Templated NeutrinoIdTool to use MVA and fixed training by getting parent address of calo hit
-   2020-01-09 John Marshall : Merge branch ‘feature/cerati\_shouldRemoveOutOfTimeHits’
-   2019-08-21 Giuseppe Cerati : add option to decide whether to remove out time hits
-   2020-01-09 John Marshall : Merge branch ‘feature/X0Validation’
-   2019-10-23 StevenGreen1 : Set default value of X0 to max, to distinguish from stitches without shifting.
-   2019-10-23 StevenGreen1 : Adding X0 to output validation root trees.


larsoftobj v08\_25\_00[¶](#larsoftobj-v08_25_00)
------------------------------------------------

-   2020-01-14 Lynn Garren : larsoftobj v08\_25\_00 for larsoft v08\_40\_00
-   2020-01-14 Lynn Garren : product versions


lardataobj v08\_09\_01[¶](#lardataobj-v08_09_01)
------------------------------------------------

-   2020-01-14 Lynn Garren : lardataobj v08\_09\_01 for larsoft v08\_40\_00
-   2020-01-10 Gianluca Petrillo : Added missing data product dictionaries.
-   2020-01-10 Gianluca Petrillo : Sorted XML dictionary specifications for easier maintenance.
-   2020-01-10 Gianluca Petrillo : Added missing dictionary for \<OpHit,OpFlash\> pairs


lardataalg v08\_12\_00[¶](#lardataalg-v08_12_00)
------------------------------------------------

-   2020-01-14 Lynn Garren : lardataalg v08\_12\_00 for larsoft v08\_40\_00
-   2020-01-13 Gianluca Petrillo : Added space quantities based on meter.
-   2020-01-11 Gianluca Petrillo : Added electronvolt-based quantities (no points or intervals).
-   2020-01-10 Gianluca Petrillo : Added DetectorTimings::toSimulationTime() as convenience alias.


larcorealg v08\_19\_00[¶](#larcorealg-v08_19_00)
------------------------------------------------


larcoreobj v08\_09\_00[¶](#larcoreobj-v08_09_00)
------------------------------------------------


larbatch v01\_51\_12[¶](#larbatch-v01_51_12)
--------------------------------------------


larutils v1\_25\_04[¶](#larutils-v1_25_04)
------------------------------------------

-   2020-01-14 Lynn Garren : larutils v1\_25\_04 for larsoft v08\_40\_00
-   2020-01-08 Herbert Greenlee : Add offline to tarball name.
-   2020-01-08 Thomas Junk : switch repo to dune/dunepdsprce from slaclab/proto-dune-dam-lib
