LArSoft v06_18_01 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06_18_01 Release Notes](#LArSoft-v06_18_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Known problems](#Known-problems)
-   [Change List](#Change-List)
    -   [larsoft v06_18_01](#larsoft-v06_18_01)
    -   [lareventdisplay v06_02_06](#lareventdisplay-v06_02_06)
    -   [larexamples v06_01_07](#larexamples-v06_01_07)
    -   [larpandora v06_04_02](#larpandora-v06_04_02)
    -   [larwirecell v06_00_04](#larwirecell-v06_00_04)
    -   [larana v06_03_10](#larana-v06_03_10)
    -   [larreco v06_14_00](#larreco-v06_14_00)
    -   [larsim v06_10_01](#larsim-v06_10_01)
    -   [larevt v06_07_01](#larevt-v06_07_01)
    -   [lardata v06_11_00](#lardata-v06_11_00)
    -   [larcore v06_05_01](#larcore-v06_05_01)
    -   [larsoftobj v1_08_02](#larsoftobj-v1_08_02)
    -   [lardataobj v1_08_00](#lardataobj-v1_08_00)
    -   [larcoreobj v1_06_01](#larcoreobj-v1_06_01)
    -   [larbatch v01_26_00](#larbatch-v01_26_00)
    -   [larutils v1_11_00](#larutils-v1_11_00)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06_18_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_18_01/larsoft-v06_18_01.html)
Download instructions for [just larsoftobj v1_08_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_08_02/larsoftobj-v1_08_02.html)

Purpose
--------------------

Weekly integration release

New features
------------------------------

Bug fixes
------------------------

Known problems
----------------------------------

-   uboonecode v06_18_01 memory issue
    -   Running open cosmics (corsika), 20 events per job, with a memory limit of 4000 MB, most jobs (98%) succeeded in v06_18_00, but in v06_18_01, 80% of jobs are being held because of memory
    -   [Explicit code changes since v06_18_00](Explicit_code_changes_since_v06_18_00)

Updated dependencies
--------------------

-   wirecell 0.3 (since 061800)

Change List
============================

larsoft v06_18_01
------------------------------------------

-   2016-12-21 Patrick Gartung : larreco v06_14_00
-   2016-12-20 Patrick Gartung : typo in larexamples version
-   2016-12-20 Patrick Gartung : larwirecell v06_00_04
-   2016-12-20 Patrick Gartung : update releaseDB/CMakeLists.txt
-   2016-12-20 Patrick Gartung : larsoft v06_18_01 for larsoft v06_18_01
-   2016-12-20 Patrick Gartung : update dependency database
-   2016-12-15 Lynn Garren : range is just headers

lareventdisplay v06_02_06
----------------------------------------------------------

-   2016-12-21 Patrick Gartung : lareventdisplay v06_02_06 for larsoft v06_18_01
-   2016-12-20 Patrick Gartung : lareventdisplay v06_02_06 for larsoft v06_18_01

larexamples v06_01_07
--------------------------------------------------

-   2016-12-20 Patrick Gartung : larexamples v06_01_07 for larsoft v06_18_01

larpandora v06_04_02
------------------------------------------------

-   2016-12-21 Patrick Gartung : larpandora v06_04_02 for larsoft v06_18_01
-   2016-12-20 Patrick Gartung : larpandora v06_04_02 for larsoft v06_18_01

larwirecell v06_00_04
--------------------------------------------------

-   2016-12-21 Patrick Gartung : Merge branch ‘develop’ into release/v06_18_01
-   2016-12-20 Usher, Tracy L : Add option to output truncated RawDigit without noise filtering
-   2016-12-20 Usher, Tracy L : Refix typo
-   2016-12-20 Usher, Tracy L : Add initial fcl definition files
-   2016-12-20 Usher, Tracy L : make sure to set a non-zero rms value so CalWireROI will operate properly
-   2016-12-20 Patrick Gartung : Merge remote-tracking branch ‘origin/develop’ into release/v06_18_01
-   2016-12-20 Usher, Tracy L : Include references to larevt to allow interface to channel status and pedestal database
-   2016-12-20 Usher, Tracy L : Modifications to include truncation, restoring pedestal offset and interfacing to channel status database (only rejecting \\u201cbad\\u201d channels for now)
-   2016-12-20 Patrick Gartung : larwirecell v06_00_04 for larsoft v06_18_01
-   2016-12-20 Usher, Tracy L : Rename to keep distinct from version in uboonecode
-   2016-12-20 Usher, Tracy L : Changing name to avoid conflicts with module using the same name in uboonecode
-   2016-12-20 Brian Kirby : Added dedicated Wirecell noise filter module

larana v06_03_10
----------------------------------------

-   2016-12-21 Patrick Gartung : v06_03_10 for larsoft v06_18_01
-   2016-12-20 Patrick Gartung : Merge remote-tracking branch ‘origin/develop’ into release/v06_18_01
-   2016-12-20 Patrick Gartung : larana v06_03_10 for larsoft v06_18_01
-   2016-12-20 Herbert Greenlee : Fix zero width.
-   2016-12-19 Thomas Warburton : Removing verbose output

larreco v06_14_00
------------------------------------------

-   2016-12-21 Patrick Gartung : larreco v06_14_00 for larsoft v06_18_01
-   2016-12-21 Patrick Gartung : Merge branch ‘develop’ into release/v06_18_01
-   2016-12-21 Giuseppe Cerati : remove buggy line, not needed anymore
-   2016-12-20 Giuseppe Cerati : add PFParticle-Track assn when running on PFParticles as input
-   2016-12-20 Patrick Gartung : larreco v06_13_01 for larsoft v06_18_01
-   2016-12-18 Robert Sulej : add search for the model file (need it for models stored in pardata)
-   2016-12-17 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-12-17 Robert Sulej : add flags to tag michels (looks ok) and deltas (no good way to select only those attached to track unfortunately)
-   2016-12-16 Gianluca Petrillo : Fixed documentation issue.

larsim v06_10_01
----------------------------------------

-   2016-12-20 Patrick Gartung : larsim v06_10_01 for larsoft v06_18_01
-   2016-12-19 Jason Stock : Merge remote branch ‘origin’ into develop
-   2016-12-17 Steven Gardiner : Fix bug that prevents MARLEY from using nuclear structure data loaded using the larsim MARLEYGen module. This resolves LArSoft issue [\#14847](/redmine/issues/14847 "Bug: MARLEYGen module fails to use loaded nuclear structure data when simulating de-excitations (Resolved)").
-   2016-12-16 Jason Stock : Changing tabs to spaces for convention. Changing photonbacktracker.fcl to remove standard declarations as the photonbacktracker is not experiment agnostic. Each experiment will have to make their own declaration of the service, and will need to provide their own Delay parameter. For DUNE this is 260 ns at the present time.

larevt v06_07_01
----------------------------------------

lardata v06_11_00
------------------------------------------

larcore v06_05_01
------------------------------------------

larsoftobj v1_08_02
----------------------------------------------

lardataobj v1_08_00
----------------------------------------------

larcoreobj v1_06_01
----------------------------------------------

larbatch v01_26_00
--------------------------------------------

larutils v1_11_00
------------------------------------------
