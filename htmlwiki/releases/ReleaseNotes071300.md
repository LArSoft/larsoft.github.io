LArSoft v07_13_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v07_13_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v07_13_00/larsoft-v07_13_00.html)
Download instructions for [just larsoftobj v07_08_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v07_08_00/larsoftobj-v07_08_00.html)

Purpose
--------------------

-   changes to develop
-   approved feature branches

New features
------------------------------

-   persist Pandora slices as recob::slice
    -   larpandora larpandoracontent feature/asmith_persistRecobSlicev07_11_00
    -   [https://indico.fnal.gov/event/19103/contribution/4/material/slides/0.pdf](https://indico.fnal.gov/event/19103/contribution/4/material/slides/0.pdf)
-   larg4 origin/feature/wenzel_ana
    -   The larg4 example code which now contains simple analyzers for SimEnergyDeposits, AuxDetHits and MCParticle.
    -   lar -c testlarg4.fcl

Bug fixes
------------------------

-   bug fix for [redmine issue 21394](https://cdcvs.fnal.gov/redmine/issues/21394)
    -   larsim feature/gputnam_MCSTReco_FV_fix
    -   [https://indico.fnal.gov/event/19230/contribution/2/material/slides/0.pdf](https://indico.fnal.gov/event/19230/contribution/2/material/slides/0.pdf)
-   larsim feature/herogers_SCE_xcorrection
    -   bug fix for ShiftEdepModule
-   larana fMinTickDrift bug fixed in develop

Updated dependencies
----------------------------------------------

-   wirecell v0_10_5
-   nutools v2_24_08
    -   ifdhc v2_3_9
    -   ifdh_art v2_06_13

Change List
============================

larsoft v07_13_00
------------------------------------------

-   2018-12-05 Lynn Garren : fix version
-   2018-12-04 Lynn Garren : larsoft v07_13_00 for larsoft v07_13_00
-   2018-12-04 Lynn Garren : product versions

lareventdisplay v07_02_01
----------------------------------------------------------

-   2018-12-04 Lynn Garren : lareventdisplay v07_02_01 for larsoft v07_13_00

larexamples v07_00_19
--------------------------------------------------

-   2018-12-04 Lynn Garren : larexamples v07_00_19 for larsoft v07_13_00

larg4 v07_05_00
--------------------------------------

-   2018-12-04 Lynn Garren : larg4 v07_05_00 for larsoft v07_13_00
-   2018-12-04 Lynn Garren : remove unused libraries from link list
-   2018-12-04 Lynn Garren : Merge branch ‘origin/feature/wenzel_ana’ into release/v07_13_00
-   2018-12-04 Hans-Joachim Wenzel : make sure we are using the correct units when analyzing the SimEnergyDeposits
-   2018-11-29 Hans-Joachim Wenzel : modules that loops over the AuxdetHits and makes some plots

larpandora v07_06_00
------------------------------------------------

-   2018-12-04 Lynn Garren : larpandora v07_06_00 for larsoft v07_13_00
-   2018-12-04 Lynn Garren : Merge branch ‘feature/asmith_persistRecobSlicev07_11_00’ into release/v07_13_00
-   2018-11-19 loressa : Cosmetics
-   2018-11-17 a-d-smith : removed test couts
-   2018-11-15 a-d-smith : Modified slice production order to behave more intuitively
-   2018-11-15 a-d-smith : Added more doxygen comments
-   2018-11-12 a-d-smith : Updated doxygen comments
-   2018-11-07 a-d-smith : added slices to event dump output
-   2018-11-07 a-d-smith : Updated Pandora event dump to include various verbosity levels
-   2018-10-31 a-d-smith : Added recob Slices to the output of Pandora

larwirecell v07_05_01
--------------------------------------------------

-   2018-12-04 Lynn Garren : larwirecell v07_05_01 for larsoft v07_13_00

larana v07_04_01
----------------------------------------

-   2018-12-04 Lynn Garren : larana v07_04_01 for larsoft v07_13_00
-   2018-11-29 Giuseppe Cerati : fix fMinTickDrift bug

larreco v07_10_01
------------------------------------------

-   2018-12-04 Lynn Garren : larreco v07_10_01 for larsoft v07_13_00
-   2018-12-04 Tingjun Yang : Merge remote-tracking branch ‘origin/feature/rsf_tcshowerPFP’ into develop
-   2018-12-01 Rory Fitzpatrick : minor changes
-   2018-12-01 Rory Fitzpatrick : fixed CaloAlg references

larsim v07_09_00
----------------------------------------

-   2018-12-04 Lynn Garren : larsim v07_09_00 for larsoft v07_13_00
-   2018-12-04 Lynn Garren : Merge branch ‘feature/herogers_SCE_xcorrection’ into release/v07_13_00
-   2018-12-04 Lynn Garren : Merge branch ‘feature/gputnam_MCSTReco_FV_fix’ into release/v07_13_00
-   2018-12-04 Hannah Rogers : Correct SCE x posisiton correction direction
-   2018-12-04 gputnam : fix typo in comment
-   2018-12-04 gputnam : add doxygen comment to variables defining volume box
-   2018-12-04 gputnam : Merge tag ‘v07_07_01’ into feature/gputnam_MCSTReco_FV_fix
-   2018-11-28 gputnam : Add comment to update
-   2018-11-28 gputnam : Fix fiducial volume definition in MCRecoPart. Fiducial volume is now defined as a box that extends to include all TPC’s in the detector. This removes implicit coupling to MicroBooNE and fixes saving of MCTrack points in (e.g.) SBND and ICARUS. (Note: Should FV definition be all cryostats instead of all TPCs?).

larevt v07_02_01
----------------------------------------

-   2018-12-04 Lynn Garren : larevt v07_02_01 for larsoft v07_13_00

lardata v07_01_01
------------------------------------------

-   2018-12-04 Lynn Garren : lardata v07_01_01 for larsoft v07_13_00

larcore v07_00_05
------------------------------------------

larpandoracontent v03_14_03
--------------------------------------------------------------

-   2018-12-04 Lynn Garren : larpandoracontent v03_14_03 for larsoft v07_13_00
-   2018-12-04 Steven Green : Merge branch ‘updates’
-   2018-12-04 Steven Green : Update version and change log.
-   2018-11-28 Multi-algorithm pattern recognition : Merge pull request \#74 from loressa/feature/SliceIndex
-   2018-11-28 loressa : Updated numbering convention for slice indexes to match how output to LArSoft is handled in larpandora
-   2018-11-14 Multi-algorithm pattern recognition : Merge pull request \#73 from StevenGreen1/feature/CompilerFix
-   2018-11-06 Steven Green : Refactoring bdt beam particle id class to resolve compiler error on MacOS.

larsoftobj v07_08_00
------------------------------------------------

lardataobj v07_06_00
------------------------------------------------

lardataalg v07_02_07
------------------------------------------------

larcorealg v07_03_00
------------------------------------------------

larcoreobj v07_00_01
------------------------------------------------

larbatch v01_47_01
--------------------------------------------

larutils v1_23_07
------------------------------------------
