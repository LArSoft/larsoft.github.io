LArSoft v08\_16\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08\_16\_00 Release Notes](#LArSoft-v08_16_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_16\_00](#larsoft-v08_16_00)
    -   [lareventdisplay v08\_06\_00](#lareventdisplay-v08_06_00)
    -   [larexamples v08\_02\_00](#larexamples-v08_02_00)
    -   [larg4 v08\_02\_00](#larg4-v08_02_00)
    -   [larpandora v08\_06\_00](#larpandora-v08_06_00)
    -   [larwirecell v08\_04\_00](#larwirecell-v08_04_00)
    -   [larana v08\_05\_00](#larana-v08_05_00)
    -   [larreco v08\_12\_00](#larreco-v08_12_00)
    -   [larsim v08\_06\_00](#larsim-v08_06_00)
    -   [larevt v08\_03\_00](#larevt-v08_03_00)
    -   [lardata v08\_04\_00](#lardata-v08_04_00)
    -   [larcore v08\_03\_00](#larcore-v08_03_00)
    -   [larpandoracontent v03\_14\_07](#larpandoracontent-v03_14_07)
    -   [larsoftobj v08\_11\_00](#larsoftobj-v08_11_00)
    -   [lardataobj v08\_03\_00](#lardataobj-v08_03_00)
    -   [lardataalg v08\_06\_00](#lardataalg-v08_06_00)
    -   [larcorealg v08\_08\_00](#larcorealg-v08_08_00)
    -   [larcoreobj v08\_04\_00](#larcoreobj-v08_04_00)
    -   [larbatch v01\_51\_01](#larbatch-v01_51_01)
    -   [larutils v1\_23\_14](#larutils-v1_23_14)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_16\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_16_00/larsoft-v08_16_00.html)\
Download instructions for [just larsoftobj v08\_11\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_11_00/larsoftobj-v08_11_00.html)

Purpose
--------------------

-   update from art v3\_01\_02 to art v3\_02\_04
-   based off the larsoft v08\_15\_01 release

New features
------------------------------

-   **Please read the [update notes](Update_to_art_v3_02).** These are an addition to changes documented in the [art v3\_02](/redmine/projects/art/wiki/Series_302) release notes.
-   With this release, art has been split into art and art\_root\_io.
    -   A migration script is provided in art\_root\_io.
-   macOS support
    -   Support for Sierra is dropped in favor of support for Mojave.
    -   We found a problem using Xcode 10.2 with Mojave. **At this time, we can only support Xcode 10.1 on Mojave.**
    -   Xcode 10.2 changes some system headers. This makes it impossible to build root and will probably cause other issues.
-   **feature/team\_for\_art\_v3\_02 is provided for all experiment packages**
    -   These feature branches include necessary changes that could not be scripted.

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

There are new versions of nearly every product. This list includes some of the highlights.

-   python v2\_7\_15a
-   clhep v2\_4\_1\_0b
-   boost v1\_69\_0
-   root v6\_16\_00
-   art v3\_02\_04
-   art\_root\_io v1\_00\_04
-   gallery v1\_12\_03
-   artdaq\_core v3\_04\_14
-   nutools v2\_29\_01

Change List
============================

larsoft v08\_16\_00
------------------------------------------

-   2019-04-18 Lynn Garren : product versions
-   2019-04-18 Lynn Garren : larsoft v08\_16\_00 for larsoft v08\_16\_00
-   2019-04-18 Lynn Garren : art\_root\_io migration script is fixed
-   2019-04-18 Lynn Garren : product versions
-   2019-04-17 Lynn Garren : for art v3\_02\_04
-   2019-04-17 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3\_02’ into v08\_16\_00\_br
-   2019-04-04 Lynn Garren : update product stack versions
-   2019-04-04 Lynn Garren : improvements from Kyle
-   2019-04-04 Lynn Garren : for art 3.02

lareventdisplay v08\_06\_00
----------------------------------------------------------

-   2019-04-18 Lynn Garren : lareventdisplay v08\_06\_00 for larsoft v08\_16\_00
-   2019-04-17 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3\_02’ into v08\_16\_00\_br
-   2019-04-04 Lynn Garren : remove ALLOW\_DEPRECATIONS
-   2019-04-04 Lynn Garren : changes for art 3.02

larexamples v08\_02\_00
--------------------------------------------------

-   2019-04-18 Lynn Garren : add missing library
-   2019-04-18 Lynn Garren : larexamples v08\_02\_00 for larsoft v08\_16\_00
-   2019-04-17 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3\_02’ into v08\_16\_00\_br
-   2019-04-04 Lynn Garren : remove ALLOW\_DEPRECATIONS
-   2019-04-04 Lynn Garren : add missing library
-   2019-04-04 Lynn Garren : changes for art 3.02

larg4 v08\_02\_00
--------------------------------------

-   2019-04-18 Lynn Garren : larg4 v08\_02\_00 for larsoft v08\_16\_00
-   2019-04-17 Lynn Garren : artg4tk v09\_04\_01
-   2019-04-17 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3\_02’ into v08\_16\_00\_br
-   2019-04-04 Lynn Garren : changes for art 3.02

larpandora v08\_06\_00
------------------------------------------------

-   2019-04-18 Lynn Garren : larpandora v08\_06\_00 for larsoft v08\_16\_00
-   2019-04-17 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3\_02’ into v08\_16\_00\_br
-   2019-04-04 Lynn Garren : remove ALLOW\_DEPRECATIONS
-   2019-04-04 Lynn Garren : changes for art 3.02

larwirecell v08\_04\_00
--------------------------------------------------

-   2019-04-18 Lynn Garren : larwirecell v08\_04\_00 for larsoft v08\_16\_00
-   2019-04-17 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3\_02’ into v08\_16\_00\_br
-   2019-04-04 Lynn Garren : EDProducer
-   2019-04-04 Lynn Garren : changes for art 3.02

larana v08\_05\_00
----------------------------------------

-   2019-04-18 Lynn Garren : larana v08\_05\_00 for larsoft v08\_16\_00
-   2019-04-17 Lynn Garren : for art v3\_02
-   2019-04-17 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3\_02’ into v08\_16\_00\_br
-   2019-04-04 Lynn Garren : remove ALLOW\_DEPRECATIONS
-   2019-04-04 Lynn Garren : changes for art 3.02

larreco v08\_12\_00
------------------------------------------

-   2019-04-18 Lynn Garren : add missing library
-   2019-04-18 Lynn Garren : larreco v08\_12\_00 for larsoft v08\_16\_00
-   2019-04-17 Lynn Garren : with nutools v2\_29\_01
-   2019-04-17 Lynn Garren : include missing header
-   2019-04-17 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3\_02’ into v08\_16\_00\_br
-   2019-04-04 Lynn Garren : remove ALLOW\_DEPRECATIONS
-   2019-04-04 Lynn Garren : changes for art 3.02

larsim v08\_06\_00
----------------------------------------

-   2019-04-18 Lynn Garren : larsim v08\_06\_00 for larsoft v08\_16\_00
-   2019-04-18 Kyle Knoepfel : Remove unsupported explicit template instantiations in classes.h files.
-   2019-04-17 Lynn Garren : EDFilter requires an explicit constructor
-   2019-04-17 Lynn Garren : for art v3\_02
-   2019-04-17 Lynn Garren : changes for art v3\_02
-   2019-04-17 Lynn Garren : changes for art v3\_02

larevt v08\_03\_00
----------------------------------------

-   2019-04-18 Lynn Garren : larevt v08\_03\_00 for larsoft v08\_16\_00
-   2019-04-17 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3\_02’ into v08\_16\_00\_br
-   2019-04-04 Lynn Garren : remove ALLOW\_DEPRECATIONS
-   2019-04-04 Lynn Garren : changes for art 3.02
-   2019-04-04 Lynn Garren : fhicl no longer recognizes boost::any, use std::any

lardata v08\_04\_00
------------------------------------------

-   2019-04-18 Lynn Garren : add missing library
-   2019-04-18 Lynn Garren : lardata v08\_04\_00 for larsoft v08\_16\_00
-   2019-04-17 Lynn Garren : with nutools v2\_29\_01
-   2019-04-17 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3\_02’ into v08\_16\_00\_br
-   2019-04-04 Lynn Garren : remove ALLOW\_DEPRECATIONS
-   2019-04-04 Lynn Garren : changes for art 3.02

larcore v08\_03\_00
------------------------------------------

-   2019-04-18 Lynn Garren : add missing library
-   2019-04-18 Lynn Garren : larcore v08\_03\_00 for larsoft v08\_16\_00
-   2019-04-17 Lynn Garren : art\_root\_io v1\_00\_04
-   2019-04-17 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3\_02’ into v08\_16\_00\_br
-   2019-04-04 Lynn Garren : remove ALLOW\_DEPRECATIONS
-   2019-04-04 Lynn Garren : changes for art 3.02

larpandoracontent v03\_14\_07
--------------------------------------------------------------

-   2019-04-18 Lynn Garren : larpandoracontent v03\_14\_07 for art v3\_02\_04
-   2019-04-17 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3\_02’ into v08\_16\_00\_br
-   2019-04-04 Lynn Garren : larpandoracontent v03\_14\_06 for use with art 3.02

larsoftobj v08\_11\_00
------------------------------------------------

-   2019-04-18 Lynn Garren : larsoftobj v08\_11\_00 for larsoft v08\_16\_00
-   2019-04-18 Lynn Garren : product versions
-   2019-04-17 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3\_02’ into v08\_16\_00\_br
-   2019-04-04 Lynn Garren : for art 3.02

lardataobj v08\_03\_00
------------------------------------------------

-   2019-04-18 Lynn Garren : lardataobj v08\_03\_00 for larsoft v08\_16\_00
-   2019-04-18 Kyle Knoepfel : Remove unsupported explicit template instantiations in classes.h files.
-   2019-04-17 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3\_02’ into v08\_16\_00\_br
-   2019-04-04 Lynn Garren : remove ALLOW\_DEPRECATIONS
-   2019-04-04 Lynn Garren : changes for art 3.02

lardataalg v08\_06\_00
------------------------------------------------

-   2019-04-18 Lynn Garren : lardataalg v08\_06\_00 for larsoft v08\_16\_00
-   2019-04-17 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3\_02’ into v08\_16\_00\_br
-   2019-04-05 Kyle Knoepfel : Update Boost header/namespace usage.
-   2019-04-04 Lynn Garren : remove ALLOW\_DEPRECATIONS
-   2019-04-04 Lynn Garren : changes for art 3.02

larcorealg v08\_08\_00
------------------------------------------------

-   2019-04-18 Lynn Garren : larcorealg v08\_08\_00 for larsoft v08\_16\_00
-   2019-04-17 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3\_02’ into v08\_16\_00\_br
-   2019-04-04 Lynn Garren : remove ALLOW\_DEPRECATIONS
-   2019-04-04 Lynn Garren : changes for art 3.02

larcoreobj v08\_04\_00
------------------------------------------------

-   2019-04-18 Lynn Garren : larcoreobj v08\_04\_00 for larsoft v08\_16\_00
-   2019-04-17 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3\_02’ into v08\_16\_00\_br
-   2019-04-04 Lynn Garren : remove ALLOW\_DEPRECATIONS
-   2019-04-04 Lynn Garren : changes for art 3.02
-   2019-04-04 Lynn Garren : stop checking the root version

larbatch v01\_51\_01
--------------------------------------------

larutils v1\_23\_14
------------------------------------------
