LArSoft v06\_00\_00\_rc1 Release Notes(#LArSoft-v06_00_00_rc1-Release-Notes)
===============================================================================

-   **Table of contents**
-   [LArSoft v06\_00\_00\_rc1 Release Notes](#LArSoft-v06_00_00_rc1-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_00\_00\_rc1](#larsoft-v06_00_00_rc1)
    -   [lareventdisplay v06\_00\_00\_rc1](#lareventdisplay-v06_00_00_rc1)
    -   [larexamples v06\_00\_00\_rc1](#larexamples-v06_00_00_rc1)
    -   [larpandora v06\_00\_00\_rc1](#larpandora-v06_00_00_rc1)
    -   [larana v06\_00\_00\_rc1](#larana-v06_00_00_rc1)
    -   [larreco v06\_00\_00\_rc1](#larreco-v06_00_00_rc1)
    -   [larsim v06\_00\_00\_rc1](#larsim-v06_00_00_rc1)
    -   [larevt v06\_00\_00\_rc1](#larevt-v06_00_00_rc1)
    -   [lardata v06\_00\_00\_rc1](#lardata-v06_00_00_rc1)
    -   [larcore v06\_00\_00\_rc1](#larcore-v06_00_00_rc1)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_00_00_rc1/larsoft-v06_00_00_rc1.html)

Purpose(#Purpose)
--------------------

-   Migrate from root 5 to root 6
-   This release candidate is consistent with larsoft v05\_08\_00.
-   Refactoring for larsoftobj/larlite depends on the migration to root 6.

New features(#New-features)
------------------------------

-   Root 6 required changes to gdml files, dictionaries, and some fcl files.
-   The C++ code required little if any change.
-   [Migration to root 6](Migration_to_root_6)

Bug fixes(#Bug-fixes)
------------------------

Updated dependencies(#Updated-dependencies)
----------------------------------------------

  --------------- ------------ ------------ ----------
  Product         Version      Qualifiers   Notes
  nutools         v1\_25\_01   e9           
  art             v1\_18\_05   e9:nu        
  cetbuildtools   v4\_19\_04                required
  --------------- ------------ ------------ ----------

Change List(#Change-List)
============================

larsoft v06\_00\_00\_rc1(#larsoft-v06_00_00_rc1)
---------------------------------------------------

-   2016-04-15 Lynn Garren : check art::Assns
-   2016-04-13 Lynn Garren : use the right products
-   2016-04-13 Lynn Garren : Merge branch ‘develop’ into v06\_00\_00\_rc
-   2016-04-13 Lynn Garren : make sure we have cetbuildtools v4\_19\_04
-   2016-04-11 Lynn Garren : Merge branch ‘develop’ into v06\_00\_00\_rc
-   2016-04-11 Lynn Garren : v06\_00\_00\_rc1
-   2016-04-08 Gianluca Petrillo : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larsoft into develop
-   2016-04-08 Gianluca Petrillo : RemoveMathFromGDML.py (v. 1.6) bug fixes and new options. I claim it should work.
-   2016-04-07 Lynn Garren : Merge branch ‘develop’ into v06\_00\_00\_rc
-   2016-04-06 Lynn Garren : convert gaus to gaus(0)
-   2016-04-06 Lynn Garren : Merge branch ‘develop’ into v06\_00\_00\_rc
-   2016-04-05 Lynn Garren : Merge branch ‘develop’ into v06\_00\_00\_rc
-   2016-04-04 Lynn Garren : use cetbuildtools v4\_19\_04
-   2016-04-01 Lynn Garren : proper qualifiers for ifdh\_art

lareventdisplay v06\_00\_00\_rc1(#lareventdisplay-v06_00_00_rc1)
-------------------------------------------------------------------

-   2016-04-11 Lynn Garren : v06\_00\_00\_rc1
-   2016-04-06 Lynn Garren : Merge branch ‘develop’ into v06\_00\_00\_rc
-   2016-04-04 Lynn Garren : Merge branch ‘another\_try’ into v06\_00\_00\_rc
-   2016-04-04 Lynn Garren : cetbuildtools v4\_19\_04
-   2016-04-04 Lynn Garren : found a workable solution
-   2016-04-04 Lynn Garren : use cetbuildtools v4\_19\_04
-   2016-04-01 Lynn Garren : complete hack for now
-   2016-04-01 Lynn Garren : use cetbuildtools v4\_19\_03

larexamples v06\_00\_00\_rc1(#larexamples-v06_00_00_rc1)
-----------------------------------------------------------

-   2016-04-11 Lynn Garren : v06\_00\_00\_rc1
-   2016-04-04 Lynn Garren : use cetbuildtools v4\_19\_04
-   2016-04-01 Lynn Garren : use cetbuildtools v4\_19\_03

larpandora v06\_00\_00\_rc1(#larpandora-v06_00_00_rc1)
---------------------------------------------------------

-   2016-04-11 Lynn Garren : Merge branch ‘develop’ into v06\_00\_00\_rc
-   2016-04-11 Lynn Garren : v06\_00\_00\_rc1
-   2016-04-06 Lynn Garren : Merge branch ‘develop’ into v06\_00\_00\_rc
-   2016-04-04 Lynn Garren : use cetbuildtools v4\_19\_04
-   2016-04-01 Lynn Garren : correct qualifiers for larpandoracontent

larana v06\_00\_00\_rc1(#larana-v06_00_00_rc1)
-------------------------------------------------

-   2016-04-11 Lynn Garren : Merge branch ‘develop’ into v06\_00\_00\_rc
-   2016-04-11 Lynn Garren : v06\_00\_00\_rc1
-   2016-04-04 Lynn Garren : use cetbuildtools v4\_19\_04
-   2016-04-01 Lynn Garren : use std::ifstream
-   2016-04-01 Lynn Garren : use cetbuildtools v4\_19\_03

larreco v06\_00\_00\_rc1(#larreco-v06_00_00_rc1)
---------------------------------------------------

-   2016-04-11 Lynn Garren : Merge branch ‘develop’ into v06\_00\_00\_rc
-   2016-04-11 Lynn Garren : v06\_00\_00\_rc1
-   2016-04-09 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-04-09 Robert Sulej : fix a bug in trajectory direction calculation when converting pma tracks to dataproducts
-   2016-04-08 Lynn Garren : larsoft v05\_08\_00
-   2016-04-08 Tingjun Yang : Merge branch ‘feature/rnd\_PmaImprovements’ into develop
-   2016-04-08 Tingjun Yang : Quit if it is data.
-   2016-04-06 Lynn Garren : Merge branch ‘develop’ into v06\_00\_00\_rc
-   2016-04-06 Lynn Garren : nutools v1\_25\_01
-   2016-04-04 Lynn Garren : use cetbuildtools v4\_19\_04
-   2016-04-01 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/rnd\_PmaImprovements
-   2016-04-01 Lynn Garren : use std::ofstream
-   2016-04-01 Lynn Garren : nutools v1\_25\_00

larsim v06\_00\_00\_rc1(#larsim-v06_00_00_rc1)
-------------------------------------------------

-   2016-04-11 Lynn Garren : Merge branch ‘develop’ into v06\_00\_00\_rc
-   2016-04-11 Lynn Garren : v06\_00\_00\_rc1
-   2016-04-06 Lynn Garren : declare enum
-   2016-04-04 Lynn Garren : use cetbuildtools v4\_19\_04
-   2016-04-01 Lynn Garren : correct artextensions qualifiers
-   2016-04-01 Lynn Garren : removing duplicate declaration of vector\<int\>
-   2016-04-01 Lynn Garren : using std::ifstream
-   2016-04-01 Lynn Garren : using std::ifstream
-   2016-04-01 Lynn Garren : cetbuildtools v4\_19\_03

larevt v06\_00\_00\_rc1(#larevt-v06_00_00_rc1)
-------------------------------------------------

-   2016-04-11 Lynn Garren : v06\_00\_00\_rc1
-   2016-04-04 Lynn Garren : use cetbuildtools v4\_19\_04
-   2016-04-01 Lynn Garren : cetbuildtools v4\_19\_03
-   2016-04-01 Lynn Garren : std::ifstream

lardata v06\_00\_00\_rc1(#lardata-v06_00_00_rc1)
---------------------------------------------------

-   2016-04-13 Lynn Garren : define more enums and add missing Assns
-   2016-04-11 Lynn Garren : use unique names
-   2016-04-11 Lynn Garren : declare enum
-   2016-04-11 Lynn Garren : v06\_00\_00\_rc1
-   2016-04-06 Lynn Garren : Merge branch ‘develop’ into v06\_00\_00\_rc
-   2016-04-06 Lynn Garren : nutools v1\_25\_01
-   2016-04-06 Lynn Garren : declare enums
-   2016-04-04 Lynn Garren : use cetbuildtools v4\_19\_04
-   2016-04-01 Lynn Garren : nutools v1\_25\_00
-   2016-04-01 Lynn Garren : deal with variables typedefed to unsigned short
-   2016-03-31 Lynn Garren : update ClassVersions

larcore v06\_00\_00\_rc1(#larcore-v06_00_00_rc1)
---------------------------------------------------

-   2016-04-15 Lynn Garren : add BOOST\_INC to ROOT\_INCLUDE\_PATH
-   2016-04-11 Lynn Garren : version 1.6 of fixing gdml
-   2016-04-11 Lynn Garren : v06\_00\_00\_rc1
-   2016-04-06 Lynn Garren : remove expressions
-   2016-04-05 Lynn Garren : translate the complex expressions
-   2016-04-04 Lynn Garren : use cetbuildtools v4\_19\_04
-   2016-04-01 Lynn Garren : expressions removed from gdml files by RemoveMathFromGDML.py –direct
-   2016-04-01 Lynn Garren : need art, fhicl, and cetlib in ROOT\_INCLUDE\_PATH
-   2016-04-01 Lynn Garren : set root include path
-   2016-04-01 Lynn Garren : the correct variable is ROOT\_INCLUDE\_PATH
-   2016-04-01 Lynn Garren : define ROOT\_INCLUDE
-   2016-03-31 Lynn Garren : art v1\_18\_05
