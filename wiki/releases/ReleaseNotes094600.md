# LArSoft v09_46_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v09_46_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_46_00/larsoft-v09_46_00.html)  
Download instructions for [just larsoftobj v09_17_00](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_17_00/larsoftobj-v09_17_00.html)

## Purpose

-   changes in develop
-   approved PRs

## New features

-   larpandoracontent PR 38
    -   This PR adds support for vertex finding without a beam assumption and also fixes a bug where small clusters can cause sliding fits to fail in the bounded mopup algorithm. This latter change can result in product differences if such small clusters are present.
-   larrecodnn PR 26
    -   First commit of tf_graph to use SavedModelBundle
    -   Needs to find input tensor name dynamically. With SavedModelBundle the input name cannot be found from graphdef as the format has been changed. The name will be added automatically.
    -   I encountered this error while running the code. A google search suggests this might be a bug in tensorflow: see [issue 9282](https://github.com/tensorflow/tensorflow/issues/9282) in tensorflow github
            F tensorflow/core/framework/tensor_shape.cc:36] Check failed: NDIMS == dims() (2 vs. 1) Asking for tensor of 2 dimensions from a tensor of 1 dimensions

## Bug fixes

## Updated dependencies

# Change List

## larsoft v09_46_00

-   [changes since v09_45_00](https://github.com/LArSoft/larsoft/compare/v09_45_00...v09_46_00)

## lareventdisplay v09_03_10

## larexamples v09_03_10

## larpandora v09_12_09

-   [changes since v09_12_08](https://github.com/LArSoft/larpandora/compare/v09_12_08...v09_12_09)

## larsimrad v09_04_10

## larrecodnn v09_11_00

-   [changes since v09_10_11](https://github.com/LArSoft/larrecodnn/compare/v09_10_11...v09_11_00)

## larwirecell v09_06_02

## larana v09_05_07

## larreco v09_10_00

## larsim v09_22_06

## larg4 v09_09_00

## larevt v09_04_05

## lardata v09_07_02

## larcore v09_04_01

## larpandoracontent v03_27_00

-   [changes since v03_26_04](https://github.com/LArSoft/larpandoracontent/compare/v03_26_04...v03_27_00)

## larsoftobj v09_17_00

## larvecutils v09_01_00

## lardataobj v09_06_00

## lardataalg v09_10_00

## larcorealg v09_06_00

## larcoreobj v09_05_00

## webevd v09_08_04

## larbatch v01_57_00

## larutils v1_28_02
