LArSoft v09\_27\_00\_03 Release Notes
=============================================================================

-   **Table of contents**
-   [LArSoft v09\_27\_00\_03 Release Notes](#LArSoft-v09_27_00_03-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Updates for experiment code](#Updates-for-experiment-code)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_27\_00\_03](#larsoft-v09_27_00_03)
    -   [lareventdisplay v09\_01\_14\_03](#lareventdisplay-v09_01_14_03)
    -   [larexamples v09\_01\_13\_03](#larexamples-v09_01_13_03)
    -   [larpandora v09\_07\_00\_03](#larpandora-v09_07_00_03)
    -   [larsimrad v09\_01\_13\_03](#larsimrad-v09_01_13_03)
    -   [larrecodnn v09\_08\_00\_03](#larrecodnn-v09_08_00_03)
    -   [larwirecell v09\_02\_10\_03](#larwirecell-v09_02_10_03)
    -   [larana v09\_02\_10\_03](#larana-v09_02_10_03)
    -   [larreco v09\_06\_10\_03](#larreco-v09_06_10_03)
    -   [larsim v09\_14\_02\_03](#larsim-v09_14_02_03)
    -   [larg4 v09\_03\_09\_03](#larg4-v09_03_09_03)
    -   [larevt v09\_02\_08\_03](#larevt-v09_02_08_03)
    -   [lardata v09\_02\_06\_03](#lardata-v09_02_06_03)
    -   [larcore v09\_02\_02\_03](#larcore-v09_02_02_03)
    -   [larpandoracontent v03\_24\_00\_03](#larpandoracontent-v03_24_00_03)
    -   [larsoftobj v09\_06\_01\_03](#larsoftobj-v09_06_01_03)
    -   [lardataobj v09\_01\_04\_03](#lardataobj-v09_01_04_03)
    -   [lardataalg v09\_04\_05\_03](#lardataalg-v09_04_05_03)
    -   [larcorealg v09\_01\_02\_03](#larcorealg-v09_01_02_03)
    -   [larcoreobj v09\_02\_01\_03](#larcoreobj-v09_02_01_03)
    -   [webevd v09\_05\_07\_03](#webevd-v09_05_07_03)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v09\_27\_00\_03](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_27_00_03/larsoft-v09_27_00_03.html)\
Download instructions for [just larsoftobj v09\_06\_01\_03](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_06_01_03/larsoftobj-v09_06_01_03.html)

Purpose
--------------------

-   **THIS IS A TEST RELEASE**
-   This is a test release with art v3\_09\_03.
    -   This release uses cetbuildtools 8
    -   All code used for this release is on temporary branch v09\_30\_00\_rc\_br
    -   mrb 5 **MUST** be used when working with this release
        -   setup -t mrb
-   This release is based off of larsoft v09\_27\_00

New features
------------------------------

-   See the art 3.09 [release notes](/redmine/projects/art/wiki/Series_309) and [breaking changes](/redmine/projects/art/wiki/309_breaking_changes)

Updates for experiment code
------------------------------------------------------------

-   necessary changes will be provided in feature/team\_for\_art\_v3\_09 branches
-   argoneutcode feature/team\_for\_art\_v3\_09
    -   CI tests [pass](https://dbweb8.fnal.gov:8443/LarCI/app/ns:ArgoNeuT/view_builds/index?offset=0&builds=lar_ci/12128&builds=)
    -   trigger --build-delay 0 --cert /tmp/x509up_u1147 --version ci_mrb5 --workflow argoneutcodestandalone_wf --revisions "argoneutcode@feature/team_for_art_v3_09" 

-   uboone suite feature/team\_for\_art\_v3\_09
    -   unit tests pass
-   SBN
    -   feature/team\_for\_art\_v3\_09 available for sbnanaobj, sbncode, sbnobj, and sbndaq\_artdaq\_core

Updated dependencies
----------------------------------------------

-   mrb v5\_15\_02 (NOT the default)
-   cetbuildtools v8\_14\_02
-   [ReleaseNotes09270001](ReleaseNotes09270001#Updated-dependencies)

Change List
============================

larsoft v09\_27\_00\_03
-------------------------------------------------

-   2021-08-07 Lynn Garren : moving argoneut libraries
-   2021-08-07 Lynn Garren : larsoft v09\_27\_00\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : larsoft v09\_27\_00\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : add nusimdata\_SimulationBase
-   2021-08-07 Lynn Garren : cetbuildtools v8\_14\_02

lareventdisplay v09\_01\_14\_03
-----------------------------------------------------------------

-   2021-08-07 Lynn Garren : lareventdisplay v09\_01\_14\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : lareventdisplay v09\_01\_14\_03 for larsoft v09\_27\_00\_03

larexamples v09\_01\_13\_03
---------------------------------------------------------

-   2021-08-07 Lynn Garren : larexamples v09\_01\_13\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : larexamples v09\_01\_13\_03 for larsoft v09\_27\_00\_03

larpandora v09\_07\_00\_03
-------------------------------------------------------

-   2021-08-07 Lynn Garren : larpandora v09\_07\_00\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : larpandora v09\_07\_00\_03 for larsoft v09\_27\_00\_03

larsimrad v09\_01\_13\_03
-----------------------------------------------------

-   2021-08-07 Lynn Garren : larsimrad v09\_01\_13\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : larsimrad v09\_01\_13\_03 for larsoft v09\_27\_00\_03

larrecodnn v09\_08\_00\_03
-------------------------------------------------------

-   2021-08-07 Lynn Garren : larrecodnn v09\_08\_00\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : larrecodnn v09\_08\_00\_03 for larsoft v09\_27\_00\_03

larwirecell v09\_02\_10\_03
---------------------------------------------------------

-   2021-08-07 Lynn Garren : larwirecell v09\_02\_10\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : larwirecell v09\_02\_10\_03 for larsoft v09\_27\_00\_03

larana v09\_02\_10\_03
-----------------------------------------------

-   2021-08-07 Lynn Garren : larana v09\_02\_10\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : larana v09\_02\_10\_03 for larsoft v09\_27\_00\_03

larreco v09\_06\_10\_03
-------------------------------------------------

-   2021-08-07 Lynn Garren : larreco v09\_06\_10\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : larreco v09\_06\_10\_03 for larsoft v09\_27\_00\_03

larsim v09\_14\_02\_03
-----------------------------------------------

-   2021-08-07 Lynn Garren : larsim v09\_14\_02\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : larsim v09\_14\_02\_03 for larsoft v09\_27\_00\_03

larg4 v09\_03\_09\_03
---------------------------------------------

-   2021-08-07 Lynn Garren : larg4 v09\_03\_09\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : larg4 v09\_03\_09\_03 for larsoft v09\_27\_00\_03

larevt v09\_02\_08\_03
-----------------------------------------------

-   2021-08-07 Lynn Garren : larevt v09\_02\_08\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : larevt v09\_02\_08\_03 for larsoft v09\_27\_00\_03

lardata v09\_02\_06\_03
-------------------------------------------------

-   2021-08-07 Lynn Garren : lardata v09\_02\_06\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : lardata v09\_02\_06\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : this code has been moved to argoneutcode in feature/team\_for\_art\_v3\_09
-   2021-08-07 Lynn Garren : move argoneut code into a subdirectory

larcore v09\_02\_02\_03
-------------------------------------------------

-   2021-08-07 Lynn Garren : larcore v09\_02\_02\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : larcore v09\_02\_02\_03 for larsoft v09\_27\_00\_03

larpandoracontent v03\_24\_00\_03
---------------------------------------------------------------------

-   2021-08-07 Lynn Garren : larpandoracontent v03\_24\_00\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : larpandoracontent v03\_24\_00\_03 for larsoft v09\_27\_00\_03

larsoftobj v09\_06\_01\_03
-------------------------------------------------------

-   2021-08-07 Lynn Garren : larsoftobj v09\_06\_01\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : larsoftobj v09\_06\_01\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : cetbuildtools v8\_14\_02

lardataobj v09\_01\_04\_03
-------------------------------------------------------

-   2021-08-07 Lynn Garren : lardataobj v09\_01\_04\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : lardataobj v09\_01\_04\_03 for larsoft v09\_27\_00\_03

lardataalg v09\_04\_05\_03
-------------------------------------------------------

-   2021-08-07 Lynn Garren : lardataalg v09\_04\_05\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : lardataalg v09\_04\_05\_03 for larsoft v09\_27\_00\_03

larcorealg v09\_01\_02\_03
-------------------------------------------------------

-   2021-08-07 Lynn Garren : larcorealg v09\_01\_02\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : larcorealg v09\_01\_02\_03 for larsoft v09\_27\_00\_03

larcoreobj v09\_02\_01\_03
-------------------------------------------------------

-   2021-08-07 Lynn Garren : larcoreobj v09\_02\_01\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : larcoreobj v09\_02\_01\_03 for larsoft v09\_27\_00\_03

webevd v09\_05\_07\_03
-----------------------------------------------

-   2021-08-07 Lynn Garren : webevd v09\_05\_07\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : webevd v09\_05\_07\_03 for larsoft v09\_27\_00\_03
