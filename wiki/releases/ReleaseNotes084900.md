LArSoft v08_49_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08_49_00 Release Notes](#LArSoft-v08_49_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08_49_00](#larsoft-v08_49_00)
    -   [lareventdisplay v08_12_10](#lareventdisplay-v08_12_10)
    -   [larexamples v08_06_10](#larexamples-v08_06_10)
    -   [larg4 v08_12_08](#larg4-v08_12_08)
    -   [larpandora v08_12_02](#larpandora-v08_12_02)
    -   [larrecodnn v08_02_00](#larrecodnn-v08_02_00)
    -   [larwirecell v08_12_09](#larwirecell-v08_12_09)
    -   [larana v08_17_02](#larana-v08_17_02)
    -   [larreco v08_31_00](#larreco-v08_31_00)
    -   [larsim v08_22_02](#larsim-v08_22_02)
    -   [larevt v08_11_02](#larevt-v08_11_02)
    -   [lardata v08_15_02](#lardata-v08_15_02)
    -   [larcore v08_11_03](#larcore-v08_11_03)
    -   [larpandoracontent v03_15_16](#larpandoracontent-v03_15_16)
    -   [larsoftobj v08_27_05](#larsoftobj-v08_27_05)
    -   [lardataobj v08_10_06](#lardataobj-v08_10_06)
    -   [lardataalg v08_13_08](#lardataalg-v08_13_08)
    -   [larcorealg v08_21_03](#larcorealg-v08_21_03)
    -   [larcoreobj v08_10_05](#larcoreobj-v08_10_05)
    -   [larbatch v01_52_02](#larbatch-v01_52_02)
    -   [larutils v1_25_09](#larutils-v1_25_09)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08_49_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_49_00/larsoft-v08_49_00.html)
Download instructions for [just larsoftobj v08_27_05](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_27_05/larsoftobj-v08_27_05.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

-   larreco PR 10 tbb GausHitFinder_module
-   larrecodnn PR 2 refactored PointIdAlg to split apart model interfaces and new ML alg for waveform recognition
-   larcoreobj PR 6 add in SampledDicts files for SamplingSource
-   lardataobj PR 6 add VertexSlice Assns

Bug fixes
------------------------

-   larsim PR 12 Fixing a bug in MUSUN generator

Updated dependencies
----------------------------------------------

-   libwda v2_28_0 security update
    -   In this version we introduced another way to control the server certificate CA chain verification by providing the CA certs directory path via SSL_CERT_DIR environment variable. This is more convenient way compare to the CA certs bundle file we introduced earlier.
    -   We are doing this in accordance with the General requirement from DOE to transfer all off-site traffic to HTTPS. All the experiments must follow this. The deadline was March 31.
-   nutools v3_06_03
-   ifdh_art v2_10_04
-   nugen v1_10_04
-   nuevdb v1_02_04
-   nusystematics v00_10_01

Change List
============================

larsoft v08_49_00
------------------------------------------

-   2020-04-07 Lynn Garren : larsoft v08_49_00
-   2020-04-07 Lynn Garren : larsoft v08_48_02 for larsoft v08_49_00
-   2020-04-07 Lynn Garren : product versions

lareventdisplay v08_12_10
----------------------------------------------------------

-   2020-04-07 Lynn Garren : lareventdisplay v08_12_10 for larsoft v08_49_00

larexamples v08_06_10
--------------------------------------------------

-   2020-04-07 Lynn Garren : larexamples v08_06_10 for larsoft v08_49_00

larg4 v08_12_08
--------------------------------------

-   2020-04-07 Lynn Garren : larg4 v08_12_08 for larsoft v08_49_00

larpandora v08_12_02
------------------------------------------------

-   2020-04-07 Lynn Garren : larpandora v08_12_02 for larsoft v08_49_00

larrecodnn v08_02_00
------------------------------------------------

-   2020-04-07 Lynn Garren : larrecodnn v08_02_00 for larsoft v08_49_00
-   2020-04-07 Lynn Garren : additional whitespace cleanup
-   2020-04-06 mhlswang : implemented PR review comments from Kyle K
-   2020-04-03 mhlswang : new ML tool for recognizing signals in raw wire waveforms
-   2020-04-03 mhlswang : refactored tool version of PointIdAlg that splits model interfaces apart
-   2020-04-03 mhlswang : new version of EmTrackMichelId that uses tool interface in PointIdAlgTools
-   2020-04-03 mhlswang : restored previous version of PointIdAlg

larwirecell v08_12_09
--------------------------------------------------

-   2020-04-07 Lynn Garren : larwirecell v08_12_09 for larsoft v08_49_00

larana v08_17_02
----------------------------------------

-   2020-04-07 Lynn Garren : larana v08_17_02 for larsoft v08_49_00

larreco v08_31_00
------------------------------------------

-   2020-04-07 Lynn Garren : larreco v08_31_00 for larsoft v08_49_00
-   2020-04-06 Lynn Garren : Merge pull request \#10 from cerati/tbb-gaushitfinder
-   2020-04-02 Giuseppe Cerati : more compact and more efficient code, following Kyle’s suggestions on PR\#10
-   2020-04-02 Giuseppe Cerati : removeWhiteSpace.sh
-   2020-04-02 Giuseppe Cerati : set input parameters as const where appropriate
-   2020-04-01 Giuseppe Cerati : add FillHists parameter
-   2020-04-01 Giuseppe Cerati : fill filteredHitVec only if required
-   2020-04-01 Giuseppe Cerati : fix bug that prevented proper setting of NDF
-   2020-02-12 Giuseppe Cerati : multi-threaded implementation of GausHitFinder module (from Sophie Berkman)

larsim v08_22_02
----------------------------------------

-   2020-04-07 Lynn Garren : larsim v08_22_02 for larsoft v08_49_00
-   2020-04-07 Lynn Garren : Merge pull request \#12 from vpec0/develop
-   2020-04-06 Viktor Pec : Merge branch ‘develop’ of github.com:LArSoft/larsim into develop
-   2020-03-30 Viktor Pec : Fixing a decision on which XY face to generate muons based on their direction, so that they point inside of the generation box, not outside of it.

larevt v08_11_02
----------------------------------------

-   2020-04-07 Lynn Garren : larevt v08_11_02 for larsoft v08_49_00

lardata v08_15_02
------------------------------------------

-   2020-04-07 Lynn Garren : lardata v08_15_02 for larsoft v08_49_00

larcore v08_11_03
------------------------------------------

-   2020-04-07 Lynn Garren : larcore v08_11_03 for larsoft v08_49_00

larpandoracontent v03_15_16
--------------------------------------------------------------

larsoftobj v08_27_05
------------------------------------------------

-   2020-04-07 Lynn Garren : larsoftobj v08_27_05 for larsoft v08_49_00
-   2020-04-07 Lynn Garren : product versions

lardataobj v08_10_06
------------------------------------------------

-   2020-04-07 Lynn Garren : lardataobj v08_10_06 for larsoft v08_49_00
-   2020-04-07 Lynn Garren : Merge pull request [redmine issue 6](https://cdcvs.fnal.gov/redmine/issues/6) from wesketchum/wketchum_missing_VtxSliceAssnsDicts
-   2020-04-01 Wesley : add VertexSlice Assns

lardataalg v08_13_08
------------------------------------------------

-   2020-04-07 Lynn Garren : lardataalg v08_13_08 for larsoft v08_49_00

larcorealg v08_21_03
------------------------------------------------

-   2020-04-07 Lynn Garren : larcorealg v08_21_03 for larsoft v08_49_00

larcoreobj v08_10_05
------------------------------------------------

-   2020-04-07 Lynn Garren : larcoreobj v08_10_05 for larsoft v08_49_00
-   2020-04-07 Lynn Garren : Merge pull request [redmine issue 6](https://cdcvs.fnal.gov/redmine/issues/6) from wesketchum/wketchum_SampledDicts
-   2020-04-06 Wesley : removeWhiteSpace
-   2020-04-06 Wesley : add in SampledDicts files for SamplingSource

larbatch v01_52_02
--------------------------------------------

larutils v1_25_09
------------------------------------------
