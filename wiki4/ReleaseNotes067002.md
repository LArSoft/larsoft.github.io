LArSoft v06\_70\_02 Release Notes[¶](#LArSoft-v06_70_02-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v06\_70\_02 Release Notes](#LArSoft-v06_70_02-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_70\_02](#larsoft-v06_70_02)
    -   [lareventdisplay v06\_18\_02](#lareventdisplay-v06_18_02)
    -   [larexamples v06\_11\_02](#larexamples-v06_11_02)
    -   [larpandora v06\_25\_02](#larpandora-v06_25_02)
    -   [larwirecell v06\_11\_02](#larwirecell-v06_11_02)
    -   [larana v06\_18\_02](#larana-v06_18_02)
    -   [larreco v06\_56\_02](#larreco-v06_56_02)
    -   [larsim v06\_42\_02](#larsim-v06_42_02)
    -   [larevt v06\_19\_02](#larevt-v06_19_02)
    -   [lardata v06\_40\_02](#lardata-v06_40_02)
    -   [larcore v06\_18\_01](#larcore-v06_18_01)
    -   [larpandoracontent v03\_10\_01](#larpandoracontent-v03_10_01)
    -   [larsoftobj v1\_41\_02](#larsoftobj-v1_41_02)
    -   [lardataobj v1\_29\_01](#lardataobj-v1_29_01)
    -   [larcorealg v1\_18\_01](#larcorealg-v1_18_01)
    -   [larcoreobj v1\_22\_00](#larcoreobj-v1_22_00)
    -   [larbatch v01\_37\_03](#larbatch-v01_37_03)
    -   [larutils v1\_21\_03](#larutils-v1_21_03)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_70\_02](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_70_02/larsoft-v06_70_02.html)\
Download instructions for [just larsoftobj v1\_41\_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_41_02/larsoftobj-v1_41_02.html)


Purpose[¶](#Purpose)
--------------------

-   changes to develop


New features[¶](#New-features)
------------------------------

-   updates to RawHitFinder\_module
    -   fixed a subtle bug that sometimes caused hits at the very end of a induction plane waveform to have absurdly high amplitudes.
    -   changed the induction plane hit finding algorithm to require two consecutive samples below the neg threshold instead of just one (looking for the dip in the bi-polar pulse) before finding a hit. Cheap low-pass noise filter.
    -   added a fcl parameter that sets a cut off for the hit start at N ticks from the zero crossing for induction plane wires. \
         The original algorithm for the 35ton did not need this because of the grid plane. Setting this parameter to the readout window size restores the previous behavior (though I can’t see why anyone would prefer that) but the default value is 20.
    -   added a fcl parameter that ensures a minimum width for the integration window for the charge on the collection plane. Default set to 10.
    -   added a fcl parameter that when true only finds hits on collection plane wires and skips induction plane wires, default is false.


Bug fixes[¶](#Bug-fixes)
------------------------


Updated dependencies[¶](#Updated-dependencies)
----------------------------------------------

-   cetbuildtools v7\_02\_01
    -   resolves a Linux linking problem


Change List[¶](#Change-List)
============================


larsoft v06\_70\_02[¶](#larsoft-v06_70_02)
------------------------------------------

-   2018-03-15 Lynn Garren : larsoft v06\_70\_02 for larsoft v06\_70\_02
-   2018-03-15 Lynn Garren : make sure we have cetbuildtools v7\_02\_01
-   2018-03-15 Lynn Garren : update versions
-   2018-03-14 Lynn Garren : the caffe build is part of the nu distribution


lareventdisplay v06\_18\_02[¶](#lareventdisplay-v06_18_02)
----------------------------------------------------------

-   2018-03-15 Lynn Garren : lareventdisplay v06\_18\_02 for larsoft v06\_70\_02


larexamples v06\_11\_02[¶](#larexamples-v06_11_02)
--------------------------------------------------

-   2018-03-15 Lynn Garren : larexamples v06\_11\_02 for larsoft v06\_70\_02


larpandora v06\_25\_02[¶](#larpandora-v06_25_02)
------------------------------------------------

-   2018-03-15 Lynn Garren : larpandora v06\_25\_02 for larsoft v06\_70\_02


larwirecell v06\_11\_02[¶](#larwirecell-v06_11_02)
--------------------------------------------------

-   2018-03-15 Lynn Garren : larwirecell v06\_11\_02 for larsoft v06\_70\_02


larana v06\_18\_02[¶](#larana-v06_18_02)
----------------------------------------

-   2018-03-15 Lynn Garren : larana v06\_18\_02 for larsoft v06\_70\_02


larreco v06\_56\_02[¶](#larreco-v06_56_02)
------------------------------------------

-   2018-03-15 Lynn Garren : replace unit with uint32\_t
-   2018-03-15 Lynn Garren : larreco v06\_56\_02 for larsoft v06\_70\_02
-   2018-03-14 Michelle Stancari : upgrade induction plane algorithm
-   2018-03-14 Michelle Stancari : upgrade induction plane algorithm
-   2018-03-09 Leigh Whitehead : Ensure that tracks with known T0 \~ 0 have their T0 flag set
-   2018-03-09 Leigh Whitehead : Bug fix for the PMA T0 calculation


larsim v06\_42\_02[¶](#larsim-v06_42_02)
----------------------------------------

-   2018-03-15 Lynn Garren : larsim v06\_42\_02 for larsoft v06\_70\_02


larevt v06\_19\_02[¶](#larevt-v06_19_02)
----------------------------------------

-   2018-03-15 Lynn Garren : larevt v06\_19\_02 for larsoft v06\_70\_02


lardata v06\_40\_02[¶](#lardata-v06_40_02)
------------------------------------------

-   2018-03-15 Lynn Garren : lardata v06\_40\_02 for larsoft v06\_70\_02
-   2018-03-11 Gianluca Petrillo : Added support for printing module description (issue [\#19345](/redmine/issues/19345 "Bug: Module descriptions not printed any more (Closed)"))
-   2018-03-07 Gianluca Petrillo : Forgot an header to be included…
-   2018-03-07 Gianluca Petrillo : Compacted the code of util::associated\_groups\_with\_left()
-   2018-03-07 Gianluca Petrillo : Added \`util::associated\_groups\_with\_left()\` utility function.
-   2018-03-07 Gianluca Petrillo : Minor “best practice” fix to util::associated\_groups() test
-   2018-03-07 Gianluca Petrillo : Documentation fix to util::associated\_groups()
-   2018-03-07 Gianluca Petrillo : util::for\_each\_associated\_group() deprecated.


larcore v06\_18\_01[¶](#larcore-v06_18_01)
------------------------------------------


larpandoracontent v03\_10\_01[¶](#larpandoracontent-v03_10_01)
--------------------------------------------------------------


larsoftobj v1\_41\_02[¶](#larsoftobj-v1_41_02)
----------------------------------------------

-   2018-03-15 Lynn Garren : larsoftobj v1\_41\_02 for larsoft v06\_70\_02
-   2018-03-15 Lynn Garren : make sure we have cetbuildtools v7\_02\_01
-   2018-03-15 Lynn Garren : update versions


lardataobj v1\_29\_01[¶](#lardataobj-v1_29_01)
----------------------------------------------

-   2018-03-15 Lynn Garren : lardataobj v1\_29\_01 for larsoft v06\_70\_02
-   2018-03-09 Gianluca Petrillo : Added hit amplitude to the hit dump on screen.


larcorealg v1\_18\_01[¶](#larcorealg-v1_18_01)
----------------------------------------------


larcoreobj v1\_22\_00[¶](#larcoreobj-v1_22_00)
----------------------------------------------


larbatch v01\_37\_03[¶](#larbatch-v01_37_03)
--------------------------------------------

-   2018-03-15 Lynn Garren : larbatch v01\_37\_03 for larsoft v06\_70\_02
-   2018-03-15 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larbatch into develop
-   2018-03-15 Herbert Greenlee : Improve logic about setting up larbatch.
-   2018-03-08 Herbert Greenlee : Don’t delete parentage metadata.


larutils v1\_21\_03[¶](#larutils-v1_21_03)
------------------------------------------

-   2018-03-15 Lynn Garren : larutils v1\_21\_03 for larsoft v06\_70\_02
-   2018-03-12 Thomas Junk : re-order the setup preference – prefer cvmfs over /grid/fermiapp
