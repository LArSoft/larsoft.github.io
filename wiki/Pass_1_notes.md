Pass 1 notes
==============================

-   **Table of contents**
-   [Pass 1 notes](#Pass-1-notes)
    -   [setup the working directory](#setup-the-working-directory)
    -   [create the working tag](#create-the-working-tag)
    -   [refactor](#refactor)
    -   [end user scripts](#end-user-scripts)
    -   [build](#build)
    -   [known issues](#known-issues)
    -   [commit and tag](#commit-and-tag)

setup the working directory
------------------------------------------------------------

-   working on woof using tools in laradmin v1\_08\_00
-   setup mrb and laradmin
-   define MRB\_PROJECT
-   tagLAr mkdir v05\_00\_00 \`pwd\`
-   cd v05\_00\_00
-   source p/localProducts\_larsoft\_v05\_00\_00\_e7\_prof/setup
-   cd srcs
-   mrb g lar1ndcode
-   mrb g lariatsoft
-   we now have argoneutcode, dunetpc, lar1ndcode, lariatsoft, uboonecode, and larsoft

create the working tag
--------------------------------------------------

-   for larsoft, create the v05\_00\_branch from the LARSOFT\_SUITE\_v04\_36\_01 tag
-   for everything else, create the v05\_00\_branch from develop
-   setup laradmin v1\_08\_01 -z /home/garren/scratch/larsoft/myprod:/products
-   make\_branch.sh LARSOFT\_SUITE\_v04\_36\_01

refactor
----------------------

-   refactor\_larsoft.sh
    -   this script moved the directories down and removes BASENAME\_ONLY
-   edit lar\*/CMakeList.txt by hand
    -   multiple add\_subdirectory calls are collapsed to a single call
-   the refactor script created the lar\*/lar\*/CMakeLists.txt files but did not populate them
    -   some bug in the script - not worth finding at this point
    -   edit by hand
    -   add the add\_subdirectory calls removed from lar\*/CMakeLists.txt
-   BASENAME\_ONLY has not been removed from test libraries
    -   larcore, larevt, larsim
    -   make this change by hand
-   generate\_hash.sh
    -   creates header\_hash.pl
-   generate\_util\_hash.sh
    -   creates util\_header\_hash.pl
-   remove\_library\_name.sh
    -   creates lib\_name.pl
-   some files must be edited by hand to make a single library instead of multiple libraries
    -   larsim/larsim/LArG4/CMakeLists.txt
    -   larreco/larreco/HitFinder/CMakeLists.txt
    -   larana/larana/OpticalDetector/CMakeLists.txt

end user scripts
--------------------------------------

We use the same scripts that the end user will use to fix their code.

-   in larsoft, merge the v05\_00\_00\_rc branch to pick up the scripts in larsoft/bin
-   compare header\_hash.pl and larsoft/bin/fix\_headers.pl
-   compare util\_header\_hash.pl and larsoft/bin/fix\_headers.pl
-   comare lib\_name.pl and larsoft/bin/fix\_cmake.pl
-   cd \$MRB\_SOURCE
-   ./larsoft/bin/update\_sources.sh

build
----------------

-   update the versions of the larsoft suite
    -   update\_version.sh
-   cd \$MRB\_BUILDDIR
    -   build and fix
-   changes
    -   remove “temporary workaround until art v1\_12\_01 is available” from lardata/RecoBase/CMakeLists.txt
    -   identical names
        -   lar1ndcode/lar1ndcode/AnalysisTree/AnalysisTree\_module.cc
        -   uboonecode/uboone/AnalysisTree/AnalysisTree\_module.cc
    -   edit these files:
        -   lar1ndcode/lar1ndcode/AnalysisTree/\*.fcl
        -   lar1ndcode/lar1ndcode/AnalysisTree/CMakeLists.txt
        -   uboonecode/uboone/AnalysisTree/\*.fcl
        -   uboonecode/uboone/AnalysisTree/CMakeLists.txt
-   find a few missing entries for update\_sources.sh
-   iterate until everything builds

known issues
------------------------------

-   argoneutcode geometry\_iterator\_loop\_argoneut\_test
    -   This test uses geometry\_microboone.fcl, which is found in uboonecode
    -   The test passes only if you build and test argoneutcode and uboonecode at the same time.

commit and tag
----------------------------------

-   larcore larevt larpandora larsoft larana lardata larexamples larreco lareventdisplay larsim
    -   commit the changes
    -   git push -u origin v05\_00\_branch
    -   git tag -a -m“v05\_00\_00” v05\_00\_00
    -   git push –tags
-   argoneutcode dunetpc lariatsoft uboonecode lar1ndcode
    -   commit the changes
    -   git push -u origin v05\_00\_branch
