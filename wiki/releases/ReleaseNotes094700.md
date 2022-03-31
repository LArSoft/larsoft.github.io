# LArSoft v09_47_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v09_47_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_47_00/larsoft-v09_47_00.html)  
Download instructions for [just larsoftobj v09_17_01](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_17_01/larsoftobj-v09_17_01.html)

## Purpose

-   changes in develop
-   approved PRs

## New features

-   larcore PR 9
    -   build with cetmodules
-   lardata PR 22
    -   build with cetmodules
-   larg4 PR 38
    -   Implement behavior of legacy larg4 module
    -   Implement behavior of legacy larg4 module: which modified the trackID stored in the SimEnergyDeposit. If the particle with that trackID was to be dropped, the value stored in the EnergyDeposit was –1 times the value of the parent that was retained in the collection.
    -   This is the default but a parameter of the `larg4::LArG4DetectorService updateSimEnergyDeposits_{p.get("UpdateSimEnergyDeposits", true)}` can be set to false then the SimEnergyDeposits are not modified. (This is actually the prefered behavior). One can always relate the SimEnergyDeposit to the ParentID by using the provided `std::unique_ptr<std::map<int,std::set>> DroppedTracksCollection()` where the key is the TrackID of the parent, the set are the trackid for which no MCParticle was created.
    -   This requires LArSoft/lardataobj PR 21

## Bug fixes

-   lardataalg PR 31
    -   fix cmake deprecation warning
-   lardataobj PR 21
    -   changes due to update of larg4::ParticleListActionService
    -   For this release the changes include:
            SimEnergyDeposit.h // add setter for the trackid
            classes_def.xml // add entry for map<int,set>, pair<int,set>

## Updated dependencies

-   cetmodules v3_09_03
-   mrb v6_04_01

# Change List

## larsoft v09_47_00

-   [changes since v09_46_00](https://github.com/LArSoft/larsoft/compare/v09_46_00...v09_47_00)

## lareventdisplay v09_03_11

-   [changes since v09_03_10](https://github.com/LArSoft/lareventdisplay/compare/v09_03_10...v09_03_11)

## larexamples v09_03_11

-   [changes since v09_03_10](https://github.com/LArSoft/larexamples/compare/v09_03_10...v09_03_11)

## larpandora v09_12_10

-   [changes since v09_12_09](https://github.com/LArSoft/larpandora/compare/v09_12_09...v09_12_10)

## larsimrad v09_04_11

-   [changes since v09_04_10](https://github.com/LArSoft/larsimrad/compare/v09_04_10...v09_04_11)

## larrecodnn v09_11_01

-   [changes since v09_11_00](https://github.com/LArSoft/larrecodnn/compare/v09_11_00...v09_11_01)

## larwirecell v09_06_03

-   [changes since v09_06_02](https://github.com/LArSoft/larwirecell/compare/v09_06_02...v09_06_03)

## larana v09_05_08

-   [changes since v09_05_07](https://github.com/LArSoft/larana/compare/v09_05_07...v09_05_08)

## larreco v09_10_01

-   [changes since v09_10_00](https://github.com/LArSoft/larreco/compare/v09_10_00...v09_10_01)

## larsim v09_22_07

-   [changes since v09_22_06](https://github.com/LArSoft/larsim/compare/v09_22_06...v09_22_07)

## larg4 v09_10_00

-   [changes since v09_09_00](https://github.com/LArSoft/larg4/compare/v09_09_00...v09_10_00)

## larevt v09_04_06

-   [changes since v09_04_05](https://github.com/LArSoft/larevt/compare/v09_04_05...v09_04_06)

## lardata v09_08_00

-   [changes since v09_07_02](https://github.com/LArSoft/lardata/compare/v09_07_02...v09_08_00)

## larcore v09_05_00

-   [changes since v09_04_01](https://github.com/LArSoft/larcore/compare/v09_04_01...v09_05_00)

## larpandoracontent v03_27_00

## larsoftobj v09_17_01

-   [changes since v09_17_00](https://github.com/LArSoft/larsoftobj/compare/v09_17_00...v09_17_01)

## larvecutils v09_01_00

## lardataobj v09_06_01

-   [changes since v09_06_00](https://github.com/LArSoft/lardataobj/compare/v09_06_00...v09_06_01)

## lardataalg v09_10_01

-   [changes since v09_10_00](https://github.com/LArSoft/lardataalg/compare/v09_10_00...v09_10_01)

## larcorealg v09_06_00

## larcoreobj v09_05_00

## webevd v09_08_05

-   [changes since v09_08_04](https://github.com/LArSoft/webevd/compare/v09_08_04...v09_08_05)

## larbatch v01_57_00

## larutils v1_28_02
