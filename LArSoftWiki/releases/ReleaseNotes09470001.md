# LArSoft v09_47_00_01 Release Notes

[list of LArSoft releases](LArSoft_release_list)

Download instructions for [larsoft v09_47_00_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_47_00_01/larsoft-v09_47_00_01.html)

Download instructions for [just larsoftobj v09_17_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_17_01/larsoftobj-v09_17_01.html)

## Purpose

- test release for tensorflow v2_6_0

## Important Changes

- This release requires a few packages that were built with spack.  These packages are available via ups in the packages directory.  
- Please replace `source /cvmfs/larsoft.opensciencegrid.org/products/setup` with `source /cvmfs/larsoft.opensciencegrid.org/setup_larsoft.sh`.
  - This script contains 2 lines:
```
source /cvmfs/larsoft.opensciencegrid.org/products/setup
export PRODUCTS=$PRODUCTS:/cvmfs/larsoft.opensciencegrid.org/packages
```

- tensorflow v2_6_0 is built with eigen v3_4_0
  - Please make the following change where needed.
```diff
-find_package (Eigen3 3.3...3.3.9 REQUIRED NO_MODULE)
+find_package (Eigen3 REQUIRED NO_MODULE)
```

## Updated dependencies

- tensorflow v2_6_0
- eigen v3_4_0
- wirecell             v0_17_1a

# Change List

## larsoft v09_47_00_01

- [changes since v09_47_00](https://github.com/LArSoft/larsoft/compare/v09_47_00...v09_47_00_01)



## lareventdisplay v09_03_11_01

- [changes since v09_03_11](https://github.com/LArSoft/lareventdisplay/compare/v09_03_11...v09_03_11_01)


## larexamples v09_03_11


## larpandora v09_12_10_01

- [changes since v09_12_10](https://github.com/LArSoft/larpandora/compare/v09_12_10...v09_12_10_01)


## larsimrad v09_04_11


## larrecodnn v09_11_01_01

- [changes since v09_11_01](https://github.com/LArSoft/larrecodnn/compare/v09_11_01...v09_11_01_01)


## larwirecell v09_06_03_01

- [changes since v09_06_03](https://github.com/LArSoft/larwirecell/compare/v09_06_03...v09_06_03_01)


## larana v09_05_08_01

- [changes since v09_05_08](https://github.com/LArSoft/larana/compare/v09_05_08...v09_05_08_01)


## larreco v09_10_01_01

- [changes since v09_10_01](https://github.com/LArSoft/larreco/compare/v09_10_01...v09_10_01_01)


## larsim v09_22_07


## larg4 v09_10_00


## larevt v09_04_06


## lardata v09_08_00


## larcore v09_05_00


## larpandoracontent v03_27_00_01

- [changes since v03_27_00](https://github.com/LArSoft/larpandoracontent/compare/v03_27_00...v03_27_00_01)


## larsoftobj v09_17_01


## larvecutils v09_01_00


## lardataobj v09_06_01


## lardataalg v09_10_01


## larcorealg v09_06_00


## larcoreobj v09_05_00

