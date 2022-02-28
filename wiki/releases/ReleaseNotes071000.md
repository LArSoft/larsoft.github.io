# LArSoft v07_10_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v07_10_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v07_10_00/larsoft-v07_10_00.html)  
Download instructions for [just larsoftobj v07_07_00](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v07_07_00/larsoftobj-v07_07_00.html)

## Purpose

-   approved feature branches
-   changes in develop

## New features

-   move PFParticleMetadata from larpandora to lardataobj
    -   lardataobj, larpandora and dunetpc feature/escudero_PFParticleMetadataMigration
    -   use Update_v07_10_00.sh and check code
    -   see Lorena's [presentation](https://indico.fnal.gov/event/18991/contribution/5/material/slides/0.pdf)
-   nutools v2_24_07 with ifbeam v2_2_10
-   larg4 remove dependency on larsim
    -   move larsim/LArG4/ParticleFilters.h to larcorealg
    -   use Update_v07_10_00.sh and check code

## Breaking changes

-   [breaking changes](Breaking_Changes) for PFParticleMetadata, ParticleFilters.h, and TrackMomentumCalculator
    -   A feature branch has been provided for dunetpc
    -   For local code, use Update_v07_10_00.sh

## Bug fixes

-   \#21135
    -   larreco feature/knoepfel_TrackMomentumCalculator_cleanup
    -   dunetpc, lariatsoft, ubana feature/knoepfel_TrackMomentumCalculator_cleanup
    -   see Kyle's [presentation](https://indico.fnal.gov/event/18991/contribution/3/material/slides/0.pdf)
-   larg4 feature/wenzel_fixbuild

## Updated dependencies

-   ifbeam v2_2_20
-   ifdh_art
-   nutools v2_24_07
-   nusystematics v00_01_03
-   mrb v1_17_02

# Change List

## larsoft v07_10_00

-   2018-11-07 Lynn Garren : actually install the scripts
-   2018-11-07 Lynn Garren : larsoft v07_10_00 for larsoft v07_10_00
-   2018-11-07 Lynn Garren : product versions
-   2018-11-07 Lynn Garren : fix namespace, remove larpandoraobj library
-   2018-11-07 Lynn Garren : moving PFParticleMetadata.h and ParticleFilters.h
-   2018-11-07 Lynn Garren : ifdh_art v2_06_10

## lareventdisplay v07_01_12

-   2018-11-07 Lynn Garren : lareventdisplay v07_01_12 for larsoft v07_10_00

## larexamples v07_00_15

-   2018-11-07 Lynn Garren : larexamples v07_00_15 for larsoft v07_10_00

## larg4 v07_03_00

-   2018-11-07 Lynn Garren : larg4 v07_03_00 for larsoft v07_10_00
-   2018-11-07 Lynn Garren : larsim to larevt
-   2018-11-06 Lynn Garren : depend on larevt, not larsim
-   2018-11-06 Lynn Garren : depend on larevt, not larsim
-   2018-11-06 Lynn Garren : PositionInVolumeFilter is now in util namespace
-   2018-11-02 Hans-Joachim Wenzel : fix the build so that gdml,xsd and fcl files are copied correctly and the location is added to the /home/wenzel/larg4_dev5/build_slf7.x86_64/larsim/G4:/home/wenzel/larg4_dev5/build_slf7.x86_64/larg4/gdml:.:/grid/fermiapp/products/larsoft/larsoft_data/v1_02_01:/grid/fermiapp/products/larsoft/larsoft_data/v1_02_01/SupernovaNeutrinos:/grid/fermiapp/products/larsoft/larsoft_data/v1_02_01/pdf/MUSUN:/grid/fermiapp/products/larsoft/larsoft_data/v1_02_01/pdf/Gaisser:/grid/fermiapp/products/larsoft/larsoft_data/v1_02_01/PhotonPropagation/LibraryData:/grid/fermiapp/products/larsoft/larsoft_data/v1_02_01/ParticleIdentification:/grid/fermiapp/products/larsoft/larsoft_data/v1_02_01/Genfit:/grid/fermiapp/products/larsoft/larsoft_data/v1_02_01/Argoneut:/grid/fermiapp/products/larsoft/larsoft_data/v1_02_01/uboone:/grid/fermiapp/products/larsoft/marley/v1_0_0e/Linux64bit+3.10-2.17-e17-prof/share/marley/structure:/grid/fermiapp/products/larsoft/marley/v1_0_0e/Linux64bit+3.10-2.17-e17-prof/share/marley/react:/grid/fermiapp/products/larsoft/larcore/v07_00_04/gdml:/grid/fermiapp/products/larsoft/larcore/v07_00_04/gdml:/grid/fermiapp/products/larsoft/larcorealg/v07_02_01/gdml:/grid/fermiapp/products/larsoft/larcoreobj/v07_00_01/gdml

