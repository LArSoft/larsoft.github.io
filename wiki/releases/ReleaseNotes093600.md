LArSoft v09_36_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v09_36_00 Release Notes](#LArSoft-v09_36_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Known issues](#Known-issues)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09_36_00](#larsoft-v09_36_00)
    -   [lareventdisplay v09_02_06](#lareventdisplay-v09_02_06)
    -   [larexamples v09_02_06](#larexamples-v09_02_06)
    -   [larpandora v09_10_00](#larpandora-v09_10_00)
    -   [larsimrad v09_03_05](#larsimrad-v09_03_05)
    -   [larrecodnn v09_09_07](#larrecodnn-v09_09_07)
    -   [larwirecell v09_04_04](#larwirecell-v09_04_04)
    -   [larana v09_03_07](#larana-v09_03_07)
    -   [larreco v09_07_06](#larreco-v09_07_06)
    -   [larsim v09_18_01](#larsim-v09_18_01)
    -   [larg4 v09_06_01](#larg4-v09_06_01)
    -   [larevt v09_03_04](#larevt-v09_03_04)
    -   [lardata v09_04_01](#lardata-v09_04_01)
    -   [larcore v09_03_01](#larcore-v09_03_01)
    -   [larpandoracontent v03_26_01](#larpandoracontent-v03_26_01)
    -   [larsoftobj v09_11_01](#larsoftobj-v09_11_01)
    -   [lardataobj v09_03_04](#lardataobj-v09_03_04)
    -   [lardataalg v09_07_01](#lardataalg-v09_07_01)
    -   [larcorealg v09_03_01](#larcorealg-v09_03_01)
    -   [larcoreobj v09_03_01](#larcoreobj-v09_03_01)
    -   [webevd v09_06_04](#webevd-v09_06_04)
    -   [larbatch v01_56_02](#larbatch-v01_56_02)
    -   [larutils v1_28_02](#larutils-v1_28_02)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v09_36_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_36_00/larsoft-v09_36_00.html)
Download instructions for [just larsoftobj v09_11_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_11_01/larsoftobj-v09_11_01.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

-   larpandora PR 23
    -   This PR includes a new detector interface to handle mapping semi-specific detector details to the pandora input.
    -   The change centres around an empty interface class with a few concrete derived interfaces, one per LArTPC type. This change is necessary to incorporate the vertical drift detector into the pandora workflow as the old interface was reaching its capacity.
    -   It also has a nice knockoff effect of reducing the amount of code in LArPandoraGeometry and LArPandoraInput.
    -   Testing has been done to check that pandora’s current LArTPC consumers are unaffected; we’re not anticipating any change in output for any detector.

Bug fixes
------------------------

-   larg4 PR 31
    -   Ensure correct setup/teardown of G4 objects for multiple larg4 modules
    -   This PR addresses problems found with larg4 PR 30. A long-term solution will be to move some of this behavior into the appropriate service.
-   larg4 PR 32
    -   Ensure initialisation of trackID offset
    -   larg4 PR 30 introduced functionality to allow for multiple larg4 instances. Since its introduction SBND has noticed an intermittent warning in our g4 tests due to a difference in the number of MCTracks produced in mcreco.
    -   After some debugging I found that this seems to be related to attempts to access a trackID from the largeant MCParticle’s which doesn’t exist. From what I can tell this is because the offset parameter in the ParticleListActionService is not currently initialised and therefore results in some undefined behaviour, taking different values.
    -   By adding this line I was able to show offline that this error did not crop up at all in 100 runs of the relevant CI test, compared to a random occurrence of about 1/10 before. I am confident this was the source of the error.
-   Fix for Bug [redmine issue 25525](https://cdcvs.fnal.gov/redmine/issues/25525)
    -   nusimdata v1_24_06
    -   lardataobj PR 18
        -   This attempts to check if existing TrackID us negative, and if so applies the given offset in the “-” direction.
    -   larsim PR 77
        -   This attempts to check if existing TrackID is negative, and if so applies the given offset in the “-” direction.

Known issues
------------------------------

-   Unexplained OpHit / OpFlash product differences in SBND CI tests following larana\#14
    -   [redmine issue 26421](https://cdcvs.fnal.gov/redmine/issues/26421)
    -   [https://github.com/SBNSoftware/sbndcode/issues/213](https://github.com/SBNSoftware/sbndcode/issues/213)

Updated dependencies
----------------------------------------------

-   nutools v3_11_06
-   nuevdb v1_05_06
-   nug4 v1_11_01
-   nugen v1_14_06
-   nusimdata v1_24_06
-   nusystematics v01_00_03_01
-   geant4reweight v01_08_07

Change List
============================

larsoft v09_36_00
------------------------------------------

-   2021-11-11 Lynn Garren : larsoft v09_36_00 for larsoft v09_36_00
-   2021-11-11 Lynn Garren : larsoft v09_36_00 for larsoft v09_36_00
-   2021-11-11 Lynn Garren : nulite v3_11_06
-   2021-11-04 Lynn Garren : update dependency database to v09_30_00

lareventdisplay v09_02_06
----------------------------------------------------------

-   2021-11-11 Lynn Garren : lareventdisplay v09_02_06 for larsoft v09_36_00
-   2021-11-11 Lynn Garren : lareventdisplay v09_02_06 for larsoft v09_36_00

larexamples v09_02_06
--------------------------------------------------

-   2021-11-11 Lynn Garren : larexamples v09_02_06 for larsoft v09_36_00
-   2021-11-11 Lynn Garren : larexamples v09_02_06 for larsoft v09_36_00

larpandora v09_10_00
------------------------------------------------

-   2021-11-11 Lynn Garren : larpandora v09_10_00 for larsoft v09_36_00
-   2021-11-11 Lynn Garren : larpandora v09_10_00 for larsoft v09_36_00
-   2021-11-10 Lynn Garren : Merge pull request \#23 from PandoraPFA/feature/detector_interface
-   2021-11-10 Dom Brailsford : Use the detector interface class to retrieve the wire pitch
-   2021-11-09 Dom Brailsford : Clang formatting
-   2021-11-09 Dom Brailsford : Switch the U/V views for ICARUS
-   2021-11-08 Dom Brailsford : Tidy up the code that’s no longer needed
-   2021-11-08 Dom Brailsford : Create readout gap parameters for PDDP
-   2021-11-08 Dom Brailsford : Add function for creating line gap parameters from a detector’s readout gap
-   2021-11-08 Dom Brailsford : Rename function as a similar one is going to be added
-   2021-11-08 Dom Brailsford : Use already existing code for logic
-   2021-11-08 Dom Brailsford : Flip the dual phase views
-   2021-11-08 Dom Brailsford : Remove the old code that the det type now replaces
-   2021-11-08 Dom Brailsford : Minimalise the CMake
-   2021-11-05 Dom Brailsford : Typos, doxygen and cosmetics
-   2021-11-05 Dom Brailsford : Let vintage lartpc own the geo service handle. Provide a function to rent it out to the dervied classes. Use said functionality in the dervied classes.
-   2021-11-05 Dom Brailsford : Only override what’s necessary
-   2021-11-05 Dom Brailsford : Use det functions WireAngle now
-   2021-11-05 Dom Brailsford : WireAngle function in detector_functions
-   2021-11-05 Dom Brailsford : include guards
-   2021-11-05 Dom Brailsford : Make the concrete detector types dependent on the vintage class
-   2021-11-05 Dom Brailsford : Drop DL dep. The rest of the cmake can be sorted later
-   2021-11-09 Dom Brailsford : Mistake in merge, oops
-   2021-10-19 Dom Brailsford : ICARUS logic
-   2021-10-19 Dom Brailsford : ICARUS class
-   2021-10-19 Dom Brailsford : Dual phase logic
-   2021-10-19 Dom Brailsford : Move function to header so that the Detectors classes will compile
-   2021-10-19 Dom Brailsford : Concrete interface for dual phase
-   2021-10-18 Dom Brailsford : Remove non-needed items
-   2021-10-18 Dom Brailsford : Use the line gap parameter creation function from the interface
-   2021-10-18 Dom Brailsford : Use the general drift gap param creation in the concrete classes
-   2021-10-18 Dom Brailsford : Add general function for creating the drift gap params
-   2021-10-18 Dom Brailsford : Add namespace for freestanding functions
-   2021-10-18 Dom Brailsford : Add empty implementation of the API’s line gap parameter creation
-   2021-10-18 Dom Brailsford : Add definition for creating the API’s line gap parameters
-   2021-10-18 Dom Brailsford : Implement detector type usage in the readout gap creation
-   2021-11-09 Dom Brailsford : Implement the daughter gap loading
-   2021-10-18 Dom Brailsford : Add daughter gap loading to the concrete detector types
-   2021-10-18 Dom Brailsford : Add definition for loading the daughter detector gaps
-   2021-10-18 Dom Brailsford : Drop view switch function
-   2021-11-09 Dom Brailsford : Bypass LoadGlobalDaughterGeometry as it isn’t needed
-   2021-10-18 Dom Brailsford : Implement hooks but leave old code there for now
-   2021-10-18 Dom Brailsford : Implement most of the hooks but leave old code commented out (and some stray debug couts)
-   2021-10-18 Dom Brailsford : Add view switching logic to the target view functions
-   2021-10-18 Dom Brailsford : Correct logic for vintage tpc
-   2021-10-18 Dom Brailsford : Add vintage lartpc to factory
-   2021-10-18 Dom Brailsford : Add vintage 3 view class. Literally a copy-paste of VD right now…
-   2021-10-18 Dom Brailsford : Style
-   2021-10-01 Dom Brailsford : Remove the abs for the Y view
-   2021-10-01 Dom Brailsford : Disable view switching within the src file (the actual functions still work)
-   2021-09-29 Dom Brailsford : Implement gap check/creation functions in LArPandoraGeometry (daughter volume checks still TODO)
-   2021-09-29 Dom Brailsford : Add function for making line gaps. (also remove a header that snuck in erroneously)
-   2021-09-29 Dom Brailsford : Add functions for checking gap sizes
-   2021-09-28 Dom Brailsford : Implement most of the new functionality in the geometry
-   2021-09-28 Dom Brailsford : Implement angles
-   2021-09-28 Dom Brailsford : Update the tpc and cryostat types to be more larsoft-ie
-   2021-09-28 Dom Brailsford : Update usage to use new functions
-   2021-09-28 Dom Brailsford : Update interface to have 3x WirePitch and WireAngle functions
-   2021-09-28 Dom Brailsford : Start filling in some details
-   2021-09-28 Dom Brailsford : Start implementation for wire pitch
-   2021-09-28 Dom Brailsford : Include the header in the rejig of the targert view functions
-   2021-09-28 Dom Brailsford : Update target view functions to use tpc/cryo info
-   2021-09-28 Dom Brailsford : Start writing the class internals
-   2021-09-28 Dom Brailsford : Forward declare to avoid circular dep
-   2021-09-28 Dom Brailsford : Make the geom service a data member
-   2021-09-27 Dom Brailsford : Unfortunately a few bits. - Start of implementation for the VD geometry - Rename the detectors directory to Detectors - move the interface class to the Detectors directory
-   2021-09-27 Dom Brailsford : Actually remove the factory function from the interface
-   2021-09-27 Dom Brailsford : Make the view functions return views rather than floats…
-   2021-09-27 Dom Brailsford : Create individual files for each detector type.
-   2021-09-27 Dom Brailsford : Move the factory function outside of the interface
-   2021-09-27 Dom Brailsford : More complete (but empty) prototype interface
-   2021-09-24 Dom Brailsford : Nuke DUNEFDHD while developing. Start adding to the list of functions
-   2021-09-24 Dom Brailsford : Change the need to pass the service as argument. Throw a sensible exception. Change the switch function name to be consistent with what it is replacing
-   2021-09-24 Dom Brailsford : Partial skeleton for the detector type structure including - Base class - Factory method - Two prototype derived classes

larsimrad v09_03_05
----------------------------------------------

-   2021-11-11 Lynn Garren : larsimrad v09_03_05 for larsoft v09_36_00
-   2021-11-11 Lynn Garren : larsimrad v09_03_05 for larsoft v09_36_00

larrecodnn v09_09_07
------------------------------------------------

-   2021-11-11 Lynn Garren : larrecodnn v09_09_07 for larsoft v09_36_00
-   2021-11-11 Lynn Garren : larrecodnn v09_09_07 for larsoft v09_36_00

larwirecell v09_04_04
--------------------------------------------------

-   2021-11-11 Lynn Garren : larwirecell v09_04_04 for larsoft v09_36_00
-   2021-11-11 Lynn Garren : larwirecell v09_04_04 for larsoft v09_36_00

larana v09_03_07
----------------------------------------

-   2021-11-11 Lynn Garren : larana v09_03_07 for larsoft v09_36_00
-   2021-11-11 Lynn Garren : larana v09_03_07 for larsoft v09_36_00

larreco v09_07_06
------------------------------------------

-   2021-11-11 Lynn Garren : larreco v09_07_06 for larsoft v09_36_00
-   2021-11-11 Lynn Garren : larreco v09_07_06 for larsoft v09_36_00

larsim v09_18_01
----------------------------------------

-   2021-11-11 Lynn Garren : larsim v09_18_01 for larsoft v09_36_00
-   2021-11-11 Lynn Garren : larsim v09_18_01 for larsoft v09_36_00
-   2021-11-03 Wesley : have trackid offsets respective negative number conventions
-   2021-11-03 Wesley : preserve negative track IDs, and properly account for those in ranges

larg4 v09_06_01
--------------------------------------

-   2021-11-11 Lynn Garren : larg4 v09_06_01 for larsoft v09_36_00
-   2021-11-11 Lynn Garren : larg4 v09_06_01 for larsoft v09_36_00
-   2021-11-10 Lynn Garren : Merge pull request \#31 from knoepfel/fix-multiple-larg4-modules
-   2021-11-10 Lynn Garren : Merge pull request \#32 from henrylay97/develop
-   2021-11-09 Henry Lay : Ensure initialisation of trackID offset
-   2021-11-03 Kyle Knoepfel : Avoid multiple setups/teardowns of singleton-ish G4 objects.
-   2021-11-02 Kyle Knoepfel : Clang-format and some cleanups.

larevt v09_03_04
----------------------------------------

-   2021-11-11 Lynn Garren : larevt v09_03_04 for larsoft v09_36_00
-   2021-11-11 Lynn Garren : larevt v09_03_04 for larsoft v09_36_00

lardata v09_04_01
------------------------------------------

-   2021-11-11 Lynn Garren : lardata v09_04_01 for larsoft v09_36_00
-   2021-11-11 Lynn Garren : lardata v09_04_01 for larsoft v09_36_00

larcore v09_03_01
------------------------------------------

larpandoracontent v03_26_01
--------------------------------------------------------------

larsoftobj v09_11_01
------------------------------------------------

-   2021-11-11 Lynn Garren : larsoftobj v09_11_01 for larsoft v09_36_00
-   2021-11-11 Lynn Garren : larsoftobj v09_11_01 for larsoft v09_36_00
-   2021-11-11 Lynn Garren : nusimdata v1_24_06

lardataobj v09_03_04
------------------------------------------------

-   2021-11-11 Lynn Garren : lardataobj v09_03_04 for larsoft v09_36_00
-   2021-11-11 Lynn Garren : lardataobj v09_03_04 for larsoft v09_36_00
-   2021-11-10 Lynn Garren : whitespace cleanup
-   2021-11-03 Wesley : have trackid offsets respective negative number conventions

lardataalg v09_07_01
------------------------------------------------

-   2021-11-11 Lynn Garren : lardataalg v09_07_01 for larsoft v09_36_00
-   2021-11-11 Lynn Garren : lardataalg v09_07_01 for larsoft v09_36_00

larcorealg v09_03_01
------------------------------------------------

larcoreobj v09_03_01
------------------------------------------------

webevd v09_06_04
----------------------------------------

-   2021-11-11 Lynn Garren : webevd v09_06_04 for larsoft v09_36_00
-   2021-11-11 Lynn Garren : webevd v09_06_04 for larsoft v09_36_00

larbatch v01_56_02
--------------------------------------------

larutils v1_28_02
------------------------------------------
