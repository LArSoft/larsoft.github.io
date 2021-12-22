LArSoft v08\_24\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08\_24\_00 Release Notes](#LArSoft-v08_24_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_24\_00](#larsoft-v08_24_00)
    -   [lareventdisplay v08\_08\_01](#lareventdisplay-v08_08_01)
    -   [larexamples v08\_02\_09](#larexamples-v08_02_09)
    -   [larg4 v08\_03\_08](#larg4-v08_03_08)
    -   [larpandora v08\_07\_05](#larpandora-v08_07_05)
    -   [larwirecell v08\_05\_08](#larwirecell-v08_05_08)
    -   [larana v08\_10\_01](#larana-v08_10_01)
    -   [larreco v08\_15\_01](#larreco-v08_15_01)
    -   [larsim v08\_09\_01](#larsim-v08_09_01)
    -   [larevt v08\_06\_01](#larevt-v08_06_01)
    -   [lardata v08\_06\_01](#lardata-v08_06_01)
    -   [larcore v08\_04\_05](#larcore-v08_04_05)
    -   [larpandoracontent v03\_15\_00](#larpandoracontent-v03_15_00)
    -   [larsoftobj v08\_15\_03](#larsoftobj-v08_15_03)
    -   [lardataobj v08\_04\_04](#lardataobj-v08_04_04)
    -   [lardataalg v08\_07\_03](#lardataalg-v08_07_03)
    -   [larcorealg v08\_12\_02](#larcorealg-v08_12_02)
    -   [larcoreobj v08\_05\_01](#larcoreobj-v08_05_01)
    -   [larbatch v01\_51\_04](#larbatch-v01_51_04)
    -   [larutils v1\_24\_00](#larutils-v1_24_00)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_24\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_24_00/larsoft-v08_24_00.html)\
Download instructions for [just larsoftobj v08\_15\_03](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_15_03/larsoftobj-v08_15_03.html)

Purpose
--------------------

-   changes in develop
-   approved feature branches

New features
------------------------------

-   Pandora updates
    -   feature/larpandoracontent\_v03\_15\_00 for larpandoracontent, dunetpc and ubreco
    -   See the relevant [DUNE FD sim/reco slides](https://indico.fnal.gov/event/21007/contribution/3/material/slides/0.pdf). As usual for a Pandora release, there’s c++ algorithm functionality changes (just a few small changes this time, see ChangeLog.txt) for larpandoracontent, with changes to the Pandora XML configuration in dunetpc (and associated config change, with no change in output for ubreco). The machine learning training output is hosted in dune\_pardata.

Bug fixes
------------------------

-   [\#22744](/redmine/issues/22744 "Bug: Cannot read old argoneut data (Closed)") fixed with art\_root\_io v1\_00\_07 (s86)

Updated dependencies
----------------------------------------------

-   art\_root\_io v1\_00\_07 (s86)
-   nutools v3\_00\_02
-   artg4tk v09\_04\_04
-   pandora v03\_11\_01b (adds the ability to build with py3)
-   wirecell v0\_12\_3 (adds the ability to build with py3)
-   systematicstools v00\_03\_04
-   nusystematics v00\_04\_01
-   mrb v3\_02\_01
    -   updated mrb uv command with improvements for release managers

Change List
============================

larsoft v08\_24\_00
------------------------------------------

-   2019-06-27 Lynn Garren : larsoft v08\_24\_00 for larsoft v08\_24\_00
-   2019-06-27 Lynn Garren : update versions

lareventdisplay v08\_08\_01
----------------------------------------------------------

-   2019-06-27 Lynn Garren : lareventdisplay v08\_08\_01 for larsoft v08\_24\_00

larexamples v08\_02\_09
--------------------------------------------------

-   2019-06-27 Lynn Garren : larexamples v08\_02\_09 for larsoft v08\_24\_00

larg4 v08\_03\_08
--------------------------------------

-   2019-06-27 Lynn Garren : larg4 v08\_03\_08 for larsoft v08\_24\_00

larpandora v08\_07\_05
------------------------------------------------

-   2019-06-27 Lynn Garren : larpandora v08\_07\_05 for larsoft v08\_24\_00

larwirecell v08\_05\_08
--------------------------------------------------

-   2019-06-27 Lynn Garren : larwirecell v08\_05\_08 for larsoft v08\_24\_00

larana v08\_10\_01
----------------------------------------

-   2019-06-27 Lynn Garren : larana v08\_10\_01 for larsoft v08\_24\_00

larreco v08\_15\_01
------------------------------------------

-   2019-06-27 Lynn Garren : larreco v08\_15\_01 for larsoft v08\_24\_00

larsim v08\_09\_01
----------------------------------------

-   2019-06-27 Lynn Garren : larsim v08\_09\_01 for larsoft v08\_24\_00
-   2019-06-26 Steven Gardiner : Fix issue in MARLEYHelper where the setting for the incident neutrino direction was not forwarded to MARLEY correctly.
-   2019-06-25 Tom Junk : initialize fSingleVertex (had been omitted)

larevt v08\_06\_01
----------------------------------------

-   2019-06-27 Lynn Garren : larevt v08\_06\_01 for larsoft v08\_24\_00

lardata v08\_06\_01
------------------------------------------

-   2019-06-27 Lynn Garren : lardata v08\_06\_01 for larsoft v08\_24\_00

larcore v08\_04\_05
------------------------------------------

-   2019-06-27 Lynn Garren : larcore v08\_04\_05 for larsoft v08\_24\_00

larpandoracontent v03\_15\_00
--------------------------------------------------------------

-   2019-06-27 Lynn Garren : larpandoracontent v03\_15\_00 for larsoft v08\_24\_00
-   2019-06-26 Lynn Garren : Merge branch ‘feature/larpandoracontent\_v03\_15\_00’ into release/v08\_24\_00
-   2019-06-17 Lynn Garren : remove status comment
-   2019-06-17 Lynn Garren : fix how we find cetbuildtools
-   2019-06-14 Lynn Garren : larpandoracontent v03\_14\_09 for larsoft v08\_22\_00\_01
-   2019-06-13 Lynn Garren : larpandoracontent v03\_14\_09 with py3 build options
-   2019-06-12 Lynn Garren : use pandora v03\_11\_01b with py3 support
-   2019-06-12 John Marshall : Merge branch ‘updates’
-   2019-06-10 John Marshall : Update version and change log.
-   2019-06-12 John Marshall : Merge branch ‘feature/StitchingPfoSelection’
-   2019-06-10 John Marshall : Set parameter default values to return previous behaviour.
-   2019-06-10 phuncr : Changed the cuts used to select which clusters are considered in the stitching
-   2019-06-10 John Marshall : Merge branch ‘feature/VertexCandidateReduction’
-   2019-06-10 phuncr : Cosmetic changes.
-   2019-06-09 phuncr : Added option to reduce number of vertex candidates created
-   2019-06-10 John Marshall : Merge branch ‘feature/lhw\_cpp17fix’
-   2019-05-29 Leigh Whitehead : Update comments
-   2019-05-29 Leigh Whitehead : Remove variable name in arguments of default functions
-   2019-06-10 John Marshall : Merge branch ‘feature/MvaVertexSelection’
-   2019-05-16 John Marshall : Template SvmVertexSelection algorithm on mva type and rename to MvaVertexSelection.

larsoftobj v08\_15\_03
------------------------------------------------

-   2019-06-27 Lynn Garren : larsoftobj v08\_15\_03 for larsoft v08\_24\_00
-   2019-06-27 Lynn Garren : update versions

lardataobj v08\_04\_04
------------------------------------------------

-   2019-06-27 Lynn Garren : lardataobj v08\_04\_04 for larsoft v08\_24\_00

lardataalg v08\_07\_03
------------------------------------------------

-   2019-06-27 Lynn Garren : lardataalg v08\_07\_03 for larsoft v08\_24\_00

larcorealg v08\_12\_02
------------------------------------------------

-   2019-06-27 Lynn Garren : larcorealg v08\_12\_02 for larsoft v08\_24\_00
-   2019-06-21 Gianluca Petrillo : geo::BoxBoundedGeo: added overlap test methods.
-   2019-06-21 Gianluca Petrillo : geo::PlaneGeo gets the wire pitch from central wires instead of corner.

larcoreobj v08\_05\_01
------------------------------------------------

larbatch v01\_51\_04
--------------------------------------------

larutils v1\_24\_00
------------------------------------------
