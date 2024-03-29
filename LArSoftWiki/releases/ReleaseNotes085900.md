# LArSoft v08_59_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v08_59_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_59_00/larsoft-v08_59_00.html)  
Download instructions for [just larsoftobj v08_29_02](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_29_02/larsoftobj-v08_29_02.html)

## Purpose

-   changes in develop
-   approved PRs

## New features

- new larsimrad repository

contains interface to BxDecay0 generator

- larsim PR 28

New Sim Filter using the sim::SimPhotonsLite data product

This request incorporates a new filter into the SimFilters/ directory. It is a module that replicates the functionality of the FilterSimPhotonTime filter except using sim::SimPhotonsLite instead of sim::SimPhotons as a data product.

I elected to write this as a new module (as opposed to porting FilterSimPhotonTime to handle both cases) because the code is minimal and mostly involves parsing the sim::SimPhotonsLite data product. Thus, porting FilterSimPhotonTime to handle both cases would mostly involve something like:

    if (hasSimPhotons)
        FilterSimPhotons()
    else
        FilterSimPhotonsLite()

  
and so I thought it would be cleaner to just write a new module. In addition, FilterSimPhotonTime requires cutting on the energy of the photons, which is not possible using the sim::SimPhotonsLite data product, and so the filter would have to be reorganized to handle both data products.

-   lareventdisplay PR 6
    -   Fix calls to geometry service's WireCoordinate method
    -   Attempts to draw, for example, vertices in the 2D display resulted in an exception being thrown. Unfortunately, instead of crashing the code this exception is caught and lar simply moves to the next event so its probably not clear to the user what is actually happening. Gianluca provided the prescription for how this method should be called, I went through and changed all occurances I could find.

## Bug fixes

## Updated dependencies

-   bxdecay0 v1_0_5
-   ifdhc_config v2_5_9
-   mrb v4_01_03

# Change List

## larsoft v08_59_00

-   2020-07-22 Lynn Garren : larsoft v08_59_00 for larsoft v08_59_00
-   2020-07-22 Lynn Garren : product versions
-   2020-07-22 Lynn Garren : ifdhc_config v2_5_10
-   2020-07-21 Lynn Garren : add larsimrad, update mrb and ifdhc_config

## lareventdisplay v08_12_22

-   2020-07-22 Lynn Garren : lareventdisplay v08_12_22 for larsoft v08_59_00
-   2020-07-22 Lynn Garren : Merge pull request \#6 from SFBayLaser/develop
-   2020-07-15 Tracy Usher : Primarily convert the calls to “wirecoordinate” so they won't throw exception. But also some formatting changes…
-   2020-07-14 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/lareventdisplay into develop
-   2020-07-05 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/lareventdisplay into develop
-   2020-06-05 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/lareventdisplay into develop
-   2020-05-31 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/lareventdisplay into develop
-   2020-05-25 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/lareventdisplay into develop
-   2020-05-17 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/lareventdisplay into develop
-   2020-05-10 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/lareventdisplay into develop
-   2020-04-30 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/lareventdisplay into develop
-   2020-04-30 Tracy Usher : Draw hits from the start to the end of the snippet
-   2020-04-25 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/lareventdisplay into develop
-   2020-04-15 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/lareventdisplay into develop
-   2020-04-09 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/lareventdisplay into develop
-   2020-03-27 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/lareventdisplay into develop
-   2020-03-27 Tracy Usher : working on fixing a potential bug in the min/max settings for waveform histograms

## larexamples v08_06_22

-   2020-07-22 Lynn Garren : larexamples v08_06_22 for larsoft v08_59_00

## larg4 v08_14_06

## larpandora v08_13_02

-   2020-07-22 Lynn Garren : larpandora v08_13_02 for larsoft v08_59_00

## larrecodnn v08_06_02

-   2020-07-22 Lynn Garren : larrecodnn v08_06_02 for larsoft v08_59_00

## larwirecell v08_12_16

## larana v08_17_14

-   2020-07-22 Lynn Garren : larana v08_17_14 for larsoft v08_59_00

## larreco v08_32_07

-   2020-07-22 Lynn Garren : larreco v08_32_07 for larsoft v08_59_00

## larsim v08_30_00

-   2020-07-22 Lynn Garren : larsim v08_30_00 for larsoft v08_59_00
-   2020-07-21 Lynn Garren : Merge pull request \#28 from SBNSoftware/feature/gputnam-simphotonlitefilter
-   2020-07-16 gputnam : Make const thigns const. Fix config name typo.
-   2020-07-16 gputnam : Change time window type to pair to statically enforce configuration.
-   2020-07-16 gputnam : Removed double include.
-   2020-07-03 gputnam : add comments.
-   2020-07-03 gputnam : Filter for requiring number of photons inside a time window using the sim::SimPhotonsLite data product.

## larevt v08_12_00

## lardata v08_15_09

## larcore v08_11_10

## larpandoracontent v03_18_00

## larsoftobj v08_29_02

## lardataobj v08_11_02

## lardataalg v08_13_14

## larcorealg v08_22_02

## larcoreobj v08_12_01

## webevd v08_00_07

## larbatch v01_52_02

## larutils v1_26_01
