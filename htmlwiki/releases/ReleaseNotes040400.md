LArSoft v04_04_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_04_00/larsoft-v04_04_00.html)

Purpose
--------------------

Changes since v04_03_03. This release will be used for the MicroBoone MCC6 reconstruction phase.

New features
------------------------------

larevt includes a new package, CalibrationDBI, which relies on libwda. This code is NOT compiled.

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v04_04_00
------------------------------------------

-   2015-04-09 Lynn Garren : Merge branch ‘release/v04_04_00’
-   2015-04-09 Lynn Garren : only build ninja for SLF
-   2015-04-09 Lynn Garren : product versions
-   2015-04-09 Lynn Garren : larsoft v04_04_00 for larsoft v04_04_00
-   2015-04-09 Lynn Garren : new CalibrationDBI headers

lareventdisplay v04_03_04
----------------------------------------------------------

-   2015-04-09 Lynn Garren : lareventdisplay v04_03_04 for larsoft v04_04_00

larexamples v04_03_04
--------------------------------------------------

-   2015-04-09 Lynn Garren : larexamples v04_03_04 for larsoft v04_04_00
-   2015-04-07 William Seligman : Updating a few comments.

larpandora v04_03_04
------------------------------------------------

-   2015-04-09 Lynn Garren : larpandora v04_03_04 for larsoft v04_04_00

larana v04_04_00
----------------------------------------

-   2015-04-09 Lynn Garren : larana v04_04_00 for larsoft v04_04_00
-   2015-04-03 Alex Himmel : Store hit and flash Frame information in the matching tree.
-   2015-04-01 Alex Himmel : - Fix the making of associations in OpFlashFinder_module. Previously no associations were made, now they appear to be working correctly. - Tested to give identical FlashFinder results otherwise. - Add an additional tree to the OpFlashAna_module which makes available at the root analysis level all the hits associated with a flash.
-   2015-04-02 Anne Schukraft : new calorimetry constants for v04_03_02 Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larana into develop
-   2015-04-02 Anne Schukraft : new calorimetry constants for v04_03_02

larreco v04_03_04
------------------------------------------

-   2015-04-09 Lynn Garren : larreco v04_03_04 for larsoft v04_04_00
-   2015-04-09 Tracy Usher : Updating hit thresholds for MCC 6
-   2015-04-08 Tingjun Yang : Fix a typo.
-   2015-04-08 Tingjun Yang : change tpcid to tpc and cstat
-   2015-04-07 Tingjun Yang : take Y,Z limits of the detector taking into account tpc center
-   2015-04-06 Tingjun Yang : change double to float
-   2015-04-06 Bruce Baller : uB hit finding cuts tuning + CCTrackMaker bug fix

larsim v04_03_04
----------------------------------------

-   2015-04-09 Lynn Garren : larsim v04_03_04 for larsoft v04_04_00

larevt v04_04_00
----------------------------------------

-   2015-04-09 Lynn Garren : Merge branch ‘release/v04_04_00’
-   2015-04-09 Lynn Garren : we cannot build CalibrationDBI yet
-   2015-04-09 Lynn Garren : larevt v04_04_00 for larsoft v04_04_00
-   2015-04-01 Brandon Eberly : deal with merge conflicts
-   2015-04-01 Brandon Eberly : Assume an epoch time when converting art::TimeStamp to IOVTimeStamp
-   2015-03-31 Brandon Eberly : IOVTimeStamp: Add methods to return the max/min timestamp. Add constructor that uses art::Event Store maximum substamp size in IOVDataConstants.h DBFolder: Move the wda.h include to the .cxx file to avoid linker issues downstream DetPedestal: Store default collection and induction pedestals Use the geometry to determine if a channel is collection or induction
-   2015-03-24 Brandon Eberly : Slight change to defaults
-   2015-03-24 Brandon Eberly : merging develop into this branch
-   2015-03-24 Brandon Eberly : Updated to be accurate
-   2015-03-24 Brandon Eberly : minor cleanup
-   2015-03-24 Brandon Eberly : First interface classes for detector pedestals
-   2015-03-24 Brandon Eberly : Do not compile LArBackend right now - it is not ready
-   2015-03-24 Brandon Eberly : Cleanup. DBFolder and DatabaseRetrievalAlg hide db calls from interface classes.
-   2015-03-24 Brandon Eberly : Cleanup. Use IOVTimeStamp. Enhanced channel finding/replacing in Snapshot.
-   2015-02-23 Brandon Eberly : New class to hold detector pedestal information for one channel
-   2015-02-23 Brandon Eberly : Convert WebReader to base class database access interface
-   2015-02-23 Brandon Eberly : Use larsoft data member naming conventions. Remove unnecessary \#includes
-   2015-02-23 Brandon Eberly : Inherit from std::vector\<T\>. Remove knowledge of db folder,tag, and structure. Fully implement in header file
-   2015-02-23 Brandon Eberly : Bug fix
-   2015-02-23 Brandon Eberly : Do not allow fChannel to be changed after construction. Remove templatization.
-   2015-02-11 drinkingkazu : Add libwda ups product… will ask Erica if this is actually OK… –kazu
-   2015-02-11 drinkingkazu : Resolving a conflict
-   2015-02-11 drinkingkazu : Adding CMakeLists.txt for job dir and removing old stuff –kazu
-   2015-02-11 drinkingkazu : Fixed: forgot to add pp macro call @ service source code –kazu
-   2015-02-11 drinkingkazu : Enhance the latest changes in CalibrationDBI –kazu
-   2015-02-11 drinkingkazu : dah taking .gitignore out –kazu
-   2015-02-11 drinkingkazu : Well… forgotten to include in build –kazu
-   2015-02-11 drinkingkazu : Add CalibrationDBI for testing w/ Brandon –kazu

