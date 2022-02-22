# LArSoft v08_24_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v08_24_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_24_00/larsoft-v08_24_00.html)  
Download instructions for [just larsoftobj v08_15_03](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_15_03/larsoftobj-v08_15_03.html)

## Purpose

-   changes in develop
-   approved feature branches

## New features

-   Pandora updates
    -   feature/larpandoracontent_v03_15_00 for larpandoracontent, dunetpc and ubreco
    -   See the relevant [DUNE FD sim/reco slides](https://indico.fnal.gov/event/21007/contribution/3/material/slides/0.pdf). As usual for a Pandora release, there’s c algorithm functionality changes (just a few small changes this time, see ChangeLog.txt) for larpandoracontent, with changes to the Pandora XML configuration in dunetpc (and associated config change, with no change in output for ubreco). The machine learning training output is hosted in dune_pardata.

## Bug fixes

-   \#22744 fixed with art_root_io v1_00_07 (s86)

## Updated dependencies

-   art_root_io v1_00_07 (s86)
-   nutools v3_00_02
-   artg4tk v09_04_04
-   pandora v03_11_01b (adds the ability to build with py3)
-   wirecell v0_12_3 (adds the ability to build with py3)
-   systematicstools v00_03_04
-   nusystematics v00_04_01
-   mrb v3_02_01
    -   updated mrb uv command with improvements for release managers

# Change List

## larsoft v08_24_00

-   2019-06-27 Lynn Garren : larsoft v08_24_00 for larsoft v08_24_00
-   2019-06-27 Lynn Garren : update versions

## lareventdisplay v08_08_01

-   2019-06-27 Lynn Garren : lareventdisplay v08_08_01 for larsoft v08_24_00

## larexamples v08_02_09

-   2019-06-27 Lynn Garren : larexamples v08_02_09 for larsoft v08_24_00

## larg4 v08_03_08

-   2019-06-27 Lynn Garren : larg4 v08_03_08 for larsoft v08_24_00

## larpandora v08_07_05

-   2019-06-27 Lynn Garren : larpandora v08_07_05 for larsoft v08_24_00

## larwirecell v08_05_08

-   2019-06-27 Lynn Garren : larwirecell v08_05_08 for larsoft v08_24_00

## larana v08_10_01

-   2019-06-27 Lynn Garren : larana v08_10_01 for larsoft v08_24_00

## larreco v08_15_01

-   2019-06-27 Lynn Garren : larreco v08_15_01 for larsoft v08_24_00

## larsim v08_09_01

-   2019-06-27 Lynn Garren : larsim v08_09_01 for larsoft v08_24_00
-   2019-06-26 Steven Gardiner : Fix issue in MARLEYHelper where the setting for the incident neutrino direction was not forwarded to MARLEY correctly.
-   2019-06-25 Tom Junk : initialize fSingleVertex (had been omitted)

## larevt v08_06_01

-   2019-06-27 Lynn Garren : larevt v08_06_01 for larsoft v08_24_00

## lardata v08_06_01

-   2019-06-27 Lynn Garren : lardata v08_06_01 for larsoft v08_24_00

## larcore v08_04_05

-   2019-06-27 Lynn Garren : larcore v08_04_05 for larsoft v08_24_00

## larpandoracontent v03_15_00

-   2019-06-27 Lynn Garren : larpandoracontent v03_15_00 for larsoft v08_24_00
-   2019-06-26 Lynn Garren : Merge branch 'feature/larpandoracontent_v03_15_00' into release/v08_24_00
-   2019-06-17 Lynn Garren : remove status comment
-   2019-06-17 Lynn Garren : fix how we find cetbuildtools
-   2019-06-14 Lynn Garren : larpandoracontent v03_14_09 for larsoft v08_22_00_01
-   2019-06-13 Lynn Garren : larpandoracontent v03_14_09 with py3 build options
-   2019-06-12 Lynn Garren : use pandora v03_11_01b with py3 support
-   2019-06-12 John Marshall : Merge branch 'updates'
-   2019-06-10 John Marshall : Update version and change log.
-   2019-06-12 John Marshall : Merge branch 'feature/StitchingPfoSelection'
-   2019-06-10 John Marshall : Set parameter default values to return previous behaviour.
-   2019-06-10 phuncr : Changed the cuts used to select which clusters are considered in the stitching
-   2019-06-10 John Marshall : Merge branch 'feature/VertexCandidateReduction'
-   2019-06-10 phuncr : Cosmetic changes.
-   2019-06-09 phuncr : Added option to reduce number of vertex candidates created
-   2019-06-10 John Marshall : Merge branch 'feature/lhw_cpp17fix'
-   2019-05-29 Leigh Whitehead : Update comments
-   2019-05-29 Leigh Whitehead : Remove variable name in arguments of default functions
-   2019-06-10 John Marshall : Merge branch 'feature/MvaVertexSelection'
-   2019-05-16 John Marshall : Template SvmVertexSelection algorithm on mva type and rename to MvaVertexSelection.

## larsoftobj v08_15_03

-   2019-06-27 Lynn Garren : larsoftobj v08_15_03 for larsoft v08_24_00
-   2019-06-27 Lynn Garren : update versions

## lardataobj v08_04_04

-   2019-06-27 Lynn Garren : lardataobj v08_04_04 for larsoft v08_24_00

## lardataalg v08_07_03

-   2019-06-27 Lynn Garren : lardataalg v08_07_03 for larsoft v08_24_00

## larcorealg v08_12_02

-   2019-06-27 Lynn Garren : larcorealg v08_12_02 for larsoft v08_24_00
-   2019-06-21 Gianluca Petrillo : geo::BoxBoundedGeo: added overlap test methods.
-   2019-06-21 Gianluca Petrillo : geo::PlaneGeo gets the wire pitch from central wires instead of corner.

## larcoreobj v08_05_01

## larbatch v01_51_04

## larutils v1_24_00
