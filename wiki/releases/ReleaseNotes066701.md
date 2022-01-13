LArSoft v06_67_01 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06_67_01 Release Notes](#LArSoft-v06_67_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06_67_01](#larsoft-v06_67_01)
    -   [lareventdisplay v06_17_01](#lareventdisplay-v06_17_01)
    -   [larexamples v06_10_01](#larexamples-v06_10_01)
    -   [larpandora v06_22_01](#larpandora-v06_22_01)
    -   [larwirecell v06_10_01](#larwirecell-v06_10_01)
    -   [larana v06_16_01](#larana-v06_16_01)
    -   [larreco v06_54_01](#larreco-v06_54_01)
    -   [larsim v06_40_01](#larsim-v06_40_01)
    -   [larevt v06_18_01](#larevt-v06_18_01)
    -   [lardata v06_39_01](#lardata-v06_39_01)
    -   [larcore v06_17_00](#larcore-v06_17_00)
    -   [larpandoracontent v03_09_04](#larpandoracontent-v03_09_04)
    -   [larsoftobj v1_39_00](#larsoftobj-v1_39_00)
    -   [lardataobj v1_28_00](#lardataobj-v1_28_00)
    -   [larcorealg v1_17_00](#larcorealg-v1_17_00)
    -   [larcoreobj v1_20_00](#larcoreobj-v1_20_00)
    -   [larbatch v01_36_01](#larbatch-v01_36_01)
    -   [larutils v1_20_08](#larutils-v1_20_08)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06_67_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_67_01/larsoft-v06_67_01.html)
Download instructions for [just larsoftobj v1_39_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_39_00/larsoftobj-v1_39_00.html)

Purpose
--------------------

-   changes to develop
-   approved features

New features
------------------------------

-   lardata feature/gp_AssnsChain
    -   `lar::FindManyInChainP`
    -   a utility similar to FindManyP, to extract associated elements across a chain of associations (like obtainingPFParticles ~~\> Hits from associations PFParticles \<-~~\> Tracks \<–\> Clusters \<–\> Hits).

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   ifdhc v2_3_1
-   nutools v2_17_03

Change List
============================

larsoft v06_67_01
------------------------------------------

-   2018-02-06 Lynn Garren : larsoft v06_67_01 for larsoft v06_67_01
-   2018-02-06 Lynn Garren : update product versions

lareventdisplay v06_17_01
----------------------------------------------------------

-   2018-02-06 Lynn Garren : lareventdisplay v06_17_01 for larsoft v06_67_01

larexamples v06_10_01
--------------------------------------------------

-   2018-02-06 Lynn Garren : larexamples v06_10_01 for larsoft v06_67_01

larpandora v06_22_01
------------------------------------------------

-   2018-02-06 Lynn Garren : larpandora v06_22_01 for larsoft v06_67_01

larwirecell v06_10_01
--------------------------------------------------

-   2018-02-06 Lynn Garren : larwirecell v06_10_01 for larsoft v06_67_01

larana v06_16_01
----------------------------------------

-   2018-02-06 Lynn Garren : larana v06_16_01 for larsoft v06_67_01

larreco v06_54_01
------------------------------------------

-   2018-02-06 Lynn Garren : larreco v06_54_01 for larsoft v06_67_01
-   2018-02-06 Usher, Tracy L : Revert handling of long pulse trains to previous method of breaking into n pulses of at least m ticks width (controlled by fhicl).
-   2018-02-02 Lynn Garren : see [redmine issue 18868](https://cdcvs.fnal.gov/redmine/issues/18868)
-   2018-02-02 Lynn Garren : larsoft v06_67_00
-   2018-02-01 Gianluca Petrillo : Remove unused variable.

larsim v06_40_01
----------------------------------------

-   2018-02-06 Lynn Garren : larsim v06_40_01 for larsoft v06_67_01
-   2018-02-06 Christopher Backhouse : Merge remote-tracking branch ‘refs/remotes/origin/develop’ into develop
-   2018-02-06 Christopher Backhouse : Uglier return via out-param for a 25% speedup in my test.
-   2018-02-05 Christopher Backhouse : Make GetAllVisibilities() also hit the new code path where interpolation is possible.
-   2018-02-02 Lynn Garren : larsoft v06_67_00
-   2018-02-01 Christopher Backhouse : First attempt at interpolation feature for photon library. Needs documentation and testing (probably doesn’t work yet), but PhotonLibraryAnalyzer doesn’t actually call getVisibility() so need to do some work there to see the effects of this.
-   2018-02-01 Christopher Backhouse : Simplify implementation of GetVoxelID().

larevt v06_18_01
----------------------------------------

-   2018-02-06 Lynn Garren : larevt v06_18_01 for larsoft v06_67_01

lardata v06_39_01
------------------------------------------

-   2018-02-06 Lynn Garren : disable testAssnsChainUtils for now
-   2018-02-06 Lynn Garren : lardata v06_39_01 for larsoft v06_67_01
-   2018-02-06 Lynn Garren : add missing libraries to link list
-   2018-02-06 Gianluca Petrillo : Renamed \`lar::FindAllP\` into \`lar::FindManyInChainP\`
-   2018-02-06 Gianluca Petrillo : Added warning about gallery incompatibility.
-   2018-02-06 Gianluca Petrillo : Added error check on data product retrieval.
-   2018-02-06 Gianluca Petrillo : Updated lar::FindAllP tests to use art::PtrMaker (not lar::)
-   2018-02-06 Gianluca Petrillo : Renamed .icc file into .tcc.
-   2018-02-06 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp_AssnsChain
-   2017-07-05 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp_AssnsChain
-   2017-06-30 Gianluca Petrillo : First implementation of lar::FindAllP() to navigate chains of associations.

larcore v06_17_00
------------------------------------------

larpandoracontent v03_09_04
--------------------------------------------------------------

larsoftobj v1_39_00
----------------------------------------------

lardataobj v1_28_00
----------------------------------------------

larcorealg v1_17_00
----------------------------------------------

larcoreobj v1_20_00
----------------------------------------------

larbatch v01_36_01
--------------------------------------------

larutils v1_20_08
------------------------------------------

-   2018-02-06 Lynn Garren : larutils v1_20_08 for larsoft v06_67_01
-   2018-02-02 Thomas Junk : didn’t put in the gcc vesion properly
-   2018-02-02 Thomas Junk : fix typo in unknown
-   2018-02-02 Thomas Junk : pull request Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larutils into develop
-   2018-02-02 Thomas Junk : allow the qualifier to select gcc version. Currenlty only e14 and e15 are supported
-   2018-02-02 Herbert Greenlee : Add support for e15 qualifier.
-   2018-02-02 Herbert Greenlee : Add support for e15 qualifier.
