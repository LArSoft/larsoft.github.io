# LArSoft v06_70_02 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v06_70_02](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_70_02/larsoft-v06_70_02.html)  
Download instructions for [just larsoftobj v1_41_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_41_02/larsoftobj-v1_41_02.html)

## Purpose

-   changes to develop

## New features

-   updates to RawHitFinder_module
    -   fixed a subtle bug that sometimes caused hits at the very end of a induction plane waveform to have absurdly high amplitudes.
    -   changed the induction plane hit finding algorithm to require two consecutive samples below the neg threshold instead of just one (looking for the dip in the bi-polar pulse) before finding a hit. Cheap low-pass noise filter.
    -   added a fcl parameter that sets a cut off for the hit start at N ticks from the zero crossing for induction plane wires.  
        The original algorithm for the 35ton did not need this because of the grid plane. Setting this parameter to the readout window size restores the previous behavior (though I can’t see why anyone would prefer that) but the default value is 20.
    -   added a fcl parameter that ensures a minimum width for the integration window for the charge on the collection plane. Default set to 10.
    -   added a fcl parameter that when true only finds hits on collection plane wires and skips induction plane wires, default is false.

## Bug fixes

## Updated dependencies

-   cetbuildtools v7_02_01
    -   resolves a Linux linking problem

# Change List

## larsoft v06_70_02

-   2018-03-15 Lynn Garren : larsoft v06_70_02 for larsoft v06_70_02
-   2018-03-15 Lynn Garren : make sure we have cetbuildtools v7_02_01
-   2018-03-15 Lynn Garren : update versions
-   2018-03-14 Lynn Garren : the caffe build is part of the nu distribution

## lareventdisplay v06_18_02

-   2018-03-15 Lynn Garren : lareventdisplay v06_18_02 for larsoft v06_70_02

## larexamples v06_11_02

-   2018-03-15 Lynn Garren : larexamples v06_11_02 for larsoft v06_70_02

## larpandora v06_25_02

-   2018-03-15 Lynn Garren : larpandora v06_25_02 for larsoft v06_70_02

## larwirecell v06_11_02

-   2018-03-15 Lynn Garren : larwirecell v06_11_02 for larsoft v06_70_02

## larana v06_18_02

-   2018-03-15 Lynn Garren : larana v06_18_02 for larsoft v06_70_02

## larreco v06_56_02

-   2018-03-15 Lynn Garren : replace unit with uint32_t
-   2018-03-15 Lynn Garren : larreco v06_56_02 for larsoft v06_70_02
-   2018-03-14 Michelle Stancari : upgrade induction plane algorithm
-   2018-03-14 Michelle Stancari : upgrade induction plane algorithm
-   2018-03-09 Leigh Whitehead : Ensure that tracks with known T0 \~ 0 have their T0 flag set
-   2018-03-09 Leigh Whitehead : Bug fix for the PMA T0 calculation

## larsim v06_42_02

-   2018-03-15 Lynn Garren : larsim v06_42_02 for larsoft v06_70_02

## larevt v06_19_02

-   2018-03-15 Lynn Garren : larevt v06_19_02 for larsoft v06_70_02

## lardata v06_40_02

-   2018-03-15 Lynn Garren : lardata v06_40_02 for larsoft v06_70_02
-   2018-03-11 Gianluca Petrillo : Added support for printing module description (issue \#19345)
-   2018-03-07 Gianluca Petrillo : Forgot an header to be included…
-   2018-03-07 Gianluca Petrillo : Compacted the code of util::associated_groups_with_left()
-   2018-03-07 Gianluca Petrillo : Added \`util::associated_groups_with_left()\` utility function.
-   2018-03-07 Gianluca Petrillo : Minor “best practice” fix to util::associated_groups() test
-   2018-03-07 Gianluca Petrillo : Documentation fix to util::associated_groups()
-   2018-03-07 Gianluca Petrillo : util::for_each_associated_group() deprecated.

## larcore v06_18_01

## larpandoracontent v03_10_01

## larsoftobj v1_41_02

-   2018-03-15 Lynn Garren : larsoftobj v1_41_02 for larsoft v06_70_02
-   2018-03-15 Lynn Garren : make sure we have cetbuildtools v7_02_01
-   2018-03-15 Lynn Garren : update versions

## lardataobj v1_29_01

-   2018-03-15 Lynn Garren : lardataobj v1_29_01 for larsoft v06_70_02
-   2018-03-09 Gianluca Petrillo : Added hit amplitude to the hit dump on screen.

## larcorealg v1_18_01

## larcoreobj v1_22_00

## larbatch v01_37_03

-   2018-03-15 Lynn Garren : larbatch v01_37_03 for larsoft v06_70_02
-   2018-03-15 Herbert Greenlee : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larbatch into develop
-   2018-03-15 Herbert Greenlee : Improve logic about setting up larbatch.
-   2018-03-08 Herbert Greenlee : Don't delete parentage metadata.

## larutils v1_21_03

-   2018-03-15 Lynn Garren : larutils v1_21_03 for larsoft v06_70_02
-   2018-03-12 Thomas Junk : re-order the setup preference — prefer cvmfs over /grid/fermiapp
