LArSoft v05\_15\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v05\_15\_00 Release Notes](#LArSoft-v05_15_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Breaking Change](#Breaking-Change)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v05\_15\_00](#larsoft-v05_15_00)
    -   [lareventdisplay v05\_08\_00](#lareventdisplay-v05_08_00)
    -   [larexamples v05\_08\_01](#larexamples-v05_08_01)
    -   [larpandora v05\_09\_10](#larpandora-v05_09_10)
    -   [larana v05\_09\_07](#larana-v05_09_07)
    -   [larreco v05\_14\_00](#larreco-v05_14_00)
    -   [larsim v05\_15\_00](#larsim-v05_15_00)
    -   [larevt v05\_07\_05](#larevt-v05_07_05)
    -   [lardata v05\_10\_00](#lardata-v05_10_00)
    -   [larcore v05\_08\_02](#larcore-v05_08_02)
    -   [larbatch v01\_23\_01](#larbatch-v01_23_01)
    -   [larutils v1\_06\_05](#larutils-v1_06_05)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v05_15_00/larsoft-v05_15_00.html)

Purpose
--------------------

-   changes to develop since v05\_14\_01
-   use nutools v1\_24\_05

New features
------------------------------

-   nutools v1\_24\_05 requires some associated changes
    -   larsim feature/brebel\_HadronScattering
    -   replace magfield.fcl with magfield\_larsoft.fcl
        -   lariatsoft, uboonecode, and dunetpc need to edit fcl files
-   TrajClusterAlg
    -   Hits are now sorted by WireID instead of assuming that they were already sorted by upstream code.
    -   Secondly, code that creates a list of bad events which is only used when comparing truth with reconstruction has been removed.

Breaking Change
------------------------------------

-   The magfield configuration is now found in magfield\_larsoft.fcl, which is provided by lardata.
-   Experiments should change instances of magfield.fcl in their configurations to magfield\_larsoft.fcl. That configuration is controlled by LArSoft and removes a dependency on configurations from nutools. The change allows for the LArSoft geometry volume naming convention to be automatically used for configuration of the magnetic field service.

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|nutools|v1\_24\_05|e9|[Release Notes](/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v1_24_05)|
|mrb|v1\_07\_03|||

Change List
============================

larsoft v05\_15\_00
------------------------------------------

-   2016-07-12 Lynn Garren : larbatch v01\_23\_01
-   2016-07-12 Lynn Garren : larsoft v05\_15\_00 for larsoft v05\_15\_00
-   2016-07-12 Lynn Garren : update product versions
-   2016-07-12 Lynn Garren : update dependency database

lareventdisplay v05\_08\_00
----------------------------------------------------------

-   2016-07-12 Lynn Garren : lareventdisplay v05\_08\_00 for larsoft v05\_15\_00
-   2016-07-12 Brian Rebel : git push origin develop Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/lareventdisplay into develop
-   2016-07-12 Brian Rebel : change no\_mag to no\_mag\_larsoft to use the correct name for the world volume, i.e. volWorld.
-   2016-07-12 dorota : fix how theparticle trajectories are displayed in Ortho3D
-   2016-07-10 dorota : correct time offset to draw particle trajectories in multiple tpc

larexamples v05\_08\_01
--------------------------------------------------

-   2016-07-12 Lynn Garren : larexamples v05\_08\_01 for larsoft v05\_15\_00
-   2016-07-12 Gianluca Petrillo : Updated README files
-   2016-07-12 Gianluca Petrillo : Added missing installation directives
-   2016-07-06 Patrick Gartung : larsoft v05\_14\_01
-   2016-07-06 Gianluca Petrillo : Minor changes.
-   2016-07-06 Gianluca Petrillo : Implemented configuration validation for AnalysisExample

larpandora v05\_09\_10
------------------------------------------------

-   2016-07-12 Lynn Garren : larpandora v05\_09\_10 for larsoft v05\_15\_00

larana v05\_09\_07
----------------------------------------

-   2016-07-12 Lynn Garren : larana v05\_09\_07

larreco v05\_14\_00
------------------------------------------

-   2016-07-12 Lynn Garren : larreco v05\_14\_00 for larsoft v05\_15\_00
-   2016-07-12 Bruce Baller : Merge branch ‘feature/bb\_TCWork’ into develop
-   2016-07-12 Bruce Baller : Add hit sorting.
-   2016-07-12 Bruce Baller : Add hit sorting. Add hit order check in FillWireHitRange
-   2016-07-11 Brian Rebel : Oops - forgot that the range based for-loop changed the type of itr. Fixed now.
-   2016-07-11 Brian Rebel : Remove call to MagneticField::UseField as it is unnecessary. The MagenticField::FieldAtPoint returns a vector whose contents are (0,0,0) if no field is present, which is sufficient for the purposes of this module.
-   2016-07-08 Chao Zhang : add event and trigger info to celltree

larsim v05\_15\_00
----------------------------------------

-   2016-07-12 Lynn Garren : larsim v05\_15\_00 for larsoft v05\_15\_00
-   2016-07-12 Lynn Garren : Merge branch ‘feature/brebel\_HadronScattering’ into release/v05\_15\_00
-   2016-07-12 Brian Rebel : Add new file for configuring magnetic fields, lardata/Utilities/magfield\_larsoft.fcl
-   2016-07-12 Brian Rebel : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into develop
-   2016-07-12 Brian Rebel : change no\_mag to no\_mag\_larsoft to use the correct name for the world volume, i.e. volWorld.
-   2016-07-10 Brian Rebel : Changes to allow the storage of hadron scattering processes.
-   2016-07-10 Brian Rebel : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into feature/brebel\_HadronScattering
-   2016-07-08 Brian Rebel : changes to store the scattering process for hadrons.
-   2016-07-05 Brian Rebel : fix formatting to look right with Xcode

larevt v05\_07\_05
----------------------------------------

-   2016-07-12 Lynn Garren : larevt v05\_07\_05 for larsoft v05\_15\_00

lardata v05\_10\_00
------------------------------------------

-   2016-07-12 Lynn Garren : lardata v05\_10\_00 for larsoft v05\_15\_00
-   2016-07-12 Brian Rebel : change to format of configuration for nutools v1\_24\_05
-   2016-07-12 Brian Rebel : Add new file for configuring magnetic fields, lardata/Utilities/magfield\_larsoft.fcl
-   2016-07-12 Brian Rebel : change no\_mag to no\_mag\_larsoft to use the correct name for the world volume, i.e. volWorld.

larcore v05\_08\_02
------------------------------------------

larbatch v01\_23\_01
--------------------------------------------

-   2016-07-12 Lynn Garren : Merge branch ‘release/v05\_15\_00’
-   2016-07-12 Lynn Garren : larbatch v01\_23\_01
-   2016-07-11 yuntse : Don’t unnecessarily require a kerberos ticket in some instances.
-   2016-07-06 yuntse : Revert to using a version of safeopen in project.py proper.
-   2016-07-06 Herbert Greenlee : Add more backward compatibility.
-   2016-07-05 Herbert Greenlee : Add more backward compatibility functions needed by pubs.
-   2016-07-05 Herbert Greenlee : Add backward compatibility.
-   2016-07-01 Herbert Greenlee : Remove obsolete functions.
-   2016-07-01 Herbert Greenlee : Fix function call in wrong module.
-   2016-07-01 Herbert Greenlee : Update comment.
-   2016-07-01 Herbert Greenlee : Add ability to extract sam metadata from artroot files using xrootd.
-   2016-07-01 Herbert Greenlee : Fix more typos and streamline.
-   2016-07-01 Herbert Greenlee : Remove buggy -v option from hadd.
-   2016-07-01 Herbert Greenlee : Fix typos.
-   2016-06-27 Herbert Greenlee : Eliminate various “safe” i/o methods in favor os larbatch\_posix functions.
-   2016-06-20 Herbert Greenlee : Add debugging information.
-   2016-06-20 Herbert Greenlee : Fix typo.
-   2016-06-19 Herbert Greenlee : More grid updates.
-   2016-06-19 Herbert Greenlee : Grid tool updates.
-   2016-06-18 Herbert Greenlee : Adjust refactoring.
-   2016-06-18 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/greenlee\_posix
-   2016-06-18 Herbert Greenlee : Migrate functions to larbatch\_utilities.py.
-   2016-06-13 Herbert Greenlee : Add larbatch\_utilities.
-   2016-06-13 Herbert Greenlee : Add larbatch\_utilities.
-   2016-06-10 Herbert Greenlee : Add posix-like interfaces for access files using grid tools.

larutils v1\_06\_05
------------------------------------------
