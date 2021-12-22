LArSoft v09\_22\_01 Release Notes(#LArSoft-v09_22_01-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v09\_22\_01 Release Notes](#LArSoft-v09_22_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_22\_01](#larsoft-v09_22_01)
    -   [lareventdisplay v09\_01\_08](#lareventdisplay-v09_01_08)
    -   [larexamples v09\_01\_08](#larexamples-v09_01_08)
    -   [larpandora v09\_05\_09](#larpandora-v09_05_09)
    -   [larsimrad v09\_01\_08](#larsimrad-v09_01_08)
    -   [larrecodnn v09\_06\_07](#larrecodnn-v09_06_07)
    -   [larwirecell v09\_02\_05](#larwirecell-v09_02_05)
    -   [larana v09\_02\_04](#larana-v09_02_04)
    -   [larreco v09\_06\_04](#larreco-v09_06_04)
    -   [larsim v09\_13\_01](#larsim-v09_13_01)
    -   [larg4 v09\_03\_05](#larg4-v09_03_05)
    -   [larevt v09\_02\_04](#larevt-v09_02_04)
    -   [lardata v09\_02\_03](#lardata-v09_02_03)
    -   [larcore v09\_02\_01](#larcore-v09_02_01)
    -   [larpandoracontent v03\_22\_09](#larpandoracontent-v03_22_09)
    -   [larsoftobj v09\_05\_03](#larsoftobj-v09_05_03)
    -   [lardataobj v09\_01\_02](#lardataobj-v09_01_02)
    -   [lardataalg v09\_04\_03](#lardataalg-v09_04_03)
    -   [larcorealg v09\_01\_01](#larcorealg-v09_01_01)
    -   [larcoreobj v09\_02\_00](#larcoreobj-v09_02_00)
    -   [webevd v09\_05\_04](#webevd-v09_05_04)
    -   [larbatch v01\_56\_00](#larbatch-v01_56_00)
    -   [larutils v1\_28\_00](#larutils-v1_28_00)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v09\_22\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_22_01/larsoft-v09_22_01.html)\
Download instructions for [just larsoftobj v09\_05\_03](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_05_03/larsoftobj-v09_05_03.html)

Purpose(#Purpose)
--------------------

-   changes in develop
-   approved PRs

New features(#New-features)
------------------------------

-   larbatch PR 15
    -   The previous pull request (PR 14) included a fix for a singularity image quoting problem. It turns out that this fixes non-dag (jobsub\_submit) job submissions, but breaks dag (jobsub\_submit\_dag) job submissions. At the time this pull request was being proposed, it was confirmed that jobs were able to be submitted. But it turns out that the dags generated after PR 14 fail at run time if they specify a singularity image.
    -   With the PR 15 update, I have tested that dag and non-dag submissions both work and jobs are able to run to completion.
    -   The other main update in PR 15 is to accommodate a breaking change in the art internal metadata format that happened back in art 3.02. MicroBooNE is (mostly) not afftected by this metadata format update because mcc9 is based off art 3.01. And apparently, no one using larbatch on the develop branch is generating sam metadata. I recently got a bug report from someone generating sam metadata using a newer art version.

Bug fixes(#Bug-fixes)
------------------------

-   lardataobj PR 12
    -   This pull request contains non-breaking changes to raw::OpDetWaveform and its source, which do not change the ROOT checksum of the object.
    -   The main changes are:
        -   introduction of the const version of raw::OpDetWaveform::Waveform(), missing probably by mistake;
        -   constructor interface avoiding an unnecessary copy of the input data buffer
    -   Another noticeable change is the removal of the request by raw::OpDetWaveform that the whole platform has unsigned long long 8-byte long (even if in the end raw::OpDetWaveform does not even use it).
-   larrecodnn PR 18
    -   Install larrecodnn/ImagePatternAlgs/Tensorflow/quiet\_session.h, which quiets complaints from e20 builds.
    -   Note that this header has been in larrecodnn since larsoft v09\_16\_01

Updated dependencies(#Updated-dependencies)
----------------------------------------------

Change List(#Change-List)
============================

larsoft v09\_22\_01(#larsoft-v09_22_01)
------------------------------------------

-   2021-04-20 Lynn Garren : larsoft v09\_22\_01 for larsoft v09\_22\_01
-   2021-04-20 Lynn Garren : product versions

lareventdisplay v09\_01\_08(#lareventdisplay-v09_01_08)
----------------------------------------------------------

-   2021-04-20 Lynn Garren : lareventdisplay v09\_01\_08 for larsoft v09\_22\_01

larexamples v09\_01\_08(#larexamples-v09_01_08)
--------------------------------------------------

-   2021-04-20 Lynn Garren : larexamples v09\_01\_08 for larsoft v09\_22\_01

larpandora v09\_05\_09(#larpandora-v09_05_09)
------------------------------------------------

-   2021-04-20 Lynn Garren : larpandora v09\_05\_09 for larsoft v09\_22\_01

larsimrad v09\_01\_08(#larsimrad-v09_01_08)
----------------------------------------------

-   2021-04-20 Lynn Garren : larsimrad v09\_01\_08 for larsoft v09\_22\_01

larrecodnn v09\_06\_07(#larrecodnn-v09_06_07)
------------------------------------------------

-   2021-04-20 Lynn Garren : larrecodnn v09\_06\_07 for larsoft v09\_22\_01
-   2021-04-19 Lynn Garren : Merge pull request \#18 from lgarren/feature/lg\_install\_quiet\_session
-   2021-04-19 Lynn Garren : install missing quiet\_session.h header

larwirecell v09\_02\_05(#larwirecell-v09_02_05)
--------------------------------------------------

-   2021-04-20 Lynn Garren : larwirecell v09\_02\_05 for larsoft v09\_22\_01

larana v09\_02\_04(#larana-v09_02_04)
----------------------------------------

-   2021-04-20 Lynn Garren : larana v09\_02\_04 for larsoft v09\_22\_01

larreco v09\_06\_04(#larreco-v09_06_04)
------------------------------------------

-   2021-04-20 Lynn Garren : larreco v09\_06\_04 for larsoft v09\_22\_01

larsim v09\_13\_01(#larsim-v09_13_01)
----------------------------------------

-   2021-04-20 Lynn Garren : larsim v09\_13\_01 for larsoft v09\_22\_01

larg4 v09\_03\_05(#larg4-v09_03_05)
--------------------------------------

-   2021-04-20 Lynn Garren : larg4 v09\_03\_05 for larsoft v09\_22\_01

larevt v09\_02\_04(#larevt-v09_02_04)
----------------------------------------

-   2021-04-20 Lynn Garren : larevt v09\_02\_04 for larsoft v09\_22\_01

lardata v09\_02\_03(#lardata-v09_02_03)
------------------------------------------

-   2021-04-20 Lynn Garren : lardata v09\_02\_03 for larsoft v09\_22\_01

larcore v09\_02\_01(#larcore-v09_02_01)
------------------------------------------

larpandoracontent v03\_22\_09(#larpandoracontent-v03_22_09)
--------------------------------------------------------------

larsoftobj v09\_05\_03(#larsoftobj-v09_05_03)
------------------------------------------------

-   2021-04-20 Lynn Garren : larsoftobj v09\_05\_03 for larsoft v09\_22\_01
-   2021-04-20 Lynn Garren : product versions

lardataobj v09\_01\_02(#lardataobj-v09_01_02)
------------------------------------------------

-   2021-04-20 Lynn Garren : lardataobj v09\_01\_02 for larsoft v09\_22\_01
-   2021-04-19 Lynn Garren : Merge pull request \#12 from PetrilloAtWork/feature/gp\_OpDetWaveform
-   2021-04-15 Gianluca Petrillo : Some long due C++ changes to raw::OpDetWaveform.

lardataalg v09\_04\_03(#lardataalg-v09_04_03)
------------------------------------------------

-   2021-04-20 Lynn Garren : lardataalg v09\_04\_03 for larsoft v09\_22\_01

larcorealg v09\_01\_01(#larcorealg-v09_01_01)
------------------------------------------------

larcoreobj v09\_02\_00(#larcoreobj-v09_02_00)
------------------------------------------------

webevd v09\_05\_04(#webevd-v09_05_04)
----------------------------------------

-   2021-04-20 Lynn Garren : webevd v09\_05\_04 for larsoft v09\_22\_01

larbatch v01\_56\_00(#larbatch-v01_56_00)
--------------------------------------------

-   2021-04-20 Lynn Garren : larbatch v01\_56\_00 for larsoft v09\_22\_01
-   2021-04-15 Lynn Garren : Merge pull request \#15 from hgreenlee/develop
-   2021-04-14 Herbert Greenlee : Fix quoting singularity image in dag.
-   2021-04-14 Herbert Greenlee : Adapt to art internal sam metadata changes in art 3.02.
-   2020-10-15 Herbert Greenlee : Require only one process\_name.

larutils v1\_28\_00(#larutils-v1_28_00)
------------------------------------------
