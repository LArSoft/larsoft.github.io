LArSoft v06_00_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06_00_00 Release Notes](#LArSoft-v06_00_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Breaking changes](#Breaking-changes)
    -   [Required changes](#Required-changes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06_00_00](#larsoft-v06_00_00)
    -   [lareventdisplay v06_00_00](#lareventdisplay-v06_00_00)
    -   [larexamples v06_00_00](#larexamples-v06_00_00)
    -   [larpandora v06_00_00](#larpandora-v06_00_00)
    -   [larana v06_00_00](#larana-v06_00_00)
    -   [larreco v06_00_00](#larreco-v06_00_00)
    -   [larsim v06_00_00](#larsim-v06_00_00)
    -   [larevt v06_00_00](#larevt-v06_00_00)
    -   [lardata v06_00_00](#lardata-v06_00_00)
    -   [larcore v06_00_00](#larcore-v06_00_00)
    -   [larsimobj v1_04_00](#larsimobj-v1_04_00)
    -   [lardataobj v1_04_00](#lardataobj-v1_04_00)
    -   [larcoreobj v1_04_00](#larcoreobj-v1_04_00)
    -   [larbatch v01_23_01](#larbatch-v01_23_01)
    -   [larutils v1_06_05](#larutils-v1_06_05)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_00_00/larsoft-v06_00_00.html)

Purpose
--------------------

-   use root 6
-   use art 2.00.03
-   refactor larcore, lardata, and larsim
-   match v05_15_00

New features
------------------------------

Several products have been split into separate parts. The new products make a suite, larsoftobj, that does not depend on art.

||
|art 1.xx|art 2.xx|notes|
|art|art, canvas|[Release Notes 2.00.03](/redmine/projects/art/wiki/Release_Notes_20003)|
|nutools|nutools, nusimdata|nusimdata contains SimulationBase [NuTools_Release_Notes](/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_00_00)|
|larcore|larcore, larcoreobj|larcoreobj contains SimpleTypesAndConstants and SummaryData|
|lardata|lardata, lardataobj|lardataobj contains AnalysisBase, MCBase, OpticalDetectorData, RawData, RecoBase, and part of Utilities|
|larsim|larsim, larsimobj|larsimobj contains part of Simulation|

Breaking changes
--------------------------------------

-   This is a major release
-   See [Migration to root 6](Migration_to_root_6)

Required changes
--------------------------------------

-   The v06_00_00_art2 branch is supplied for dunetpc, duneutil, uboonecode, ubutil, argoneutcode, sbndcode, lariatsoft, lariatfragments, and lariatutil.
-   [UpdateToLArSoftObj.sh](Migration_to_root_6#UpdateToLArSoftObjsh) will make all required changes in user code.
-   In some cases, you may also need to run update_sources.sh

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|nutools|v2_01_00|e10|[NuTools_Release_Notes](/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_00_00)|
|nusimdata|v1_04_00|e10||
|ifdh_art|v1_15_01|e10:nu:s36||
|artdaq_core|v1_05_01|e10:nu:s36||
|art|v2_00_03|e10:nu|[Release Notes 2.00.03](/redmine/projects/art/wiki/Release_Notes_20003)|
|gcc|v4_9_3a||(e10)|

Change List
============================

larsoft v06_00_00
------------------------------------------

-   2016-07-18 Lynn Garren : Merge branch ‘v06_00_00_art2’
-   2016-07-15 Lynn Garren : update product versions
-   2016-07-15 Lynn Garren : updates for larsoft v06_00_00
-   2016-06-30 Lynn Garren : v06_00_00_rc6
-   2016-06-23 Lynn Garren : cetbuildtools v5_04_01
-   2016-06-23 Lynn Garren : no r6 qual
-   2016-06-23 Lynn Garren : source code tarballs
-   2016-06-23 Lynn Garren : update dependency database
-   2016-06-23 Lynn Garren : rc5
-   2016-06-23 Lynn Garren : rc5
-   2016-06-23 Lynn Garren : Merge branch ‘develop’ into v06_00_00_art2
-   2016-06-23 Lynn Garren : with art v2_00_03
-   2016-06-06 Lynn Garren : revert
-   2016-06-06 Lynn Garren : fix the g4 versions
-   2016-06-06 Lynn Garren : fix buildcfg
-   2016-06-03 Lynn Garren : cetbuildtools v5_02_04
-   2016-06-03 Lynn Garren : larsoftobj v1_02_00
-   2016-06-03 Lynn Garren : update the dependency database
-   2016-06-03 Lynn Garren : for larsoft v06_00_00_rc4
-   2016-06-03 Lynn Garren : for larsoft v06_00_00_rc4
-   2016-06-03 Lynn Garren : larsoft v06_00_00_rc4
-   2016-06-02 Lynn Garren : e10 and s33
-   2016-06-02 Lynn Garren : Merge branch ‘develop’ into v06_00_00_art2
-   2016-06-02 Lynn Garren : use nutools 2.00.00
-   2016-06-02 Lynn Garren : update scripts for larsoftobj with nutools 2.0 and art 2.0
-   2016-06-02 Lynn Garren : build with nutools 2.00.00 and art 2.00.02
-   2016-05-16 Lynn Garren : update bundle
-   2016-05-16 Lynn Garren : larsoft v06_00_00_rc3
-   2016-05-12 Lynn Garren : use cetbuildtools v5_02_02
-   2016-05-11 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-28 Lynn Garren : larsoft v06_00_00_rc2 with nutools v1_25_02 and cetbuildtools v5_01_03
-   2016-04-28 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-15 Lynn Garren : more info
-   2016-04-15 Lynn Garren : check art::Assns
-   2016-04-13 Lynn Garren : use the right products
-   2016-04-13 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-11 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-11 Lynn Garren : v06_00_00_rc1
-   2016-04-07 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-06 Lynn Garren : convert gaus to gaus(0)
-   2016-04-06 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-05 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-04 Lynn Garren : use cetbuildtools v4_19_04
-   2016-04-01 Lynn Garren : proper qualifiers for ifdh_art

lareventdisplay v06_00_00
----------------------------------------------------------

-   2016-07-15 Lynn Garren : updates for larsoft v06_00_00
-   2016-07-15 Lynn Garren : Merge branch ‘release/LARSOFT_SUITE_v05_15_00’ into v06_00_00_art2
-   2016-06-30 Lynn Garren : v06_00_00_rc6
-   2016-06-30 Lynn Garren : Merge branch ‘lareventdisplay-v05_07_03’ into v06_00_00_art2
-   2016-06-23 Lynn Garren : revert
-   2016-06-23 Lynn Garren : cetbuildtools v5_04_01
-   2016-06-23 Lynn Garren : rc5
-   2016-06-23 Lynn Garren : Merge branch ‘develop’ into v06_00_00_art2
-   2016-06-23 Lynn Garren : cetbuildtools v05_04_01
-   2016-06-03 Lynn Garren : lareventdisplay v06_00_00_rc4
-   2016-06-03 Lynn Garren : build with art 2.00.02 and nutools 2.00.00
-   2016-06-02 Lynn Garren : Merge branch ‘develop’ into v06_00_00_art2
-   2016-06-02 Lynn Garren : changes for nutools 2.00.00 and larsoftobj
-   2016-06-02 Lynn Garren : changes for nutools 2.00.00 and larsoftobj
-   2016-05-16 Lynn Garren : larsoft v06_00_00_rc3
-   2016-05-12 Lynn Garren : use cetbuildtools v5_02_02
-   2016-05-11 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-28 Lynn Garren : larsoft v06_00_00_rc2
-   2016-04-28 Lynn Garren : using cetbuildtools v5_01_03
-   2016-04-28 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-11 Lynn Garren : v06_00_00_rc1
-   2016-04-06 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-04 Lynn Garren : Merge branch ‘another_try’ into v06_00_00_rc
-   2016-04-04 Lynn Garren : cetbuildtools v4_19_04
-   2016-04-04 Lynn Garren : found a workable solution
-   2016-04-04 Lynn Garren : use cetbuildtools v4_19_04
-   2016-04-01 Lynn Garren : complete hack for now
-   2016-04-01 Lynn Garren : use cetbuildtools v4_19_03

larexamples v06_00_00
--------------------------------------------------

-   2016-07-15 Lynn Garren : updates for larsoft v06_00_00
-   2016-07-15 Lynn Garren : Merge branch ‘release/LARSOFT_SUITE_v05_15_00’ into v06_00_00_art2
-   2016-06-30 Lynn Garren : v06_00_00_rc6
-   2016-06-30 Lynn Garren : Merge branch ‘larexamples-v05_07_01’ into v06_00_00_art2
-   2016-06-23 Lynn Garren : revert
-   2016-06-23 Lynn Garren : cetbuildtools v5_04_01
-   2016-06-23 Lynn Garren : rc5
-   2016-06-23 Lynn Garren : larsoftobj changes
-   2016-06-23 Lynn Garren : Merge branch ‘develop’ into v06_00_00_art2
-   2016-06-23 Lynn Garren : cetbuildtools v05_04_01
-   2016-06-03 Lynn Garren : larexamples v06_00_00_rc4
-   2016-06-02 Lynn Garren : more changes for larsimobj and lardataobj
-   2016-06-02 Lynn Garren : Merge branch ‘develop’ into v06_00_00_art2
-   2016-06-02 Lynn Garren : changes for nutools 2.00.00
-   2016-06-02 Lynn Garren : changes for nutools 2.00.00
-   2016-05-16 Lynn Garren : larsoft v06_00_00_rc3
-   2016-05-12 Lynn Garren : use cetbuildtools v5_02_02
-   2016-05-11 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-28 Lynn Garren : larsoft v06_00_00_rc2
-   2016-04-28 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-11 Lynn Garren : v06_00_00_rc1
-   2016-04-04 Lynn Garren : use cetbuildtools v4_19_04
-   2016-04-01 Lynn Garren : use cetbuildtools v4_19_03

larpandora v06_00_00
------------------------------------------------

-   2016-07-15 Lynn Garren : updates for larsoft v06_00_00
-   2016-07-15 Lynn Garren : Merge branch ‘release/LARSOFT_SUITE_v05_15_00’ into v06_00_00_art2
-   2016-06-30 Lynn Garren : v06_00_00_rc6
-   2016-06-30 Lynn Garren : Merge branch ‘larpandora-v05_09_08’ into v06_00_00_art2
-   2016-06-23 Lynn Garren : revert
-   2016-06-23 Lynn Garren : cetbuildtools v5_04_01
-   2016-06-23 Lynn Garren : rc5
-   2016-06-23 Lynn Garren : Merge branch ‘develop’ into v06_00_00_art2
-   2016-06-23 Lynn Garren : cetbuildtools v05_04_01
-   2016-06-06 Lynn Garren : revert
-   2016-06-06 Lynn Garren : fix larpandoracontent qualifier
-   2016-06-03 Lynn Garren : larpandora v06_00_00_rc4
-   2016-06-02 Lynn Garren : changes for larsoftobj
-   2016-06-02 Lynn Garren : changes for larsoftobj
-   2016-06-02 Lynn Garren : Merge branch ‘develop’ into v06_00_00_art2
-   2016-06-02 Lynn Garren : changes for nutools 2.00.00
-   2016-05-16 Lynn Garren : larsoft v06_00_00_rc3
-   2016-05-12 Lynn Garren : use cetbuildtools v5_02_02
-   2016-05-11 Lynn Garren : Merge branch ‘v05_09_04_tag’ into v06_00_00_rc
-   2016-04-28 Lynn Garren : larsoft v06_00_00_rc2
-   2016-04-28 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-11 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-11 Lynn Garren : v06_00_00_rc1
-   2016-04-06 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-04 Lynn Garren : use cetbuildtools v4_19_04
-   2016-04-01 Lynn Garren : correct qualifiers for larpandoracontent

larana v06_00_00
----------------------------------------

-   2016-07-15 Lynn Garren : updates for larsoft v06_00_00
-   2016-07-15 Lynn Garren : Merge branch ‘release/LARSOFT_SUITE_v05_15_00’ into v06_00_00_art2
-   2016-06-30 Lynn Garren : v06_00_00_rc6
-   2016-06-30 Lynn Garren : Merge branch ‘larana-v05_09_04’ into v06_00_00_art2
-   2016-06-23 Lynn Garren : revert
-   2016-06-23 Lynn Garren : cetbuildtools v5_04_01
-   2016-06-23 Lynn Garren : rc5
-   2016-06-23 Lynn Garren : Merge branch ‘develop’ into v06_00_00_art2
-   2016-06-23 Lynn Garren : cetbuildtools v05_04_01
-   2016-06-03 Lynn Garren : larana v06_00_00_rc4
-   2016-06-03 Lynn Garren : more changes for art 2
-   2016-06-02 Lynn Garren : changes for larsoftobj
-   2016-06-02 Lynn Garren : Merge branch ‘develop’ into v06_00_00_art2
-   2016-06-02 Lynn Garren : build with nutools 2.00.00
-   2016-06-02 Lynn Garren : build with nutools 2.00.00
-   2016-05-16 Lynn Garren : larsoft v06_00_00_rc3
-   2016-05-12 Lynn Garren : use cetbuildtools v5_02_02
-   2016-05-11 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-28 Lynn Garren : larsoft v06_00_00_rc2
-   2016-04-28 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-11 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-11 Lynn Garren : v06_00_00_rc1
-   2016-04-04 Lynn Garren : use cetbuildtools v4_19_04
-   2016-04-01 Lynn Garren : use std::ifstream
-   2016-04-01 Lynn Garren : use cetbuildtools v4_19_03

larreco v06_00_00
------------------------------------------

-   2016-07-15 Lynn Garren : updates for larsoft v06_00_00
-   2016-07-15 Lynn Garren : Merge branch ‘release/LARSOFT_SUITE_v05_15_00’ into v06_00_00_art2
-   2016-07-15 Robert Sulej : quick fix for hit and cluster label names, befor it is reorganised in splitted pma modules
-   2016-07-14 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-07-11 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-07-11 Robert Sulej : Merge branch ‘feature/rnd_ImagePatterns’ into develop
-   2016-06-30 Lynn Garren : v06_00_00_rc6
-   2016-06-30 Lynn Garren : fix again
-   2016-06-30 Lynn Garren : Merge branch ‘larreco-v05_13_00’ into v06_00_00_art2
-   2016-06-30 Lynn Garren : nutools v2_00_02
-   2016-06-27 Robert Sulej : Merge branch ‘develop’ into feature/rnd_ImagePatterns
-   2016-06-24 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-06-24 Robert Sulej : try code using PtrMaker from Saba (commented out for the moment)
-   2016-06-23 Lynn Garren : revert
-   2016-06-23 Lynn Garren : cetbuildtools v5_04_01
-   2016-06-23 Lynn Garren : rc5
-   2016-06-23 Lynn Garren : Merge branch ‘develop’ into v06_00_00_art2
-   2016-06-23 Lynn Garren : nutools v2_00_01
-   2016-06-03 Lynn Garren : larreco v06_00_00_rc4
-   2016-06-02 Lynn Garren : more changes for larsoftobj
-   2016-06-02 Lynn Garren : more changes for larsoftobj
-   2016-06-02 Lynn Garren : changes for nutools 2.00.00
-   2016-05-16 Lynn Garren : larsoft v06_00_00_rc3
-   2016-05-12 Lynn Garren : use nutools v1_25_05
-   2016-05-11 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-05-06 Lynn Garren : use nutools v1_25_04
-   2016-04-28 Lynn Garren : using nutools v1_25_02
-   2016-04-28 Lynn Garren : larsoft v06_00_00_rc2
-   2016-04-28 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-11 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-11 Lynn Garren : v06_00_00_rc1
-   2016-04-06 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-06 Lynn Garren : nutools v1_25_01
-   2016-04-04 Lynn Garren : use cetbuildtools v4_19_04
-   2016-04-01 Lynn Garren : use std::ofstream
-   2016-04-01 Lynn Garren : nutools v1_25_00

larsim v06_00_00
----------------------------------------

-   2016-07-15 Lynn Garren : updates for larsoft v06_00_00
-   2016-07-15 Lynn Garren : Merge branch ‘release/LARSOFT_SUITE_v05_15_00’ into v06_00_00_art2
-   2016-06-30 Lynn Garren : v06_00_00_rc6
-   2016-06-30 Lynn Garren : fix again
-   2016-06-30 Lynn Garren : Merge branch ‘larsim-v05_14_00’ into v06_00_00_art2
-   2016-06-30 Lynn Garren : no template instantiation in classes.h
-   2016-06-23 Lynn Garren : revert
-   2016-06-23 Lynn Garren : cetbuildtools v5_04_01
-   2016-06-23 Lynn Garren : rc5
-   2016-06-23 Lynn Garren : Merge branch ‘LARSOFT_SUITE_v05_13_00-branch’ into v06_00_00_art2
-   2016-06-23 Lynn Garren : larsoft_data v1_01_00
-   2016-06-09 Lynn Garren : use larsimobj v06_00_00_rc4
-   2016-06-03 Lynn Garren : larsim v06_00_00_rc4
-   2016-06-02 Lynn Garren : more changes for lardataobj and larsimobj
-   2016-06-02 Lynn Garren : Merge branch ‘develop’ into v06_00_00_art2
-   2016-06-02 Lynn Garren : use larsimobj v1_01_01
-   2016-06-02 Lynn Garren : move files in larsimobj v1_01_01
-   2016-06-02 Lynn Garren : use larsimobj v1_01_01
-   2016-06-02 Lynn Garren : changes for nutools 2.00.00 and art 2.00.02
-   2016-06-02 Lynn Garren : changes for nutools 2.00.00 and art 2.00.02
-   2016-06-02 Lynn Garren : build with art 2.00.02
-   2016-05-16 Lynn Garren : larsoft v06_00_00_rc3
-   2016-05-12 Lynn Garren : use cetbuildtools v5_02_02
-   2016-05-11 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-05-06 Lynn Garren : use genie_xsec v2_10_6a
-   2016-04-28 Lynn Garren : larsoft v06_00_00_rc2
-   2016-04-28 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-11 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-11 Lynn Garren : v06_00_00_rc1
-   2016-04-06 Lynn Garren : declare enum
-   2016-04-04 Lynn Garren : use cetbuildtools v4_19_04
-   2016-04-01 Lynn Garren : correct artextensions qualifiers
-   2016-04-01 Lynn Garren : removing duplicate declaration of vector\<int\>
-   2016-04-01 Lynn Garren : using std::ifstream
-   2016-04-01 Lynn Garren : using std::ifstream
-   2016-04-01 Lynn Garren : cetbuildtools v4_19_03

larevt v06_00_00
----------------------------------------

-   2016-07-15 Lynn Garren : updates for larsoft v06_00_00
-   2016-07-15 Lynn Garren : Merge branch ‘release/LARSOFT_SUITE_v05_15_00’ into v06_00_00_art2
-   2016-06-30 Lynn Garren : v06_00_00_rc6
-   2016-06-30 Lynn Garren : Merge branch ‘larevt-v05_07_03’ into v06_00_00_art2
-   2016-06-23 Lynn Garren : revert
-   2016-06-23 Lynn Garren : cetbuildtools v5_04_01
-   2016-06-23 Lynn Garren : rc5
-   2016-06-23 Lynn Garren : Merge branch ‘develop’ into v06_00_00_art2
-   2016-06-23 Lynn Garren : cetbuildtools v05_04_01
-   2016-06-06 Lynn Garren : revert to cetbuildtools v5_02_02
-   2016-06-06 Lynn Garren : make sure we use the fhicl library
-   2016-06-03 Lynn Garren : larevt v06_00_00_rc4
-   2016-06-02 Lynn Garren : changes for lardataobj
-   2016-06-02 Lynn Garren : Merge branch ‘develop’ into v06_00_00_art2
-   2016-06-02 Lynn Garren : build with art 2, lardataobj, and larcoreobj
-   2016-05-16 Lynn Garren : larsoft v06_00_00_rc3
-   2016-05-12 Lynn Garren : use cetbuildtools v5_02_02
-   2016-05-11 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-28 Lynn Garren : larsoft v06_00_00_rc2
-   2016-04-28 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-11 Lynn Garren : v06_00_00_rc1
-   2016-04-04 Lynn Garren : use cetbuildtools v4_19_04
-   2016-04-01 Lynn Garren : cetbuildtools v4_19_03
-   2016-04-01 Lynn Garren : std::ifstream

lardata v06_00_00
------------------------------------------

-   2016-07-15 Lynn Garren : updates for larsoft v06_00_00
-   2016-07-15 Lynn Garren : Merge branch ‘release/LARSOFT_SUITE_v05_15_00’ into v06_00_00_art2
-   2016-06-30 Lynn Garren : v06_00_00_rc6
-   2016-06-30 Lynn Garren : Merge branch ‘lardata-v05_09_01’ into v06_00_00_art2
-   2016-06-30 Lynn Garren : nutools v2_00_02
-   2016-06-30 Lynn Garren : remove templates from classes.h
-   2016-06-23 Lynn Garren : revert
-   2016-06-23 Lynn Garren : cetbuildtools v5_04_01
-   2016-06-23 Lynn Garren : rc5
-   2016-06-23 Lynn Garren : Merge branch ‘develop’ into v06_00_00_art2
-   2016-06-23 Lynn Garren : nutools v2_00_01
-   2016-06-09 Lynn Garren : use lardataobj v06_00_00_rc4
-   2016-06-03 Lynn Garren : lardata v06_00_00_rc4
-   2016-06-03 Lynn Garren : still have RawData/utils
-   2016-06-02 Lynn Garren : more changes for lardataobj
-   2016-06-02 Lynn Garren : more changes for lardataobj
-   2016-06-02 Lynn Garren : use lardataobj v1_01_01
-   2016-06-02 Lynn Garren : build with lardataobj v1_01_01
-   2016-06-02 Lynn Garren : use lardataobj v1_01_01
-   2016-06-02 Lynn Garren : rename code now in lardataobj
-   2016-06-02 Lynn Garren : Merge branch ‘develop’ into v06_00_00_art2
-   2016-06-02 Lynn Garren : changes for nutools v2_00_00 and art v2_00_02
-   2016-06-02 Lynn Garren : changes for nutools v2_00_00 and art v2_00_02
-   2016-06-02 Lynn Garren : use nutools v2_00_00
-   2016-05-16 Lynn Garren : larsoft v06_00_00_rc3
-   2016-05-12 Lynn Garren : use nutools v1_25_05
-   2016-05-11 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-05-06 Lynn Garren : use nutools v1_25_04
-   2016-04-28 Lynn Garren : using nutools v1_25_02
-   2016-04-28 Lynn Garren : larsoft v06_00_00_rc2
-   2016-04-28 Lynn Garren : use header paths
-   2016-04-28 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-15 Lynn Garren : BOOST_INC is added to ROOT_INCLUDE_PATH in larcore
-   2016-04-14 Lynn Garren : need boost headers in ROOT_INCLUDE_PATH
-   2016-04-14 Lynn Garren : make sure boost headers can be found
-   2016-04-13 Lynn Garren : define more enums and add missing Assns
-   2016-04-11 Lynn Garren : use unique names
-   2016-04-11 Lynn Garren : declare enum
-   2016-04-11 Lynn Garren : v06_00_00_rc1
-   2016-04-06 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-06 Lynn Garren : nutools v1_25_01
-   2016-04-06 Lynn Garren : declare enums
-   2016-04-04 Lynn Garren : use cetbuildtools v4_19_04
-   2016-04-01 Lynn Garren : nutools v1_25_00
-   2016-04-01 Lynn Garren : deal with variables typedefed to unsigned short
-   2016-03-31 Lynn Garren : update ClassVersions

larcore v06_00_00
------------------------------------------

-   2016-07-15 Lynn Garren : updates for larsoft v06_00_00
-   2016-07-15 Lynn Garren : Merge branch ‘release/LARSOFT_SUITE_v05_15_00’ into v06_00_00_art2
-   2016-06-30 Lynn Garren : v06_00_00_rc6
-   2016-06-30 Lynn Garren : Merge branch ‘larcore-v05_08_01’ into v06_00_00_art2
-   2016-06-30 Lynn Garren : no template instantiation
-   2016-06-23 Lynn Garren : revert
-   2016-06-23 Lynn Garren : cetbuildtools v5_04_01
-   2016-06-23 Lynn Garren : rc5
-   2016-06-23 Lynn Garren : larsoftobj changes again
-   2016-06-23 Lynn Garren : Merge branch ‘LARSOFT_SUITE_v05_13_00-branch’ into v06_00_00_art2
-   2016-06-23 Lynn Garren : art v2_00_03
-   2016-06-09 Lynn Garren : use larcoreobj v06_00_00_rc4
-   2016-06-03 Lynn Garren : larcore v06_00_00_rc4
-   2016-06-03 Lynn Garren : larsoft v06_00_00_rc4
-   2016-06-03 Lynn Garren : these tests are now in larcoreobj
-   2016-06-03 Lynn Garren : these tests are now in larcoreobj
-   2016-06-02 Gianluca Petrillo : Updated tests to Boost 1.61
-   2016-06-02 Lynn Garren : rename SummaryData and SimpleTypesAndConstants prior to removing them
-   2016-06-02 Lynn Garren : Merge branch ‘develop’ into v06_00_00_art2
-   2016-06-02 Lynn Garren : temporarily disable Geometry tests
-   2016-06-02 Lynn Garren : changes for art v2_00_02 and larcoreobj v1_01_01
-   2016-06-02 Lynn Garren : using art v2_00_02 and larcoreobj v1_01_01
-   2016-05-16 Lynn Garren : larsoft v06_00_00_rc3
-   2016-05-12 Lynn Garren : use cetbuildtools v5_02_02
-   2016-05-11 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-28 Lynn Garren : larsoft v06_00_00_rc2
-   2016-04-28 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-15 Lynn Garren : add BOOST_INC to ROOT_INCLUDE_PATH
-   2016-04-11 Lynn Garren : version 1.6 of fixing gdml
-   2016-04-11 Lynn Garren : v06_00_00_rc1
-   2016-04-06 Lynn Garren : remove expressions
-   2016-04-05 Lynn Garren : translate the complex expressions
-   2016-04-04 Lynn Garren : use cetbuildtools v4_19_04
-   2016-04-01 Lynn Garren : expressions removed from gdml files by RemoveMathFromGDML.py –direct
-   2016-04-01 Lynn Garren : need art, fhicl, and cetlib in ROOT_INCLUDE_PATH
-   2016-04-01 Lynn Garren : set root include path
-   2016-04-01 Lynn Garren : the correct variable is ROOT_INCLUDE_PATH
-   2016-04-01 Lynn Garren : define ROOT_INCLUDE
-   2016-03-31 Lynn Garren : art v1_18_05

larsimobj v1_04_00
--------------------------------------------

-   2016-07-18 Lynn Garren : Merge branch ‘v06_00_00_art2’
-   2016-07-15 Lynn Garren : updates for larsoft v06_00_00
-   2016-06-30 Lynn Garren : v06_00_00_rc6
-   2016-06-28 Lynn Garren : larsimobj v1_03_00
-   2016-06-28 Lynn Garren : remove old comments
-   2016-06-28 Lynn Garren : remove unnecessary template instantiations
-   2016-06-28 Lynn Garren : remove unnecessary template instantiations
-   2016-06-23 Lynn Garren : rc5
-   2016-06-22 Lynn Garren : Merge branch ‘develop’ into v06_00_00_art2
-   2016-06-22 Lynn Garren : Merge tag ‘v1_02_02’ into develop
-   2016-06-22 Lynn Garren : Merge branch ‘release/v1_02_02’
-   2016-06-22 Lynn Garren : v1_02_02
-   2016-06-13 Lynn Garren : larsimobj v1_02_01 for larsoft v1_02_01
-   2016-06-09 Lynn Garren : larsimobj v06_00_00_rc4
-   2016-06-03 Lynn Garren : larsimobj v1_02_00
-   2016-05-24 Lynn Garren : larsimobj v1_01_01 for larsoft v1_01_01
-   2016-05-17 Lynn Garren : larsimobj v1_01_00
-   2016-05-17 Lynn Garren : use cet_make and art_dictionary
-   2016-05-17 Lynn Garren : cleanup for cetbuiltools v5
-   2016-04-18 Patrick Gartung : updates from v06_00_00_rc1
-   2016-04-07 Lynn Garren : Merge tag ‘v1_00_00’ into develop
-   2016-04-07 Lynn Garren : Merge branch ‘release/v1_00_00’
-   2016-04-07 Lynn Garren : make mrb happy
-   2016-04-07 Lynn Garren : remove unnecessary products from list
-   2016-04-07 Lynn Garren : use nusimdata v1_01_00
-   2016-04-07 Patrick Gartung : initial commit

lardataobj v1_04_00
----------------------------------------------

-   2016-07-18 Lynn Garren : Merge branch ‘v06_00_00_art2’
-   2016-07-15 Lynn Garren : updates for larsoft v06_00_00
-   2016-06-30 Lynn Garren : v06_00_00_rc6
-   2016-06-30 Lynn Garren : nusimdata v1_03_00
-   2016-06-28 Lynn Garren : lardataobj v1_03_00
-   2016-06-28 Lynn Garren : remove old comments
-   2016-06-28 Lynn Garren : remove unnecessary template instantiations
-   2016-06-28 Lynn Garren : remove unnecessary template instantiations
-   2016-06-23 Lynn Garren : rc5
-   2016-06-22 Lynn Garren : Merge branch ‘develop’ into v06_00_00_art2
-   2016-06-22 Lynn Garren : Merge tag ‘v1_02_02’ into develop
-   2016-06-22 Lynn Garren : Merge branch ‘release/v1_02_02’
-   2016-06-22 Lynn Garren : v1_02_02
-   2016-06-13 Lynn Garren : lardataobj v1_02_01 for larsoft v1_02_01
-   2016-06-09 Lynn Garren : lardataobj v06_00_00_rc4
-   2016-06-09 Lynn Garren : Fixed a minor bug in Huffman compression algorithm fix by Gianluca
-   2016-06-03 Lynn Garren : lardataobj v1_02_00
-   2016-06-03 Lynn Garren : changes for art 2
-   2016-06-03 Lynn Garren : get changes from head of lardata
-   2016-05-24 Lynn Garren : lardataobj v1_01_01 for larsoft v1_01_01
-   2016-05-17 Lynn Garren : lardataobj v1_01_00
-   2016-05-17 Lynn Garren : use cet_make and art_dictionary
-   2016-05-17 Lynn Garren : cleanup for cetbuiltools v5
-   2016-04-18 Patrick Gartung : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/lardatao
-   2016-04-18 Patrick Gartung : update from v06_00_00_rc1
-   2016-04-07 Lynn Garren : Merge tag ‘v1_00_00’ into develop
-   2016-04-07 Lynn Garren : Merge branch ‘release/v1_00_00’
-   2016-04-07 Lynn Garren : make mrb happy
-   2016-04-07 Lynn Garren : restore sparse_vector_test
-   2016-04-07 Lynn Garren : use nusimdata v1_01_00
-   2016-04-07 Patrick Gartung : initial commit

larcoreobj v1_04_00
----------------------------------------------

-   2016-07-18 Lynn Garren : Merge branch ‘v06_00_00_art2’
-   2016-07-15 Lynn Garren : updates for larsoft v06_00_00
-   2016-06-30 Lynn Garren : v06_00_00_rc6
-   2016-06-28 Lynn Garren : larcoreobj v1_03_00
-   2016-06-28 Lynn Garren : remove unnecessary template instantiations
-   2016-06-28 Lynn Garren : remove unnecessary template instantiations
-   2016-06-23 Lynn Garren : rc5
-   2016-06-22 Lynn Garren : Merge branch ‘develop’ into v06_00_00_art2
-   2016-06-22 Lynn Garren : Merge tag ‘v1_02_02’ into develop
-   2016-06-22 Lynn Garren : Merge branch ‘release/v1_02_02’
-   2016-06-22 Lynn Garren : v1_02_02
-   2016-06-13 Lynn Garren : larcoreobj v1_02_01 for larsoft v1_02_01
-   2016-06-09 Lynn Garren : larcoreobj v06_00_00_rc4
-   2016-06-03 Lynn Garren : remove trailing whitespace
-   2016-06-03 Lynn Garren : Merge branch ‘v06_00_00_art2’ into develop
-   2016-06-03 Lynn Garren : larcoreobj v1_02_00
-   2016-06-03 Lynn Garren : larcoreobj v1_02_00
-   2016-06-03 Lynn Garren : larsoft v06_00_00_rc4
-   2016-05-24 Lynn Garren : larcoreobj v1_01_01 for larsoft v1_01_01
-   2016-05-17 Lynn Garren : larcoreobj v1_01_00
-   2016-05-17 Lynn Garren : use cet_make and art_dictionary
-   2016-05-17 Lynn Garren : cleanup for cetbuiltools v5
-   2016-04-07 Lynn Garren : Merge tag ‘v1_00_00’ into develop
-   2016-04-07 Lynn Garren : Merge branch ‘release/v1_00_00’
-   2016-04-07 Lynn Garren : cleanup
-   2016-04-07 Patrick Gartung : initial commit

larbatch v01_23_01
--------------------------------------------

larutils v1_06_05
------------------------------------------
