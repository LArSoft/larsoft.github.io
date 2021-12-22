LArSoft v06\_47\_00 Release Notes(#LArSoft-v06_47_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v06\_47\_00 Release Notes](#LArSoft-v06_47_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_47\_00](#larsoft-v06_47_00)
    -   [lareventdisplay v06\_11\_00](#lareventdisplay-v06_11_00)
    -   [larexamples v06\_05\_05](#larexamples-v06_05_05)
    -   [larpandora v06\_15\_05](#larpandora-v06_15_05)
    -   [larwirecell v06\_05\_09](#larwirecell-v06_05_09)
    -   [larana v06\_09\_00](#larana-v06_09_00)
    -   [larreco v06\_38\_00](#larreco-v06_38_00)
    -   [larsim v06\_29\_01](#larsim-v06_29_01)
    -   [larevt v06\_15\_05](#larevt-v06_15_05)
    -   [lardata v06\_26\_01](#lardata-v06_26_01)
    -   [larcore v06\_14\_00](#larcore-v06_14_00)
    -   [larpandoracontent v03\_07\_03](#larpandoracontent-v03_07_03)
    -   [larsoftobj v1\_25\_00](#larsoftobj-v1_25_00)
    -   [lardataobj v1\_19\_00](#lardataobj-v1_19_00)
    -   [larcorealg v1\_06\_01](#larcorealg-v1_06_01)
    -   [larcoreobj v1\_15\_01](#larcoreobj-v1_15_01)
    -   [larbatch v01\_32\_04](#larbatch-v01_32_04)
    -   [larutils v1\_18\_00](#larutils-v1_18_00)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_47\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_47_00/larsoft-v06_47_00.html)\
Download instructions for [just larsoftobj v1\_25\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_25_00/larsoftobj-v1_25_00.html)

Purpose(#Purpose)
--------------------

-   changes to develop
-   approved feature branches

New features(#New-features)
------------------------------

-   lardataobj & larana feature/afurmans\_MCTruthMatching
    -   presented [August 15](https://indico.fnal.gov/getFile.py/access?contribId=1&resId=0&materialId=slides&confId=15131)
-   lareventdisplay feature/usher\_uboonedisplayoptions
    -   enhancements to the event display
    -   The 3D geometry is now handled by an experiment specific art tool so that multiple TPC’s can be displayed (e.g. ICARUS).
    -   argoneutcode requires feature/usher\_uboonedisplayoptions
-   larana feature/mdeltutt\_wf\_pedestal
    -   adds a new option for the optical waveform pedestal algorithm used by module OpHitFinder
    -   default configuration does not change

Bug fixes(#Bug-fixes)
------------------------

Updated dependencies(#Updated-dependencies)
----------------------------------------------

-   cetbuildtools v5\_14\_00 is used

Change List(#Change-List)
============================

larsoft v06\_47\_00(#larsoft-v06_47_00)
------------------------------------------

-   2017-08-16 Lynn Garren : larsoft v06\_47\_00 for larsoft v06\_47\_00
-   2017-08-16 Lynn Garren : update products
-   2017-08-16 Lynn Garren : for cetbuildtools v5\_14\_00
-   2017-08-10 Lynn Garren : larsoft v06\_46\_00
-   2017-08-09 Lynn Garren : ignore larcorealg tests on Jenkins

lareventdisplay v06\_11\_00(#lareventdisplay-v06_11_00)
----------------------------------------------------------

-   2017-08-16 Lynn Garren : lareventdisplay v06\_11\_00 for larsoft v06\_47\_00
-   2017-08-16 Lynn Garren : Merge branch ‘feature/usher\_uboonedisplayoptions’ into release/v06\_47\_00
-   2017-08-16 Lynn Garren : for cetbuildtools v5\_14\_00
-   2017-08-14 Tingjun Yang : Reimplement changes to cluster and flash displays.
-   2017-08-14 Usher, Tracy L : Reconciling with development branch, should be matched to updates that have gone there
-   2017-08-14 Usher, Tracy L : dropping file that should not have been included…
-   2017-08-11 Tingjun Yang : Change flash display in XZ view.
-   2017-08-11 Usher, Tracy L : Merge branch ‘develop’ into feature/usher\_uboonedisplayoptions
-   2017-08-10 Tingjun Yang : Change the way to display OpFlash in the wire-tick view.
-   2017-08-10 Lynn Garren : larsoft v06\_46\_00
-   2017-08-10 Tingjun Yang : Add functions to display cosmic score for pfparticles.
-   2017-08-08 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_uboonedisplayoptions
-   2017-07-27 Usher, Tracy L : loop over cryostats too!
-   2017-07-27 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_uboonedisplayoptions
-   2017-07-20 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_uboonedisplayoptions
-   2017-07-17 Usher, Tracy L : Now builds, need to reconcile some changes that may have been dropped by accident (e.g. the new hit display scheme)
-   2017-07-17 Usher, Tracy L : Merge branch ‘develop’ into feature/usher\_uboonedisplayoptions
-   2017-07-17 Usher, Tracy L : Improve drawing of hits, change strings to input tags
-   2017-06-14 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_uboonedisplayoptions
-   2017-06-03 Usher, Tracy L : Convert to art::InputTag objects for looking up data products
-   2017-06-03 Usher, Tracy L : Revamp the display of hits so that “shared” hits will be drawn as a single multi-gaussian function. Also, explicitly draw a bar at the center of each hit and another bar to represent the width of the hit.
-   2017-05-18 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_uboonedisplayoptions
-   2017-05-10 Usher, Tracy L : bug fix
-   2017-05-04 Usher, Tracy L : Merge commit ‘ad4f76e589665d6137cca7d1fc01d829ff53230a’ into feature/usher\_uboonedisplayoptions
-   2017-05-01 Usher, Tracy L : Minor fixes
-   2017-04-27 Usher, Tracy L : Improvements for 3D display: use art tools to do detector specific 3D drawing, implement 3 models: standard, microboone and icarus
-   2017-04-26 Usher, Tracy L : Merge branch ‘develop’ into feature/usher\_uboonedisplayoptions
-   2017-04-17 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_uboonedisplayoptions
-   2017-04-08 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_uboonedisplayoptions
-   2017-04-08 Usher, Tracy L : Tweaks to display
-   2017-04-08 Usher, Tracy L : No need to draw 3D event display twice on initialization
-   2017-04-08 Usher, Tracy L : Set up to add space charge?
-   2017-03-27 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_uboonedisplayoptions
-   2017-03-03 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_uboonedisplayoptions
-   2017-02-23 Usher, Tracy L : Merge commit ‘381324862e0fe49b99973e77f335c05247d92451’ into feature/usher\_uboonedisplayoptions
-   2017-02-09 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_uboonedisplayoptions
-   2017-02-03 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_uboonedisplayoptions
-   2017-01-28 Usher, Tracy L : Merge commit ‘6465b82e912d1cde1ae76dec7ff6c6ac6fd6caf0’ into feature/usher\_uboonedisplayoptions
-   2017-01-28 Usher, Tracy L : slight tweak on what is really a temporary fix
-   2017-01-20 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_uboonedisplayoptions
-   2017-01-19 Usher, Tracy L : Merge branch ‘develop’ into feature/usher\_uboonedisplayoptions
-   2017-01-19 Usher, Tracy L : Fix a special case for RawDigit input buffers exceeding the desired output size in the window
-   2017-01-09 Usher, Tracy L : Merge branch ‘develop’ into feature/usher\_uboonedisplayoptions
-   2017-01-08 Usher, Tracy L : Formatting, some updates for drawing space points
-   2016-12-30 Usher, Tracy L : Merge commit ‘533f69b4aa8e932008e118f76f28a9fc054a43fb’ into feature/usher\_uboonedisplayoptions
-   2016-12-30 Usher, Tracy L : Primarily, trying to adjust the size of 3D objects that are drawn to more easily differentiate them (there is not much flexibility in this display package!).
-   2016-12-17 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_uboonedisplayoptions
-   2016-12-17 Usher, Tracy L : Set color for “skeleton” points (debugging right now)
-   2016-12-02 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_uboonedisplayoptions
-   2016-12-02 Usher, Tracy L : protect against tracks with no trajectory points, more updates to display for PFParticles in 3D
-   2016-11-23 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_uboonedisplayoptions
-   2016-11-23 Usher, Tracy L : Updates to 3D event display to include “edges” when displaying PFParticles. Interesting problem here: you can draw a line in the 3D event display less than 2 cm long, or so it seems…
-   2016-11-03 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_uboonedisplayoptions
-   2016-11-03 Usher, Tracy L : Modifications which allow display of space points, through the 3D PFParticle display, which are displayed with a color, taken from the reco heat map palette, corresponding to the charge on the collection plane hit.
-   2016-10-20 Usher, Tracy L : update fcl parameters
-   2016-10-20 Usher, Tracy L : Updating fcl options for display
-   2016-10-20 Usher, Tracy L : small changes to marker/color schemes for various 3D (mainly) objects. Also add ability to draw in bad channels from the channel status database.
-   2016-10-20 Usher, Tracy L : Draw 3D boxes to display 3 frame readout for MicroBooNE. Also add code to display “bad” wires from the channel status database
-   2016-10-20 Usher, Tracy L : Display 3 frame readout volumes, also only draw simulated particles within the active time frame (e.g. not outside truncated readout for MicroBooNE)

larexamples v06\_05\_05(#larexamples-v06_05_05)
--------------------------------------------------

-   2017-08-16 Lynn Garren : larexamples v06\_05\_05 for larsoft v06\_47\_00
-   2017-08-16 Lynn Garren : for cetbuildtools v5\_14\_00

larpandora v06\_15\_05(#larpandora-v06_15_05)
------------------------------------------------

-   2017-08-16 Lynn Garren : larpandora v06\_15\_05 for larsoft v06\_47\_00
-   2017-08-16 Lynn Garren : for cetbuildtools v5\_14\_00

larwirecell v06\_05\_09(#larwirecell-v06_05_09)
--------------------------------------------------

-   2017-08-16 Lynn Garren : larwirecell v06\_05\_09 for larsoft v06\_47\_00
-   2017-08-16 Lynn Garren : for cetbuildtools v5\_14\_00

larana v06\_09\_00(#larana-v06_09_00)
----------------------------------------

-   2017-08-16 Lynn Garren : larana v06\_09\_00 for larsoft v06\_47\_00
-   2017-08-16 Lynn Garren : for cetbuildtools v5\_14\_00
-   2017-08-16 Lynn Garren : Merge branch ‘feature/afurmans\_MCTruthMatching’ into release/v06\_47\_00
-   2017-08-16 Lynn Garren : Merge branch ‘feature/mdeltutt\_wf\_pedestal’ into release/v06\_47\_00
-   2017-08-15 Andrew Furmanski : Added options to turn off T0 tag associations Added PFParticle-\>MCParticle matching (plus option to turn this off)
-   2017-08-15 Andrew Furmanski : Merge branch ‘feature/afurmans\_MCTruthMatching’ of ssh://cdcvs.fnal.gov/cvs/projects/larana into feature/afurmans\_MCTruthMatching
-   2017-08-15 Andrew Furmanski : updated to use a struct in MCtruthMatching auxilary data
-   2017-08-14 Tingjun Yang : Add pfparticle-t0 association.
-   2017-08-14 Andrew Furmanski : Don’t use BackTracker::TrackIDToParticle as it loses the knowledge of the art shared pointer - changed to loop internally
-   2017-08-14 Andrew Furmanski : Added direct association between Track and MCParticle, and fixed compiler errors.
-   2017-08-04 Lynn Garren : larana v06\_03\_18\_04
-   2017-05-31 Marco Del Tutto : fcl param adjustment for op waveform pedestal
-   2017-05-29 Marco Del Tutto : Adding sanity check before returning pedestal
-   2017-05-29 Marco Del Tutto : Adding new algorithm for pedestal estimation
-   2017-05-12 Usher, Tracy L : Add the check requiring more than 1 hit on a PFParticle to be out of time before rejecting
-   2017-06-13 Lynn Garren : larana v06\_03\_18\_03
-   2017-05-31 Marco Del Tutto : fcl param adjustment for op waveform pedestal
-   2017-05-29 Marco Del Tutto : Adding sanity check before returning pedestal
-   2017-05-29 Marco Del Tutto : Adding new algorithm for pedestal estimation
-   2017-05-04 Lynn Garren : larana v06\_03\_18\_02
-   2017-04-04 Lynn Garren : larana v06\_03\_18\_01 for larsoft v06\_26\_01\_01

larreco v06\_38\_00(#larreco-v06_38_00)
------------------------------------------

-   2017-08-16 Lynn Garren : larreco v06\_38\_00 for larsoft v06\_47\_00
-   2017-08-16 Lynn Garren : for cetbuildtools v5\_14\_00
-   2017-08-13 Robert Sulej : simplify expressions
-   2017-08-13 Robert Sulej : one more speed optimization
-   2017-08-12 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-08-12 Robert Sulej : optimize, 10% speedup, no changes to output
-   2017-08-11 Dorota Stefan : alignment of brackets
-   2017-08-11 Dorota Stefan : corrected primary lepton tagging
-   2017-08-11 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-08-11 Robert Sulej : add debugging code

larsim v06\_29\_01(#larsim-v06_29_01)
----------------------------------------

-   2017-08-16 Lynn Garren : larsim v06\_29\_01 for larsoft v06\_47\_00
-   2017-08-16 Lynn Garren : for cetbuildtools v5\_14\_00

larevt v06\_15\_05(#larevt-v06_15_05)
----------------------------------------

-   2017-08-16 Lynn Garren : larevt v06\_15\_05 for larsoft v06\_47\_00
-   2017-08-16 Lynn Garren : for cetbuildtools v5\_14\_00

lardata v06\_26\_01(#lardata-v06_26_01)
------------------------------------------

-   2017-08-16 Lynn Garren : lardata v06\_26\_01 for larsoft v06\_47\_00
-   2017-08-16 Lynn Garren : for cetbuildtools v5\_14\_00

larcore v06\_14\_00(#larcore-v06_14_00)
------------------------------------------

larpandoracontent v03\_07\_03(#larpandoracontent-v03_07_03)
--------------------------------------------------------------

larsoftobj v1\_25\_00(#larsoftobj-v1_25_00)
----------------------------------------------

-   2017-08-16 Lynn Garren : larsoftobj v1\_25\_00 for larsoft v06\_47\_00
-   2017-08-16 Lynn Garren : update products
-   2017-08-16 Lynn Garren : for cetbuildtools v5\_14\_00
-   2017-08-10 Lynn Garren : larsoft v06\_46\_00
-   2017-08-09 Lynn Garren : ignore larcorealg tests on Jenkins

lardataobj v1\_19\_00(#lardataobj-v1_19_00)
----------------------------------------------

-   2017-08-16 Lynn Garren : lardataobj v1\_19\_00 for larsoft v06\_47\_00
-   2017-08-16 Lynn Garren : for cetbuildtools v5\_14\_00
-   2017-08-16 Lynn Garren : remove trailing whitespace
-   2017-08-16 Lynn Garren : Merge branch ‘feature/afurmans\_MCTruthMatching’ into release/v06\_47\_00
-   2017-08-15 Andrew Furmanski : Updated new data struct for truth matching metadata
-   2017-08-15 Andrew Furmanski : Merge branch ‘feature/afurmans\_MCTruthMatching’ of ssh://cdcvs.fnal.gov/cvs/projects/lardataobj into feature/afurmans\_MCTruthMatching
-   2017-08-15 Andrew Furmanski : Updated to use a struct in the auxiliary data for truth matching associations
-   2017-08-14 Tingjun Yang : Add pfparticle-t0 association.
-   2017-08-14 Andrew Furmanski : Need Assns dictionaries both ways round - now have Track-\>MCParticle and MCParticle-\>Track
-   2017-08-14 Andrew Furmanski : Changes to classes for dictionary generation - association between track and MCParticle
-   2017-04-04 Lynn Garren : lardataobj v1\_11\_00\_01 for larsoft v06\_26\_01\_01
-   2017-03-23 Giuseppe Cerati : Merge remote-tracking branch ‘origin/feature/cerati\_kffitresiduals’ into feature/cerati\_larsoft-v06\_26\_01-plus-new-kffit

larcorealg v1\_06\_01(#larcorealg-v1_06_01)
----------------------------------------------

larcoreobj v1\_15\_01(#larcoreobj-v1_15_01)
----------------------------------------------

larbatch v01\_32\_04(#larbatch-v01_32_04)
--------------------------------------------

larutils v1\_18\_00(#larutils-v1_18_00)
------------------------------------------

-   2017-08-16 Lynn Garren : larutils v1\_18\_00 for larsoft v06\_47\_00
-   2017-08-16 Lynn Garren : for cetbuildtools v5\_14\_00
-   2017-08-14 Herbert Greenlee : Use official larcv repo.
-   2017-08-13 Herbert Greenlee : Switch to clone repo.
-   2017-08-11 Herbert Greenlee : Use correct flavor for Darwin.
-   2017-08-11 Herbert Greenlee : Switch to official repo.
-   2017-08-11 Herbert Greenlee : Switch repos.
-   2017-08-10 Herbert Greenlee : Build both larcv and larlite.
