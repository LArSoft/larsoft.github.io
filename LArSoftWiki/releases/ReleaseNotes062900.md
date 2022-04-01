# LArSoft v06_29_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v06_29_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_29_00/larsoft-v06_29_00.html)  
Download instructions for [just larsoftobj v1_15_00](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_15_00/larsoftobj-v1_15_00.html)

## Purpose

## New features

-   feature/gp_SpeedUpSpaceCharge (larevt, larsim, uboonecode and dunetpc)
    -   [March 28 presentation](https://indico.fnal.gov/getFile.py/access?contribId=5&amp;resId=0&amp;materialId=slides&amp;confId=14108)

## Bug fixes

## Updated dependencies

# Change List

## larsoft v06_29_00

-   2017-03-29 Lynn Garren : larsoft v06_29_00 for larsoft v06_29_00
-   2017-03-29 Lynn Garren : updating larsoftobj
-   2017-03-29 Lynn Garren : update product versions

## lareventdisplay v06_03_03

-   2017-03-29 Lynn Garren : lareventdisplay v06_03_03 for larsoft v06_29_00

## larexamples v06_01_19

-   2017-03-29 Lynn Garren : larexamples v06_01_19 for larsoft v06_29_00

## larpandora v06_08_05

-   2017-03-29 Lynn Garren : larpandora v06_08_05 for larsoft v06_29_00

## larwirecell v06_01_01

-   2017-03-29 Lynn Garren : larwirecell v06_01_01 for larsoft v06_29_00

## larana v06_03_23

-   2017-03-29 Lynn Garren : larana v06_03_23 for larsoft v06_29_00

## larreco v06_23_00

-   2017-03-29 Lynn Garren : larreco v06_23_00 for larsoft v06_29_00
-   2017-03-29 Robert Sulej : improve scripts collecting training data
-   2017-03-29 Robert Sulej : add option to tag cosmic activity, very simple for start and switched off by default
-   2017-03-28 Robert Sulej : add cosmic tagging in pma, initial code
-   2017-03-27 Robert Sulej : update default patch sizes
-   2017-03-27 Robert Sulej : add histo for truth michel charge contribution
-   2017-03-27 Robert Sulej : add option to delay in drift direction for truth deposit and pdg maps for cases of using not-deconvoluted adc
-   2017-03-22 Robert Sulej : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-03-22 Robert Sulej : read any length of cnn output vector and dig out em-like and track-like values by the nameof columns

## larsim v06_15_00

-   2017-03-29 Lynn Garren : larsim v06_15_00 for larsoft v06_29_00
-   2017-03-23 Gianluca Petrillo : Adapting to SpaceCharge provider interface changes.
-   2017-03-29 Gianluca Petrillo : Bug fix (fatal typo) in empty_events.fcl
-   2017-03-24 Thomas Junk : Fix energy histogram upper edge — thanks to Juergen Reichenbacher for spotting that.

## larevt v06_08_00

-   2017-03-29 Lynn Garren : larevt v06_08_00 for larsoft v06_29_00
-   2017-03-23 Gianluca Petrillo : Interface change: SpaceCharge provider returns geometry vectors.

## lardata v06_16_01

-   2017-03-29 Lynn Garren : lardata v06_16_01 for larsoft v06_29_00
-   2017-03-22 Robert Sulej : add query for the index with a given column name

## larcore v06_06_01

-   2017-03-29 Lynn Garren : larcore v06_06_01 for larsoft v06_29_00
-   2017-03-23 Gianluca Petrillo : Fix the behaviour of IntersectionPoint().

## larpandoracontent v03_02_00

## larsoftobj v1_15_00

-   2017-03-29 Lynn Garren : larsoftobj v1_15_00 for larsoft v06_29_00
-   2017-03-29 Lynn Garren : update versions and add studio

## lardataobj v1_13_02

-   2017-03-29 Lynn Garren : lardataobj v1_13_02 for larsoft v06_29_00
-   2017-03-24 Robert Sulej : add typename for feature vector description
-   2017-03-22 Robert Sulej : comment out message when not-throwing constructor fails with finding data

## larcoreobj v1_09_00

-   2017-03-29 Lynn Garren : larcoreobj v1_09_00 for larsoft v06_29_00
-   2017-03-29 Gianluca Petrillo : Added helpers to read geometry vectors from FHiCL configuration.
-   2017-03-23 Gianluca Petrillo : Added utility for computing a middle point.
-   2017-03-23 Gianluca Petrillo : Added geometry vector type definitions.

## larbatch v01_28_01

-   2017-03-29 Lynn Garren : larbatch v01_28_01 for larsoft v06_29_00
-   2017-03-28 Herbert Greenlee : Increase timeout for posix_cp.
-   2017-03-22 Herbert Greenlee : Update caching.
-   2017-03-22 Herbert Greenlee : Fix caching issue with xml parsing.
-   2017-03-22 Herbert Greenlee : Streamline xml parsing. Cache results of xml parsing.
-   2017-03-16 Herbert Greenlee : Make docheck_locations more efficienty (suggested by Tom Junk).

## larutils v1_12_01
