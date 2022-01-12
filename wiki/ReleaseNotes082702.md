LArSoft v08\_27\_02 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08\_27\_02 Release Notes](#LArSoft-v08_27_02-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_27\_02](#larsoft-v08_27_02)
    -   [lareventdisplay v08\_08\_06](#lareventdisplay-v08_08_06)
    -   [larexamples v08\_02\_13](#larexamples-v08_02_13)
    -   [larg4 v08\_03\_11](#larg4-v08_03_11)
    -   [larpandora v08\_07\_10](#larpandora-v08_07_10)
    -   [larwirecell v08\_05\_11](#larwirecell-v08_05_11)
    -   [larana v08\_10\_06](#larana-v08_10_06)
    -   [larreco v08\_16\_03](#larreco-v08_16_03)
    -   [larsim v08\_11\_01](#larsim-v08_11_01)
    -   [larevt v08\_06\_04](#larevt-v08_06_04)
    -   [lardata v08\_07\_02](#lardata-v08_07_02)
    -   [larcore v08\_04\_07](#larcore-v08_04_07)
    -   [larpandoracontent v03\_15\_03](#larpandoracontent-v03_15_03)
    -   [larsoftobj v08\_17\_01](#larsoftobj-v08_17_01)
    -   [lardataobj v08\_04\_07](#lardataobj-v08_04_07)
    -   [lardataalg v08\_08\_02](#lardataalg-v08_08_02)
    -   [larcorealg v08\_14\_00](#larcorealg-v08_14_00)
    -   [larcoreobj v08\_05\_01](#larcoreobj-v08_05_01)
    -   [larbatch v01\_51\_06](#larbatch-v01_51_06)
    -   [larutils v1\_24\_00](#larutils-v1_24_00)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08\_27\_02](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_27_02/larsoft-v08_27_02.html)
Download instructions for [just larsoftobj v08\_17\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_17_01/larsoftobj-v08_17_01.html)

Purpose
--------------------

-   changes in develop
-   approved feature branches

New features
------------------------------

-   optimized GausHitFinder
    -   [https://indico.fnal.gov/event/21261/contribution/1/material/slides/0.pdf](https://indico.fnal.gov/event/21261/contribution/1/material/slides/0.pdf)
    -   larreco feature/team\_gshf-larsoft has been merged with develop
-   larpandoracontent and larpandora feature/larpandoracontent\_v03\_15\_03
    -   A change to the inheritance structure of the master algorithm allowing external uses to register algorithms in the Pandora cosmic and neutrino reconstruction chains.
    -   A fix in the untarring command used by the Coverity static analysis tool.
    -   A configurable cut added that will skip the reconstruction if an event contains an excessive number of hits (by default this cut is std::numeric\_limits\<int\>::max(), so is effectively off).
    -   A modification to the way a matching map between reconstructed and MC particles is used to avoid an exception being thrown when validating the reconstruction. This only occurs in a small number of events.

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   ups v6\_0\_8
    -   Improvements in the setup and setups scripts.
    -   Everything else is the same as v6\_0\_7.

Change List
============================

larsoft v08\_27\_02
------------------------------------------

-   2019-08-06 Lynn Garren : larsoft v08\_27\_02 for larsoft v08\_27\_02
-   2019-08-06 Lynn Garren : update versions

lareventdisplay v08\_08\_06
----------------------------------------------------------

-   2019-08-06 Lynn Garren : lareventdisplay v08\_08\_06 for larsoft v08\_27\_02
-   2019-08-06 Lynn Garren : larsoft v08\_27\_01
-   2019-07-25 Usher, Tracy L : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/lareventdisplay into develop
-   2019-07-25 Usher, Tracy L : Modifying the size of the output space points, draw “lines” by using closely spaced points.
-   2019-07-25 Usher, Tracy L : Fix the issue with only displaying raw display for last TPC

larexamples v08\_02\_13
--------------------------------------------------

larg4 v08\_03\_11
--------------------------------------

larpandora v08\_07\_10
------------------------------------------------

-   2019-08-06 Lynn Garren : larpandora v08\_07\_10 for larsoft v08\_27\_02

larwirecell v08\_05\_11
--------------------------------------------------

larana v08\_10\_06
----------------------------------------

-   2019-08-06 Lynn Garren : larana v08\_10\_06 for larsoft v08\_27\_02

larreco v08\_16\_03
------------------------------------------

-   2019-08-06 Lynn Garren : Merge branch ‘develop’ into release/v08\_27\_02
-   2019-08-06 Lynn Garren : only use the OpenMP flags when OpenMP is found
-   2019-08-06 Lynn Garren : larreco v08\_16\_03 for larsoft v08\_27\_02
-   2019-08-06 Lynn Garren : larsoft v08\_27\_01
-   2019-08-01 Aaron Higuera Pichardo : Fix a bug in the initialize of the hit position and remove detprop-\>ConvertTicksToX()
-   2019-07-31 Tingjun Yang : Change hit index to be the index in the whole hit collection rather than hits associated with the shower.
-   2019-07-26 Sophie Berkman : Make ROOT fitter the default hit finder.
-   2019-07-25 Lynn Garren : pragma needs to be on outermost loop
-   2019-07-25 Lynn Garren : remove unused variable
-   2019-07-25 Lynn Garren : fix header path
-   2019-07-25 Lynn Garren : Merge branch ‘develop’ into feature/team\_gshf-larsoft
-   2019-07-18 Lynn Garren : Add GSHF Marqdt fitter and account for offset (startTime) in waveform

larsim v08\_11\_01
----------------------------------------

larevt v08\_06\_04
----------------------------------------

lardata v08\_07\_02
------------------------------------------

larcore v08\_04\_07
------------------------------------------

larpandoracontent v03\_15\_03
--------------------------------------------------------------

-   2019-08-06 Lynn Garren : larpandoracontent v03\_15\_03 for larsoft v08\_27\_02

larsoftobj v08\_17\_01
------------------------------------------------

lardataobj v08\_04\_07
------------------------------------------------

lardataalg v08\_08\_02
------------------------------------------------

larcorealg v08\_14\_00
------------------------------------------------

larcoreobj v08\_05\_01
------------------------------------------------

larbatch v01\_51\_06
--------------------------------------------

-   2019-08-06 Lynn Garren : larbatch v01\_51\_06 for larsoft v08\_27\_02
-   2019-07-31 Herbert Greenlee : Improve handling of file list queries and file list definitions.
-   2019-07-30 Herbert Greenlee : Remove directory from arguments of –init-script, –init-source, and –end-script options.

larutils v1\_24\_00
------------------------------------------
