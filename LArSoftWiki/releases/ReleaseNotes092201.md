# LArSoft v09_22_01 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v09_22_01](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_22_01/larsoft-v09_22_01.html)  
Download instructions for [just larsoftobj v09_05_03](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_05_03/larsoftobj-v09_05_03.html)

## Purpose

-   changes in develop
-   approved PRs

## New features

-   larbatch PR 15
    -   The previous pull request (PR 14) included a fix for a singularity image quoting problem. It turns out that this fixes non-dag (jobsub_submit) job submissions, but breaks dag (jobsub_submit_dag) job submissions. At the time this pull request was being proposed, it was confirmed that jobs were able to be submitted. But it turns out that the dags generated after PR 14 fail at run time if they specify a singularity image.
    -   With the PR 15 update, I have tested that dag and non-dag submissions both work and jobs are able to run to completion.
    -   The other main update in PR 15 is to accommodate a breaking change in the art internal metadata format that happened back in art 3.02. MicroBooNE is (mostly) not afftected by this metadata format update because mcc9 is based off art 3.01. And apparently, no one using larbatch on the develop branch is generating sam metadata. I recently got a bug report from someone generating sam metadata using a newer art version.

## Bug fixes

-   lardataobj PR 12
    -   This pull request contains non-breaking changes to raw::OpDetWaveform and its source, which do not change the ROOT checksum of the object.
    -   The main changes are:
        -   introduction of the const version of raw::OpDetWaveform::Waveform(), missing probably by mistake;
        -   constructor interface avoiding an unnecessary copy of the input data buffer
    -   Another noticeable change is the removal of the request by raw::OpDetWaveform that the whole platform has unsigned long long 8-byte long (even if in the end raw::OpDetWaveform does not even use it).
-   larrecodnn PR 18
    -   Install larrecodnn/ImagePatternAlgs/Tensorflow/quiet_session.h, which quiets complaints from e20 builds.
    -   Note that this header has been in larrecodnn since larsoft v09_16_01

## Updated dependencies

# Change List

## larsoft v09_22_01

-   2021-04-20 Lynn Garren : larsoft v09_22_01 for larsoft v09_22_01
-   2021-04-20 Lynn Garren : product versions

## lareventdisplay v09_01_08

-   2021-04-20 Lynn Garren : lareventdisplay v09_01_08 for larsoft v09_22_01

## larexamples v09_01_08

-   2021-04-20 Lynn Garren : larexamples v09_01_08 for larsoft v09_22_01

## larpandora v09_05_09

-   2021-04-20 Lynn Garren : larpandora v09_05_09 for larsoft v09_22_01

## larsimrad v09_01_08

-   2021-04-20 Lynn Garren : larsimrad v09_01_08 for larsoft v09_22_01

## larrecodnn v09_06_07

-   2021-04-20 Lynn Garren : larrecodnn v09_06_07 for larsoft v09_22_01
-   2021-04-19 Lynn Garren : Merge pull request \#18 from lgarren/feature/lg_install_quiet_session
-   2021-04-19 Lynn Garren : install missing quiet_session.h header

## larwirecell v09_02_05

-   2021-04-20 Lynn Garren : larwirecell v09_02_05 for larsoft v09_22_01

## larana v09_02_04

-   2021-04-20 Lynn Garren : larana v09_02_04 for larsoft v09_22_01

## larreco v09_06_04

-   2021-04-20 Lynn Garren : larreco v09_06_04 for larsoft v09_22_01

## larsim v09_13_01

-   2021-04-20 Lynn Garren : larsim v09_13_01 for larsoft v09_22_01

## larg4 v09_03_05

-   2021-04-20 Lynn Garren : larg4 v09_03_05 for larsoft v09_22_01

## larevt v09_02_04

-   2021-04-20 Lynn Garren : larevt v09_02_04 for larsoft v09_22_01

## lardata v09_02_03

-   2021-04-20 Lynn Garren : lardata v09_02_03 for larsoft v09_22_01

## larcore v09_02_01

## larpandoracontent v03_22_09

## larsoftobj v09_05_03

-   2021-04-20 Lynn Garren : larsoftobj v09_05_03 for larsoft v09_22_01
-   2021-04-20 Lynn Garren : product versions

## lardataobj v09_01_02

-   2021-04-20 Lynn Garren : lardataobj v09_01_02 for larsoft v09_22_01
-   2021-04-19 Lynn Garren : Merge pull request \#12 from PetrilloAtWork/feature/gp_OpDetWaveform
-   2021-04-15 Gianluca Petrillo : Some long due C changes to raw::OpDetWaveform.

## lardataalg v09_04_03

-   2021-04-20 Lynn Garren : lardataalg v09_04_03 for larsoft v09_22_01

## larcorealg v09_01_01

## larcoreobj v09_02_00

## webevd v09_05_04

-   2021-04-20 Lynn Garren : webevd v09_05_04 for larsoft v09_22_01

## larbatch v01_56_00

-   2021-04-20 Lynn Garren : larbatch v01_56_00 for larsoft v09_22_01
-   2021-04-15 Lynn Garren : Merge pull request \#15 from hgreenlee/develop
-   2021-04-14 Herbert Greenlee : Fix quoting singularity image in dag.
-   2021-04-14 Herbert Greenlee : Adapt to art internal sam metadata changes in art 3.02.
-   2020-10-15 Herbert Greenlee : Require only one process_name.

## larutils v1_28_00
