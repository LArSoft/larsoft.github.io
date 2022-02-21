LArSoft v04_22_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_22_00/larsoft-v04_22_00.html)

Purpose
--------------------

-   changes to develop since v04_21_01
-   speed improvements in lareventdisplay
-   use pandora v2

New features
------------------------------

-   lareventdisplay feature/gp_FasterDigits
-   larpandora feature/blake_prepareForPandoraV2

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifier|Notes|
|ifdh_art|v1_12_04|e7:nu:s15||
|pandora|v02_01_00|e7:nu||
|cetbuildtools|v4_13_00||also update ups/setup_for_development|
|ups|v5_1_6|||

Change List
============================

larsoft v04_22_00
------------------------------------------

-   2015-09-09 Lynn Garren : larsoft v04_22_00 for larsoft v04_22_00
-   2015-09-09 Lynn Garren : changes for cetbuildtools v4_13_00
-   2015-09-09 Lynn Garren : updating product versions

lareventdisplay v04_08_00
----------------------------------------------------------

-   2015-09-09 Lynn Garren : lareventdisplay v04_08_00 for larsoft v04_22_00
-   2015-09-09 Lynn Garren : changes for cetbuildtools v4_13_00
-   2015-09-09 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp_FasterDigits
-   2015-09-08 Gianluca Petrillo : Disabled caching of raw digits. This fixes crashes when changing display parameters (e.g. TPC), for a price.
-   2015-09-08 Gianluca Petrillo : Fixed the “Redraw” button, that was not doing what it was supposed to do. It still doesn’t, but it’s much closer.
-   2015-09-08 Gianluca Petrillo : Adding a button to force redrawing of 2D views
-   2015-08-19 Gianluca Petrillo : Partial redesign of internals for raw digits display

larexamples v04_05_03
--------------------------------------------------

larpandora v04_06_00
------------------------------------------------

-   2015-09-09 Lynn Garren : larpandora v04_06_00 for larsoft v04_22_00
-   2015-09-09 Lynn Garren : changes for cetbuildtools v4_13_00
-   2015-09-09 Lynn Garren : Merge branch ‘feature/blake_prepareForPandoraV2’ into release/v04_22_00
-   2015-09-03 Lynn Garren : use pandora v02_01_00
-   2015-08-16 Andrew Blake : Updating fcl configuration files in LArPandoraInterface, and adding a TODO note to PFParticleTrackAna module.
-   2015-08-16 Andrew Blake : Updating dependency tree, for testing with LArSoft v4.19
-   2015-08-16 Andrew Blake : Updating to final Pandora settings scripts for V2
-   2015-08-12 Andrew Blake : Adding analysis module to validate recob::Track objects
-   2015-08-12 Andrew Blake : Removing old track-fitting code.
-   2015-08-12 Andrew Blake : Preparing for next version of Pandora (v2). Modifications to inputs and outputs, including addition of fitted tracks, and updated chain of algoithms.

larana v04_12_02
----------------------------------------

-   2015-09-09 Lynn Garren : larana v04_12_02 for larsoft v04_22_00
-   2015-09-09 Lynn Garren : changes for cetbuildtools v4_13_00

larreco v04_17_00
------------------------------------------

-   2015-09-09 Lynn Garren : larreco v04_17_00 for larsoft v04_22_00
-   2015-09-09 Lynn Garren : changes for cetbuildtools v4_13_00
-   2015-09-08 Tracy Usher : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-09-08 Tracy Usher : Small change to condition for encountering a maximum meant to take care of the case where the peak is shared equally by two bins.
-   2015-09-05 bcarls : Increasing the max number of lines the Hough line finder will look for, increasing the shower-liikeness cut
-   2015-09-05 bcarls : Taking out all remnants of any fuzzy clustering in fuzzy clustering, handling hits with large charge integrals better, dividing up hits into rectangles in the wire-tick space instead of fuzzy clustering, setting the Hough seed to 10
-   2015-09-02 Herbert Greenlee : Store trajectory points for all hits.

larsim v04_09_03
----------------------------------------

larevt v04_10_00
----------------------------------------

lardata v04_13_00
------------------------------------------

larcore v04_16_01
------------------------------------------

larbatch v01_14_00
--------------------------------------------

-   2015-09-09 Lynn Garren : larbatch v01_14_00 for larsoft v04_22_00
-   2015-09-09 Lynn Garren : changes for cetbuildtools v4_13_00
-   2015-09-09 Herbert Greenlee : Change maximum file name length from 200 to 199 characters.
-   2015-09-05 Herbert Greenlee : Remove debugging printout.
-   2015-09-04 Herbert Greenlee : Add option to shorten long filenames to have fewer than 200 characters.
-   2015-09-04 Herbert Greenlee : Add exception class IFDHError.
-   2015-09-04 Herbert Greenlee : Fix indentation error.
-   2015-09-03 Herbert Greenlee : Use subprocess.Popen instead of subprocess.call.
-   2015-09-03 Herbert Greenlee : Check for parents metadata before deleting.
-   2015-09-03 Herbert Greenlee : Fix typo.
-   2015-09-03 Herbert Greenlee : Do some tweaks on the way project.py authenticates for ifdh.
-   2015-09-03 Herbert Greenlee : Fix for interface change.
-   2015-09-02 Lynn Garren : larsoft v04_21_01
-   2015-09-02 Herbert Greenlee : Modify json metadata file search algorithm to understand pubs-style directory structures.
-   2015-09-02 Herbert Greenlee : Fix location management and uploading to work with pubs-style directory structures.

larutils v1_03_01
------------------------------------------

-   2015-09-09 Lynn Garren : larutils v1_03_01 for larsoft v04_22_00
-   2015-09-09 Lynn Garren : changes for cetbuildtools v4_13_00
-   2015-09-02 Lynn Garren : fix typo in error message
-   2015-09-02 Tingjun Yang : new setup script
