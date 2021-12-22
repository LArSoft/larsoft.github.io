LArSoft v08\_59\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08\_59\_00 Release Notes](#LArSoft-v08_59_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_59\_00](#larsoft-v08_59_00)
    -   [lareventdisplay v08\_12\_22](#lareventdisplay-v08_12_22)
    -   [larexamples v08\_06\_22](#larexamples-v08_06_22)
    -   [larg4 v08\_14\_06](#larg4-v08_14_06)
    -   [larpandora v08\_13\_02](#larpandora-v08_13_02)
    -   [larrecodnn v08\_06\_02](#larrecodnn-v08_06_02)
    -   [larwirecell v08\_12\_16](#larwirecell-v08_12_16)
    -   [larana v08\_17\_14](#larana-v08_17_14)
    -   [larreco v08\_32\_07](#larreco-v08_32_07)
    -   [larsim v08\_30\_00](#larsim-v08_30_00)
    -   [larevt v08\_12\_00](#larevt-v08_12_00)
    -   [lardata v08\_15\_09](#lardata-v08_15_09)
    -   [larcore v08\_11\_10](#larcore-v08_11_10)
    -   [larpandoracontent v03\_18\_00](#larpandoracontent-v03_18_00)
    -   [larsoftobj v08\_29\_02](#larsoftobj-v08_29_02)
    -   [lardataobj v08\_11\_02](#lardataobj-v08_11_02)
    -   [lardataalg v08\_13\_14](#lardataalg-v08_13_14)
    -   [larcorealg v08\_22\_02](#larcorealg-v08_22_02)
    -   [larcoreobj v08\_12\_01](#larcoreobj-v08_12_01)
    -   [webevd v08\_00\_07](#webevd-v08_00_07)
    -   [larbatch v01\_52\_02](#larbatch-v01_52_02)
    -   [larutils v1\_26\_01](#larutils-v1_26_01)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_59\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_59_00/larsoft-v08_59_00.html)\
Download instructions for [just larsoftobj v08\_29\_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_29_02/larsoftobj-v08_29_02.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

-   new larsimrad repository
    -   contains interface to BxDecay0 generator
-   larsim PR 28
    -   New Sim Filter using the sim::SimPhotonsLite data product
    -   This request incorporates a new filter into the SimFilters/ directory. It is a module that replicates the functionality of the FilterSimPhotonTime filter except using sim::SimPhotonsLite instead of sim::SimPhotons as a data product.
    -   I elected to write this as a new module (as opposed to porting FilterSimPhotonTime to handle both cases) because the code is minimal and mostly involves parsing the sim::SimPhotonsLite data product. Thus, porting FilterSimPhotonTime to handle both cases would mostly involve something like:

            if (hasSimPhotons)
                FilterSimPhotons()
            else
                FilterSimPhotonsLite()

        \
        and so I thought it would be cleaner to just write a new module. In addition, FilterSimPhotonTime requires cutting on the energy of the photons, which is not possible using the sim::SimPhotonsLite data product, and so the filter would have to be reorganized to handle both data products.

-   lareventdisplay PR 6
    -   Fix calls to geometry service’s WireCoordinate method
    -   Attempts to draw, for example, vertices in the 2D display resulted in an exception being thrown. Unfortunately, instead of crashing the code this exception is caught and lar simply moves to the next event so its probably not clear to the user what is actually happening. Gianluca provided the prescription for how this method should be called, I went through and changed all occurances I could find.

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   bxdecay0 v1\_0\_5
-   ifdhc\_config v2\_5\_9
-   mrb v4\_01\_03

Change List
============================

larsoft v08\_59\_00
------------------------------------------

-   2020-07-22 Lynn Garren : larsoft v08\_59\_00 for larsoft v08\_59\_00
-   2020-07-22 Lynn Garren : product versions
-   2020-07-22 Lynn Garren : ifdhc\_config v2\_5\_10
-   2020-07-21 Lynn Garren : add larsimrad, update mrb and ifdhc\_config

lareventdisplay v08\_12\_22
----------------------------------------------------------

-   2020-07-22 Lynn Garren : lareventdisplay v08\_12\_22 for larsoft v08\_59\_00
-   2020-07-22 Lynn Garren : Merge pull request [\#6](/redmine/issues/6 "Feature: Non-KCA Remediation (New)") from SFBayLaser/develop
-   2020-07-15 Tracy Usher : Primarily convert the calls to “wirecoordinate” so they won’t throw exception. But also some formatting changes…
-   2020-07-14 Tracy Usher : Merge branch ‘develop’ of github.com:LArSoft/lareventdisplay into develop
-   2020-07-05 Tracy Usher : Merge branch ‘develop’ of github.com:LArSoft/lareventdisplay into develop
-   2020-06-05 Tracy Usher : Merge branch ‘develop’ of github.com:LArSoft/lareventdisplay into develop
-   2020-05-31 Tracy Usher : Merge branch ‘develop’ of github.com:LArSoft/lareventdisplay into develop
-   2020-05-25 Tracy Usher : Merge branch ‘develop’ of github.com:LArSoft/lareventdisplay into develop
-   2020-05-17 Tracy Usher : Merge branch ‘develop’ of github.com:LArSoft/lareventdisplay into develop
-   2020-05-10 Tracy Usher : Merge branch ‘develop’ of github.com:LArSoft/lareventdisplay into develop
-   2020-04-30 Tracy Usher : Merge branch ‘develop’ of github.com:LArSoft/lareventdisplay into develop
-   2020-04-30 Tracy Usher : Draw hits from the start to the end of the snippet
-   2020-04-25 Tracy Usher : Merge branch ‘develop’ of github.com:LArSoft/lareventdisplay into develop
-   2020-04-15 Tracy Usher : Merge branch ‘develop’ of github.com:LArSoft/lareventdisplay into develop
-   2020-04-09 Tracy Usher : Merge branch ‘develop’ of github.com:LArSoft/lareventdisplay into develop
-   2020-03-27 Tracy Usher : Merge branch ‘develop’ of github.com:LArSoft/lareventdisplay into develop
-   2020-03-27 Tracy Usher : working on fixing a potential bug in the min/max settings for waveform histograms

larexamples v08\_06\_22
--------------------------------------------------

-   2020-07-22 Lynn Garren : larexamples v08\_06\_22 for larsoft v08\_59\_00

larg4 v08\_14\_06
--------------------------------------

larpandora v08\_13\_02
------------------------------------------------

-   2020-07-22 Lynn Garren : larpandora v08\_13\_02 for larsoft v08\_59\_00

larrecodnn v08\_06\_02
------------------------------------------------

-   2020-07-22 Lynn Garren : larrecodnn v08\_06\_02 for larsoft v08\_59\_00

larwirecell v08\_12\_16
--------------------------------------------------

larana v08\_17\_14
----------------------------------------

-   2020-07-22 Lynn Garren : larana v08\_17\_14 for larsoft v08\_59\_00

larreco v08\_32\_07
------------------------------------------

-   2020-07-22 Lynn Garren : larreco v08\_32\_07 for larsoft v08\_59\_00

larsim v08\_30\_00
----------------------------------------

-   2020-07-22 Lynn Garren : larsim v08\_30\_00 for larsoft v08\_59\_00
-   2020-07-21 Lynn Garren : Merge pull request \#28 from SBNSoftware/feature/gputnam-simphotonlitefilter
-   2020-07-16 gputnam : Make const thigns const. Fix config name typo.
-   2020-07-16 gputnam : Change time window type to pair to statically enforce configuration.
-   2020-07-16 gputnam : Removed double include.
-   2020-07-03 gputnam : add comments.
-   2020-07-03 gputnam : Filter for requiring number of photons inside a time window using the sim::SimPhotonsLite data product.

larevt v08\_12\_00
----------------------------------------

lardata v08\_15\_09
------------------------------------------

larcore v08\_11\_10
------------------------------------------

larpandoracontent v03\_18\_00
--------------------------------------------------------------

larsoftobj v08\_29\_02
------------------------------------------------

lardataobj v08\_11\_02
------------------------------------------------

lardataalg v08\_13\_14
------------------------------------------------

larcorealg v08\_22\_02
------------------------------------------------

larcoreobj v08\_12\_01
------------------------------------------------

webevd v08\_00\_07
----------------------------------------

larbatch v01\_52\_02
--------------------------------------------

larutils v1\_26\_01
------------------------------------------
