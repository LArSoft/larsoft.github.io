# LArSoft v06_70_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v06_70_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_70_00/larsoft-v06_70_00.html)  
Download instructions for [just larsoftobj v1_41_00](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_41_00/larsoftobj-v1_41_00.html)

## Purpose

-   migrate to art v2_10_03

## New features

-   except for changes required by art v2_10_03, the code is identical to larsoft v06_69_01
-   experiments should merge the feature/team_for_art_2_10 branch

## Breaking Changes

-   [change to reconfigure](https://cdcvs.fnal.gov/redmine/projects/art/wiki/210_breaking_changes#Removal-of-modules-reconfigureParameterSet-const38-virtual-function)
    -   The script no_reconfigure_override.sh is provided to remove the override.
-   [FirstAbsoluteOrLookupWithDotPolicy renamed](https://cdcvs.fnal.gov/redmine/projects/art/wiki/210_breaking_changes#Relocationrenaming-of-artFirstAbsoluteOrLookupWithDotPolicy)
    -   there was only one instance of this
-   [SourceHelper cannot be copied](https://cdcvs.fnal.gov/redmine/projects/art/wiki/209_breaking_changes#SourceHelper-usage)
    -   This change was made in art v2_09_06
    -   Further changes in SourceHelper.h force a compile time failure.
-   There is no longer a nu qualified build of root. Instead, the e15 build contains all features that were in the nu qualified build.

## Updated dependencies

-   nutools v2_19_00
-   artdaq_core v3_01_06
-   art v2_10_03 (s65)
-   gallery v1_07_02
-   canvas_root_io v1_01_02
-   root v6_12_04e

# Change List

## larsoft v06_70_00

-   2018-03-01 Lynn Garren : the nu qualifier is no longer used
-   2018-03-01 Lynn Garren : fix manifest
-   2018-03-01 Lynn Garren : for art v2_10_03
-   2018-03-01 Lynn Garren : update versions
-   2018-03-01 Lynn Garren : install new script
-   2018-03-01 Lynn Garren : make it work
-   2018-03-01 Lynn Garren : migration scripts for art 2.10
-   2018-02-28 Lynn Garren : dependencies
-   2018-02-28 Lynn Garren : add mrb in larbase, not in lar_product_stack

## lareventdisplay v06_18_00

-   2018-03-01 Lynn Garren : larreco v06_56_00
-   2018-03-01 Lynn Garren : for art v2_10_03
-   2018-03-01 Lynn Garren : remove override
-   2018-03-01 Lynn Garren : need to link against pthread

## larexamples v06_11_00

-   2018-03-01 Lynn Garren : for art v2_10_03

## larpandora v06_25_00

-   2018-03-01 Lynn Garren : larreco v06_56_00
-   2018-03-01 Lynn Garren : for art v2_10_03

## larwirecell v06_11_00

-   2018-03-01 Lynn Garren : for art v2_10_03

## larana v06_18_00

-   2018-03-01 Lynn Garren : larreco v06_56_00
-   2018-03-01 Lynn Garren : for art v2_10_03
-   2018-03-01 Lynn Garren : remove override

## larreco v06_56_00

-   2018-03-01 Lynn Garren : for art v2_10_03
-   2018-03-01 Lynn Garren : for art v2_10_03
-   2018-03-01 Lynn Garren : remove override

## larsim v06_42_00

-   2018-03-01 Lynn Garren : for art v2_10_03
-   2018-03-01 Lynn Garren : remove override

## larevt v06_19_00

-   2018-03-01 Lynn Garren : for art v2_10_03
-   2018-03-01 Lynn Garren : remove override

## lardata v06_40_00

-   2018-03-01 Lynn Garren : for art v2_10_03
-   2018-03-01 Lynn Garren : remove override

## larcore v06_18_00

-   2018-03-01 Lynn Garren : for art v2_10_03

## larpandoracontent v03_10_01

-   2018-03-01 Lynn Garren : for art v2_10_03
-   2018-03-01 Lynn Garren : v03_10_01

## larsoftobj v1_41_00

-   2018-03-01 Lynn Garren : for art v2_10_03
-   2018-03-01 Lynn Garren : for art 2.10.03

## lardataobj v1_29_00

-   2018-03-01 Lynn Garren : for art v2_10_03
-   2018-03-01 Gianluca Petrillo : Helping the compiler to disambiguate constructors.
-   2018-03-01 Lynn Garren : use nusimdata v1_11_00

## larcorealg v1_18_00

-   2018-03-01 Lynn Garren : for art v2_10_03

## larcoreobj v1_22_00

-   2018-03-01 Lynn Garren : for art v2_10_03
-   2018-03-01 Lynn Garren : using canvas_root_io v1_01_02

## larbatch v01_37_01

## larutils v1_21_01
