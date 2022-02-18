# LArSoft v08_34_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v08_34_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_34_00/larsoft-v08_34_00.html)  
Download instructions for [just larsoftobj v08_20_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_20_00/larsoftobj-v08_20_00.html)

## Purpose

-   changes in develop
-   approved feature branches

## New features

-   additional optional smearing for SimChannel
    -   default behavior should remain the same
    -   larreco feature/wgu_simchannel_tag
        -   add a configurable label
    -   larwirecell feature/wgu_simchannel_extsigma
        -   add additional smearing for the SimChannel (optional)
    -   larsim feature/wgu_pdsim_sce
        -   add space charge effect (optional)
-   larana feature/kterao_ophit_update
    -   fix/improve some issues uncovered in work on the ICARUS optical hits

## Bug fixes

## Updated dependencies

# Change List

## larsoft v08_34_00

-   2019-10-29 Lynn Garren : larsoft v08_34_00 for larsoft v08_34_00
-   2019-10-29 Lynn Garren : product versions

## lareventdisplay v08_08_19

-   2019-10-29 Lynn Garren : lareventdisplay v08_08_19 for larsoft v08_34_00

## larexamples v08_02_24

-   2019-10-29 Lynn Garren : larexamples v08_02_24 for larsoft v08_34_00

## larg4 v08_05_01

-   2019-10-29 Lynn Garren : larg4 v08_05_01 for larsoft v08_34_00

## larpandora v08_07_23

-   2019-10-29 Lynn Garren : larpandora v08_07_23 for larsoft v08_34_00

## larwirecell v08_08_00

-   2019-10-29 Lynn Garren : larwirecell v08_08_00 for larsoft v08_34_00
-   2019-10-27 Wenqiang Gu : add optional smearing from signal processing

## larana v08_11_00

-   2019-10-29 Lynn Garren : larana v08_11_00 for larsoft v08_34_00
-   2019-10-29 Lynn Garren : Merge branch 'feature/kterao_ophit_update' into release/v08_33_01
-   2019-10-10 drinkingkazu : a bit of sped up
-   2019-10-10 drinkingkazu : Make sliding window better handle gaps, RMS slider can have a pad at the tail for integration
-   2019-10-08 drinkingkazu : do not double count an overlapping bin for consecutive pulses, implement a cut on pulse width (default no cut)

## larreco v08_21_00

-   2019-10-29 Lynn Garren : larreco v08_21_00 for larsoft v08_34_00
-   2019-10-27 Wenqiang Gu : add label for simChannel

## larsim v08_15_00

-   2019-10-29 Lynn Garren : larsim v08_15_00 for larsoft v08_34_00
-   2019-10-28 Wenqiang Gu : add optional SCE

## larevt v08_06_13

-   2019-10-29 Lynn Garren : larevt v08_06_13 for larsoft v08_34_00

## lardata v08_09_01

-   2019-10-29 Lynn Garren : lardata v08_09_01 for larsoft v08_34_00

## larcore v08_06_00

-   2019-10-29 Lynn Garren : larcore v08_06_00 for larsoft v08_34_00
-   2019-10-08 Gianluca Petrillo : Added interface for a tool creating and initializing a channel map algorithm.

## larpandoracontent v03_15_08

## larsoftobj v08_20_00

-   2019-10-29 Lynn Garren : larsoftobj v08_20_00 for larsoft v08_34_00
-   2019-10-29 Lynn Garren : product versions

## lardataobj v08_06_01

-   2019-10-29 Lynn Garren : lardataobj v08_06_01 for larsoft v08_34_00

## lardataalg v08_08_09

-   2019-10-29 Lynn Garren : lardataalg v08_08_09 for larsoft v08_34_00

## larcorealg v08_15_00

-   2019-10-29 Lynn Garren : larcorealg v08_15_00 for larsoft v08_34_00
-   2019-10-20 Gianluca Petrillo : Documentation aestetics fix
-   2019-10-08 Gianluca Petrillo : Fixed some documentation issue in \`geo::CryostatGeo\`.
-   2019-10-20 Gianluca Petrillo : Added option to skip mass computation in geometry test.
-   2019-09-09 Gianluca Petrillo : Added \`util::reference_addresser\` to extract the address of a datum.
-   2019-10-24 Gianluca Petrillo : Adding some algorithm useful in channel mapping.
-   2019-09-08 Gianluca Petrillo : Data structure used by channel mapping and geometry service provider moved to its own header.

## larcoreobj v08_06_00

-   2019-10-29 Lynn Garren : larcoreobj v08_06_00 for larsoft v08_34_00
-   2019-10-26 Gianluca Petrillo : Added write access to geometry ID indices by level.
-   2019-10-08 Gianluca Petrillo : Extended geometry and readout ID classes for metaprogramming.
-   2019-10-08 Gianluca Petrillo : Added level to optical detector ID.
-   2019-10-08 Gianluca Petrillo : Updated readout ID object constructors.
-   2019-10-08 Gianluca Petrillo : Removed legacy conversion from readout ID.
-   2019-10-08 Gianluca Petrillo : Functions pertaining geometry IDs made constexpr.
-   2019-09-07 Gianluca Petrillo : Updated Doxygen documentation style.
-   2019-09-07 Gianluca Petrillo : Removed workaround for ROOT 5.
-   2019-09-07 Gianluca Petrillo : Members of geometry IDs made constexpr.

## larbatch v01_51_09

-   2019-10-29 Lynn Garren : larbatch v01_51_09 for larsoft v08_34_00
-   2019-10-28 Fernanda Psihas : Added Supplemental to the non-next_stage_inputs. Now these files are propperly skipped.

## larutils v1_24_05
