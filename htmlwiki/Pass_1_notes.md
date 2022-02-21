Pass 1 notes
==============================

setup the working directory
------------------------------------------------------------

-   working on woof using tools in laradmin v1_08_00
-   setup mrb and laradmin
-   define MRB_PROJECT
-   tagLAr mkdir v05_00_00 \`pwd\`
-   cd v05_00_00
-   source p/localProducts_larsoft_v05_00_00_e7_prof/setup
-   cd srcs
-   mrb g lar1ndcode
-   mrb g lariatsoft
-   we now have argoneutcode, dunetpc, lar1ndcode, lariatsoft, uboonecode, and larsoft

create the working tag
--------------------------------------------------

-   for larsoft, create the v05_00_branch from the LARSOFT_SUITE_v04_36_01 tag
-   for everything else, create the v05_00_branch from develop
-   setup laradmin v1_08_01 -z /home/garren/scratch/larsoft/myprod:/products
-   make_branch.sh LARSOFT_SUITE_v04_36_01

refactor
----------------------

-   refactor_larsoft.sh
    -   this script moved the directories down and removes BASENAME_ONLY
-   edit lar\*/CMakeList.txt by hand
    -   multiple add_subdirectory calls are collapsed to a single call
-   the refactor script created the lar\*/lar\*/CMakeLists.txt files but did not populate them
    -   some bug in the script - not worth finding at this point
    -   edit by hand
    -   add the add_subdirectory calls removed from lar\*/CMakeLists.txt
-   BASENAME_ONLY has not been removed from test libraries
    -   larcore, larevt, larsim
    -   make this change by hand
-   generate_hash.sh
    -   creates header_hash.pl
-   generate_util_hash.sh
    -   creates util_header_hash.pl
-   remove_library_name.sh
    -   creates lib_name.pl
-   some files must be edited by hand to make a single library instead of multiple libraries
    -   larsim/larsim/LArG4/CMakeLists.txt
    -   larreco/larreco/HitFinder/CMakeLists.txt
    -   larana/larana/OpticalDetector/CMakeLists.txt

end user scripts
--------------------------------------

We use the same scripts that the end user will use to fix their code.

-   in larsoft, merge the v05_00_00_rc branch to pick up the scripts in larsoft/bin
-   compare header_hash.pl and larsoft/bin/fix_headers.pl
-   compare util_header_hash.pl and larsoft/bin/fix_headers.pl
-   comare lib_name.pl and larsoft/bin/fix_cmake.pl
-   cd \$MRB_SOURCE
-   ./larsoft/bin/update_sources.sh

build
----------------

-   update the versions of the larsoft suite
    -   update_version.sh
-   cd \$MRB_BUILDDIR
    -   build and fix
-   changes
    -   remove “temporary workaround until art v1_12_01 is available” from lardata/RecoBase/CMakeLists.txt
    -   identical names
        -   lar1ndcode/lar1ndcode/AnalysisTree/AnalysisTree_module.cc
        -   uboonecode/uboone/AnalysisTree/AnalysisTree_module.cc
    -   edit these files:
        -   lar1ndcode/lar1ndcode/AnalysisTree/\*.fcl
        -   lar1ndcode/lar1ndcode/AnalysisTree/CMakeLists.txt
        -   uboonecode/uboone/AnalysisTree/\*.fcl
        -   uboonecode/uboone/AnalysisTree/CMakeLists.txt
-   find a few missing entries for update_sources.sh
-   iterate until everything builds

known issues
------------------------------

-   argoneutcode geometry_iterator_loop_argoneut_test
    -   This test uses geometry_microboone.fcl, which is found in uboonecode
    -   The test passes only if you build and test argoneutcode and uboonecode at the same time.

commit and tag
----------------------------------

-   larcore larevt larpandora larsoft larana lardata larexamples larreco lareventdisplay larsim
    -   commit the changes
    -   git push -u origin v05_00_branch
    -   git tag -a -m“v05_00_00” v05_00_00
    -   git push –tags
-   argoneutcode dunetpc lariatsoft uboonecode lar1ndcode
    -   commit the changes
    -   git push -u origin v05_00_branch
