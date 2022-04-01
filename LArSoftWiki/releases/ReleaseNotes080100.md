# LArSoft v08_01_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v08_01_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_01_00/larsoft-v08_01_00.html)  
Download instructions for [just larsoftobj v08_01_00](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_01_00/larsoftobj-v08_01_00.html)

## Purpose

## New features

-   larpandora feature/sgreen_showerIdIndex
    -   This change fills shower id index for showers produced by the Pandora shower creation module, which makes it easier to access the showers in downstream modules.
-   update to the detector clocks service to allow for more consistent handling of data and simulation trigger times from Wes
    -   lardata: feature/wketchum_OverlayG4RefCorrection
    -   lardataalg: feature/wketchum_OverlayG4RefCorrection
    -   https://indico.fnal.gov/event/19364/contribution/2/material/slides/0.pdf

## Bug fixes

-   larreco feature/bb_TCFix - resolve \#21556

## Updated dependencies

-   nutools v2_26_02
    -   “NuRandomService::createEngine” now returns a non-const reference to the created random engine instead of the random-number seed. This should allow all uses of getEngine to be removed.
    -   So far as we can tell, no experiment code uses the return value of createEngine.
-   systematicstools v00_02_00
-   nusystematics v00_02_02

# Change List

## larsoft v08_01_00

-   2018-12-18 Lynn Garren : larsoft v08_01_00 for larsoft v08_01_00
-   2018-12-18 Lynn Garren : product versions

## lareventdisplay v08_00_01

-   2018-12-18 Lynn Garren : lareventdisplay v08_00_01 for larsoft v08_01_00

## larexamples v08_00_01

-   2018-12-18 Lynn Garren : larexamples v08_00_01 for larsoft v08_01_00

## larg4 v08_00_01

-   2018-12-18 Lynn Garren : larg4 v08_00_01 for larsoft v08_01_00

## larpandora v08_01_00

-   2018-12-18 Lynn Garren : larpandora v08_01_00 for larsoft v08_01_00
-   2018-12-14 Steven Green : Adding the shower id index Pandora showers

## larwirecell v08_00_01

-   2018-12-18 Lynn Garren : larwirecell v08_00_01 for larsoft v08_01_00

## larana v08_00_01

-   2018-12-18 Lynn Garren : larana v08_00_01 for larsoft v08_01_00

## larreco v08_01_00

-   2018-12-18 Lynn Garren : larreco v08_01_00 for larsoft v08_01_00
-   2018-12-18 Bruce Baller : fix TrajCluster bug

## larsim v08_00_01

-   2018-12-18 Lynn Garren : larsim v08_00_01 for larsoft v08_01_00

## larevt v08_00_01

-   2018-12-18 Lynn Garren : larevt v08_00_01 for larsoft v08_01_00

## lardata v08_00_01

-   2018-12-18 Lynn Garren : lardata v08_00_01 for larsoft v08_01_00
-   2018-12-17 Adi Ashkenazi : Merge branch 'master' into feature/wketchum_OverlayG4RefCorrection updating lardata/feature/wketchum_OverlayG4RefCorrection with new larsoft version compatible with uboonecode v7_13_02
-   2018-11-29 Wesley Ketchum : add in G4RefTime correction option

## larcore v08_00_00

## larpandoracontent v03_14_03

## larsoftobj v08_01_00

-   2018-12-18 Lynn Garren : larsoftobj v08_01_00 for larsoft v08_01_00
-   2018-12-18 Lynn Garren : product versions

## lardataobj v08_00_00

## lardataalg v08_01_00

-   2018-12-18 Lynn Garren : lardataalg v08_01_00 for larsoft v08_01_00
-   2018-12-17 Adi Ashkenazi : Merge branch 'master' into feature/wketchum_OverlayG4RefCorrection updating feature/wketchum_OverlayG4RefCorrection with newer larsoft version compatible with uboonecode v7_13_02
-   2018-11-29 Wesley Ketchum : add in G4RefTime correction option

## larcorealg v08_00_00

## larcoreobj v08_00_00

## larbatch v01_47_02

## larutils v1_23_08

-   2018-12-18 Lynn Garren : larutils v1_23_08 for larsoft v08_01_00
-   2018-12-14 Thomas Junk : only use the /grid/fermiapp setup script on macOS
