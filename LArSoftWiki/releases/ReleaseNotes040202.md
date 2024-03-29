# LArSoft v04_02_02 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
[Download instructions](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_02_02/larsoft-v04_02_02.html)

## Purpose

Final release in the v04_02 series

## New features

## Bug fixes

-   ClusterCrawler bug in larreco
    -   The initialization of the three charge members (integral, its uncertainty and sum of ADCs) are swapped.
    -   This is serious since the users looking for Charge() would obtain the value of the charge error.

## Updated dependencies

|         |          |           |                                   |
|---------|----------|-----------|-----------------------------------|
| Product | Version  | Qualifier | Notes                             |
| gitflow | v1_8_0  |           |                                   |
| mrb     | v1_04_02 |           |                                   |
| getopt  | v1_1_6  |           | for cetbuildtools v4_07_03 on OSX |

# Change List

## larsoft v04_02_02

-   2015-03-12 Lynn Garren : Merge branch 'release/v04_02_02'
-   2015-03-12 Lynn Garren : need getopt v1_1_6 on OSX
-   2015-03-11 Lynn Garren : update product versions
-   2015-03-11 Lynn Garren : larsoft v04_02_01 for larsoft v04_02_01
-   2015-03-11 Lynn Garren : cleanup the html
-   2015-03-06 Lynn Garren : using the version variable

## lareventdisplay v04_01_02

-   2015-03-11 Lynn Garren : Merge branch 'release/v04_02_02'
-   2015-03-11 Lynn Garren : lareventdisplay v04_01_02 for larsoft v04_02_02

## larexamples v04_00_04

-   2015-03-11 Lynn Garren : Merge branch 'release/v04_02_02'
-   2015-03-11 Lynn Garren : larexamples v04_00_04 for larsoft v04_02_02

## larpandora v04_01_02

-   2015-03-11 Lynn Garren : Merge branch 'release/v04_02_02'
-   2015-03-11 Lynn Garren : larpandora v04_01_02 for larsoft v04_02_02
-   2015-03-06 Tingjun Yang : Revert changes to pandora header files. Sorry for another big email.
-   2015-03-05 Tingjun Yang : Add LArPandoraAlgorithms to include path.

## larana v04_01_03

-   2015-03-11 Lynn Garren : Merge branch 'release/v04_02_02'
-   2015-03-11 Lynn Garren : larana v04_01_03 for larsoft v04_02_02  
    2015-03-10 Anne Schukraft : new area calorimetry constants for MCC6
-   2015-03-06 Tingjun Yang : Resolve conflict.
-   2015-03-06 Anne Schukraft : new area calorimetry constants developed on v04_00_01

## larreco v04_01_03

-   2015-03-11 Lynn Garren : Merge branch 'release/v04_02_02'
-   2015-03-11 Lynn Garren : larreco v04_01_03 for larsoft v04_02_02
-   2015-03-10 Gianluca Petrillo : Fix charge in recob::Hit creation in ClusterCrawler module

## larsim v04_02_01

-   2015-03-11 Lynn Garren : Merge branch 'release/v04_02_02'
-   2015-03-11 Lynn Garren : larsim v04_02_01 for larsoft v04_02_02

## larevt v04_00_04

-   2015-03-11 Lynn Garren : Merge branch 'release/v04_02_02'
-   2015-03-11 Lynn Garren : larevt v04_00_04 for larsoft v04_02_02

## lardata v04_00_04

-   2015-03-11 Lynn Garren : lardata v04_00_04 for larsoft v04_02_02

## larcore v04_00_03

-   2015-03-11 Lynn Garren : larcore v04_00_03 for larsoft v04_02_02
-   2015-03-08 Tingjun Yang : Remove suffix gdml.
-   2015-03-06 Eric Church : When one is using the file metadata to read the old geometry we were tacking on .gdml twice.

## larbatch v01_04_04

-   2015-03-11 Lynn Garren : Merge branch 'release/v04_02_02'
-   2015-03-11 Lynn Garren : larbatch v01_04_04 for larsoft v04_02_02
-   2015-03-06 Herbert Greenlee : Change cursor to “watch” while project.py is thinking.
-   2015-03-06 Herbert Greenlee : Add —role and fix some bugs.
-   2015-03-06 Herbert Greenlee : Remove support for jobsub_tools.

## larutils v1_00_04

-   2015-03-11 Lynn Garren : larutils v1_00_04 for larsoft v04_02_02
-   2015-03-11 Herbert Greenlee : Updates for macos compatibility.
-   2015-03-11 Herbert Greenlee : Use cvmfs.
-   2015-03-10 Lynn Garren : use mrb v1_04_01 and build distribution manifest
-   2015-03-10 Lynn Garren : use the latest mrb
-   2015-03-05 Tingjun Yang : Add buildArgoNeuT.sh.
