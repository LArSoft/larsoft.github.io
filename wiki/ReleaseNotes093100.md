LArSoft v09\_31\_00 Release Notes(#LArSoft-v09_31_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v09\_31\_00 Release Notes](#LArSoft-v09_31_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Updates for experiment code](#Updates-for-experiment-code)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_31\_00](#larsoft-v09_31_00)
    -   [lareventdisplay v09\_02\_00](#lareventdisplay-v09_02_00)
    -   [larexamples v09\_02\_00](#larexamples-v09_02_00)
    -   [larpandora v09\_09\_00](#larpandora-v09_09_00)
    -   [larsimrad v09\_02\_00](#larsimrad-v09_02_00)
    -   [larrecodnn v09\_09\_00](#larrecodnn-v09_09_00)
    -   [larwirecell v09\_04\_00](#larwirecell-v09_04_00)
    -   [larana v09\_03\_00](#larana-v09_03_00)
    -   [larreco v09\_07\_00](#larreco-v09_07_00)
    -   [larsim v09\_15\_00](#larsim-v09_15_00)
    -   [larg4 v09\_05\_00](#larg4-v09_05_00)
    -   [larevt v09\_03\_00](#larevt-v09_03_00)
    -   [lardata v09\_03\_00](#lardata-v09_03_00)
    -   [larcore v09\_03\_00](#larcore-v09_03_00)
    -   [larpandoracontent v03\_25\_01](#larpandoracontent-v03_25_01)
    -   [larsoftobj v09\_10\_00](#larsoftobj-v09_10_00)
    -   [lardataobj v09\_03\_00](#lardataobj-v09_03_00)
    -   [lardataalg v09\_06\_00](#lardataalg-v09_06_00)
    -   [larcorealg v09\_03\_00](#larcorealg-v09_03_00)
    -   [larcoreobj v09\_03\_00](#larcoreobj-v09_03_00)
    -   [webevd v09\_06\_00](#webevd-v09_06_00)
    -   [larbatch v01\_56\_01](#larbatch-v01_56_01)
    -   [larutils v1\_28\_02](#larutils-v1_28_02)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v09\_31\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_31_00/larsoft-v09_31_00.html)\
Download instructions for [just larsoftobj v09\_10\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_10_00/larsoftobj-v09_10_00.html)

Purpose(#Purpose)
--------------------

-   art 3.09.03
-   See the art 3.09 [release notes](/redmine/projects/art/wiki/Series_309) and [breaking changes](/redmine/projects/art/wiki/309_breaking_changes)
-   Also see the talks at the [Sept. 21, 2021 Coordination Meeting](https://indico.fnal.gov/event/51092/)
    -   [LArSoft migration to art 3.09](https://indico.fnal.gov/event/51092/contributions/223975/attachments/147368/188807/2021-09-21.pdf)
    -   [Using cetbuildtools 8 and mrb 5](https://indico.fnal.gov/event/51092/contributions/223976/attachments/147413/188910/Mrb5Cetbuildtools8_2021-09-21.pdf)
    -   [Tips and tricks for LArSoft with art 3.09](https://indico.fnal.gov/event/51092/contributions/223977/attachments/147379/188828/Tips-and-Tricks.pdf)

New features(#New-features)
------------------------------

-   mrb 5 and cetbuildtools 8 **MUST** be used when working with this release
    -   mrb 5 is now the default
    -   To use mrb 4 with an older release, “setup mrb -o”

Updates for experiment code(#Updates-for-experiment-code)
------------------------------------------------------------

-   **necessary changes are provided in feature/team\_for\_art\_v3\_09 branches**
    -   You will find required changes in both code and CMakeLists.txt files
-   argoneutcode feature/team\_for\_art\_v3\_09
-   uboone suite feature/team\_for\_art\_v3\_09
-   DUNE
    -   feature/team\_for\_art\_v3\_09 available for dunetpc, duneutil, and protoduneana
-   SBN
    -   feature/team\_for\_art\_v3\_09 available for sbnanaobj, sbncode, sbnobj, and sbndaq\_artdaq\_core
-   ICARUS
    -   feature/team\_for\_art\_v3\_09 available for icarusalg, icaruscode, icarus\_signal\_processing, and icarusutil
-   SBND
    -   feature/team\_for\_art\_v3\_09 available for sbndcode and sbndutil

Updated dependencies(#Updated-dependencies)
----------------------------------------------

-   mrb v5\_18\_01
-   cetbuildtools v8\_17\_03

-   MANY dependencies are updated. A few are listed here.
-   art v3\_09\_03 (s112)
-   art\_root\_io v1\_08\_03
-   boost v1\_75\_0
-   canvas\_root\_io v1\_09\_04
-   clhep v2\_4\_4\_1
-   ifdh\_art v2\_12\_04
-   nutools v3\_11\_04
-   python v3\_9\_2
-   root v6\_22\_08d
-   valgrind v3\_17\_0

Change List(#Change-List)
============================

larsoft v09\_31\_00(#larsoft-v09_31_00)
------------------------------------------

-   2021-09-21 Lynn Garren : larsoft v09\_31\_00 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : larsoft v09\_31\_00 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : product versions
-   2021-09-21 Lynn Garren : using the release number
-   2021-09-21 Lynn Garren : Merge branch ‘v09\_30\_00\_rc\_br’ into release/v09\_31\_00
-   2021-09-21 Lynn Garren : pandora, tensorflow, marley, etc.
-   2021-09-21 Lynn Garren : GeometryTestLib, SQLITE, skip cet\_find\_library
-   2021-09-20 Lynn Garren : more libraries
-   2021-09-20 Lynn Garren : remove verbosity
-   2021-09-20 Lynn Garren : cry
-   2021-09-20 Lynn Garren : ifdh, xml, dk2nu
-   2021-09-20 Lynn Garren : genie
-   2021-09-20 Lynn Garren : add G4 and others
-   2021-08-25 Lynn Garren : larsoft v09\_28\_02\_01 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : larsoft v09\_28\_02\_01 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : product versions
-   2021-08-25 Lynn Garren : Merge branch ‘master’ into v09\_30\_00\_rc\_br
-   2021-08-20 Lynn Garren : for nurandom v1\_07\_05
-   2021-08-19 Lynn Garren : wirecell v0\_16\_0
-   2021-08-16 Lynn Garren : larsoft v09\_27\_00\_05 for larsoft v09\_27\_00\_05
-   2021-08-16 Lynn Garren : larsoft v09\_27\_00\_05 for larsoft v09\_27\_00\_05
-   2021-08-16 Lynn Garren : wirecell v0\_15\_0 and jsonnet v0\_17\_0
-   2021-08-10 Lynn Garren : product versions
-   2021-08-10 Lynn Garren : larsoft v09\_27\_00\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : larsoft v09\_27\_00\_04 for larsoft v09\_27\_00\_04
-   2021-08-07 Lynn Garren : moving argoneut libraries
-   2021-08-07 Lynn Garren : larsoft v09\_27\_00\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : larsoft v09\_27\_00\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : add nusimdata\_SimulationBase
-   2021-08-07 Lynn Garren : cetbuildtools v8\_14\_02
-   2021-08-04 Lynn Garren : larsoft v09\_27\_00\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : larsoft v09\_27\_00\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : cetbuildtools v8\_13\_03
-   2021-08-03 Lynn Garren : cleanup and provide cetbuildtools
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
-   2021-08-02 Kyle Knoepfel : Alphabetized replacements for sanity; and a couple corrections.
-   2021-07-28 Lynn Garren : a couple more
-   2021-07-28 Lynn Garren : adding some root libraries
-   2021-07-28 Lynn Garren : updating library names - incomplete
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

lareventdisplay v09\_02\_00(#lareventdisplay-v09_02_00)
----------------------------------------------------------

-   2021-09-21 Lynn Garren : lareventdisplay v09\_02\_00 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : lareventdisplay v09\_02\_00 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : Merge branch ‘v09\_30\_00\_rc\_br’ into release/v09\_31\_00
-   2021-08-25 Lynn Garren : lareventdisplay v09\_01\_16\_01 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : lareventdisplay v09\_01\_16\_01 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : Merge branch ‘master’ into v09\_30\_00\_rc\_br
-   2021-08-10 Lynn Garren : lareventdisplay v09\_01\_14\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : lareventdisplay v09\_01\_14\_04 for larsoft v09\_27\_00\_04
-   2021-08-07 Lynn Garren : lareventdisplay v09\_01\_14\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : lareventdisplay v09\_01\_14\_03 for larsoft v09\_27\_00\_03
-   2021-08-04 Lynn Garren : lareventdisplay v09\_01\_14\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : lareventdisplay v09\_01\_14\_02 for larsoft v09\_27\_00\_02
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
-   2021-07-28 Lynn Garren : update library names
-   2021-07-28 Lynn Garren : lareventdisplay v09\_01\_14\_01 for larsoft v09\_27\_00\_01
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : lareventdisplay v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-27 Kyle Knoepfel : Update service-macro headers.
-   2021-07-26 Lynn Garren : nuevdb v1\_05\_04
-   2021-07-26 Lynn Garren : getManyByType
-   2021-07-26 Lynn Garren : find eigen headers

larexamples v09\_02\_00(#larexamples-v09_02_00)
--------------------------------------------------

-   2021-09-21 Lynn Garren : larexamples v09\_02\_00 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : larexamples v09\_02\_00 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : Merge branch ‘v09\_30\_00\_rc\_br’ into release/v09\_31\_00
-   2021-08-25 Lynn Garren : larexamples v09\_01\_15\_01 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : larexamples v09\_01\_15\_01 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : Merge branch ‘master’ into v09\_30\_00\_rc\_br
-   2021-08-10 Lynn Garren : larexamples v09\_01\_13\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : larexamples v09\_01\_13\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : add missing header
-   2021-08-07 Lynn Garren : larexamples v09\_01\_13\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : larexamples v09\_01\_13\_03 for larsoft v09\_27\_00\_03
-   2021-08-04 Lynn Garren : larexamples v09\_01\_13\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : larexamples v09\_01\_13\_02 for larsoft v09\_27\_00\_02
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
-   2021-07-29 Kyle Knoepfel : Fix typo
-   2021-07-28 Lynn Garren : update library names
-   2021-07-28 Lynn Garren : larexamples v09\_01\_13\_01 for larsoft v09\_27\_00\_01
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larexamples v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-27 Kyle Knoepfel : Update service-macro headers.
-   2021-07-27 Kyle Knoepfel : Add missing BOOST\_TEST\_MODULE definition.
-   2021-07-26 Lynn Garren : cetbuildtools v8\_11\_02
-   2021-07-26 Lynn Garren : find packages

larpandora v09\_09\_00(#larpandora-v09_09_00)
------------------------------------------------

-   2021-09-21 Lynn Garren : larpandora v09\_09\_00 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : larpandora v09\_09\_00 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : Merge branch ‘v09\_30\_00\_rc\_br’ into release/v09\_31\_00
-   2021-08-25 Lynn Garren : larpandora v09\_07\_02\_01 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : larpandora v09\_07\_02\_01 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : Merge branch ‘master’ into v09\_30\_00\_rc\_br
-   2021-08-10 Lynn Garren : larpandora v09\_07\_00\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : larpandora v09\_07\_00\_04 for larsoft v09\_27\_00\_04
-   2021-08-07 Lynn Garren : larpandora v09\_07\_00\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : larpandora v09\_07\_00\_03 for larsoft v09\_27\_00\_03
-   2021-08-04 Lynn Garren : larpandora v09\_07\_00\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : larpandora v09\_07\_00\_02 for larsoft v09\_27\_00\_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
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

larsimrad v09\_02\_00(#larsimrad-v09_02_00)
----------------------------------------------

-   2021-09-21 Lynn Garren : larsimrad v09\_02\_00 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : larsimrad v09\_02\_00 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : Merge branch ‘v09\_30\_00\_rc\_br’ into release/v09\_31\_00
-   2021-08-25 Lynn Garren : larsimrad v09\_01\_15\_01 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : larsimrad v09\_01\_15\_01 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : Merge branch ‘master’ into v09\_30\_00\_rc\_br
-   2021-08-10 Lynn Garren : larsimrad v09\_01\_13\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : larsimrad v09\_01\_13\_04 for larsoft v09\_27\_00\_04
-   2021-08-07 Lynn Garren : larsimrad v09\_01\_13\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : larsimrad v09\_01\_13\_03 for larsoft v09\_27\_00\_03
-   2021-08-04 Lynn Garren : larsimrad v09\_01\_13\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : larsimrad v09\_01\_13\_02 for larsoft v09\_27\_00\_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
-   2021-07-28 Lynn Garren : update library names
-   2021-07-28 Lynn Garren : larsimrad v09\_01\_13\_01 for larsoft v09\_27\_00\_01
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larsimrad v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-26 Lynn Garren : cetbuildtools v8\_11\_02
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09\_30\_00\_rc\_br
-   2021-07-26 Lynn Garren : bxdecay0 v1\_0\_9
-   2021-07-26 Lynn Garren : coping with gsl issues

larrecodnn v09\_09\_00(#larrecodnn-v09_09_00)
------------------------------------------------

-   2021-09-21 Lynn Garren : larrecodnn v09\_09\_00 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : larrecodnn v09\_09\_00 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : Merge branch ‘v09\_30\_00\_rc\_br’ into release/v09\_31\_00
-   2021-08-25 Lynn Garren : larrecodnn v09\_08\_02\_01 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : larrecodnn v09\_08\_02\_01 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : Merge branch ‘master’ into v09\_30\_00\_rc\_br
-   2021-08-10 Lynn Garren : larrecodnn v09\_08\_00\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : larrecodnn v09\_08\_00\_04 for larsoft v09\_27\_00\_04
-   2021-08-07 Lynn Garren : larrecodnn v09\_08\_00\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : larrecodnn v09\_08\_00\_03 for larsoft v09\_27\_00\_03
-   2021-08-04 Lynn Garren : larrecodnn v09\_08\_00\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : larrecodnn v09\_08\_00\_02 for larsoft v09\_27\_00\_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
-   2021-07-28 Lynn Garren : update library names
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

larwirecell v09\_04\_00(#larwirecell-v09_04_00)
--------------------------------------------------

-   2021-09-21 Lynn Garren : larwirecell v09\_04\_00 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : larwirecell v09\_04\_00 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : Merge branch ‘v09\_30\_00\_rc\_br’ into release/v09\_31\_00
-   2021-08-25 Lynn Garren : larwirecell v09\_02\_13\_01 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : larwirecell v09\_02\_13\_01 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : Merge branch ‘master’ into v09\_30\_00\_rc\_br
-   2021-08-19 Lynn Garren : wirecell v0\_16\_0
-   2021-08-16 Lynn Garren : larwirecell v09\_02\_10\_05 for larsoft v09\_27\_00\_05
-   2021-08-16 Lynn Garren : larwirecell v09\_02\_10\_05 for larsoft v09\_27\_00\_05
-   2021-08-10 Lynn Garren : larwirecell v09\_02\_10\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : larwirecell v09\_02\_10\_04 for larsoft v09\_27\_00\_04
-   2021-08-07 Lynn Garren : larwirecell v09\_02\_10\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : larwirecell v09\_02\_10\_03 for larsoft v09\_27\_00\_03
-   2021-08-04 Lynn Garren : larwirecell v09\_02\_10\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : larwirecell v09\_02\_10\_02 for larsoft v09\_27\_00\_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
-   2021-08-02 Lynn Garren : explicit fcldir definition
-   2021-07-28 Lynn Garren : update library names
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

larana v09\_03\_00(#larana-v09_03_00)
----------------------------------------

-   2021-09-21 Lynn Garren : larana v09\_03\_00 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : larana v09\_03\_00 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : Merge branch ‘v09\_30\_00\_rc\_br’ into release/v09\_31\_00
-   2021-08-25 Lynn Garren : larana v09\_02\_12\_01 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : larana v09\_02\_12\_01 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : Merge branch ‘master’ into v09\_30\_00\_rc\_br
-   2021-08-10 Lynn Garren : larana v09\_02\_10\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : larana v09\_02\_10\_04 for larsoft v09\_27\_00\_04
-   2021-08-07 Lynn Garren : larana v09\_02\_10\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : larana v09\_02\_10\_03 for larsoft v09\_27\_00\_03
-   2021-08-04 Lynn Garren : larana v09\_02\_10\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : larana v09\_02\_10\_02 for larsoft v09\_27\_00\_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
-   2021-07-28 Lynn Garren : update library names
-   2021-07-28 Lynn Garren : larana v09\_02\_10\_01 for larsoft v09\_27\_00\_01
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larana v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-27 Kyle Knoepfel : Update service-macro headers.
-   2021-07-26 Lynn Garren : for art 3.09

larreco v09\_07\_00(#larreco-v09_07_00)
------------------------------------------

-   2021-09-21 Lynn Garren : larreco v09\_07\_00 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : larreco v09\_07\_00 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : Merge branch ‘v09\_30\_00\_rc\_br’ into release/v09\_31\_00
-   2021-08-25 Lynn Garren : larreco v09\_06\_12\_01 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : larreco v09\_06\_12\_01 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : Merge branch ‘master’ into v09\_30\_00\_rc\_br
-   2021-08-10 Lynn Garren : larreco v09\_06\_10\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : larreco v09\_06\_10\_04 for larsoft v09\_27\_00\_04
-   2021-08-07 Lynn Garren : larreco v09\_06\_10\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : larreco v09\_06\_10\_03 for larsoft v09\_27\_00\_03
-   2021-08-04 Lynn Garren : larreco v09\_06\_10\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : larreco v09\_06\_10\_02 for larsoft v09\_27\_00\_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
-   2021-07-28 Lynn Garren : update library names
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

larsim v09\_15\_00(#larsim-v09_15_00)
----------------------------------------

-   2021-09-21 Lynn Garren : larsim v09\_15\_00 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : larsim v09\_15\_00 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : Merge branch ‘v09\_30\_00\_rc\_br’ into release/v09\_31\_00
-   2021-08-25 Lynn Garren : larsim v09\_14\_04\_01 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : larsim v09\_14\_04\_01 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : Merge branch ‘master’ into v09\_30\_00\_rc\_br
-   2021-08-20 Lynn Garren : use nurandom v1\_07\_05
-   2021-08-10 Lynn Garren : larsim v09\_14\_02\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : larsim v09\_14\_02\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : add missing header
-   2021-08-07 Lynn Garren : larsim v09\_14\_02\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : larsim v09\_14\_02\_03 for larsoft v09\_27\_00\_03
-   2021-08-04 Lynn Garren : larsim v09\_14\_02\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : larsim v09\_14\_02\_02 for larsoft v09\_27\_00\_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
-   2021-07-28 Lynn Garren : update library names
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

larg4 v09\_05\_00(#larg4-v09_05_00)
--------------------------------------

-   2021-09-21 Lynn Garren : larg4 v09\_05\_00 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : larg4 v09\_05\_00 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : add missing header
-   2021-09-21 Lynn Garren : Merge branch ‘v09\_30\_00\_rc\_br’ into release/v09\_31\_00
-   2021-08-25 Lynn Garren : larg4 v09\_03\_11\_01 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : larg4 v09\_03\_11\_01 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : Merge branch ‘master’ into v09\_30\_00\_rc\_br
-   2021-08-20 Lynn Garren : use nurandom v1\_07\_05
-   2021-08-10 Lynn Garren : larg4 v09\_03\_09\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : larg4 v09\_03\_09\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : add missing header
-   2021-08-07 Lynn Garren : larg4 v09\_03\_09\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : larg4 v09\_03\_09\_03 for larsoft v09\_27\_00\_03
-   2021-08-04 Lynn Garren : larg4 v09\_03\_09\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : larg4 v09\_03\_09\_02 for larsoft v09\_27\_00\_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
-   2021-07-30 Kyle Knoepfel : Adjust library dependencies.
-   2021-07-28 Lynn Garren : update library names
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

larevt v09\_03\_00(#larevt-v09_03_00)
----------------------------------------

-   2021-09-21 Lynn Garren : larevt v09\_03\_00 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : larevt v09\_03\_00 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : Merge branch ‘v09\_30\_00\_rc\_br’ into release/v09\_31\_00
-   2021-08-25 Lynn Garren : larevt v09\_02\_10\_01 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : larevt v09\_02\_10\_01 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : Merge branch ‘master’ into v09\_30\_00\_rc\_br
-   2021-08-10 Lynn Garren : larevt v09\_02\_08\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : larevt v09\_02\_08\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : add missing header
-   2021-08-07 Lynn Garren : larevt v09\_02\_08\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : larevt v09\_02\_08\_03 for larsoft v09\_27\_00\_03
-   2021-08-04 Lynn Garren : larevt v09\_02\_08\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : larevt v09\_02\_08\_02 for larsoft v09\_27\_00\_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
-   2021-07-28 Lynn Garren : update library names
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

lardata v09\_03\_00(#lardata-v09_03_00)
------------------------------------------

-   2021-09-21 Lynn Garren : lardata v09\_03\_00 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : lardata v09\_03\_00 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : Merge branch ‘v09\_30\_00\_rc\_br’ into release/v09\_31\_00
-   2021-08-25 Lynn Garren : lardata v09\_02\_08\_01 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : lardata v09\_02\_08\_01 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : Merge branch ‘master’ into v09\_30\_00\_rc\_br
-   2021-08-10 Lynn Garren : lardata v09\_02\_06\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : lardata v09\_02\_06\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : add missing header
-   2021-08-07 Lynn Garren : lardata v09\_02\_06\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : lardata v09\_02\_06\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : this code has been moved to argoneutcode in feature/team\_for\_art\_v3\_09
-   2021-08-07 Lynn Garren : move argoneut code into a subdirectory
-   2021-08-04 Lynn Garren : lardata v09\_02\_06\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : lardata v09\_02\_06\_02 for larsoft v09\_27\_00\_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
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

larcore v09\_03\_00(#larcore-v09_03_00)
------------------------------------------

-   2021-09-21 Lynn Garren : larcore v09\_03\_00 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : larcore v09\_03\_00 for larsoft v09\_31\_00
-   2021-08-25 Lynn Garren : larcore v09\_02\_04\_01 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : larcore v09\_02\_04\_01 for larsoft v09\_28\_02\_01
-   2021-08-24 Lynn Garren : Merge branch ‘master’ into v09\_30\_00\_rc\_br
-   2021-08-10 Lynn Garren : larcore v09\_02\_02\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : larcore v09\_02\_02\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : add missing header
-   2021-08-07 Lynn Garren : larcore v09\_02\_02\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : larcore v09\_02\_02\_03 for larsoft v09\_27\_00\_03
-   2021-08-04 Lynn Garren : larcore v09\_02\_02\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : larcore v09\_02\_02\_02 for larsoft v09\_27\_00\_02
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
-   2021-07-28 Lynn Garren : update library names
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

larpandoracontent v03\_25\_01(#larpandoracontent-v03_25_01)
--------------------------------------------------------------

-   2021-09-21 Lynn Garren : larpandoracontent v03\_25\_01 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : larpandoracontent v03\_25\_01 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : Merge branch ‘v09\_30\_00\_rc\_br’ into release/v09\_31\_00
-   2021-08-25 Lynn Garren : larpandoracontent v03\_24\_02\_01 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : larpandoracontent v03\_24\_02\_01 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : Merge branch ‘master’ into v09\_30\_00\_rc\_br
-   2021-08-10 Lynn Garren : larpandoracontent v03\_24\_00\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : larpandoracontent v03\_24\_00\_04 for larsoft v09\_27\_00\_04
-   2021-08-07 Lynn Garren : larpandoracontent v03\_24\_00\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : larpandoracontent v03\_24\_00\_03 for larsoft v09\_27\_00\_03
-   2021-08-04 Lynn Garren : larpandoracontent v03\_24\_00\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : larpandoracontent v03\_24\_00\_02 for larsoft v09\_27\_00\_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
-   2021-07-28 Lynn Garren : larpandoracontent v03\_24\_00\_01 for larsoft v09\_27\_00\_01
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larpandoracontent v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-26 Lynn Garren : pandora v03\_16\_00f
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09\_30\_00\_rc\_br
-   2021-07-26 Lynn Garren : libtorch v1\_6\_0d

larsoftobj v09\_10\_00(#larsoftobj-v09_10_00)
------------------------------------------------

-   2021-09-21 Lynn Garren : larsoftobj v09\_10\_00 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : larsoftobj v09\_10\_00 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : product versions
-   2021-09-21 Lynn Garren : Merge branch ‘v09\_30\_00\_rc\_br’ into release/v09\_31\_00
-   2021-08-25 Lynn Garren : larsoftobj v09\_07\_01\_01 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : larsoftobj v09\_07\_01\_01 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : product versions
-   2021-08-25 Lynn Garren : Merge branch ‘master’ into v09\_30\_00\_rc\_br
-   2021-08-07 Lynn Garren : larsoftobj v09\_06\_01\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : larsoftobj v09\_06\_01\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : cetbuildtools v8\_14\_02
-   2021-08-04 Lynn Garren : larsoftobj v09\_06\_01\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : larsoftobj v09\_06\_01\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : cetbuildtools v8\_13\_03
-   2021-08-03 Lynn Garren : cleanup and provide cetbuildtools
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-27 Lynn Garren : larsoftobj v09\_06\_01\_01 for larsoft v09\_06\_01\_01
-   2021-07-27 Lynn Garren : versions
-   2021-07-27 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larsoftobj v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : product versions
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-26 Lynn Garren : gallery v1\_18\_04
-   2021-07-26 Lynn Garren : product versions
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09\_30\_00\_rc\_br
-   2021-07-12 Lynn Garren : v09\_30\_00\_rc0
-   2021-07-12 Lynn Garren : v09\_30\_00\_rc0
-   2021-07-12 Lynn Garren : hub v2\_14\_2
-   2021-07-09 Lynn Garren : Merge branch ‘develop’ into v09\_30\_00\_rc\_br
-   2021-07-09 Lynn Garren : for root v6\_22\_08c

lardataobj v09\_03\_00(#lardataobj-v09_03_00)
------------------------------------------------

-   2021-09-21 Lynn Garren : lardataobj v09\_03\_00 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : lardataobj v09\_03\_00 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : Merge branch ‘v09\_30\_00\_rc\_br’ into release/v09\_31\_00
-   2021-08-25 Lynn Garren : lardataobj v09\_01\_06\_01 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : lardataobj v09\_01\_06\_01 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : Merge branch ‘master’ into v09\_30\_00\_rc\_br
-   2021-08-07 Lynn Garren : lardataobj v09\_01\_04\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : lardataobj v09\_01\_04\_03 for larsoft v09\_27\_00\_03
-   2021-08-04 Lynn Garren : lardataobj v09\_01\_04\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : lardataobj v09\_01\_04\_02 for larsoft v09\_27\_00\_02
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
-   2021-07-28 Lynn Garren : update library names
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-27 Lynn Garren : lardataobj v09\_01\_04\_01 for larsoft v09\_06\_01\_01
-   2021-07-27 Lynn Garren : project version
-   2021-07-27 Lynn Garren : lardataobj v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-26 Lynn Garren : nusimdata v1\_24\_04
-   2021-07-12 Lynn Garren : v09\_30\_00\_rc0
-   2021-07-09 Lynn Garren : find cetlib
-   2021-07-09 Lynn Garren : need extra parentheses
-   2021-07-09 Lynn Garren : Merge branch ‘develop’ into v09\_30\_00\_rc\_br
-   2021-07-09 Lynn Garren : cetbuildtools v8\_10\_01
-   2021-07-09 Lynn Garren : find product

lardataalg v09\_06\_00(#lardataalg-v09_06_00)
------------------------------------------------

-   2021-09-21 Lynn Garren : lardataalg v09\_06\_00 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : lardataalg v09\_06\_00 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : Merge branch ‘v09\_30\_00\_rc\_br’ into release/v09\_31\_00
-   2021-08-25 Lynn Garren : lardataalg v09\_04\_07\_01 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : lardataalg v09\_04\_07\_01 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : Merge branch ‘master’ into v09\_30\_00\_rc\_br
-   2021-08-07 Lynn Garren : lardataalg v09\_04\_05\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : lardataalg v09\_04\_05\_03 for larsoft v09\_27\_00\_03
-   2021-08-04 Lynn Garren : lardataalg v09\_04\_05\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : lardataalg v09\_04\_05\_02 for larsoft v09\_27\_00\_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
-   2021-07-29 Kyle Knoepfel : Adjust targets
-   2021-07-28 Lynn Garren : update library names
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-27 Lynn Garren : lardataalg v09\_04\_05\_01 for larsoft v09\_06\_01\_01
-   2021-07-27 Lynn Garren : project version
-   2021-07-27 Lynn Garren : lardataalg v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-26 Lynn Garren : cetbuildtools v8\_11\_02
-   2021-07-12 Lynn Garren : v09\_30\_00\_rc0
-   2021-07-12 Kyle Knoepfel : Reenable Boost unit tests.
-   2021-07-09 Lynn Garren : find cetlib and clhep
-   2021-07-09 Lynn Garren : Merge branch ‘develop’ into v09\_30\_00\_rc\_br
-   2021-07-09 Lynn Garren : find product
-   2021-07-09 Lynn Garren : cetbuildtools v8\_10\_01
-   2021-07-09 Lynn Garren : ParameterSet

larcorealg v09\_03\_00(#larcorealg-v09_03_00)
------------------------------------------------

-   2021-09-21 Lynn Garren : larcorealg v09\_03\_00 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : larcorealg v09\_03\_00 for larsoft v09\_31\_00
-   2021-08-25 Lynn Garren : larcorealg v09\_02\_01\_01 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : larcorealg v09\_02\_01\_01 for larsoft v09\_28\_02\_01
-   2021-08-24 Lynn Garren : Merge branch ‘master’ into v09\_30\_00\_rc\_br
-   2021-08-07 Lynn Garren : larcorealg v09\_01\_02\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : larcorealg v09\_01\_02\_03 for larsoft v09\_27\_00\_03
-   2021-08-04 Lynn Garren : larcorealg v09\_01\_02\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : larcorealg v09\_01\_02\_02 for larsoft v09\_27\_00\_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
-   2021-07-28 Lynn Garren : update library names
-   2021-07-28 Lynn Garren : update library names
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-27 Lynn Garren : larcorealg v09\_01\_02\_01 for larsoft v09\_06\_01\_01
-   2021-07-27 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larcorealg v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-26 Lynn Garren : cetbuildtools v8\_11\_02
-   2021-07-15 Kyle Knoepfel : Setup FW\_SEARCH\_PATH for gdml access.
-   2021-07-14 Kyle Knoepfel : Enable/fix some more unit tests.
-   2021-07-12 Lynn Garren : larcorealg v09\_30\_00\_rc0
-   2021-07-12 Kyle Knoepfel : Reenable Boost unit tests.
-   2021-07-12 Kyle Knoepfel : Resolve dependency-ordering issue.
-   2021-07-09 Lynn Garren : temporarily disabling problematic tests
-   2021-07-09 Lynn Garren : need extra parentheses when using or
-   2021-07-09 Lynn Garren : parse\_document has a new format
-   2021-07-09 Lynn Garren : find boost
-   2021-07-09 Lynn Garren : Merge branch ‘develop’ into v09\_30\_00\_rc\_br
-   2021-07-09 Lynn Garren : ParameterSet
-   2021-07-09 Lynn Garren : ParameterSet
-   2021-07-09 Lynn Garren : cetbuildtools v8\_10\_01
-   2021-07-09 Lynn Garren : find products

larcoreobj v09\_03\_00(#larcoreobj-v09_03_00)
------------------------------------------------

-   2021-09-21 Lynn Garren : larcoreobj v09\_03\_00 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : larcoreobj v09\_03\_00 for larsoft v09\_31\_00
-   2021-08-25 Lynn Garren : larcoreobj v09\_02\_01\_04 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : larcoreobj v09\_02\_01\_04 for larsoft v09\_28\_02\_01
-   2021-08-07 Lynn Garren : larcoreobj v09\_02\_01\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : larcoreobj v09\_02\_01\_03 for larsoft v09\_27\_00\_03
-   2021-08-04 Lynn Garren : larcoreobj v09\_02\_01\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : larcoreobj v09\_02\_01\_02 for larsoft v09\_27\_00\_02
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
-   2021-07-29 Kyle Knoepfel : Add missing target
-   2021-07-28 Lynn Garren : library names
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-27 Lynn Garren : larcoreobj v09\_02\_01\_01 for larsoft v09\_06\_01\_01
-   2021-07-27 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larcoreobj v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-26 Lynn Garren : canvas\_root\_io v1\_09\_04
-   2021-07-12 Lynn Garren : v09\_30\_00\_rc0
-   2021-07-09 Lynn Garren : Merge branch ‘develop’ into v09\_30\_00\_rc\_br
-   2021-07-09 Lynn Garren : for root v6\_22\_08c
-   2021-07-09 Lynn Garren : find cetlib
-   2021-07-09 Lynn Garren : ParameterSet

webevd v09\_06\_00(#webevd-v09_06_00)
----------------------------------------

-   2021-09-21 Lynn Garren : webevd v09\_06\_00 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : webevd v09\_06\_00 for larsoft v09\_31\_00
-   2021-09-21 Lynn Garren : Merge branch ‘v09\_30\_00\_rc\_br’ into release/v09\_31\_00
-   2021-08-25 Lynn Garren : webevd v09\_05\_09\_01 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : webevd v09\_05\_09\_01 for larsoft v09\_28\_02\_01
-   2021-08-25 Lynn Garren : Merge branch ‘master’ into v09\_30\_00\_rc\_br
-   2021-08-10 Lynn Garren : webevd v09\_05\_07\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : webevd v09\_05\_07\_04 for larsoft v09\_27\_00\_04
-   2021-08-07 Lynn Garren : webevd v09\_05\_07\_03 for larsoft v09\_27\_00\_03
-   2021-08-07 Lynn Garren : webevd v09\_05\_07\_03 for larsoft v09\_27\_00\_03
-   2021-08-04 Lynn Garren : webevd v09\_05\_07\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : webevd v09\_05\_07\_02 for larsoft v09\_27\_00\_02
-   2021-07-28 Lynn Garren : update library names
-   2021-07-28 Lynn Garren : webevd v09\_05\_07\_01 for larsoft v09\_27\_00\_01
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-27 Lynn Garren : webevd v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-27 Kyle Knoepfel : Update service-macro headers.
-   2021-07-27 Kyle Knoepfel : Accommodate breaking changes for art 3.09
-   2021-07-26 Lynn Garren : gallery v1\_18\_04
-   2021-07-26 Lynn Garren : add missing header
-   2021-07-26 Lynn Garren : new parse\_document format
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09\_30\_00\_rc\_br
-   2021-07-26 Lynn Garren : for gallery v1\_18\_02
-   2021-07-26 Lynn Garren : ParameterSet

larbatch v01\_56\_01(#larbatch-v01_56_01)
--------------------------------------------

larutils v1\_28\_02(#larutils-v1_28_02)
------------------------------------------
