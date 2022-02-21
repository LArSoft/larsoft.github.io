# LArSoft v08_30_02 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v08_30_02](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_30_02/larsoft-v08_30_02.html)  
Download instructions for [just larsoftobj v08_17_04](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_17_04/larsoftobj-v08_17_04.html)

## Purpose

-   changes in develop
-   approved feature branches

## New features

-   lardata addition for MT and effieciency
    -   lardata feature/team_for_mt
-   larpandora
    -   feature/sgreen_ProjectShowerVertex
    -   There is a single changes that places the shower start on the primary axis of the 3D shower instead of the closest 3D point to the primary interaction vertex. There are no expected changes to output data products because this change only alters the x, y, z at the start of a shower.

## Bug fixes

## Updated dependencies

# Change List

## larsoft v08_30_02

-   2019-09-12 Lynn Garren : larsoft v08_30_02 for larsoft v08_30_02
-   2019-09-12 Lynn Garren : product versions
-   2019-09-12 Lynn Garren : build gallery

## lareventdisplay v08_08_12

-   2019-09-12 Lynn Garren : lareventdisplay v08_08_12 for larsoft v08_30_02
-   2019-09-06 Usher, Tracy L : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/lareventdisplay into develop
-   2019-09-06 Usher, Tracy L : Adding option for drawing all energy deposits regardless of association to MCParticle (which may have been pruned away)

## larexamples v08_02_18

-   2019-09-12 Lynn Garren : larexamples v08_02_18 for larsoft v08_30_02

## larg4 v08_03_16

-   2019-09-12 Lynn Garren : larg4 v08_03_16 for larsoft v08_30_02

## larpandora v08_07_16

-   2019-09-12 Lynn Garren : larpandora v08_07_16 for larsoft v08_30_02
-   2019-09-09 Steven Green : Remove duplicate running of PCA.
-   2019-09-06 Steven Green : Project shower vertices onto PCA primary axis.

## larwirecell v08_05_16

-   2019-09-12 Lynn Garren : larwirecell v08_05_16 for larsoft v08_30_02

## larana v08_10_12

-   2019-09-12 Lynn Garren : larana v08_10_12 for larsoft v08_30_02

## larreco v08_18_02

-   2019-09-12 Lynn Garren : larreco v08_18_02 for larsoft v08_30_02

## larsim v08_12_04

-   2019-09-12 Lynn Garren : larsim v08_12_04 for larsoft v08_30_02

## larevt v08_06_09

-   2019-09-12 Lynn Garren : larevt v08_06_09 for larsoft v08_30_02

## lardata v08_07_07

-   2019-09-12 Lynn Garren : lardata v08_07_07 for larsoft v08_30_02
-   2019-09-06 Kyle Knoepfel : Merge branch 'develop' into feature/team_for_mt
-   2019-08-29 Kyle Knoepfel : Merge branch 'develop' into feature/team_for_mt
-   2019-08-28 Kyle Knoepfel : Add to_element helper; update AssociationUtil.

## larcore v08_05_00

## larpandoracontent v03_15_04

## larsoftobj v08_17_04

## lardataobj v08_04_10

## lardataalg v08_08_05

## larcorealg v08_14_02

## larcoreobj v08_05_03

## larbatch v01_51_07

## larutils v1_24_03

-   2019-09-12 Lynn Garren : larutils v1_24_03 for larsoft v08_30_02
-   2019-09-11 Lynn Garren : adding s90 and updating larbase
