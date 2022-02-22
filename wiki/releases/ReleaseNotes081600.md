# LArSoft v08_16_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v08_16_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_16_00/larsoft-v08_16_00.html)  
Download instructions for [just larsoftobj v08_11_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_11_00/larsoftobj-v08_11_00.html)

## Purpose

-   update from art v3_01_02 to art v3_02_04
-   based off the larsoft v08_15_01 release

## New features

-   **Please read the [update notes](Update_to_art_v3_02).** These are an addition to changes documented in the \[\[art:Series_302\|art v3_02\]\] release notes.
-   With this release, art has been split into art and art_root_io.
    -   A migration script is provided in art_root_io.
-   macOS support
    -   Support for Sierra is dropped in favor of support for Mojave.
    -   We found a problem using Xcode 10.2 with Mojave. **At this time, we can only support Xcode 10.1 on Mojave.**
    -   Xcode 10.2 changes some system headers. This makes it impossible to build root and will probably cause other issues.
-   **feature/team_for_art_v3_02 is provided for all experiment packages**
    -   These feature branches include necessary changes that could not be scripted.

## Bug fixes

## Updated dependencies

There are new versions of nearly every product. This list includes some of the highlights.

-   python v2_7_15a
-   clhep v2_4_1_0b
-   boost v1_69_0
-   root v6_16_00
-   art v3_02_04
-   art_root_io v1_00_04
-   gallery v1_12_03
-   artdaq_core v3_04_14
-   nutools v2_29_01

# Change List

## larsoft v08_16_00

-   2019-04-18 Lynn Garren : product versions
-   2019-04-18 Lynn Garren : larsoft v08_16_00 for larsoft v08_16_00
-   2019-04-18 Lynn Garren : art_root_io migration script is fixed
-   2019-04-18 Lynn Garren : product versions
-   2019-04-17 Lynn Garren : for art v3_02_04
-   2019-04-17 Lynn Garren : Merge branch 'feature/team_for_art_v3_02' into v08_16_00_br
-   2019-04-04 Lynn Garren : update product stack versions
-   2019-04-04 Lynn Garren : improvements from Kyle
-   2019-04-04 Lynn Garren : for art 3.02

## lareventdisplay v08_06_00

-   2019-04-18 Lynn Garren : lareventdisplay v08_06_00 for larsoft v08_16_00
-   2019-04-17 Lynn Garren : Merge branch 'feature/team_for_art_v3_02' into v08_16_00_br
-   2019-04-04 Lynn Garren : remove ALLOW_DEPRECATIONS
-   2019-04-04 Lynn Garren : changes for art 3.02

## larexamples v08_02_00

-   2019-04-18 Lynn Garren : add missing library
-   2019-04-18 Lynn Garren : larexamples v08_02_00 for larsoft v08_16_00
-   2019-04-17 Lynn Garren : Merge branch 'feature/team_for_art_v3_02' into v08_16_00_br
-   2019-04-04 Lynn Garren : remove ALLOW_DEPRECATIONS
-   2019-04-04 Lynn Garren : add missing library
-   2019-04-04 Lynn Garren : changes for art 3.02

## larg4 v08_02_00

-   2019-04-18 Lynn Garren : larg4 v08_02_00 for larsoft v08_16_00
-   2019-04-17 Lynn Garren : artg4tk v09_04_01
-   2019-04-17 Lynn Garren : Merge branch 'feature/team_for_art_v3_02' into v08_16_00_br
-   2019-04-04 Lynn Garren : changes for art 3.02

## larpandora v08_06_00

-   2019-04-18 Lynn Garren : larpandora v08_06_00 for larsoft v08_16_00
-   2019-04-17 Lynn Garren : Merge branch 'feature/team_for_art_v3_02' into v08_16_00_br
-   2019-04-04 Lynn Garren : remove ALLOW_DEPRECATIONS
-   2019-04-04 Lynn Garren : changes for art 3.02

## larwirecell v08_04_00

-   2019-04-18 Lynn Garren : larwirecell v08_04_00 for larsoft v08_16_00
-   2019-04-17 Lynn Garren : Merge branch 'feature/team_for_art_v3_02' into v08_16_00_br
-   2019-04-04 Lynn Garren : EDProducer
-   2019-04-04 Lynn Garren : changes for art 3.02

## larana v08_05_00

-   2019-04-18 Lynn Garren : larana v08_05_00 for larsoft v08_16_00
-   2019-04-17 Lynn Garren : for art v3_02
-   2019-04-17 Lynn Garren : Merge branch 'feature/team_for_art_v3_02' into v08_16_00_br
-   2019-04-04 Lynn Garren : remove ALLOW_DEPRECATIONS
-   2019-04-04 Lynn Garren : changes for art 3.02

## larreco v08_12_00

