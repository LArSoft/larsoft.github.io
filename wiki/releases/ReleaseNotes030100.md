LArSoft v03_01_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/projects/larsoft/v03_01_00/larsoft-v03_01_00.html)

Purpose
--------------------

Fix the bug reported in [redmine issue 7068](https://cdcvs.fnal.gov/redmine/issues/7068) and include changes to develop since the v02_06_02 tag.

Bug fixes
------------------------

xrootd has been rolled back to 3.3.4.
[https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_11201](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_11201)

Known problems
----------------------------------

See bug [redmine issue 7076](https://cdcvs.fnal.gov/redmine/issues/7076)

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifier|Notes|
|xrootd|v3_3_4b|e6|see [redmine issue 7068](https://cdcvs.fnal.gov/redmine/issues/7068)|
|root|v5_34_21a|e6:nu|using xrootd v3_3_4b|
|pandora|v00_16d|e6:nu|uses root|
|genie|v2_8_0k|e6|uses root|
|art|v1_12_01|e6:nu|uses root|
|nutools|v1_06_02|e6|uses art|
|ifdh_art|v1_5_3|e6:nu:s5|uses art|
|artdaq_core|v1_03_06|e6:nu:s5|uses art|

Change List
============================

larsoft v03_01_00
------------------------------------------

-   2014-09-26 Lynn Garren : releaseDB/base_dependency_database for v03_01_00

lareventdisplay v03_01_00
----------------------------------------------------------

-   2014-09-26 Lynn Garren : the expected -std=c++ flag is now set by cetbuildtools

larexamples v03_01_00
--------------------------------------------------

-   2014-09-26 Lynn Garren : the expected -std=c++ flag is now set by cetbuildtools

larpandora v03_01_00
------------------------------------------------

-   2014-09-26 Lynn Garren : the expected -std=c++ flag is now set by cetbuildtools

larana v03_01_00
----------------------------------------

-   2014-09-26 Lynn Garren : the expected -std=c++ flag is now set by cetbuildtools
-   2014-09-24 Gianluca Petrillo : Adding missing headers
-   2014-09-19 Gianluca Petrillo : Fixed includes of FindOne/FindMany headers
-   2014-09-22 Sarah Lockwitz : fixing a cerr statement left in there…
-   2014-09-22 Sarah Lockwitz : Fixing a feature in the code that did not ID cosmic tracks well outside of the detector. While we should not have this in data, it helps with studies.

larreco v03_01_00
------------------------------------------

-   2014-09-26 Lynn Garren : the expected -std=c++ flag is now set by cetbuildtools
-   2014-08-29 Gianluca Petrillo : Additional bug fixing in HoughTransform. This does change physics results and needs validation.
-   2014-08-29 Gianluca Petrillo : Fixed a bug in DumpClusters output.
-   2014-08-29 Gianluca Petrillo : HoughTransform final optimization (including bugs)
-   2014-08-21 Gianluca Petrillo : Further optimization to HoughTransform code (backward compatible)
-   2014-08-21 Gianluca Petrillo : HoughBaseAlg development version (no effective change)
-   2014-08-21 Gianluca Petrillo : Adding some unsignedness to some HoughTransform parameters
-   2014-08-21 Gianluca Petrillo : Commented out ambiguous no-op code (looks like a “good bug”)
-   2014-08-20 Gianluca Petrillo : Completed the migration of Flame code to C++; improved speed of fuzzyCluster (mainly by using a custom allocator for maps); new code gives the same results (bugs included)
-   2014-08-19 Gianluca Petrillo : Fixed inclusions in StitchAlg
-   2014-08-15 Gianluca Petrillo : Added module to dump clusters on screen
-   2014-08-13 Gianluca Petrillo : Further C++-zation of Flame code in fuzzyCluster
-   2014-09-24 Lynn Garren : Merge branch ‘master’ into develop
-   2014-09-23 Brian Rebel : use best practices with FindMany(P) and move the declaration of the FindMany(P) objects out of loops. Do that by keeping track of the indices of the different objects in the handle and use those when calling theFindMany(P)::at() method
-   2014-09-22 Brian Rebel : update to best practices with using FindManyP

larsim v03_01_00
----------------------------------------

-   2014-09-26 Lynn Garren : the expected -std=c++ flag is now set by cetbuildtools
-   2014-09-23 Thomas Junk : call MCParticle constructor with arguments including the mass for alpha particles since alphas are not in the TDatabasePDG and do not get their mass put in automatically.
-   2014-09-23 Thomas Junk : Add a dependency on larsoft_data
-   2014-09-22 Thomas Junk : Upgrade to read in spectra from root files in FW_SEARCH_PATH/Radonuclides Random number generators are all from CLHEP – recode the root TH1::GetRandom to use the larsoft-managed CLHEP generators.

larevt v03_01_00
----------------------------------------

-   2014-09-26 Lynn Garren : the expected -std=c++ flag is now set by cetbuildtools

lardata v03_01_00
------------------------------------------

-   2014-09-26 Lynn Garren : the expected -std=c++ flag is now set by cetbuildtools
-   2014-09-23 Gianluca Petrillo : Interface fix and stricter qualification of signedness in tests.
-   2014-09-23 Lynn Garren : explicit matching of units
-   2014-09-22 Lynn Garren : iostream needs to be explicitly included if std::cout is used

larcore v03_01_00
------------------------------------------

-   2014-09-26 Lynn Garren : the expected -std=c++ flag is now set by cetbuildtools
