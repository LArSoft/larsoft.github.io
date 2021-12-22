LArSoft v03\_01\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v03\_01\_00 Release Notes](#LArSoft-v03_01_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [Bug fixes](#Bug-fixes)
    -   [Known problems](#Known-problems)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v03\_01\_00](#larsoft-v03_01_00)
    -   [lareventdisplay v03\_01\_00](#lareventdisplay-v03_01_00)
    -   [larexamples v03\_01\_00](#larexamples-v03_01_00)
    -   [larpandora v03\_01\_00](#larpandora-v03_01_00)
    -   [larana v03\_01\_00](#larana-v03_01_00)
    -   [larreco v03\_01\_00](#larreco-v03_01_00)
    -   [larsim v03\_01\_00](#larsim-v03_01_00)
    -   [larevt v03\_01\_00](#larevt-v03_01_00)
    -   [lardata v03\_01\_00](#lardata-v03_01_00)
    -   [larcore v03\_01\_00](#larcore-v03_01_00)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/projects/larsoft/v03_01_00/larsoft-v03_01_00.html)

Purpose
--------------------

Fix the bug reported in [\#7068](/redmine/issues/7068 "Bug: xrootd broken in art v1_12_00 (Closed)") and include changes to develop since the v02\_06\_02 tag.

Bug fixes
------------------------

xrootd has been rolled back to 3.3.4.\
[https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release\_Notes\_11201](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_11201)

Known problems
----------------------------------

See bug [\#7076](/redmine/issues/7076 "Bug: LArSoft v03_00_00 unable to read recob::Wire from MicroBooNE MCC 5 files (Closed)")

Updated dependencies
----------------------------------------------

  -------------- ------------- ----------- ----------------------------------------------------------------------------------
  Product        Version       Qualifier   Notes
  xrootd         v3\_3\_4b     e6          see [\#7068](/redmine/issues/7068 "Bug: xrootd broken in art v1_12_00 (Closed)")
  root           v5\_34\_21a   e6:nu       using xrootd v3\_3\_4b
  pandora        v00\_16d      e6:nu       uses root
  genie          v2\_8\_0k     e6          uses root
  art            v1\_12\_01    e6:nu       uses root
  nutools        v1\_06\_02    e6          uses art
  ifdh\_art      v1\_5\_3      e6:nu:s5    uses art
  artdaq\_core   v1\_03\_06    e6:nu:s5    uses art
  -------------- ------------- ----------- ----------------------------------------------------------------------------------

Change List
============================

larsoft v03\_01\_00
------------------------------------------

-   2014-09-26 Lynn Garren : releaseDB/base\_dependency\_database for v03\_01\_00

lareventdisplay v03\_01\_00
----------------------------------------------------------

-   2014-09-26 Lynn Garren : the expected -std=c++ flag is now set by cetbuildtools

larexamples v03\_01\_00
--------------------------------------------------

-   2014-09-26 Lynn Garren : the expected -std=c++ flag is now set by cetbuildtools

larpandora v03\_01\_00
------------------------------------------------

-   2014-09-26 Lynn Garren : the expected -std=c++ flag is now set by cetbuildtools

larana v03\_01\_00
----------------------------------------

-   2014-09-26 Lynn Garren : the expected -std=c++ flag is now set by cetbuildtools
-   2014-09-24 Gianluca Petrillo : Adding missing headers
-   2014-09-19 Gianluca Petrillo : Fixed includes of FindOne/FindMany headers
-   2014-09-22 Sarah Lockwitz : fixing a cerr statement left in there…
-   2014-09-22 Sarah Lockwitz : Fixing a feature in the code that did not ID cosmic tracks well outside of the detector. While we should not have this in data, it helps with studies.

larreco v03\_01\_00
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

larsim v03\_01\_00
----------------------------------------

-   2014-09-26 Lynn Garren : the expected -std=c++ flag is now set by cetbuildtools
-   2014-09-23 Thomas Junk : call MCParticle constructor with arguments including the mass for alpha particles since alphas are not in the TDatabasePDG and do not get their mass put in automatically.
-   2014-09-23 Thomas Junk : Add a dependency on larsoft\_data
-   2014-09-22 Thomas Junk : Upgrade to read in spectra from root files in FW\_SEARCH\_PATH/Radonuclides Random number generators are all from CLHEP – recode the root TH1::GetRandom to use the larsoft-managed CLHEP generators.

larevt v03\_01\_00
----------------------------------------

-   2014-09-26 Lynn Garren : the expected -std=c++ flag is now set by cetbuildtools

lardata v03\_01\_00
------------------------------------------

-   2014-09-26 Lynn Garren : the expected -std=c++ flag is now set by cetbuildtools
-   2014-09-23 Gianluca Petrillo : Interface fix and stricter qualification of signedness in tests.
-   2014-09-23 Lynn Garren : explicit matching of units
-   2014-09-22 Lynn Garren : iostream needs to be explicitly included if std::cout is used

larcore v03\_01\_00
------------------------------------------

-   2014-09-26 Lynn Garren : the expected -std=c++ flag is now set by cetbuildtools