lardata v04_03_04
------------------------------------------

-   2015-04-09 Lynn Garren : lardata v04_03_04 for larsoft v04_04_00
-   2015-04-08 Gianluca Petrillo : Fixed Track::operator\<\< ()
-   2015-04-03 Alex Himmel : Update the comments in the code related to units to be consistent with actual usage. Changes only to comments, not to functionality.

larcore v04_03_03
------------------------------------------

-   2015-04-09 Lynn Garren : larcore v04_03_03 for larsoft v04_04_00
-   2015-04-03 Mike Wallbank : Missed something when reverting. It works now,sorry
-   2015-04-03 Mike Wallbank : Reverting to previous versions after accidentally pushing rather than publishing branch
-   2015-04-03 Mike Wallbank : Changes to the lbne specific geometry service to add channel mapping for the optical detectors

larbatch v01_05_00
--------------------------------------------

-   2015-04-09 Lynn Garren : larbatch v01_05_00 for larsoft v04_04_00
-   2015-04-08 Herbert Greenlee : Merge branch ‘feature/greenlee_sam_hist’ into develop
-   2015-04-08 Herbert Greenlee : Add sam support for analysis files.
-   2015-04-08 Herbert Greenlee : Teach the sam metadata extractor to use a precalculated checksum if one is available. This is a performance optimization.
-   2015-04-08 Herbert Greenlee : Tell samweb where to find grid certificates.
-   2015-04-08 Herbert Greenlee : Tell ssl where to find grid certificates. Needed in python v2_7_9.
-   2015-04-08 Herbert Greenlee : Start developing sam menu and funcions for analysis files.
-   2015-04-06 Herbert Greenlee : Add SAM-art menu in gui.
-   2015-04-08 Herbert Greenlee : Teach project_utilities to distinguish a kca certificate from a grid proxy.
-   2015-04-07 Herbert Greenlee : Teach project.py to fetch more than one set of log files.
-   2015-04-07 Herbert Greenlee : Update authentication checking. Automatically escalate kerberos ticket to grid proxy in those rare instances where an actual grid proxy is needed.
-   2015-04-07 Herbert Greenlee : For backward compatibility, allow function dostatus to be called with either a single project or a list of projects.
-   2015-04-07 Herbert Greenlee : Add method project.get_project for backward compatibility.
-   2015-04-06 Herbert Greenlee : Better error handling.
-   2015-04-06 Herbert Greenlee : Clean up some aspects of multi-project xml file handling.
-   2015-04-06 Herbert Greenlee : Final tweaks for multi-project xml gui.
-   2015-04-06 Herbert Greenlee : Merge branch ‘feature/greenlee_multi_project’ into develop
-   2015-04-06 Herbert Greenlee : Modify gui to support multiple projects in a single xml file.
-   2015-04-06 Herbert Greenlee : Add multi-project clean function.
-   2015-04-06 Herbert Greenlee : Add methods for extracting project names from xml file.
-   2015-04-06 Herbert Greenlee : Add intelligence for choosing projects by also matching a stage name.
-   2015-04-03 Herbert Greenlee : Fix formatting.
-   2015-04-03 Herbert Greenlee : Modify handling of root and json files. Randomize names of histogram files if they have a corresponding sam metadata json file. Merge histogram sam metadata and root metadata into a single json file.
-   2015-04-03 Herbert Greenlee : Fix formatting.
-   2015-04-03 Herbert Greenlee : Add python script merge_json.py.

larutils v1_00_07
------------------------------------------