-   2019-04-18 Lynn Garren : add missing library
-   2019-04-18 Lynn Garren : larreco v08_12_00 for larsoft v08_16_00
-   2019-04-17 Lynn Garren : with nutools v2_29_01
-   2019-04-17 Lynn Garren : include missing header
-   2019-04-17 Lynn Garren : Merge branch 'feature/team_for_art_v3_02' into v08_16_00_br
-   2019-04-04 Lynn Garren : remove ALLOW_DEPRECATIONS
-   2019-04-04 Lynn Garren : changes for art 3.02

## larsim v08_06_00

-   2019-04-18 Lynn Garren : larsim v08_06_00 for larsoft v08_16_00
-   2019-04-18 Kyle Knoepfel : Remove unsupported explicit template instantiations in classes.h files.
-   2019-04-17 Lynn Garren : EDFilter requires an explicit constructor
-   2019-04-17 Lynn Garren : for art v3_02
-   2019-04-17 Lynn Garren : changes for art v3_02
-   2019-04-17 Lynn Garren : changes for art v3_02

## larevt v08_03_00

-   2019-04-18 Lynn Garren : larevt v08_03_00 for larsoft v08_16_00
-   2019-04-17 Lynn Garren : Merge branch 'feature/team_for_art_v3_02' into v08_16_00_br
-   2019-04-04 Lynn Garren : remove ALLOW_DEPRECATIONS
-   2019-04-04 Lynn Garren : changes for art 3.02
-   2019-04-04 Lynn Garren : fhicl no longer recognizes boost::any, use std::any

## lardata v08_04_00

-   2019-04-18 Lynn Garren : add missing library
-   2019-04-18 Lynn Garren : lardata v08_04_00 for larsoft v08_16_00
-   2019-04-17 Lynn Garren : with nutools v2_29_01
-   2019-04-17 Lynn Garren : Merge branch 'feature/team_for_art_v3_02' into v08_16_00_br
-   2019-04-04 Lynn Garren : remove ALLOW_DEPRECATIONS
-   2019-04-04 Lynn Garren : changes for art 3.02

## larcore v08_03_00

-   2019-04-18 Lynn Garren : add missing library
-   2019-04-18 Lynn Garren : larcore v08_03_00 for larsoft v08_16_00
-   2019-04-17 Lynn Garren : art_root_io v1_00_04
-   2019-04-17 Lynn Garren : Merge branch 'feature/team_for_art_v3_02' into v08_16_00_br
-   2019-04-04 Lynn Garren : remove ALLOW_DEPRECATIONS
-   2019-04-04 Lynn Garren : changes for art 3.02

## larpandoracontent v03_14_07

-   2019-04-18 Lynn Garren : larpandoracontent v03_14_07 for art v3_02_04
-   2019-04-17 Lynn Garren : Merge branch 'feature/team_for_art_v3_02' into v08_16_00_br
-   2019-04-04 Lynn Garren : larpandoracontent v03_14_06 for use with art 3.02

## larsoftobj v08_11_00

-   2019-04-18 Lynn Garren : larsoftobj v08_11_00 for larsoft v08_16_00
-   2019-04-18 Lynn Garren : product versions
-   2019-04-17 Lynn Garren : Merge branch 'feature/team_for_art_v3_02' into v08_16_00_br
-   2019-04-04 Lynn Garren : for art 3.02

## lardataobj v08_03_00

-   2019-04-18 Lynn Garren : lardataobj v08_03_00 for larsoft v08_16_00
-   2019-04-18 Kyle Knoepfel : Remove unsupported explicit template instantiations in classes.h files.
-   2019-04-17 Lynn Garren : Merge branch 'feature/team_for_art_v3_02' into v08_16_00_br
-   2019-04-04 Lynn Garren : remove ALLOW_DEPRECATIONS
-   2019-04-04 Lynn Garren : changes for art 3.02

## lardataalg v08_06_00

-   2019-04-18 Lynn Garren : lardataalg v08_06_00 for larsoft v08_16_00
-   2019-04-17 Lynn Garren : Merge branch 'feature/team_for_art_v3_02' into v08_16_00_br
-   2019-04-05 Kyle Knoepfel : Update Boost header/namespace usage.
-   2019-04-04 Lynn Garren : remove ALLOW_DEPRECATIONS
-   2019-04-04 Lynn Garren : changes for art 3.02

## larcorealg v08_08_00

-   2019-04-18 Lynn Garren : larcorealg v08_08_00 for larsoft v08_16_00
-   2019-04-17 Lynn Garren : Merge branch 'feature/team_for_art_v3_02' into v08_16_00_br
-   2019-04-04 Lynn Garren : remove ALLOW_DEPRECATIONS
-   2019-04-04 Lynn Garren : changes for art 3.02

## larcoreobj v08_04_00

-   2019-04-18 Lynn Garren : larcoreobj v08_04_00 for larsoft v08_16_00
-   2019-04-17 Lynn Garren : Merge branch 'feature/team_for_art_v3_02' into v08_16_00_br
-   2019-04-04 Lynn Garren : remove ALLOW_DEPRECATIONS
-   2019-04-04 Lynn Garren : changes for art 3.02
-   2019-04-04 Lynn Garren : stop checking the root version

## larbatch v01_51_01

## larutils v1_23_14
