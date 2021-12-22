LArSoft v05\_00\_00\_rc2 Release Notes(#LArSoft-v05_00_00_rc2-Release-Notes)
===============================================================================

-   **Table of contents**
-   [LArSoft v05\_00\_00\_rc2 Release Notes](#LArSoft-v05_00_00_rc2-Release-Notes)
    -   [New features](#New-features)
    -   [Breaking Changes](#Breaking-Changes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v05\_00\_00\_rc2](#larsoft-v05_00_00_rc2)
    -   [lareventdisplay v05\_00\_00\_rc2](#lareventdisplay-v05_00_00_rc2)
    -   [larexamples v05\_00\_00\_rc2](#larexamples-v05_00_00_rc2)
    -   [larpandora v05\_00\_00\_rc2](#larpandora-v05_00_00_rc2)
    -   [larana v05\_00\_00\_rc2](#larana-v05_00_00_rc2)
    -   [larreco v05\_00\_00\_rc2](#larreco-v05_00_00_rc2)
    -   [larsim v05\_00\_00\_rc2](#larsim-v05_00_00_rc2)
    -   [larevt v05\_00\_00\_rc2](#larevt-v05_00_00_rc2)
    -   [lardata v05\_00\_00\_rc2](#lardata-v05_00_00_rc2)
    -   [larcore v05\_00\_00\_rc2](#larcore-v05_00_00_rc2)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v05_00_00_rc2/larsoft-v05_00_00_rc2.html)

​2. Purpose

-   [architecture phase 1](Core_Services_Review)
-   use recommended directory structure
-   use complete library names

New features(#New-features)
------------------------------

-   The v05\_00\_00\_rc branch collects the phase 1 architecture changes
    -   based on feature/jpaley\_LArPropertiesBreakup in larsoft repositories
    -   experiment repository branches based on feature/gp\_ServiceCoreReview
    -   [Core\_Services\_Review](Core_Services_Review)
-   Changes to help avoid name conflicts
    -   Source code is now moved down a directory. For instance larcore/Geometry is now larcore/larcore/Geometry.
    -   Headers should be included with \#include “larcore/Geometry/header.h” instead of \#include “Geometry/header.h”
-   Remove BASENAME\_ONLY from larsoft CMakeLists.txt files
    -   All library names are now “fully qualified”, e.g., liblarcore\_Geometry\_AuxDetGeometry\_service.so, liblarcore\_Geometry.so
-   This tag is on the v05\_00\_00\_rc branch
    -   This branch also exists for argoneutcode, dunetpc, lar1ndcode, lariatsoft, and uboonecode.
    -   All necessary changes have been made in the branch

Breaking Changes(#Breaking-Changes)
--------------------------------------

-   To update local code, run update\_sources.sh and UpdateCoreServices.py
    -   setup larsoft v05\_00\_00\_rc2
    -   UpdateCoreServices.py –doit \<mydir\>
    -   update\_sources.sh \<mydir\>
    -   It is safe to run the scripts more than once on the same code.
    -   The scripts will be merged into a single update script in a future release.
-   There may be more changes required by the new core services changes than can be dealt with in a script.
    -   These changes are already in place for argoneutcode, dunetpc, lar1ndcode, lariatsoft, and uboonecode.
-   If you want to test code in your favorite feature branch, it might be easier in some cases to check out the appropriate v05 tag, then merge your changes rather than rely on the translation scripts to perform all the necessary architecture changes.

Updated dependencies(#Updated-dependencies)
----------------------------------------------

-   larsoft v05\_00\_00\_rc2 was built with the same dependencies as larsoft v04\_31\_00.

Change List(#Change-List)
============================

larsoft v05\_00\_00\_rc2(#larsoft-v05_00_00_rc2)
---------------------------------------------------

-   2016-01-15 Lynn Garren : v05\_00\_00\_rc2
-   2016-01-15 Lynn Garren : final cmake list
-   2016-01-15 Lynn Garren : ignore SUBDIRNAME
-   2016-01-15 Lynn Garren : renaming all libraries

lareventdisplay v05\_00\_00\_rc2(#lareventdisplay-v05_00_00_rc2)
-------------------------------------------------------------------

-   2016-01-15 Lynn Garren : v05\_00\_00\_rc2
-   2016-01-15 Lynn Garren : remove LIBRARY\_NAME

larexamples v05\_00\_00\_rc2(#larexamples-v05_00_00_rc2)
-----------------------------------------------------------

-   2016-01-15 Lynn Garren : v05\_00\_00\_rc2
-   2016-01-15 Lynn Garren : remove LIBRARY\_NAME

larpandora v05\_00\_00\_rc2(#larpandora-v05_00_00_rc2)
---------------------------------------------------------

-   2016-01-15 Lynn Garren : v05\_00\_00\_rc2
-   2016-01-15 Lynn Garren : remove LIBRARY\_NAME

larana v05\_00\_00\_rc2(#larana-v05_00_00_rc2)
-------------------------------------------------

-   2016-01-15 Lynn Garren : v05\_00\_00\_rc2
-   2016-01-15 Lynn Garren : remove most LIBRARY\_NAME instances

larreco v05\_00\_00\_rc2(#larreco-v05_00_00_rc2)
---------------------------------------------------

-   2016-01-15 Lynn Garren : add missing boost library
-   2016-01-15 Lynn Garren : v05\_00\_00\_rc2
-   2016-01-15 Lynn Garren : remove most instances of LIBRARY\_NAME

larsim v05\_00\_00\_rc2(#larsim-v05_00_00_rc2)
-------------------------------------------------

-   2016-01-15 Lynn Garren : v05\_00\_00\_rc2
-   2016-01-15 Lynn Garren : remove most instances of LIBRARY\_NAME

larevt v05\_00\_00\_rc2(#larevt-v05_00_00_rc2)
-------------------------------------------------

-   2016-01-15 Lynn Garren : v05\_00\_00\_rc2
-   2016-01-15 Lynn Garren : remove LIBRARY\_NAME

lardata v05\_00\_00\_rc2(#lardata-v05_00_00_rc2)
---------------------------------------------------

-   2016-01-15 Lynn Garren : v05\_00\_00\_rc2
-   2016-01-15 Lynn Garren : remove LIBRARY\_NAME
-   2016-01-15 Lynn Garren : make it inline

larcore v05\_00\_00\_rc2(#larcore-v05_00_00_rc2)
---------------------------------------------------

-   2016-01-15 Lynn Garren : v05\_00\_00\_rc2
-   2016-01-15 Lynn Garren : remove LIBRARY\_NAME
-   2016-01-05 Gianluca Petrillo : Merge branch ‘gp\_v05\_00\_00\_rc\_fixes’ into v05\_00\_00\_rc
-   2016-01-04 Gianluca Petrillo : Bug fix in geometry test infrastructure: map::emplace() and map::insert() do not replace existing elements…
