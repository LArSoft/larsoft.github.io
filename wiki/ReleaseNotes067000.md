LArSoft v06\_70\_00 Release Notes(#LArSoft-v06_70_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v06\_70\_00 Release Notes](#LArSoft-v06_70_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Breaking Changes](#Breaking-Changes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_70\_00](#larsoft-v06_70_00)
    -   [lareventdisplay v06\_18\_00](#lareventdisplay-v06_18_00)
    -   [larexamples v06\_11\_00](#larexamples-v06_11_00)
    -   [larpandora v06\_25\_00](#larpandora-v06_25_00)
    -   [larwirecell v06\_11\_00](#larwirecell-v06_11_00)
    -   [larana v06\_18\_00](#larana-v06_18_00)
    -   [larreco v06\_56\_00](#larreco-v06_56_00)
    -   [larsim v06\_42\_00](#larsim-v06_42_00)
    -   [larevt v06\_19\_00](#larevt-v06_19_00)
    -   [lardata v06\_40\_00](#lardata-v06_40_00)
    -   [larcore v06\_18\_00](#larcore-v06_18_00)
    -   [larpandoracontent v03\_10\_01](#larpandoracontent-v03_10_01)
    -   [larsoftobj v1\_41\_00](#larsoftobj-v1_41_00)
    -   [lardataobj v1\_29\_00](#lardataobj-v1_29_00)
    -   [larcorealg v1\_18\_00](#larcorealg-v1_18_00)
    -   [larcoreobj v1\_22\_00](#larcoreobj-v1_22_00)
    -   [larbatch v01\_37\_01](#larbatch-v01_37_01)
    -   [larutils v1\_21\_01](#larutils-v1_21_01)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_70\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_70_00/larsoft-v06_70_00.html)\
Download instructions for [just larsoftobj v1\_41\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_41_00/larsoftobj-v1_41_00.html)

Purpose(#Purpose)
--------------------

-   migrate to art v2\_10\_03

New features(#New-features)
------------------------------

-   except for changes required by art v2\_10\_03, the code is identical to larsoft v06\_69\_01
-   experiments should merge the feature/team\_for\_art\_2\_10 branch

Breaking Changes(#Breaking-Changes)
--------------------------------------

-   [change to reconfigure](/redmine/projects/art/wiki/210_breaking_changes#Removal-of-modules-reconfigureParameterSet-const38-virtual-function)
    -   The script no\_reconfigure\_override.sh is provided to remove the override.
-   [FirstAbsoluteOrLookupWithDotPolicy renamed](/redmine/projects/art/wiki/210_breaking_changes#Relocationrenaming-of-artFirstAbsoluteOrLookupWithDotPolicy)
    -   there was only one instance of this
-   [SourceHelper cannot be copied](/redmine/projects/art/wiki/209_breaking_changes#SourceHelper-usage)
    -   This change was made in art v2\_09\_06
    -   Further changes in SourceHelper.h force a compile time failure.
-   There is no longer a nu qualified build of root. Instead, the e15 build contains all features that were in the nu qualified build.

Updated dependencies(#Updated-dependencies)
----------------------------------------------

-   nutools v2\_19\_00
-   artdaq\_core v3\_01\_06
-   art v2\_10\_03 (s65)
-   gallery v1\_07\_02
-   canvas\_root\_io v1\_01\_02
-   root v6\_12\_04e

Change List(#Change-List)
============================

larsoft v06\_70\_00(#larsoft-v06_70_00)
------------------------------------------

-   2018-03-01 Lynn Garren : the nu qualifier is no longer used
-   2018-03-01 Lynn Garren : fix manifest
-   2018-03-01 Lynn Garren : for art v2\_10\_03
-   2018-03-01 Lynn Garren : update versions
-   2018-03-01 Lynn Garren : install new script
-   2018-03-01 Lynn Garren : make it work
-   2018-03-01 Lynn Garren : migration scripts for art 2.10
-   2018-02-28 Lynn Garren : dependencies
-   2018-02-28 Lynn Garren : add mrb in larbase, not in lar\_product\_stack

lareventdisplay v06\_18\_00(#lareventdisplay-v06_18_00)
----------------------------------------------------------

-   2018-03-01 Lynn Garren : larreco v06\_56\_00
-   2018-03-01 Lynn Garren : for art v2\_10\_03
-   2018-03-01 Lynn Garren : remove override
-   2018-03-01 Lynn Garren : need to link against pthread

larexamples v06\_11\_00(#larexamples-v06_11_00)
--------------------------------------------------

-   2018-03-01 Lynn Garren : for art v2\_10\_03

larpandora v06\_25\_00(#larpandora-v06_25_00)
------------------------------------------------

-   2018-03-01 Lynn Garren : larreco v06\_56\_00
-   2018-03-01 Lynn Garren : for art v2\_10\_03

larwirecell v06\_11\_00(#larwirecell-v06_11_00)
--------------------------------------------------

-   2018-03-01 Lynn Garren : for art v2\_10\_03

larana v06\_18\_00(#larana-v06_18_00)
----------------------------------------

-   2018-03-01 Lynn Garren : larreco v06\_56\_00
-   2018-03-01 Lynn Garren : for art v2\_10\_03
-   2018-03-01 Lynn Garren : remove override

larreco v06\_56\_00(#larreco-v06_56_00)
------------------------------------------

-   2018-03-01 Lynn Garren : for art v2\_10\_03
-   2018-03-01 Lynn Garren : for art v2\_10\_03
-   2018-03-01 Lynn Garren : remove override

larsim v06\_42\_00(#larsim-v06_42_00)
----------------------------------------

-   2018-03-01 Lynn Garren : for art v2\_10\_03
-   2018-03-01 Lynn Garren : remove override

larevt v06\_19\_00(#larevt-v06_19_00)
----------------------------------------

-   2018-03-01 Lynn Garren : for art v2\_10\_03
-   2018-03-01 Lynn Garren : remove override

lardata v06\_40\_00(#lardata-v06_40_00)
------------------------------------------

-   2018-03-01 Lynn Garren : for art v2\_10\_03
-   2018-03-01 Lynn Garren : remove override

larcore v06\_18\_00(#larcore-v06_18_00)
------------------------------------------

-   2018-03-01 Lynn Garren : for art v2\_10\_03

larpandoracontent v03\_10\_01(#larpandoracontent-v03_10_01)
--------------------------------------------------------------

-   2018-03-01 Lynn Garren : for art v2\_10\_03
-   2018-03-01 Lynn Garren : v03\_10\_01

larsoftobj v1\_41\_00(#larsoftobj-v1_41_00)
----------------------------------------------

-   2018-03-01 Lynn Garren : for art v2\_10\_03
-   2018-03-01 Lynn Garren : for art 2.10.03

lardataobj v1\_29\_00(#lardataobj-v1_29_00)
----------------------------------------------

-   2018-03-01 Lynn Garren : for art v2\_10\_03
-   2018-03-01 Gianluca Petrillo : Helping the compiler to disambiguate constructors.
-   2018-03-01 Lynn Garren : use nusimdata v1\_11\_00

larcorealg v1\_18\_00(#larcorealg-v1_18_00)
----------------------------------------------

-   2018-03-01 Lynn Garren : for art v2\_10\_03

larcoreobj v1\_22\_00(#larcoreobj-v1_22_00)
----------------------------------------------

-   2018-03-01 Lynn Garren : for art v2\_10\_03
-   2018-03-01 Lynn Garren : using canvas\_root\_io v1\_01\_02

larbatch v01\_37\_01(#larbatch-v01_37_01)
--------------------------------------------

larutils v1\_21\_01(#larutils-v1_21_01)
------------------------------------------
