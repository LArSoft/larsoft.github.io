LArSoft v09\_27\_00\_01 Release Notes[¶](#LArSoft-v09_27_00_01-Release-Notes)
=============================================================================

-   **Table of contents**
-   [LArSoft v09\_27\_00\_01 Release Notes](#LArSoft-v09_27_00_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_27\_00\_01](#larsoft-v09_27_00_01)
    -   [lareventdisplay v09\_01\_14\_01](#lareventdisplay-v09_01_14_01)
    -   [larexamples v09\_01\_13\_01](#larexamples-v09_01_13_01)
    -   [larpandora v09\_07\_00\_01](#larpandora-v09_07_00_01)
    -   [larsimrad v09\_01\_13\_01](#larsimrad-v09_01_13_01)
    -   [larrecodnn v09\_08\_00\_01](#larrecodnn-v09_08_00_01)
    -   [larwirecell v09\_02\_10\_01](#larwirecell-v09_02_10_01)
    -   [larana v09\_02\_10\_01](#larana-v09_02_10_01)
    -   [larreco v09\_06\_10\_01](#larreco-v09_06_10_01)
    -   [larsim v09\_14\_02\_01](#larsim-v09_14_02_01)
    -   [larg4 v09\_03\_09\_01](#larg4-v09_03_09_01)
    -   [larevt v09\_02\_08\_01](#larevt-v09_02_08_01)
    -   [lardata v09\_02\_06\_01](#lardata-v09_02_06_01)
    -   [larcore v09\_02\_02\_01](#larcore-v09_02_02_01)
    -   [larpandoracontent v03\_24\_00](#larpandoracontent-v03_24_00)
    -   [larsoftobj v09\_06\_01](#larsoftobj-v09_06_01)
    -   [lardataobj v09\_01\_04](#lardataobj-v09_01_04)
    -   [lardataalg v09\_04\_05](#lardataalg-v09_04_05)
    -   [larcorealg v09\_01\_02](#larcorealg-v09_01_02)
    -   [larcoreobj v09\_02\_01](#larcoreobj-v09_02_01)
    -   [webevd v09\_05\_07](#webevd-v09_05_07)
    -   [larbatch v01\_56\_01](#larbatch-v01_56_01)
    -   [larutils v1\_28\_00](#larutils-v1_28_00)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v09\_27\_00\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_27_00_01/larsoft-v09_27_00_01.html)\
Download instructions for [just larsoftobj v09\_06\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_06_01/larsoftobj-v09_06_01.html)


Purpose[¶](#Purpose)
--------------------

-   **THIS IS A TEST RELEASE**
-   This is a test release with art v3\_09\_03.
    -   This release uses cetbuildtools 8
    -   All code used for this release is on temporary branch v09\_30\_00\_rc\_br
    -   mrb 5 **MUST** be used when working with this release
        -   setup -t mrb
-   experiment code will appear on feature/team\_for\_art309 branches
-   This release is based off of larsoft v09\_27\_00


New features[¶](#New-features)
------------------------------

-   See the art 3.09 [release notes](/redmine/projects/art/wiki/Series_309) and [breaking changes](/redmine/projects/art/wiki/309_breaking_changes)


Bug fixes[¶](#Bug-fixes)
------------------------


Updated dependencies[¶](#Updated-dependencies)
----------------------------------------------

-   MANY dependencies are updated. A few are listed here.
-   art v3\_09\_03 (s112)
-   art\_root\_io v1\_08\_03
-   boost v1\_75\_0
-   canvas\_root\_io v1\_09\_04
-   cetbuildtools v8\_12\_00
-   clhep v2\_4\_4\_1
-   ifdh\_art v2\_12\_04
-   mrb v5\_13\_02 (NOT the default)
-   nutools v3\_11\_04
-   python v3\_9\_2
-   root v6\_22\_08d


Change List[¶](#Change-List)
============================


larsoft v09\_27\_00\_01[¶](#larsoft-v09_27_00_01)
-------------------------------------------------

-   2021-07-28 Lynn Garren : larsoft v09\_27\_00\_01 for larsoft v09\_27\_00\_01
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-28 Lynn Garren : test versions
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : need hep\_hpc\_toolkit v0\_14\_01\_03
-   2021-07-27 Lynn Garren : larsoft v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : product versions
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-26 Lynn Garren : cetbuildtools v8\_11\_02
-   2021-07-26 Lynn Garren : product versions
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09\_30\_00\_rc\_br
-   2021-07-26 Lynn Garren : product updates


lareventdisplay v09\_01\_14\_01[¶](#lareventdisplay-v09_01_14_01)
-----------------------------------------------------------------

-   2021-07-28 Lynn Garren : lareventdisplay v09\_01\_14\_01 for larsoft v09\_27\_00\_01
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : lareventdisplay v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-27 Kyle Knoepfel : Update service-macro headers.
-   2021-07-26 Lynn Garren : nuevdb v1\_05\_04
-   2021-07-26 Lynn Garren : getManyByType
-   2021-07-26 Lynn Garren : find eigen headers


larexamples v09\_01\_13\_01[¶](#larexamples-v09_01_13_01)
---------------------------------------------------------

-   2021-07-28 Lynn Garren : larexamples v09\_01\_13\_01 for larsoft v09\_27\_00\_01
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larexamples v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-27 Kyle Knoepfel : Update service-macro headers.
-   2021-07-27 Kyle Knoepfel : Add missing BOOST\_TEST\_MODULE definition.
-   2021-07-26 Lynn Garren : cetbuildtools v8\_11\_02
-   2021-07-26 Lynn Garren : find packages


larpandora v09\_07\_00\_01[¶](#larpandora-v09_07_00_01)
-------------------------------------------------------

-   2021-07-28 Lynn Garren : fix library name
-   2021-07-28 Lynn Garren : cleanup - for now at least
-   2021-07-28 Lynn Garren : library names
-   2021-07-28 Lynn Garren : larpandora v09\_07\_00\_01 for larsoft v09\_27\_00\_01
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larpandora v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-26 Lynn Garren : cetbuildtools v8\_11\_02
-   2021-07-26 Lynn Garren : add missing headers
-   2021-07-26 Lynn Garren : find packages and headers
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09\_30\_00\_rc\_br
-   2021-07-26 Lynn Garren : fix exclude
-   2021-06-25 Lynn Garren : spell it right
-   2021-06-25 Lynn Garren : make sure we do not try to build the tool twice


larsimrad v09\_01\_13\_01[¶](#larsimrad-v09_01_13_01)
-----------------------------------------------------

-   2021-07-28 Lynn Garren : larsimrad v09\_01\_13\_01 for larsoft v09\_27\_00\_01
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larsimrad v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-26 Lynn Garren : cetbuildtools v8\_11\_02
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09\_30\_00\_rc\_br
-   2021-07-26 Lynn Garren : bxdecay0 v1\_0\_9
-   2021-07-26 Lynn Garren : coping with gsl issues


larrecodnn v09\_08\_00\_01[¶](#larrecodnn-v09_08_00_01)
-------------------------------------------------------

-   2021-07-28 Lynn Garren : larrecodnn v09\_08\_00\_01 for larsoft v09\_27\_00\_01
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larrecodnn v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-26 Lynn Garren : cetbuildtools v8\_11\_02
-   2021-07-26 Lynn Garren : getManyByType
-   2021-07-26 Lynn Garren : find packages
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09\_30\_00\_rc\_br
-   2021-07-26 Lynn Garren : triton v2\_3\_0d


larwirecell v09\_02\_10\_01[¶](#larwirecell-v09_02_10_01)
---------------------------------------------------------

-   2021-07-28 Lynn Garren : larwirecell v09\_02\_10\_01 for larsoft v09\_27\_00\_01
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larwirecell v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-26 Lynn Garren : wirecell v0\_14\_0j
-   2021-07-26 Lynn Garren : add missing headers
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09\_30\_00\_rc\_br
-   2021-07-15 Lynn Garren : find eigen headers
-   2021-07-15 Lynn Garren : wirecell v0\_15\_0


larana v09\_02\_10\_01[¶](#larana-v09_02_10_01)
-----------------------------------------------

-   2021-07-28 Lynn Garren : larana v09\_02\_10\_01 for larsoft v09\_27\_00\_01
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larana v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-27 Kyle Knoepfel : Update service-macro headers.
-   2021-07-26 Lynn Garren : for art 3.09


larreco v09\_06\_10\_01[¶](#larreco-v09_06_10_01)
-------------------------------------------------

-   2021-07-28 Lynn Garren : larreco v09\_06\_10\_01 for larsoft v09\_27\_00\_01
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larreco v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-27 Kyle Knoepfel : Update service-macro headers.
-   2021-07-27 Kyle Knoepfel : Add missing header.
-   2021-07-26 Lynn Garren : cetbuildtools v8\_11\_02
-   2021-07-26 Lynn Garren : add missing headers
-   2021-07-26 Lynn Garren : find eigen headers


larsim v09\_14\_02\_01[¶](#larsim-v09_14_02_01)
-----------------------------------------------

-   2021-07-28 Lynn Garren : larsim v09\_14\_02\_01 for larsoft v09\_27\_00\_01
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larsim v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-27 Kyle Knoepfel : Update service-macro headers.
-   2021-07-26 Lynn Garren : nutools v3\_11\_04
-   2021-07-26 Lynn Garren : add missing header
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09\_30\_00\_rc\_br
-   2021-07-20 Lynn Garren : xml2 problem
-   2021-07-20 Kyle Knoepfel : More tweaks to support art 3.09
-   2021-07-19 Lynn Garren : missing headers
-   2021-07-19 Lynn Garren : nugen v1\_14\_03
-   2021-07-19 Lynn Garren : fixes for art 3.09


larg4 v09\_03\_09\_01[¶](#larg4-v09_03_09_01)
---------------------------------------------

-   2021-07-28 Lynn Garren : update library names
-   2021-07-28 Lynn Garren : find package
-   2021-07-28 Lynn Garren : larg4 v09\_03\_09\_01 for larsoft v09\_27\_00\_01
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larg4 v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-27 Kyle Knoepfel : Update service-macro headers.
-   2021-07-26 Lynn Garren : artg4tk v10\_03\_00 and nug4 v1\_09\_04
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09\_30\_00\_rc\_br
-   2021-07-19 Kyle Knoepfel : Adjust getMany call.
-   2021-07-19 Lynn Garren : nug4 v1\_09\_03
-   2021-07-19 Lynn Garren : replace getManyByType


larevt v09\_02\_08\_01[¶](#larevt-v09_02_08_01)
-----------------------------------------------

-   2021-07-28 Lynn Garren : larevt v09\_02\_08\_01 for larsoft v09\_27\_00\_01
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larevt v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-27 Kyle Knoepfel : Update service-macro headers.
-   2021-07-26 Lynn Garren : cetbuildtools v8\_11\_02
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09\_30\_00\_rc\_br
-   2021-07-14 Lynn Garren : cetbuildtools v8\_10\_01
-   2021-07-14 Lynn Garren : remove obsolete header
-   2021-07-14 Lynn Garren : find headers


lardata v09\_02\_06\_01[¶](#lardata-v09_02_06_01)
-------------------------------------------------

-   2021-07-28 Lynn Garren : remove unused library
-   2021-07-28 Lynn Garren : library names
-   2021-07-28 Lynn Garren : lardata v09\_02\_06\_01 for larsoft v09\_27\_00\_01
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : lardata v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-27 Kyle Knoepfel : Update service-macro headers.
-   2021-07-26 Lynn Garren : cetbuildtools v8\_11\_02
-   2021-07-26 Lynn Garren : add Assns.h
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09\_30\_00\_rc\_br
-   2021-07-14 Lynn Garren : no semi colon here
-   2021-07-14 Kyle Knoepfel : Re-enable (and simplify) RangeForWrapper test
-   2021-07-14 Lynn Garren : adding parentheses
-   2021-07-14 Lynn Garren : add missing header
-   2021-07-14 Lynn Garren : add missing header
-   2021-07-14 Lynn Garren : temporarily disable RangeForWrapper\_test
-   2021-07-14 Lynn Garren : cetbuildtools v8\_10\_01
-   2021-07-14 Lynn Garren : for art 3.09


larcore v09\_02\_02\_01[¶](#larcore-v09_02_02_01)
-------------------------------------------------

-   2021-07-28 Lynn Garren : fix build
-   2021-07-28 Lynn Garren : larcore v09\_02\_02\_01 for larsoft v09\_27\_00\_01
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larcore v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-27 Kyle Knoepfel : Update service-macro headers.
-   2021-07-26 Lynn Garren : art\_root\_io v1\_08\_03
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09\_30\_00\_rc\_br
-   2021-07-14 Lynn Garren : cetbuildtools v8\_10\_01
-   2021-07-14 Lynn Garren : add cetlib
-   2021-07-14 Lynn Garren : for art 3.09
-   2021-07-14 Lynn Garren : for art 3.09


larpandoracontent v03\_24\_00[¶](#larpandoracontent-v03_24_00)
--------------------------------------------------------------


larsoftobj v09\_06\_01[¶](#larsoftobj-v09_06_01)
------------------------------------------------


lardataobj v09\_01\_04[¶](#lardataobj-v09_01_04)
------------------------------------------------


lardataalg v09\_04\_05[¶](#lardataalg-v09_04_05)
------------------------------------------------


larcorealg v09\_01\_02[¶](#larcorealg-v09_01_02)
------------------------------------------------


larcoreobj v09\_02\_01[¶](#larcoreobj-v09_02_01)
------------------------------------------------


webevd v09\_05\_07[¶](#webevd-v09_05_07)
----------------------------------------


larbatch v01\_56\_01[¶](#larbatch-v01_56_01)
--------------------------------------------


larutils v1\_28\_00[¶](#larutils-v1_28_00)
------------------------------------------