## larpandora v07_03_00

-   2018-11-07 Lynn Garren : larpandora v07_03_00 for larsoft v07_10_00
-   2018-11-06 loressa : Initial migration of PFParticleMetadata from larpandora to lardataobj

## larwirecell v07_03_01

-   2018-11-07 Lynn Garren : larwirecell v07_03_01 for larsoft v07_10_00

## larana v07_02_08

-   2018-11-07 Lynn Garren : larana v07_02_08 for larsoft v07_10_00

## larreco v07_08_00

-   2018-11-07 Lynn Garren : restore goof by brute force
-   2018-11-07 Lynn Garren : Merge branch 'release/v07_10_00'
-   2018-11-07 Lynn Garren : make it right
-   2018-11-07 Lynn Garren : Merge branch 'release/v07_10_00'
-   2018-11-07 Lynn Garren : larreco v07_08_00
-   2018-11-07 Lynn Garren : Merge branch 'release/v07_10_00'
-   2018-11-07 Lynn Garren : using larsim v07_06_00
-   2018-11-07 Lynn Garren : Merge branch 'master' of ssh://cdcvs.fnal.gov/cvs/projects/larreco
-   2018-11-07 Lynn Garren : larreco v07_08_00 for larsoft v07_10_00
-   2018-11-07 Lynn Garren : larreco v07_08_00 for larsoft v07_10_00
-   2018-11-07 Lynn Garren : Merge branch 'feature/knoepfel_TrackMomentumCalculator_cleanup' into develop
-   2018-11-07 Lynn Garren : nutools v2_24_07
-   2018-11-07 Lynn Garren : Merge branch 'feature/knoepfel_TrackMomentumCalculator_cleanup' into release/v07_10_00
-   2018-11-07 Christopher Backhouse : Remove dead code.
-   2018-11-07 Christopher Backhouse : Remove dead code.
-   2018-10-26 Kyle Knoepfel : Better handling of NaNs.
-   2018-10-25 Kyle Knoepfel : Fix obscure ownership issue due to ROOT.
-   2018-10-25 Kyle Knoepfel : Some cleanup.
-   2018-10-19 Kyle Knoepfel : Massive cleanup of TrackMomentumCalculator.

## larsim v07_06_00

-   2018-11-07 Lynn Garren : larsim v07_06_00 for larsoft v07_10_00
-   2018-11-06 Lynn Garren : PositionInVolumeFilter is now in util namespace
-   2018-11-06 Lynn Garren : move ParticleFilters.h to larcorealg

## larevt v07_01_02

-   2018-11-07 Lynn Garren : larevt v07_01_02 for larsoft v07_10_00

## lardata v07_00_14

-   2018-11-07 Lynn Garren : lardata v07_00_14 for larsoft v07_10_00
-   2018-11-07 Lynn Garren : nutools v2_24_07
-   2018-11-01 Kyle Knoepfel : Fix missing array-element initialization.

## larcore v07_00_05

-   2018-11-07 Lynn Garren : larcore v07_00_05 for larsoft v07_10_00

## larpandoracontent v03_14_02

## larsoftobj v07_07_00

-   2018-11-07 Lynn Garren : larsoftobj v07_07_00 for larsoft v07_10_00
-   2018-11-07 Lynn Garren : product versions

## lardataobj v07_04_00

-   2018-11-07 Lynn Garren : lardataobj v07_04_00 for larsoft v07_10_00
-   2018-11-07 Lynn Garren : Merge branch 'feature/escudero_PFParticleMetadataMigration' into release/v07_10_00
-   2018-11-07 Gianluca Petrillo : Allow combining data into a \`lar::sparse_vector\` object.
-   2018-11-07 Gianluca Petrillo : Documentation, cosmetic and minor changes to \`lar::sparse_vector\`.
-   2018-11-06 Lynn Garren : add missing header
-   2018-11-06 loressa : Fixed dictionary
-   2018-11-06 loressa : Initial migration of PFParticleMetadata from larpandora to lardataobj

## lardataalg v07_02_05

-   2018-11-07 Lynn Garren : lardataalg v07_02_05 for larsoft v07_10_00

## larcorealg v07_03_00

-   2018-11-07 Lynn Garren : larcorealg v07_03_00 for larsoft v07_10_00
-   2018-11-06 Lynn Garren : use the util namespace
-   2018-11-06 Lynn Garren : from larsim/larg4

## larcoreobj v07_00_01

## larbatch v01_47_00

-   2018-11-07 Lynn Garren : larbatch v01_47_00 for larsoft v07_10_00
-   2018-11-02 Herbert Greenlee : Add hook for running presubmission check script.

## larutils v1_23_05

-   2018-11-07 Lynn Garren : larutils v1_23_05 for larsoft v07_10_00
-   2018-11-05 Lynn Garren : add s69
-   2018-11-05 Lynn Garren : add e17
