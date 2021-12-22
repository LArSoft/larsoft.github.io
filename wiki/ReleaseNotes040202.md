LArSoft v04\_02\_02 Release Notes(#LArSoft-v04_02_02-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v04\_02\_02 Release Notes](#LArSoft-v04_02_02-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04\_02\_02](#larsoft-v04_02_02)
    -   [lareventdisplay v04\_01\_02](#lareventdisplay-v04_01_02)
    -   [larexamples v04\_00\_04](#larexamples-v04_00_04)
    -   [larpandora v04\_01\_02](#larpandora-v04_01_02)
    -   [larana v04\_01\_03](#larana-v04_01_03)
    -   [larreco v04\_01\_03](#larreco-v04_01_03)
    -   [larsim v04\_02\_01](#larsim-v04_02_01)
    -   [larevt v04\_00\_04](#larevt-v04_00_04)
    -   [lardata v04\_00\_04](#lardata-v04_00_04)
    -   [larcore v04\_00\_03](#larcore-v04_00_03)
    -   [larbatch v01\_04\_04](#larbatch-v01_04_04)
    -   [larutils v1\_00\_04](#larutils-v1_00_04)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_02_02/larsoft-v04_02_02.html)

Purpose(#Purpose)
--------------------

Final release in the v04\_02 series

New features(#New-features)
------------------------------

Bug fixes(#Bug-fixes)
------------------------

-   ClusterCrawler bug in larreco
    -   The initialization of the three charge members (integral, its uncertainty and sum of ADCs) are swapped.
    -   This is serious since the users looking for Charge() would obtain the value of the charge error.

Updated dependencies(#Updated-dependencies)
----------------------------------------------

  --------- ------------ ----------- -------------------------------------
  Product   Version      Qualifier   Notes
  gitflow   v1\_8\_0                 
  mrb       v1\_04\_02               
  getopt    v1\_1\_6                 for cetbuildtools v4\_07\_03 on OSX
  --------- ------------ ----------- -------------------------------------

Change List(#Change-List)
============================

larsoft v04\_02\_02(#larsoft-v04_02_02)
------------------------------------------

-   2015-03-12 Lynn Garren : Merge branch ‘release/v04\_02\_02’
-   2015-03-12 Lynn Garren : need getopt v1\_1\_6 on OSX
-   2015-03-11 Lynn Garren : update product versions
-   2015-03-11 Lynn Garren : larsoft v04\_02\_01 for larsoft v04\_02\_01
-   2015-03-11 Lynn Garren : cleanup the html
-   2015-03-06 Lynn Garren : using the version variable

lareventdisplay v04\_01\_02(#lareventdisplay-v04_01_02)
----------------------------------------------------------

-   2015-03-11 Lynn Garren : Merge branch ‘release/v04\_02\_02’
-   2015-03-11 Lynn Garren : lareventdisplay v04\_01\_02 for larsoft v04\_02\_02

larexamples v04\_00\_04(#larexamples-v04_00_04)
--------------------------------------------------

-   2015-03-11 Lynn Garren : Merge branch ‘release/v04\_02\_02’
-   2015-03-11 Lynn Garren : larexamples v04\_00\_04 for larsoft v04\_02\_02

larpandora v04\_01\_02(#larpandora-v04_01_02)
------------------------------------------------

-   2015-03-11 Lynn Garren : Merge branch ‘release/v04\_02\_02’
-   2015-03-11 Lynn Garren : larpandora v04\_01\_02 for larsoft v04\_02\_02
-   2015-03-06 Tingjun Yang : Revert changes to pandora header files. Sorry for another big email.2015-03-06 Tingjun Yang : Revert changes to pandora header files. Sorry for another big email.
-   2015-03-05 Tingjun Yang : Add LArPandoraAlgorithms to include path.

larana v04\_01\_03(#larana-v04_01_03)
----------------------------------------

-   2015-03-11 Lynn Garren : Merge branch ‘release/v04\_02\_02’
-   2015-03-11 Lynn Garren : larana v04\_01\_03 for larsoft v04\_02\_02\
     2015-03-10 Anne Schukraft : new area calorimetry constants for MCC6
-   2015-03-06 Tingjun Yang : Resolve conflict.
-   2015-03-06 Anne Schukraft : new area calorimetry constants developed on v04\_00\_01

larreco v04\_01\_03(#larreco-v04_01_03)
------------------------------------------

-   2015-03-11 Lynn Garren : Merge branch ‘release/v04\_02\_02’
-   2015-03-11 Lynn Garren : larreco v04\_01\_03 for larsoft v04\_02\_02
-   2015-03-10 Gianluca Petrillo : Fix charge in recob::Hit creation in ClusterCrawler module

larsim v04\_02\_01(#larsim-v04_02_01)
----------------------------------------

-   2015-03-11 Lynn Garren : Merge branch ‘release/v04\_02\_02’
-   2015-03-11 Lynn Garren : larsim v04\_02\_01 for larsoft v04\_02\_02

larevt v04\_00\_04(#larevt-v04_00_04)
----------------------------------------

-   2015-03-11 Lynn Garren : Merge branch ‘release/v04\_02\_02’
-   2015-03-11 Lynn Garren : larevt v04\_00\_04 for larsoft v04\_02\_02

lardata v04\_00\_04(#lardata-v04_00_04)
------------------------------------------

-   2015-03-11 Lynn Garren : lardata v04\_00\_04 for larsoft v04\_02\_02

larcore v04\_00\_03(#larcore-v04_00_03)
------------------------------------------

-   2015-03-11 Lynn Garren : larcore v04\_00\_03 for larsoft v04\_02\_02
-   2015-03-08 Tingjun Yang : Remove suffix gdml.
-   2015-03-06 Eric Church : When one is using the file metadata to read the old geometry we were tacking on .gdml twice.

larbatch v01\_04\_04(#larbatch-v01_04_04)
--------------------------------------------

-   2015-03-11 Lynn Garren : Merge branch ‘release/v04\_02\_02’
-   2015-03-11 Lynn Garren : larbatch v01\_04\_04 for larsoft v04\_02\_02
-   2015-03-06 Herbert Greenlee : Change cursor to “watch” while project.py is thinking.
-   2015-03-06 Herbert Greenlee : Add –role and fix some bugs.
-   2015-03-06 Herbert Greenlee : Remove support for jobsub\_tools.

larutils v1\_00\_04(#larutils-v1_00_04)
------------------------------------------

-   2015-03-11 Lynn Garren : larutils v1\_00\_04 for larsoft v04\_02\_02
-   2015-03-11 Herbert Greenlee : Updates for macos compatibility.
-   2015-03-11 Herbert Greenlee : Use cvmfs.
-   2015-03-10 Lynn Garren : use mrb v1\_04\_01 and build distribution manifest
-   2015-03-10 Lynn Garren : use the latest mrb
-   2015-03-05 Tingjun Yang : Add buildArgoNeuT.sh.
