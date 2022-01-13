LArSoft v04_36_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v04_36_00 Release Notes](#LArSoft-v04_36_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Breaking Changes](#Breaking-Changes)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04_36_00](#larsoft-v04_36_00)
    -   [lareventdisplay v04_14_03](#lareventdisplay-v04_14_03)
    -   [larexamples v04_06_14](#larexamples-v04_06_14)
    -   [larpandora v04_09_05](#larpandora-v04_09_05)
    -   [larana v04_18_00](#larana-v04_18_00)
    -   [larreco v04_30_00](#larreco-v04_30_00)
    -   [larsim v04_21_00](#larsim-v04_21_00)
    -   [larevt v04_14_04](#larevt-v04_14_04)
    -   [lardata v04_22_01](#lardata-v04_22_01)
    -   [larcore v04_26_00](#larcore-v04_26_00)
    -   [larbatch v01_20_03](#larbatch-v01_20_03)
    -   [larutils v1_05_00](#larutils-v1_05_00)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_36_00/larsoft-v04_36_00.html)

Purpose
--------------------

-   changes for MicroBooNE MCC7

New features
------------------------------

-   larana feature/gvsinev_PerEventFlashTree
-   larana feature/OpticalRecoUpdate
    -   a matching feature branch is provided for dunetpc and uboonecode
-   larreco feature/usher_gaushitrestructure
-   larsim feature/gvsinev_SNGeneratorImprovements
-   larsim feature/gvsinev_Rn222Background
-   larsim feature/warburton_NuclearPhysics
    -   turns on MuonNuclear

Breaking Changes
--------------------------------------

-   some code in larana/OpticalDetector has been moved to larana/OpticalDetector/OpHitFinder
-   If your library list includes OpticalDetector, it should now include both OpticalDetector and OpHitFinder.

Bug fixes
------------------------

-   lardata [redmine issue 11628](https://cdcvs.fnal.gov/redmine/issues/11628)

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|ifdhc|v1_8_9|e9:p2710||
|ifdh_art|v1_14_08|e9:nu:s30||
|nutools|v1_22_01|e9:gn286||

Change List
============================

larsoft v04_36_00
------------------------------------------

-   2016-02-04 Lynn Garren : larsoft v04_36_00 for larsoft v04_36_00
-   2016-02-04 Lynn Garren : update product versions
-   2016-02-04 Lynn Garren : update dependency database

lareventdisplay v04_14_03
----------------------------------------------------------

-   2016-02-04 Lynn Garren : lareventdisplay v04_14_03 for larsoft v04_36_00

larexamples v04_06_14
--------------------------------------------------

-   2016-02-04 Lynn Garren : larexamples v04_06_14 for larsoft v04_36_00

larpandora v04_09_05
------------------------------------------------

-   2016-02-04 Lynn Garren : larpandora v04_09_05 for larsoft v04_36_00

larana v04_18_00
----------------------------------------

-   2016-02-04 Lynn Garren : disable test for now
-   2016-02-04 Lynn Garren : larana v04_18_00 for larsoft v04_36_00
-   2016-02-04 Lynn Garren : Merge branch ‘feature/OpticalRecoUpdate’ into release/v04_36_00
-   2016-02-04 drinkingkazu : New test parameters –kazu
-   2016-02-01 Gleb Sinev : Merge branch ‘develop’ into feature/gvsinev_PerEventFlashTree
-   2016-01-30 drinkingkazu : Merge branch ‘develop’ into feature/OpticalRecoUpdate
-   2016-01-26 Gleb Sinev : Merge branch ‘develop’ into feature/gvsinev_PerEventFlashTree
-   2016-01-14 Gleb Sinev : Produce a new tree in OpFlashAna that contains flash information stored in vectors for each event and that is turned off by default.
-   2016-01-06 drinkingkazu : Merge branch ‘develop’ into feature/OpticalRecoUpdate
-   2016-01-05 Gleb Sinev : Get rid of tabs in OpFlashAna, make the style there more uniform.
-   2015-11-18 drinkingkazu : Working! –kazu
-   2015-11-18 drinkingkazu : Updating optical hit reco –kazu

larreco v04_30_00
------------------------------------------

-   2016-02-04 Lynn Garren : larreco v04_30_00 for larsoft v04_36_00
-   2016-02-04 Lynn Garren : Merge branch ‘feature/usher_gaushitrestructure’ into release/v04_36_00
-   2016-02-02 Usher, Tracy L : restored start/end ticks to original version to halt complaints from downstream code.
-   2016-02-02 Usher, Tracy L : fix small oops…
-   2016-02-02 Usher, Tracy L : Final cleanup after talking to Gianluca
-   2016-02-01 Mike Wallbank : Added option to only save showers which are ‘complete’; i.e. all properties have been found. By default showers are saved even if their start point, direction etc could not be determined. Also added fix to prevent seg fault when PMATrackMaker::buildSegment() returns a null pointer (happens if there are insufficient hits in two views to form a track)
-   2016-02-01 Mike Wallbank : Changed the method of getting the hit charge from SummedADC to the more accurate Integral
-   2016-02-01 Robert Sulej : bit better logig for dQdx based track directions
-   2016-01-29 Mike Wallbank : Remove histograms (as made in the old version of the code) and use just 2D vectors
-   2016-01-29 Mike Wallbank : Merge branch ‘develop’ into feature/wallbank_OldBlurredImproved
-   2016-01-29 Mike Wallbank : Bug fix: global wire can be negative but it was being treated as an unsigned int
-   2016-01-29 Mike Wallbank : Complete rewrite of the BlurredCluster module. In order to improve computational efficiency and memory usage, the implementation of the algorithm was completely changed. Previously, the original hit map and the blurred hit map were each saved in a TH2 object in the code, necessitating use of all the root TH2 methods to access the data. These methods are slow and the objects themselves are an over-kill for the use for which they were used. They have been replaced simply with 2D vectors, allowing faster access and more efficient memory usage.
-   2016-01-29 Mike Wallbank : Bug fixes in global wire finding for the old version of clustering (inc hists)
-   2016-01-29 Mike Wallbank : Bug fixes in global wire finding
-   2016-01-27 Mike Wallbank : Debugging of the new vector way of holding hit map
-   2016-01-26 Mike Wallbank : Few improvements
-   2016-01-25 Usher, Tracy L : Restructure the module and modify handling of some special cases. Now broken into three main functions: 1) finding candidate pulses, 2) merging of candidate pulses into single waveforms for fitting, 3) fitting peaks to gaussians. For waveforms with too many hits return a single hit centered on the waveform with width from start to stop of waveform.
-   2016-01-25 Mike Wallbank : Replaced all histograms with 2D vectors to save on memory and computational efficiency when running the clustering code

larsim v04_21_00
----------------------------------------

-   2016-02-04 Lynn Garren : larsim v04_21_00 for larsoft v04_36_00
-   2016-02-04 Lynn Garren : Merge branch ‘feature/warburton_NuclearPhysics’ into release/v04_36_00
-   2016-02-04 Lynn Garren : Merge branch ‘feature/gvsinev_Rn222Background’ into release/v04_36_00
-   2016-02-02 Thomas Warburton : Turning MuonNuclear on
-   2016-02-01 Gleb Sinev : Merge branch ‘develop’ into feature/gvsinev_Rn222Background
-   2016-02-01 Gleb Sinev : Merge branch ‘develop’ into feature/gvsinev_SNGeneratorImprovements
-   2016-01-26 Gleb Sinev : Merge branch ‘develop’ into feature/gvsinev_SNGeneratorImprovements
-   2016-01-26 Gleb Sinev : Merge branch ‘develop’ into feature/gvsinev_Rn222Background
-   2016-01-19 Gleb Sinev : Correct a bug slightly affecting the energy of electrons produced in the supernova generator.
-   2016-01-19 Gleb Sinev : Add options to generate monoenergetic neutrinos and to use the Poisson distribution for the number of neutrinos generated per event to the supernova generator.
-   2016-01-19 Gleb Sinev : Add 222Rn to the RadioGen module.

larevt v04_14_04
----------------------------------------

-   2016-02-04 Lynn Garren : larevt v04_14_04 for larsoft v04_36_00

lardata v04_22_01
------------------------------------------

-   2016-02-04 Lynn Garren : lardata v04_22_01 for larsoft v04_36_00
-   2016-02-04 Jonathan Insler : Fixed bugs found by David Adams when uncompressing Huffman coding and zero suppression sequentially and set pedestal to int from int&

larcore v04_26_00
------------------------------------------

larbatch v01_20_03
--------------------------------------------

larutils v1_05_00
------------------------------------------

-   2016-02-04 Lynn Garren : larutils v1_05_00 for larsoft v04_36_00
-   2016-02-03 Tingjun Yang : Remove LariatBeamFiles as it does not exist.
-   2016-02-03 Tingjun Yang : fix typo
-   2016-02-03 Tingjun Yang : set ncores to 16 for osx
-   2016-02-02 Tingjun Yang : add spaces
-   2016-02-02 Tingjun Yang : hack.
-   2016-02-02 Tingjun Yang : Fix links.
-   2016-02-02 Tingjun Yang : Add buildLArIAT.sh
-   2016-02-02 Tingjun Yang : delete a space
-   2016-02-02 Tingjun Yang : fix typo
-   2016-02-02 Tingjun Yang : fix typo
-   2016-02-02 Tingjun Yang : Update buildDUNE.sh.
-   2016-01-29 Lynn Garren : larsoft v04_35_00
-   2016-01-28 Lynn Garren : fix typo
