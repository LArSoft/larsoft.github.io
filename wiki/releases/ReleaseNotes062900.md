LArSoft v06\_29\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06\_29\_00 Release Notes](#LArSoft-v06_29_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_29\_00](#larsoft-v06_29_00)
    -   [lareventdisplay v06\_03\_03](#lareventdisplay-v06_03_03)
    -   [larexamples v06\_01\_19](#larexamples-v06_01_19)
    -   [larpandora v06\_08\_05](#larpandora-v06_08_05)
    -   [larwirecell v06\_01\_01](#larwirecell-v06_01_01)
    -   [larana v06\_03\_23](#larana-v06_03_23)
    -   [larreco v06\_23\_00](#larreco-v06_23_00)
    -   [larsim v06\_15\_00](#larsim-v06_15_00)
    -   [larevt v06\_08\_00](#larevt-v06_08_00)
    -   [lardata v06\_16\_01](#lardata-v06_16_01)
    -   [larcore v06\_06\_01](#larcore-v06_06_01)
    -   [larpandoracontent v03\_02\_00](#larpandoracontent-v03_02_00)
    -   [larsoftobj v1\_15\_00](#larsoftobj-v1_15_00)
    -   [lardataobj v1\_13\_02](#lardataobj-v1_13_02)
    -   [larcoreobj v1\_09\_00](#larcoreobj-v1_09_00)
    -   [larbatch v01\_28\_01](#larbatch-v01_28_01)
    -   [larutils v1\_12\_01](#larutils-v1_12_01)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06\_29\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_29_00/larsoft-v06_29_00.html)
Download instructions for [just larsoftobj v1\_15\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_15_00/larsoftobj-v1_15_00.html)

Purpose
--------------------

New features
------------------------------

-   feature/gp\_SpeedUpSpaceCharge (larevt, larsim, uboonecode and dunetpc)
    -   [March 28 presentation](https://indico.fnal.gov/getFile.py/access?contribId=5&resId=0&materialId=slides&confId=14108)

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v06\_29\_00
------------------------------------------

-   2017-03-29 Lynn Garren : larsoft v06\_29\_00 for larsoft v06\_29\_00
-   2017-03-29 Lynn Garren : updating larsoftobj
-   2017-03-29 Lynn Garren : update product versions

lareventdisplay v06\_03\_03
----------------------------------------------------------

-   2017-03-29 Lynn Garren : lareventdisplay v06\_03\_03 for larsoft v06\_29\_00

larexamples v06\_01\_19
--------------------------------------------------

-   2017-03-29 Lynn Garren : larexamples v06\_01\_19 for larsoft v06\_29\_00

larpandora v06\_08\_05
------------------------------------------------

-   2017-03-29 Lynn Garren : larpandora v06\_08\_05 for larsoft v06\_29\_00

larwirecell v06\_01\_01
--------------------------------------------------

-   2017-03-29 Lynn Garren : larwirecell v06\_01\_01 for larsoft v06\_29\_00

larana v06\_03\_23
----------------------------------------

-   2017-03-29 Lynn Garren : larana v06\_03\_23 for larsoft v06\_29\_00

larreco v06\_23\_00
------------------------------------------

-   2017-03-29 Lynn Garren : larreco v06\_23\_00 for larsoft v06\_29\_00
-   2017-03-29 Robert Sulej : improve scripts collecting training data
-   2017-03-29 Robert Sulej : add option to tag cosmic activity, very simple for start and switched off by default
-   2017-03-28 Robert Sulej : add cosmic tagging in pma, initial code
-   2017-03-27 Robert Sulej : update default patch sizes
-   2017-03-27 Robert Sulej : add histo for truth michel charge contribution
-   2017-03-27 Robert Sulej : add option to delay in drift direction for truth deposit and pdg maps for cases of using not-deconvoluted adc
-   2017-03-22 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-03-22 Robert Sulej : read any length of cnn output vector and dig out em-like and track-like values by the nameof columns

larsim v06\_15\_00
----------------------------------------

-   2017-03-29 Lynn Garren : larsim v06\_15\_00 for larsoft v06\_29\_00
-   2017-03-23 Gianluca Petrillo : Adapting to SpaceCharge provider interface changes.
-   2017-03-29 Gianluca Petrillo : Bug fix (fatal typo) in empty\_events.fcl
-   2017-03-24 Thomas Junk : Fix energy histogram upper edge – thanks to Juergen Reichenbacher for spotting that.

larevt v06\_08\_00
----------------------------------------

-   2017-03-29 Lynn Garren : larevt v06\_08\_00 for larsoft v06\_29\_00
-   2017-03-23 Gianluca Petrillo : Interface change: SpaceCharge provider returns geometry vectors.

lardata v06\_16\_01
------------------------------------------

-   2017-03-29 Lynn Garren : lardata v06\_16\_01 for larsoft v06\_29\_00
-   2017-03-22 Robert Sulej : add query for the index with a given column name

larcore v06\_06\_01
------------------------------------------

-   2017-03-29 Lynn Garren : larcore v06\_06\_01 for larsoft v06\_29\_00
-   2017-03-23 Gianluca Petrillo : Fix the behaviour of IntersectionPoint().

larpandoracontent v03\_02\_00
--------------------------------------------------------------

larsoftobj v1\_15\_00
----------------------------------------------

-   2017-03-29 Lynn Garren : larsoftobj v1\_15\_00 for larsoft v06\_29\_00
-   2017-03-29 Lynn Garren : update versions and add studio

lardataobj v1\_13\_02
----------------------------------------------

-   2017-03-29 Lynn Garren : lardataobj v1\_13\_02 for larsoft v06\_29\_00
-   2017-03-24 Robert Sulej : add typename for feature vector description
-   2017-03-22 Robert Sulej : comment out message when not-throwing constructor fails with finding data

larcoreobj v1\_09\_00
----------------------------------------------

-   2017-03-29 Lynn Garren : larcoreobj v1\_09\_00 for larsoft v06\_29\_00
-   2017-03-29 Gianluca Petrillo : Added helpers to read geometry vectors from FHiCL configuration.
-   2017-03-23 Gianluca Petrillo : Added utility for computing a middle point.
-   2017-03-23 Gianluca Petrillo : Added geometry vector type definitions.

larbatch v01\_28\_01
--------------------------------------------

-   2017-03-29 Lynn Garren : larbatch v01\_28\_01 for larsoft v06\_29\_00
-   2017-03-28 Herbert Greenlee : Increase timeout for posix\_cp.
-   2017-03-22 Herbert Greenlee : Update caching.
-   2017-03-22 Herbert Greenlee : Fix caching issue with xml parsing.
-   2017-03-22 Herbert Greenlee : Streamline xml parsing. Cache results of xml parsing.
-   2017-03-16 Herbert Greenlee : Make docheck\_locations more efficienty (suggested by Tom Junk).

larutils v1\_12\_01
------------------------------------------
