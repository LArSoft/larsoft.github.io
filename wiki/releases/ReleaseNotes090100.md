LArSoft v09_01_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v09_01_00 Release Notes](#LArSoft-v09_01_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09_01_00](#larsoft-v09_01_00)
    -   [lareventdisplay v09_00_02](#lareventdisplay-v09_00_02)
    -   [larexamples v09_00_02](#larexamples-v09_00_02)
    -   [larg4 v09_00_02](#larg4-v09_00_02)
    -   [larpandora v09_00_02](#larpandora-v09_00_02)
    -   [larsimrad v09_00_02](#larsimrad-v09_00_02)
    -   [larrecodnn v09_00_02](#larrecodnn-v09_00_02)
    -   [larwirecell v09_00_02](#larwirecell-v09_00_02)
    -   [larana v09_00_02](#larana-v09_00_02)
    -   [larreco v09_00_02](#larreco-v09_00_02)
    -   [larsim v09_01_00](#larsim-v09_01_00)
    -   [larevt v09_00_02](#larevt-v09_00_02)
    -   [lardata v09_00_02](#lardata-v09_00_02)
    -   [larcore v09_00_00](#larcore-v09_00_00)
    -   [larpandoracontent v03_19_02](#larpandoracontent-v03_19_02)
    -   [larsoftobj v09_00_02](#larsoftobj-v09_00_02)
    -   [lardataobj v09_00_00](#lardataobj-v09_00_00)
    -   [lardataalg v09_00_02](#lardataalg-v09_00_02)
    -   [larcorealg v09_00_00](#larcorealg-v09_00_00)
    -   [larcoreobj v09_00_00](#larcoreobj-v09_00_00)
    -   [webevd v09_00_02](#webevd-v09_00_02)
    -   [larbatch v01_53_01](#larbatch-v01_53_01)
    -   [larutils v1_26_01](#larutils-v1_26_01)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v09_01_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_01_00/larsoft-v09_01_00.html)
Download instructions for [just larsoftobj v09_00_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_00_02/larsoftobj-v09_00_02.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

-   larsim PR 34
    -   On SBND new geometry we’re changing the sizes of XARAPUCAS such that they are not longer the same as those of the ARAPUCAS. So now every time the dimensions need to be updated such that they reflect the actual size of the current optical detector.
    -   sbndcode will need PR SBNSoftware/sbndcode\#6
-   larsim PR 36
    -   When searching for IDE from a Hit, the default time start is defined as hit-\>PeakTimeMinusRMS() in MCCheater::BackTracker. However, both the longitudinal and transverse diffusion will broaden the hit width in a more realistic simulation. As a result, 1-RMS is not enough to cover all charges of an IDE. I suggest that we can change this time window in the configuration. The default value is still 1-RMS, while we suggest 3.5-RMS when it’s necessary.
    -   To change the default value, please add this line to your fhicl:

            services.BackTrackerService.BackTracker.HitTimeRMS: 3.5

-   larbatch PR 10
    -   bring in MicroBooNE changes

Bug fixes
------------------------

-   lardataalg PR 9
    -   Fix uninitialized variables encountered by sbndcode
    -   [\#24903](/redmine/issues/24903 "Bug: Issue with Pandora and DetectorPropertyService in larsoft v09 (Closed)")
-   larsim PR 35
    -   The LightSource module generates photons at specific points of the world. The points can be specified by a text file, and each line of the text file will determine a volume and generate photons in there for the event. The next event will read the parameters from the next line of the text file, and so on.
        When the text file is over, if further events are requested the module is supposed to start over with the settings at the beginning of the file, and then move on from there.
    -   The wrap action at the end of the file was buggy so that the generation point for the first event after wrapping would be taken from uninitialised memory, while the other parameters would be unchanged. The next event would then correctly read the first line of the steering file.
    -   I have not investigated when this bug was introduced. My suspicion is that before my last changes, the bug was there but would effectively use the entire set of parameters from the previous event (no uninitialised memory access), hiding the issue and, in case of a single line in the steering file, producing the expected result.
-   larsim PR 37
    -   Re-enable OpticalPhysics list accidentally disabled during v09 migration
    -   [\#24890](/redmine/issues/24890 "Bug: Full optical GEANT4 simulation not available in v09_00_00 (Closed)")

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v09_01_00
------------------------------------------

-   2020-09-03 Lynn Garren : larsoft v09_01_00 for larsoft v09_01_00
-   2020-09-03 Lynn Garren : product versions

lareventdisplay v09_00_02
----------------------------------------------------------

-   2020-09-03 Lynn Garren : lareventdisplay v09_00_02 for larsoft v09_01_00

larexamples v09_00_02
--------------------------------------------------

-   2020-09-03 Lynn Garren : larexamples v09_00_02 for larsoft v09_01_00

larg4 v09_00_02
--------------------------------------

-   2020-09-03 Lynn Garren : larg4 v09_00_02 for larsoft v09_01_00

larpandora v09_00_02
------------------------------------------------

-   2020-09-03 Lynn Garren : larpandora v09_00_02 for larsoft v09_01_00

larsimrad v09_00_02
----------------------------------------------

-   2020-09-03 Lynn Garren : larsimrad v09_00_02 for larsoft v09_01_00

larrecodnn v09_00_02
------------------------------------------------

-   2020-09-03 Lynn Garren : larrecodnn v09_00_02 for larsoft v09_01_00

larwirecell v09_00_02
--------------------------------------------------

-   2020-09-03 Lynn Garren : larwirecell v09_00_02 for larsoft v09_01_00

larana v09_00_02
----------------------------------------

-   2020-09-03 Lynn Garren : larana v09_00_02 for larsoft v09_01_00

larreco v09_00_02
------------------------------------------

-   2020-09-03 Lynn Garren : larreco v09_00_02 for larsoft v09_01_00

larsim v09_01_00
----------------------------------------

-   2020-09-03 Lynn Garren : larsim v09_01_00 for larsoft v09_01_00
-   2020-09-03 Lynn Garren : Merge pull request \#35 from PetrilloAtWork/feature/gp_lightSourceFix
-   2020-09-03 Lynn Garren : Merge pull request \#34 from ikatza/feature/icaza_arapuca_dimensions
-   2020-09-01 Lynn Garren : Merge pull request \#37 from knoepfel/bugfix/knoepfel_physics_list
-   2020-09-01 Lynn Garren : Merge pull request \#36 from wenqiang-gu/develop
-   2020-09-01 Iker de Icaza Astiz : Use std::unique_ptr\<\> to handle the memory of the CLHEP::RandGeneral
-   2020-09-01 Iker de Icaza Astiz : Pass OpticalDetector and Dims as stack variables
-   2020-09-01 Kyle Knoepfel : Resolve bug [\#24890](/redmine/issues/24890 "Bug: Full optical GEANT4 simulation not available in v09_00_00 (Closed)"): re-enable OpticalPhysics list
-   2020-08-31 Gianluca Petrillo : Removed white spaces from LightSource_module.cc
-   2020-08-31 Gianluca Petrillo : Merge remote-tracking branch ‘upstream/develop’ into feature/gp_lightSourceFix
-   2020-08-28 Wenqiang Gu : add a hit time RMS for IDE finding
-   2020-08-28 Gianluca Petrillo : LightSource correctly wraps after reaching the end of steering file
-   2020-08-27 Iker de Icaza Astiz : Update the arapuca dims every time, both for direct and reflected hits

larevt v09_00_02
----------------------------------------

-   2020-09-03 Lynn Garren : larevt v09_00_02 for larsoft v09_01_00

lardata v09_00_02
------------------------------------------

-   2020-09-03 Lynn Garren : lardata v09_00_02 for larsoft v09_01_00

larcore v09_00_00
------------------------------------------

larpandoracontent v03_19_02
--------------------------------------------------------------

larsoftobj v09_00_02
------------------------------------------------

-   2020-09-03 Lynn Garren : larsoftobj v09_00_02 for larsoft v09_01_00
-   2020-09-03 Lynn Garren : product versions

lardataobj v09_00_00
------------------------------------------------

lardataalg v09_00_02
------------------------------------------------

-   2020-09-03 Lynn Garren : lardataalg v09_00_02 for larsoft v09_01_00
-   2020-09-03 Lynn Garren : Merge pull request \#9 from knoepfel/bugfix/knoepfel_uninitialized_variables
-   2020-09-03 Kyle Knoepfel : Resolve bug [\#24903](/redmine/issues/24903 "Bug: Issue with Pandora and DetectorPropertyService in larsoft v09 (Closed)"): fix uninitialized variables

larcorealg v09_00_00
------------------------------------------------

larcoreobj v09_00_00
------------------------------------------------

webevd v09_00_02
----------------------------------------

-   2020-09-03 Lynn Garren : webevd v09_00_02 for larsoft v09_01_00

larbatch v01_53_01
--------------------------------------------

-   2020-09-03 Lynn Garren : larbatch v01_53_01 for larsoft v09_01_00
-   2020-08-31 Lynn Garren : Merge pull request \#10 from hgreenlee/greenlee_uboone_update
-   2020-08-28 Herbert Greenlee : Merge remote-tracking branch ‘upstream/develop’ into greenlee_uboone_update
-   2020-08-25 Herbert Greenlee : Use python 3 style raise exception.
-   2020-08-25 Herbert Greenlee : Merge remote-tracking branch ‘upstream/v01_51_12_br’ into greenlee_uboone_update
-   2020-08-20 Herbert Greenlee : Change \<projectversion\> to \<version\>.
-   2020-08-14 Herbert Greenlee : Modify parsing by placing substage-specific elements inside \<fcl\> element.
-   2020-08-13 Herbert Greenlee : Add \<projectname\>, \<stagename\>, \<projectversion\>.
-   2020-08-13 Herbert Greenlee : Fix bug involving mid_source and mid_script.
-   2020-08-12 Herbert Greenlee : Make \<initsource\> repeatable.
-   2020-08-11 Herbert Greenlee : Add DL workflow updates.
-   2020-07-13 Herbert Greenlee : Add project cooling off period.
-   2020-05-26 Herbert Greenlee : Add \<anamerge\> element.
-   2020-04-16 Herbert Greenlee : Fix how condor_lar.sh checks initscript and endscript status.
-   2020-04-12 Herbert Greenlee : Make \<datastream\> and \<anadatastream\> repeatable.
-   2020-04-11 Herbert Greenlee : Update product_deps for v01_51_14.
-   2020-04-11 Herbert Greenlee : Add stage element datastream.
-   2020-04-04 Herbert Greenlee : Convert copy_to_fts to int.
-   2020-02-21 Herbert Greenlee : Update version to v01_51_13.
-   2020-02-03 Herbert Greenlee : Get rid of pycurl. Use urllib instead.
-   2020-01-15 Herbert Greenlee : Update documentary comments.

larutils v1_26_01
------------------------------------------
