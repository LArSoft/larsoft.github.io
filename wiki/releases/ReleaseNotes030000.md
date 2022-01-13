LArSoft v03_00_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v03_00_00 Release Notes](#LArSoft-v03_00_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [Updated dependencies](#Updated-dependencies)
    -   [Known issues](#Known-issues)
    -   [Updating code](#Updating-code)
        -   [Updating checked out larsoft code](#Updating-checked-out-larsoft-code)
        -   [Updating your own package](#Updating-your-own-package)
-   [Change List](#Change-List)
    -   [larsoft v03_00_00](#larsoft-v03_00_00)
    -   [lareventdisplay v03_00_00](#lareventdisplay-v03_00_00)
    -   [larexamples v03_00_00](#larexamples-v03_00_00)
    -   [larpandora v03_00_00](#larpandora-v03_00_00)
    -   [larana v03_00_00](#larana-v03_00_00)
    -   [larreco v03_00_00](#larreco-v03_00_00)
    -   [larsim v03_00_00](#larsim-v03_00_00)
    -   [larevt v03_00_00](#larevt-v03_00_00)
    -   [lardata v03_00_00](#lardata-v03_00_00)
    -   [larcore v03_00_00](#larcore-v03_00_00)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/projects/larsoft/v03_00_00/larsoft-v03_00_00.html)

Purpose
--------------------

This is the first release with art v1_12_00 and gcc v4_9_1.
With the exception of bug fixes found by the stricter compiler, the code in this release is identical to v02_06_02.

[art v1_12_00](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_11200) (new features, code improvements, root 5.34.21)
[art v1_11_03](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_11103) (bug fix)
[art v1_11_02](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_11102) (bug fix)
[art v1_11_01](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_11101) (bug fix)
[art v1_11_00](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_11100) (extensive notes)

Updated dependencies
----------------------------------------------

||
|artdaq_core|v1_03_05|e6:nu:s5|now distributed with the release|
|larsoft_data|v0_03_00||has new Radionuclides subdirectory|
|nutools|v1_06_01|e6|for art v1_12_00|
|libwda|v2_20_1|||
|ifdhc|v1_4_3b|e6||
|ifbeam|v1_4_4a|e6||
|nucondb|v1_4_4a|e6||
|ifdh_art|v1_5_2|s5:nu:e6|for art v1_12_00|
|pandora|v00_16c|e6||
|genie|v2_8_0j|e6||
|cry|v1_7b|e6||
|lhapdf|v5_9_1a|e6||
|pythia|v6_4_28b|e6||
|geant4|v4_9_6_p03e|e6||
|xerces_c|v3_1_1b|e6||
|log4cpp|v1_1_1a|e6||
|mysql_client|v5_5_39|e6||
|postgresql|v9_1_14|e6||
|cstxsd|v4_0_0a|||
|art|v1_12_00|nu:e6|FindOne/FindMany improvements|
|messagefacility|v1_11_15|e6||
|fhiclcpp|v3_01_02|e6||
|cetlib|v1_07_03|e6||
|cpp0x|v1_04_08|e6||
|root|v5_34_21|nu:e6||
|xrootd|v4_0_3|e6||
|boost|v1_56_0|e6||
|clhep|v2_2_0_3|e6||
|cppunit|v1_12_1a|e6||
|fftw|v3_3_4|e6||
|gccxml|v0_9_20140718|e6||
|libxml2|v2_9_1a|e6||
|sqlite|v3_08_05_00|||
|python|v2_7_8|||
|tbb|v4_2_5|e6||
|gdb|v7_8|||
|gcc|v4_9_1|||
|cmake|v3_0_1||build time only|
|cetbuildtools|v4_02_02||build time only|
|mrb|v1_02_00||build time only|

Known issues
------------------------------

-   [redmine issue 7068](https://cdcvs.fnal.gov/redmine/issues/7068) - root still does not play nicely with newer releases of xrootd

Updating code
--------------------------------

### Updating checked out larsoft code

Wherever possible, we strongly suggest that you simply start with a clean checkout. The build system is designed to easily accommodate clean checkouts.

1.  first, update the master branch so you can use “git push” later
    -   git checkout master
    -   git pull

2.  second, update develop
    -   git checkout develop
    -   git pull
    -   resolve any conflicts

3.  third, update any feature branches
    -   git checkout feature/my_feature_branch
    -   git merge develop
    -   resolve any conflicts

### Updating your own package

To migrate your own package to larsoft v03_00_00, you will need to update the files in the ups subdirectory. Once that is done, you may find that gcc 4.9.1 finds problems in your code that need fixing. We mostly noticed complaints about type mismatches and about unused local functions (in anonymous namespace).

1.  With the advent of cetbuildtools 4.0.0, the structure of the product_deps file has been enhanced, and there is a corresponding change to the setup_for_development file. You should not change one without changing the other, but since 4.0.1 either the old form or the new one is accepted. The old form is deprecated however, and support will be removed in the future. There is a script, migrate-package, that will upgrade the product_deps and setup_for_development files in order to work best with newer cetbuildtools. Usage:

        setup cetbuildtools v4_02_02 # (say)
        migrate-package <package-top-dir>

2.  update dependencies (larsoft, gcc, and any other package that is explicitly listed in ups/product_deps)

        mrb uv larsoft v03_00_00
        mrb uv gcc v4_9_1

Change List
============================

larsoft v03_00_00
------------------------------------------

-   2014-09-23 Lynn Garren : larsoft v03_00_00 with art v1_12_00, ifdh_art v1_5_2, larsoft_data v0_03_00, and gcc v4_9_1
-   2014-09-23 Lynn Garren : new RecoAlg/RootMathFunctor.h wrapper
-   2014-09-23 Lynn Garren : use cetbuildtools v4_02_02

lareventdisplay v03_00_00
----------------------------------------------------------

-   2014-09-23 Lynn Garren : lareventdisplay v03_00_00 with art v1_12_00 and gcc v4_9_1
-   2014-09-23 Lynn Garren : use cetbuildtools v4_02_02
-   2014-09-23 Lynn Garren : comment out unused functions

larexamples v03_00_00
--------------------------------------------------

-   2014-09-23 Lynn Garren : larexamples v03_00_00 with art v1_12_00 and gcc v4_9_1
-   2014-09-23 Lynn Garren : use cetbuildtools v4_02_02

larpandora v03_00_00
------------------------------------------------

-   2014-09-23 Lynn Garren : larpandora v03_00_00 with art v1_12_00, pandora v00_16c, and gcc v4_9_1
-   2014-09-23 Lynn Garren : use cetbuildtools v4_02_02

larana v03_00_00
----------------------------------------

-   2014-09-23 Lynn Garren : larana v03_00_00 with art v1_12_00 and gcc v4_9_1
-   2014-09-23 Lynn Garren : use cetbuildtools v4_02_02
-   2014-09-23 Lynn Garren : make sure the units match

larreco v03_00_00
------------------------------------------

-   2014-09-23 Lynn Garren : larreco v03_00_00 with art v1_12_00, nutools v1_06_01, and gcc v4_9_1
-   2014-09-23 Lynn Garren : use cetbuildtools v4_02_02
-   2014-09-23 Lynn Garren : make units match
-   2014-09-23 Lynn Garren : need a wrapper for Math/Functor.h
-   2014-09-23 Lynn Garren : comment out unused functions
-   2014-09-23 Lynn Garren : comment out unused functions
-   2014-09-23 Lynn Garren : need stdexcept header for std::runtime_error

larsim v03_00_00
----------------------------------------

-   2014-09-23 Lynn Garren : larsim v03_00_00 with art v1_12_00 and gcc v4_9_1
-   2014-09-23 Lynn Garren : use cetbuildtools v4_02_02

larevt v03_00_00
----------------------------------------

-   2014-09-23 Lynn Garren : larevt v03_00_00 with art v1_12_00 and gcc v4_9_1
-   2014-09-23 Lynn Garren : use cetbuildtools v4_02_02

lardata v03_00_00
------------------------------------------

-   2014-09-23 Lynn Garren : lardata v03_00_00 with art v1_12_00, nutools v1_06_01, and gcc v4_9_1
-   2014-09-23 Lynn Garren : use cetbuildtools v4_02_02
-   2014-09-23 Lynn Garren : set -fno-var-tracking for this dictionary
-   2014-09-23 Gianluca Petrillo : Interface fix and stricter qualification of signedness in tests.
-   2014-09-23 Lynn Garren : make units match and include iostream where necessary
-   2014-09-23 Lynn Garren : new class checksums

larcore v03_00_00
------------------------------------------

-   2014-09-23 Lynn Garren : larcore v03_00_00 with art v1_12_00 and gcc v4_9_1
-   2014-09-23 Lynn Garren : use cetbuildtools v4_02_02
