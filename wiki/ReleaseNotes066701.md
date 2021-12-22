LArSoft v06\_67\_01 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06\_67\_01 Release Notes](#LArSoft-v06_67_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_67\_01](#larsoft-v06_67_01)
    -   [lareventdisplay v06\_17\_01](#lareventdisplay-v06_17_01)
    -   [larexamples v06\_10\_01](#larexamples-v06_10_01)
    -   [larpandora v06\_22\_01](#larpandora-v06_22_01)
    -   [larwirecell v06\_10\_01](#larwirecell-v06_10_01)
    -   [larana v06\_16\_01](#larana-v06_16_01)
    -   [larreco v06\_54\_01](#larreco-v06_54_01)
    -   [larsim v06\_40\_01](#larsim-v06_40_01)
    -   [larevt v06\_18\_01](#larevt-v06_18_01)
    -   [lardata v06\_39\_01](#lardata-v06_39_01)
    -   [larcore v06\_17\_00](#larcore-v06_17_00)
    -   [larpandoracontent v03\_09\_04](#larpandoracontent-v03_09_04)
    -   [larsoftobj v1\_39\_00](#larsoftobj-v1_39_00)
    -   [lardataobj v1\_28\_00](#lardataobj-v1_28_00)
    -   [larcorealg v1\_17\_00](#larcorealg-v1_17_00)
    -   [larcoreobj v1\_20\_00](#larcoreobj-v1_20_00)
    -   [larbatch v01\_36\_01](#larbatch-v01_36_01)
    -   [larutils v1\_20\_08](#larutils-v1_20_08)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_67\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_67_01/larsoft-v06_67_01.html)\
Download instructions for [just larsoftobj v1\_39\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_39_00/larsoftobj-v1_39_00.html)

Purpose
--------------------

-   changes to develop
-   approved features

New features
------------------------------

-   lardata feature/gp\_AssnsChain
    -   `lar::FindManyInChainP`
    -   a utility similar to FindManyP, to extract associated elements across a chain of associations (like obtainingPFParticles ~~\> Hits from associations PFParticles \<-~~\> Tracks \<–\> Clusters \<–\> Hits).

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   ifdhc v2\_3\_1
-   nutools v2\_17\_03

Change List
============================

larsoft v06\_67\_01
------------------------------------------

-   2018-02-06 Lynn Garren : larsoft v06\_67\_01 for larsoft v06\_67\_01
-   2018-02-06 Lynn Garren : update product versions

lareventdisplay v06\_17\_01
----------------------------------------------------------

-   2018-02-06 Lynn Garren : lareventdisplay v06\_17\_01 for larsoft v06\_67\_01

larexamples v06\_10\_01
--------------------------------------------------

-   2018-02-06 Lynn Garren : larexamples v06\_10\_01 for larsoft v06\_67\_01

larpandora v06\_22\_01
------------------------------------------------

-   2018-02-06 Lynn Garren : larpandora v06\_22\_01 for larsoft v06\_67\_01

larwirecell v06\_10\_01
--------------------------------------------------

-   2018-02-06 Lynn Garren : larwirecell v06\_10\_01 for larsoft v06\_67\_01

larana v06\_16\_01
----------------------------------------

-   2018-02-06 Lynn Garren : larana v06\_16\_01 for larsoft v06\_67\_01

larreco v06\_54\_01
------------------------------------------

-   2018-02-06 Lynn Garren : larreco v06\_54\_01 for larsoft v06\_67\_01
-   2018-02-06 Usher, Tracy L : Revert handling of long pulse trains to previous method of breaking into n pulses of at least m ticks width (controlled by fhicl).
-   2018-02-02 Lynn Garren : see [\#18868](/redmine/issues/18868 "Bug: new warning from gcc 6.4.0 in larreco TrackFinder (Resolved)")
-   2018-02-02 Lynn Garren : larsoft v06\_67\_00
-   2018-02-01 Gianluca Petrillo : Remove unused variable.

larsim v06\_40\_01
----------------------------------------

-   2018-02-06 Lynn Garren : larsim v06\_40\_01 for larsoft v06\_67\_01
-   2018-02-06 Christopher Backhouse : Merge remote-tracking branch ‘refs/remotes/origin/develop’ into develop
-   2018-02-06 Christopher Backhouse : Uglier return via out-param for a 25% speedup in my test.
-   2018-02-05 Christopher Backhouse : Make GetAllVisibilities() also hit the new code path where interpolation is possible.
-   2018-02-02 Lynn Garren : larsoft v06\_67\_00
-   2018-02-01 Christopher Backhouse : First attempt at interpolation feature for photon library. Needs documentation and testing (probably doesn’t work yet), but PhotonLibraryAnalyzer doesn’t actually call getVisibility() so need to do some work there to see the effects of this.
-   2018-02-01 Christopher Backhouse : Simplify implementation of GetVoxelID().

larevt v06\_18\_01
----------------------------------------

-   2018-02-06 Lynn Garren : larevt v06\_18\_01 for larsoft v06\_67\_01

lardata v06\_39\_01
------------------------------------------

-   2018-02-06 Lynn Garren : disable testAssnsChainUtils for now
-   2018-02-06 Lynn Garren : lardata v06\_39\_01 for larsoft v06\_67\_01
-   2018-02-06 Lynn Garren : add missing libraries to link list
-   2018-02-06 Gianluca Petrillo : Renamed \`lar::FindAllP\` into \`lar::FindManyInChainP\`
-   2018-02-06 Gianluca Petrillo : Added warning about gallery incompatibility.
-   2018-02-06 Gianluca Petrillo : Added error check on data product retrieval.
-   2018-02-06 Gianluca Petrillo : Updated lar::FindAllP tests to use art::PtrMaker (not lar::)
-   2018-02-06 Gianluca Petrillo : Renamed .icc file into .tcc.
-   2018-02-06 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp\_AssnsChain
-   2017-07-05 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp\_AssnsChain
-   2017-06-30 Gianluca Petrillo : First implementation of lar::FindAllP() to navigate chains of associations.

larcore v06\_17\_00
------------------------------------------

larpandoracontent v03\_09\_04
--------------------------------------------------------------

larsoftobj v1\_39\_00
----------------------------------------------

lardataobj v1\_28\_00
----------------------------------------------

larcorealg v1\_17\_00
----------------------------------------------

larcoreobj v1\_20\_00
----------------------------------------------

larbatch v01\_36\_01
--------------------------------------------

larutils v1\_20\_08
------------------------------------------

-   2018-02-06 Lynn Garren : larutils v1\_20\_08 for larsoft v06\_67\_01
-   2018-02-02 Thomas Junk : didn’t put in the gcc vesion properly
-   2018-02-02 Thomas Junk : fix typo in unknown
-   2018-02-02 Thomas Junk : pull request Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larutils into develop
-   2018-02-02 Thomas Junk : allow the qualifier to select gcc version. Currenlty only e14 and e15 are supported
-   2018-02-02 Herbert Greenlee : Add support for e15 qualifier.
-   2018-02-02 Herbert Greenlee : Add support for e15 qualifier.
