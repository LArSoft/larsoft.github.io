LArSoft v07\_13\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v07\_13\_00 Release Notes](#LArSoft-v07_13_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v07\_13\_00](#larsoft-v07_13_00)
    -   [lareventdisplay v07\_02\_01](#lareventdisplay-v07_02_01)
    -   [larexamples v07\_00\_19](#larexamples-v07_00_19)
    -   [larg4 v07\_05\_00](#larg4-v07_05_00)
    -   [larpandora v07\_06\_00](#larpandora-v07_06_00)
    -   [larwirecell v07\_05\_01](#larwirecell-v07_05_01)
    -   [larana v07\_04\_01](#larana-v07_04_01)
    -   [larreco v07\_10\_01](#larreco-v07_10_01)
    -   [larsim v07\_09\_00](#larsim-v07_09_00)
    -   [larevt v07\_02\_01](#larevt-v07_02_01)
    -   [lardata v07\_01\_01](#lardata-v07_01_01)
    -   [larcore v07\_00\_05](#larcore-v07_00_05)
    -   [larpandoracontent v03\_14\_03](#larpandoracontent-v03_14_03)
    -   [larsoftobj v07\_08\_00](#larsoftobj-v07_08_00)
    -   [lardataobj v07\_06\_00](#lardataobj-v07_06_00)
    -   [lardataalg v07\_02\_07](#lardataalg-v07_02_07)
    -   [larcorealg v07\_03\_00](#larcorealg-v07_03_00)
    -   [larcoreobj v07\_00\_01](#larcoreobj-v07_00_01)
    -   [larbatch v01\_47\_01](#larbatch-v01_47_01)
    -   [larutils v1\_23\_07](#larutils-v1_23_07)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v07\_13\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v07_13_00/larsoft-v07_13_00.html)\
Download instructions for [just larsoftobj v07\_08\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v07_08_00/larsoftobj-v07_08_00.html)

Purpose
--------------------

-   changes to develop
-   approved feature branches

New features
------------------------------

-   persist Pandora slices as recob::slice
    -   larpandora larpandoracontent feature/asmith\_persistRecobSlicev07\_11\_00
    -   [https://indico.fnal.gov/event/19103/contribution/4/material/slides/0.pdf](https://indico.fnal.gov/event/19103/contribution/4/material/slides/0.pdf)
-   larg4 origin/feature/wenzel\_ana
    -   The larg4 example code which now contains simple analyzers for SimEnergyDeposits, AuxDetHits and MCParticle.
    -   lar -c testlarg4.fcl

Bug fixes
------------------------

-   bug fix for [\#21394](/redmine/issues/21394 "Bug: Bug in Fiducial Volume Definition in Larsim (Resolved)")
    -   larsim feature/gputnam\_MCSTReco\_FV\_fix
    -   [https://indico.fnal.gov/event/19230/contribution/2/material/slides/0.pdf](https://indico.fnal.gov/event/19230/contribution/2/material/slides/0.pdf)
-   larsim feature/herogers\_SCE\_xcorrection
    -   bug fix for ShiftEdepModule
-   larana fMinTickDrift bug fixed in develop

Updated dependencies
----------------------------------------------

-   wirecell v0\_10\_5
-   nutools v2\_24\_08
    -   ifdhc v2\_3\_9
    -   ifdh\_art v2\_06\_13

Change List
============================

larsoft v07\_13\_00
------------------------------------------

-   2018-12-05 Lynn Garren : fix version
-   2018-12-04 Lynn Garren : larsoft v07\_13\_00 for larsoft v07\_13\_00
-   2018-12-04 Lynn Garren : product versions

lareventdisplay v07\_02\_01
----------------------------------------------------------

-   2018-12-04 Lynn Garren : lareventdisplay v07\_02\_01 for larsoft v07\_13\_00

larexamples v07\_00\_19
--------------------------------------------------

-   2018-12-04 Lynn Garren : larexamples v07\_00\_19 for larsoft v07\_13\_00

larg4 v07\_05\_00
--------------------------------------

-   2018-12-04 Lynn Garren : larg4 v07\_05\_00 for larsoft v07\_13\_00
-   2018-12-04 Lynn Garren : remove unused libraries from link list
-   2018-12-04 Lynn Garren : Merge branch ‘origin/feature/wenzel\_ana’ into release/v07\_13\_00
-   2018-12-04 Hans-Joachim Wenzel : make sure we are using the correct units when analyzing the SimEnergyDeposits
-   2018-11-29 Hans-Joachim Wenzel : modules that loops over the AuxdetHits and makes some plots

larpandora v07\_06\_00
------------------------------------------------

-   2018-12-04 Lynn Garren : larpandora v07\_06\_00 for larsoft v07\_13\_00
-   2018-12-04 Lynn Garren : Merge branch ‘feature/asmith\_persistRecobSlicev07\_11\_00’ into release/v07\_13\_00
-   2018-11-19 loressa : Cosmetics
-   2018-11-17 a-d-smith : removed test couts
-   2018-11-15 a-d-smith : Modified slice production order to behave more intuitively
-   2018-11-15 a-d-smith : Added more doxygen comments
-   2018-11-12 a-d-smith : Updated doxygen comments
-   2018-11-07 a-d-smith : added slices to event dump output
-   2018-11-07 a-d-smith : Updated Pandora event dump to include various verbosity levels
-   2018-10-31 a-d-smith : Added recob Slices to the output of Pandora

larwirecell v07\_05\_01
--------------------------------------------------

-   2018-12-04 Lynn Garren : larwirecell v07\_05\_01 for larsoft v07\_13\_00

larana v07\_04\_01
----------------------------------------

-   2018-12-04 Lynn Garren : larana v07\_04\_01 for larsoft v07\_13\_00
-   2018-11-29 Giuseppe Cerati : fix fMinTickDrift bug

larreco v07\_10\_01
------------------------------------------

-   2018-12-04 Lynn Garren : larreco v07\_10\_01 for larsoft v07\_13\_00
-   2018-12-04 Tingjun Yang : Merge remote-tracking branch ‘origin/feature/rsf\_tcshowerPFP’ into develop
-   2018-12-01 Rory Fitzpatrick : minor changes
-   2018-12-01 Rory Fitzpatrick : fixed CaloAlg references

larsim v07\_09\_00
----------------------------------------

-   2018-12-04 Lynn Garren : larsim v07\_09\_00 for larsoft v07\_13\_00
-   2018-12-04 Lynn Garren : Merge branch ‘feature/herogers\_SCE\_xcorrection’ into release/v07\_13\_00
-   2018-12-04 Lynn Garren : Merge branch ‘feature/gputnam\_MCSTReco\_FV\_fix’ into release/v07\_13\_00
-   2018-12-04 Hannah Rogers : Correct SCE x posisiton correction direction
-   2018-12-04 gputnam : fix typo in comment
-   2018-12-04 gputnam : add doxygen comment to variables defining volume box
-   2018-12-04 gputnam : Merge tag ‘v07\_07\_01’ into feature/gputnam\_MCSTReco\_FV\_fix
-   2018-11-28 gputnam : Add comment to update
-   2018-11-28 gputnam : Fix fiducial volume definition in MCRecoPart. Fiducial volume is now defined as a box that extends to include all TPC’s in the detector. This removes implicit coupling to MicroBooNE and fixes saving of MCTrack points in (e.g.) SBND and ICARUS. (Note: Should FV definition be all cryostats instead of all TPCs?).

larevt v07\_02\_01
----------------------------------------

-   2018-12-04 Lynn Garren : larevt v07\_02\_01 for larsoft v07\_13\_00

lardata v07\_01\_01
------------------------------------------

-   2018-12-04 Lynn Garren : lardata v07\_01\_01 for larsoft v07\_13\_00

larcore v07\_00\_05
------------------------------------------

larpandoracontent v03\_14\_03
--------------------------------------------------------------

-   2018-12-04 Lynn Garren : larpandoracontent v03\_14\_03 for larsoft v07\_13\_00
-   2018-12-04 Steven Green : Merge branch ‘updates’
-   2018-12-04 Steven Green : Update version and change log.
-   2018-11-28 Multi-algorithm pattern recognition : Merge pull request \#74 from loressa/feature/SliceIndex
-   2018-11-28 loressa : Updated numbering convention for slice indexes to match how output to LArSoft is handled in larpandora
-   2018-11-14 Multi-algorithm pattern recognition : Merge pull request \#73 from StevenGreen1/feature/CompilerFix
-   2018-11-06 Steven Green : Refactoring bdt beam particle id class to resolve compiler error on MacOS.

larsoftobj v07\_08\_00
------------------------------------------------

lardataobj v07\_06\_00
------------------------------------------------

lardataalg v07\_02\_07
------------------------------------------------

larcorealg v07\_03\_00
------------------------------------------------

larcoreobj v07\_00\_01
------------------------------------------------

larbatch v01\_47\_01
--------------------------------------------

larutils v1\_23\_07
------------------------------------------
