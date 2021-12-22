LArSoft v04\_03\_01 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v04\_03\_01 Release Notes](#LArSoft-v04_03_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04\_03\_01](#larsoft-v04_03_01)
    -   [lareventdisplay v04\_03\_01](#lareventdisplay-v04_03_01)
    -   [larexamples v04\_03\_01](#larexamples-v04_03_01)
    -   [larpandora v04\_03\_01](#larpandora-v04_03_01)
    -   [larana v04\_03\_01](#larana-v04_03_01)
    -   [larreco v04\_03\_01](#larreco-v04_03_01)
    -   [larsim v04\_03\_01](#larsim-v04_03_01)
    -   [larevt v04\_03\_01](#larevt-v04_03_01)
    -   [lardata v04\_03\_01](#lardata-v04_03_01)
    -   [larcore v04\_03\_01](#larcore-v04_03_01)
    -   [larbatch v01\_04\_04](#larbatch-v01_04_04)
    -   [larutils v1\_00\_05](#larutils-v1_00_05)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_03_01/larsoft-v04_03_01.html)

Purpose
--------------------

Changes in development since v04\_03\_00

New features
------------------------------

-   uses cetbuildtools v4\_08\_01 for improved efficiency
-   nutools GENIEHelper now uses ifdh to fetch flow files
    -   this means that nutools now depends explicitly on ifdhc
    -   nutools and all products in the larsoft suite now support the noifdh qualifier
    -   OSX builds use the noifdh qualifier
    -   [SupportedPlatforms](/redmine/projects/ifdhc/wiki/SupportedPlatforms) for ifdhc

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

  --------------- ------------ ----------- -------------------------
  Product         Version      Qualifier   Notes
  nutools         v1\_09\_01   e7          new dependency on ifdhc
  cetbuildtools   v4\_08\_01               improved efficiency
  --------------- ------------ ----------- -------------------------

Change List
============================

larsoft v04\_03\_01
------------------------------------------

-   2015-03-18 Lynn Garren : larsoft v04\_03\_01 for larsoft v04\_03\_01
-   2015-03-18 Lynn Garren : update product version list

lareventdisplay v04\_03\_01
----------------------------------------------------------

-   2015-03-18 Lynn Garren : lareventdisplay v04\_03\_01 for larsoft v04\_03\_01
-   2015-03-17 Bruce Baller : comment out temporary code
-   2015-03-17 Bruce Baller : Merge branch ‘feature/fixfont’ into develop
-   2015-03-17 Bruce Baller : Improve legibility of ADC vs tick plot

larexamples v04\_03\_01
--------------------------------------------------

-   2015-03-18 Lynn Garren : larexamples v04\_03\_01 for larsoft v04\_03\_01

larpandora v04\_03\_01
------------------------------------------------

-   2015-03-18 Lynn Garren : larpandora v04\_03\_01 for larsoft v04\_03\_01

larana v04\_03\_01
----------------------------------------

-   2015-03-18 Lynn Garren : larana v04\_03\_01 for larsoft v04\_03\_01

larreco v04\_03\_01
------------------------------------------

-   2015-03-18 Lynn Garren : larreco v04\_03\_01 for larsoft v04\_03\_01
-   2015-03-16 Lynn Garren : Merge branch ‘release/v04\_03\_00’ into develop
-   2015-03-14 Sowjanya Gollapinni : Modify range based momentum calculator to return momentum in GeV to be consistent with the units like others
-   2015-03-12 Lynn Garren : larsoft v04\_02\_02
-   2015-03-12 Tingjun Yang : Loop over hits smartly, improve speed by x3.

larsim v04\_03\_01
----------------------------------------

-   2015-03-18 Lynn Garren : larsim v04\_03\_01 for larsoft v04\_03\_01

larevt v04\_03\_01
----------------------------------------

-   2015-03-18 Lynn Garren : larevt v04\_03\_01 for larsoft v04\_03\_01

lardata v04\_03\_01
------------------------------------------

-   2015-03-18 Lynn Garren : lardata v04\_03\_01 for larsoft v04\_03\_01

larcore v04\_03\_01
------------------------------------------

-   2015-03-18 Lynn Garren : larcore v04\_03\_01 for larsoft v04\_03\_01
-   2015-03-16 Lynn Garren : Merge branch ‘release/v04\_03\_00’ into develop
-   2015-03-13 Marc Mengel : gratuitous blank line change to check CI triggers
-   2015-03-12 Lynn Garren : larsoft v04\_02\_02
-   2015-03-12 Marc Mengel : blank line to force a push

larbatch v01\_04\_04
--------------------------------------------

larutils v1\_00\_05
------------------------------------------

-   2015-03-18 Lynn Garren : larutils v1\_00\_05 for larsoft v04\_03\_01
-   2015-03-17 Herbert Greenlee : Use mrb v1\_04\_02.
-   2015-03-17 Herbert Greenlee : Tweak output.
-   2015-03-13 Herbert Greenlee : Try using one core.
-   2015-03-13 Herbert Greenlee : Use getopt v1\_1\_6 only for macos.
-   2015-03-13 Herbert Greenlee : Use getopt v1\_1\_6.
-   2015-03-12 Lynn Garren : support art v1\_13\_01 builds
-   2015-03-12 Herbert Greenlee : More macos updates.
-   2015-03-12 Herbert Greenlee : Fix bug.
-   2015-03-12 Herbert Greenlee : Don’t need to fetch getopt.
-   2015-03-12 Herbert Greenlee : Do not let number of cores be less than one.
-   2015-03-12 Herbert Greenlee : Only fetch getopt v1\_1\_6 for macos.
-   2015-03-12 Herbert Greenlee : Use getopt v1\_1\_6.
-   2015-03-12 Lynn Garren : larsoft v04\_02\_02
-   2015-03-12 Herbert Greenlee : Remove special version of mrb.
