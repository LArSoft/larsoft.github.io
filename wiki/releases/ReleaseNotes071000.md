LArSoft v07\_10\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v07\_10\_00 Release Notes](#LArSoft-v07_10_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Breaking changes](#Breaking-changes)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v07\_10\_00](#larsoft-v07_10_00)
    -   [lareventdisplay v07\_01\_12](#lareventdisplay-v07_01_12)
    -   [larexamples v07\_00\_15](#larexamples-v07_00_15)
    -   [larg4 v07\_03\_00](#larg4-v07_03_00)
    -   [larpandora v07\_03\_00](#larpandora-v07_03_00)
    -   [larwirecell v07\_03\_01](#larwirecell-v07_03_01)
    -   [larana v07\_02\_08](#larana-v07_02_08)
    -   [larreco v07\_08\_00](#larreco-v07_08_00)
    -   [larsim v07\_06\_00](#larsim-v07_06_00)
    -   [larevt v07\_01\_02](#larevt-v07_01_02)
    -   [lardata v07\_00\_14](#lardata-v07_00_14)
    -   [larcore v07\_00\_05](#larcore-v07_00_05)
    -   [larpandoracontent v03\_14\_02](#larpandoracontent-v03_14_02)
    -   [larsoftobj v07\_07\_00](#larsoftobj-v07_07_00)
    -   [lardataobj v07\_04\_00](#lardataobj-v07_04_00)
    -   [lardataalg v07\_02\_05](#lardataalg-v07_02_05)
    -   [larcorealg v07\_03\_00](#larcorealg-v07_03_00)
    -   [larcoreobj v07\_00\_01](#larcoreobj-v07_00_01)
    -   [larbatch v01\_47\_00](#larbatch-v01_47_00)
    -   [larutils v1\_23\_05](#larutils-v1_23_05)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v07\_10\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v07_10_00/larsoft-v07_10_00.html)
Download instructions for [just larsoftobj v07\_07\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v07_07_00/larsoftobj-v07_07_00.html)

Purpose
--------------------

-   approved feature branches
-   changes in develop

New features
------------------------------

-   move PFParticleMetadata from larpandora to lardataobj
    -   lardataobj, larpandora and dunetpc feature/escudero\_PFParticleMetadataMigration
    -   use Update\_v07\_10\_00.sh and check code
    -   see Lorena’s [presentation](https://indico.fnal.gov/event/18991/contribution/5/material/slides/0.pdf)
-   nutools v2\_24\_07 with ifbeam v2\_2\_10
-   larg4 remove dependency on larsim
    -   move larsim/LArG4/ParticleFilters.h to larcorealg
    -   use Update\_v07\_10\_00.sh and check code

Breaking changes
--------------------------------------

-   [breaking changes](Breaking_Changes) for PFParticleMetadata, ParticleFilters.h, and TrackMomentumCalculator
    -   A feature branch has been provided for dunetpc
    -   For local code, use Update\_v07\_10\_00.sh

Bug fixes
------------------------

-   [\#21135](/redmine/issues/21135 "Bug: ROOT::Minuit2::VariableMetricBuilder::Minimum Failure (Closed)")
    -   larreco feature/knoepfel\_TrackMomentumCalculator\_cleanup
    -   dunetpc, lariatsoft, ubana feature/knoepfel\_TrackMomentumCalculator\_cleanup
    -   see Kyle’s [presentation](https://indico.fnal.gov/event/18991/contribution/3/material/slides/0.pdf)
-   larg4 feature/wenzel\_fixbuild

Updated dependencies
----------------------------------------------

-   ifbeam v2\_2\_20
-   ifdh\_art
-   nutools v2\_24\_07
-   nusystematics v00\_01\_03
-   mrb v1\_17\_02

Change List
============================

larsoft v07\_10\_00
------------------------------------------

-   2018-11-07 Lynn Garren : actually install the scripts
-   2018-11-07 Lynn Garren : larsoft v07\_10\_00 for larsoft v07\_10\_00
-   2018-11-07 Lynn Garren : product versions
-   2018-11-07 Lynn Garren : fix namespace, remove larpandoraobj library
-   2018-11-07 Lynn Garren : moving PFParticleMetadata.h and ParticleFilters.h
-   2018-11-07 Lynn Garren : ifdh\_art v2\_06\_10

lareventdisplay v07\_01\_12
----------------------------------------------------------

-   2018-11-07 Lynn Garren : lareventdisplay v07\_01\_12 for larsoft v07\_10\_00

larexamples v07\_00\_15
--------------------------------------------------

-   2018-11-07 Lynn Garren : larexamples v07\_00\_15 for larsoft v07\_10\_00

larg4 v07\_03\_00
--------------------------------------

-   2018-11-07 Lynn Garren : larg4 v07\_03\_00 for larsoft v07\_10\_00
-   2018-11-07 Lynn Garren : larsim to larevt
-   2018-11-06 Lynn Garren : depend on larevt, not larsim
-   2018-11-06 Lynn Garren : depend on larevt, not larsim
-   2018-11-06 Lynn Garren : PositionInVolumeFilter is now in util namespace
-   2018-11-02 Hans-Joachim Wenzel : fix the build so that gdml,xsd and fcl files are copied correctly and the location is added to the /home/wenzel/larg4\_dev5/build\_slf7.x86\_64/larsim/G4:/home/wenzel/larg4\_dev5/build\_slf7.x86\_64/larg4/gdml:.:/grid/fermiapp/products/larsoft/larsoft\_data/v1\_02\_01:/grid/fermiapp/products/larsoft/larsoft\_data/v1\_02\_01/SupernovaNeutrinos:/grid/fermiapp/products/larsoft/larsoft\_data/v1\_02\_01/pdf/MUSUN:/grid/fermiapp/products/larsoft/larsoft\_data/v1\_02\_01/pdf/Gaisser:/grid/fermiapp/products/larsoft/larsoft\_data/v1\_02\_01/PhotonPropagation/LibraryData:/grid/fermiapp/products/larsoft/larsoft\_data/v1\_02\_01/ParticleIdentification:/grid/fermiapp/products/larsoft/larsoft\_data/v1\_02\_01/Genfit:/grid/fermiapp/products/larsoft/larsoft\_data/v1\_02\_01/Argoneut:/grid/fermiapp/products/larsoft/larsoft\_data/v1\_02\_01/uboone:/grid/fermiapp/products/larsoft/marley/v1\_0\_0e/Linux64bit+3.10-2.17-e17-prof/share/marley/structure:/grid/fermiapp/products/larsoft/marley/v1\_0\_0e/Linux64bit+3.10-2.17-e17-prof/share/marley/react:/grid/fermiapp/products/larsoft/larcore/v07\_00\_04/gdml:/grid/fermiapp/products/larsoft/larcore/v07\_00\_04/gdml:/grid/fermiapp/products/larsoft/larcorealg/v07\_02\_01/gdml:/grid/fermiapp/products/larsoft/larcoreobj/v07\_00\_01/gdml

larpandora v07\_03\_00
------------------------------------------------

-   2018-11-07 Lynn Garren : larpandora v07\_03\_00 for larsoft v07\_10\_00
-   2018-11-06 loressa : Initial migration of PFParticleMetadata from larpandora to lardataobj

larwirecell v07\_03\_01
--------------------------------------------------

-   2018-11-07 Lynn Garren : larwirecell v07\_03\_01 for larsoft v07\_10\_00

larana v07\_02\_08
----------------------------------------

-   2018-11-07 Lynn Garren : larana v07\_02\_08 for larsoft v07\_10\_00

larreco v07\_08\_00
------------------------------------------

-   2018-11-07 Lynn Garren : restore goof by brute force
-   2018-11-07 Lynn Garren : Merge branch ‘release/v07\_10\_00’
-   2018-11-07 Lynn Garren : make it right
-   2018-11-07 Lynn Garren : Merge branch ‘release/v07\_10\_00’
-   2018-11-07 Lynn Garren : larreco v07\_08\_00
-   2018-11-07 Lynn Garren : Merge branch ‘release/v07\_10\_00’
-   2018-11-07 Lynn Garren : using larsim v07\_06\_00
-   2018-11-07 Lynn Garren : Merge branch ‘master’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco
-   2018-11-07 Lynn Garren : larreco v07\_08\_00 for larsoft v07\_10\_00
-   2018-11-07 Lynn Garren : larreco v07\_08\_00 for larsoft v07\_10\_00
-   2018-11-07 Lynn Garren : Merge branch ‘feature/knoepfel\_TrackMomentumCalculator\_cleanup’ into develop
-   2018-11-07 Lynn Garren : nutools v2\_24\_07
-   2018-11-07 Lynn Garren : Merge branch ‘feature/knoepfel\_TrackMomentumCalculator\_cleanup’ into release/v07\_10\_00
-   2018-11-07 Christopher Backhouse : Remove dead code.
-   2018-11-07 Christopher Backhouse : Remove dead code.
-   2018-10-26 Kyle Knoepfel : Better handling of NaNs.
-   2018-10-25 Kyle Knoepfel : Fix obscure ownership issue due to ROOT.
-   2018-10-25 Kyle Knoepfel : Some cleanup.
-   2018-10-19 Kyle Knoepfel : Massive cleanup of TrackMomentumCalculator.

larsim v07\_06\_00
----------------------------------------

-   2018-11-07 Lynn Garren : larsim v07\_06\_00 for larsoft v07\_10\_00
-   2018-11-06 Lynn Garren : PositionInVolumeFilter is now in util namespace
-   2018-11-06 Lynn Garren : move ParticleFilters.h to larcorealg

larevt v07\_01\_02
----------------------------------------

-   2018-11-07 Lynn Garren : larevt v07\_01\_02 for larsoft v07\_10\_00

lardata v07\_00\_14
------------------------------------------

-   2018-11-07 Lynn Garren : lardata v07\_00\_14 for larsoft v07\_10\_00
-   2018-11-07 Lynn Garren : nutools v2\_24\_07
-   2018-11-01 Kyle Knoepfel : Fix missing array-element initialization.

larcore v07\_00\_05
------------------------------------------

-   2018-11-07 Lynn Garren : larcore v07\_00\_05 for larsoft v07\_10\_00

larpandoracontent v03\_14\_02
--------------------------------------------------------------

larsoftobj v07\_07\_00
------------------------------------------------

-   2018-11-07 Lynn Garren : larsoftobj v07\_07\_00 for larsoft v07\_10\_00
-   2018-11-07 Lynn Garren : product versions

lardataobj v07\_04\_00
------------------------------------------------

-   2018-11-07 Lynn Garren : lardataobj v07\_04\_00 for larsoft v07\_10\_00
-   2018-11-07 Lynn Garren : Merge branch ‘feature/escudero\_PFParticleMetadataMigration’ into release/v07\_10\_00
-   2018-11-07 Gianluca Petrillo : Allow combining data into a \`lar::sparse\_vector\` object.
-   2018-11-07 Gianluca Petrillo : Documentation, cosmetic and minor changes to \`lar::sparse\_vector\`.
-   2018-11-06 Lynn Garren : add missing header
-   2018-11-06 loressa : Fixed dictionary
-   2018-11-06 loressa : Initial migration of PFParticleMetadata from larpandora to lardataobj

lardataalg v07\_02\_05
------------------------------------------------

-   2018-11-07 Lynn Garren : lardataalg v07\_02\_05 for larsoft v07\_10\_00

larcorealg v07\_03\_00
------------------------------------------------

-   2018-11-07 Lynn Garren : larcorealg v07\_03\_00 for larsoft v07\_10\_00
-   2018-11-06 Lynn Garren : use the util namespace
-   2018-11-06 Lynn Garren : from larsim/larg4

larcoreobj v07\_00\_01
------------------------------------------------

larbatch v01\_47\_00
--------------------------------------------

-   2018-11-07 Lynn Garren : larbatch v01\_47\_00 for larsoft v07\_10\_00
-   2018-11-02 Herbert Greenlee : Add hook for running presubmission check script.

larutils v1\_23\_05
------------------------------------------

-   2018-11-07 Lynn Garren : larutils v1\_23\_05 for larsoft v07\_10\_00
-   2018-11-05 Lynn Garren : add s69
-   2018-11-05 Lynn Garren : add e17
