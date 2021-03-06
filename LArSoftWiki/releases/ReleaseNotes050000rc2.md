# LArSoft v05_00_00_rc2 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
[Download instructions](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v05_00_00_rc2/larsoft-v05_00_00_rc2.html)

2\. Purpose

-   [architecture phase 1 ](Core_Services_Review)
-   use recommended directory structure
-   use complete library names

## New features

-   The v05_00_00_rc branch collects the phase 1 architecture changes
    -   based on feature/jpaley_LArPropertiesBreakup in larsoft repositories
    -   experiment repository branches based on feature/gp_ServiceCoreReview
    -   [Core_Services_Review](Core_Services_Review)
-   Changes to help avoid name conflicts
    -   Source code is now moved down a directory. For instance larcore/Geometry is now larcore/larcore/Geometry.
    -   Headers should be included with \#include “larcore/Geometry/header.h” instead of \#include “Geometry/header.h”
-   Remove BASENAME_ONLY from larsoft CMakeLists.txt files
    -   All library names are now “fully qualified”, e.g., liblarcore_Geometry_AuxDetGeometry_service.so, liblarcore_Geometry.so
-   This tag is on the v05_00_00_rc branch
    -   This branch also exists for argoneutcode, dunetpc, lar1ndcode, lariatsoft, and uboonecode.
    -   All necessary changes have been made in the branch

## Breaking Changes

-   To update local code, run update_sources.sh and UpdateCoreServices.py
    -   setup larsoft v05_00_00_rc2
    -   UpdateCoreServices.py —doit <mydir>
    -   update_sources.sh <mydir>
    -   It is safe to run the scripts more than once on the same code.
    -   The scripts will be merged into a single update script in a future release.
-   There may be more changes required by the new core services changes than can be dealt with in a script.
    -   These changes are already in place for argoneutcode, dunetpc, lar1ndcode, lariatsoft, and uboonecode.
-   If you want to test code in your favorite feature branch, it might be easier in some cases to check out the appropriate v05 tag, then merge your changes rather than rely on the translation scripts to perform all the necessary architecture changes.

## Updated dependencies

-   larsoft v05_00_00_rc2 was built with the same dependencies as larsoft v04_31_00.

# Change List

## larsoft v05_00_00_rc2

-   2016-01-15 Lynn Garren : v05_00_00_rc2
-   2016-01-15 Lynn Garren : final cmake list
-   2016-01-15 Lynn Garren : ignore SUBDIRNAME
-   2016-01-15 Lynn Garren : renaming all libraries

## lareventdisplay v05_00_00_rc2

-   2016-01-15 Lynn Garren : v05_00_00_rc2
-   2016-01-15 Lynn Garren : remove LIBRARY_NAME

## larexamples v05_00_00_rc2

-   2016-01-15 Lynn Garren : v05_00_00_rc2
-   2016-01-15 Lynn Garren : remove LIBRARY_NAME

## larpandora v05_00_00_rc2

-   2016-01-15 Lynn Garren : v05_00_00_rc2
-   2016-01-15 Lynn Garren : remove LIBRARY_NAME

## larana v05_00_00_rc2

-   2016-01-15 Lynn Garren : v05_00_00_rc2
-   2016-01-15 Lynn Garren : remove most LIBRARY_NAME instances

## larreco v05_00_00_rc2

-   2016-01-15 Lynn Garren : add missing boost library
-   2016-01-15 Lynn Garren : v05_00_00_rc2
-   2016-01-15 Lynn Garren : remove most instances of LIBRARY_NAME

## larsim v05_00_00_rc2

-   2016-01-15 Lynn Garren : v05_00_00_rc2
-   2016-01-15 Lynn Garren : remove most instances of LIBRARY_NAME

## larevt v05_00_00_rc2

-   2016-01-15 Lynn Garren : v05_00_00_rc2
-   2016-01-15 Lynn Garren : remove LIBRARY_NAME

## lardata v05_00_00_rc2

-   2016-01-15 Lynn Garren : v05_00_00_rc2
-   2016-01-15 Lynn Garren : remove LIBRARY_NAME
-   2016-01-15 Lynn Garren : make it inline

## larcore v05_00_00_rc2

-   2016-01-15 Lynn Garren : v05_00_00_rc2
-   2016-01-15 Lynn Garren : remove LIBRARY_NAME
-   2016-01-05 Gianluca Petrillo : Merge branch 'gp_v05_00_00_rc_fixes' into v05_00_00_rc
-   2016-01-04 Gianluca Petrillo : Bug fix in geometry test infrastructure: map::emplace() and map::insert() do not replace existing elements…
