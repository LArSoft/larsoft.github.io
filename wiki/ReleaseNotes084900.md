LArSoft v08\_49\_00 Release Notes(#LArSoft-v08_49_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v08\_49\_00 Release Notes](#LArSoft-v08_49_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_49\_00](#larsoft-v08_49_00)
    -   [lareventdisplay v08\_12\_10](#lareventdisplay-v08_12_10)
    -   [larexamples v08\_06\_10](#larexamples-v08_06_10)
    -   [larg4 v08\_12\_08](#larg4-v08_12_08)
    -   [larpandora v08\_12\_02](#larpandora-v08_12_02)
    -   [larrecodnn v08\_02\_00](#larrecodnn-v08_02_00)
    -   [larwirecell v08\_12\_09](#larwirecell-v08_12_09)
    -   [larana v08\_17\_02](#larana-v08_17_02)
    -   [larreco v08\_31\_00](#larreco-v08_31_00)
    -   [larsim v08\_22\_02](#larsim-v08_22_02)
    -   [larevt v08\_11\_02](#larevt-v08_11_02)
    -   [lardata v08\_15\_02](#lardata-v08_15_02)
    -   [larcore v08\_11\_03](#larcore-v08_11_03)
    -   [larpandoracontent v03\_15\_16](#larpandoracontent-v03_15_16)
    -   [larsoftobj v08\_27\_05](#larsoftobj-v08_27_05)
    -   [lardataobj v08\_10\_06](#lardataobj-v08_10_06)
    -   [lardataalg v08\_13\_08](#lardataalg-v08_13_08)
    -   [larcorealg v08\_21\_03](#larcorealg-v08_21_03)
    -   [larcoreobj v08\_10\_05](#larcoreobj-v08_10_05)
    -   [larbatch v01\_52\_02](#larbatch-v01_52_02)
    -   [larutils v1\_25\_09](#larutils-v1_25_09)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_49\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_49_00/larsoft-v08_49_00.html)\
Download instructions for [just larsoftobj v08\_27\_05](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_27_05/larsoftobj-v08_27_05.html)

Purpose(#Purpose)
--------------------

-   changes in develop
-   approved PRs

New features(#New-features)
------------------------------

-   larreco PR 10 tbb GausHitFinder\_module
-   larrecodnn PR 2 refactored PointIdAlg to split apart model interfaces and new ML alg for waveform recognition
-   larcoreobj PR 6 add in SampledDicts files for SamplingSource
-   lardataobj PR 6 add VertexSlice Assns

Bug fixes(#Bug-fixes)
------------------------

-   larsim PR 12 Fixing a bug in MUSUN generator

Updated dependencies(#Updated-dependencies)
----------------------------------------------

-   libwda v2\_28\_0 security update
    -   In this version we introduced another way to control the server certificate CA chain verification by providing the CA certs directory path via SSL\_CERT\_DIR environment variable. This is more convenient way compare to the CA certs bundle file we introduced earlier.
    -   We are doing this in accordance with the General requirement from DOE to transfer all off-site traffic to HTTPS. All the experiments must follow this. The deadline was March 31.
-   nutools v3\_06\_03
-   ifdh\_art v2\_10\_04
-   nugen v1\_10\_04
-   nuevdb v1\_02\_04
-   nusystematics v00\_10\_01

Change List(#Change-List)
============================

larsoft v08\_49\_00(#larsoft-v08_49_00)
------------------------------------------

-   2020-04-07 Lynn Garren : larsoft v08\_49\_00
-   2020-04-07 Lynn Garren : larsoft v08\_48\_02 for larsoft v08\_49\_00
-   2020-04-07 Lynn Garren : product versions

lareventdisplay v08\_12\_10(#lareventdisplay-v08_12_10)
----------------------------------------------------------

-   2020-04-07 Lynn Garren : lareventdisplay v08\_12\_10 for larsoft v08\_49\_00

larexamples v08\_06\_10(#larexamples-v08_06_10)
--------------------------------------------------

-   2020-04-07 Lynn Garren : larexamples v08\_06\_10 for larsoft v08\_49\_00

larg4 v08\_12\_08(#larg4-v08_12_08)
--------------------------------------

-   2020-04-07 Lynn Garren : larg4 v08\_12\_08 for larsoft v08\_49\_00

larpandora v08\_12\_02(#larpandora-v08_12_02)
------------------------------------------------

-   2020-04-07 Lynn Garren : larpandora v08\_12\_02 for larsoft v08\_49\_00

larrecodnn v08\_02\_00(#larrecodnn-v08_02_00)
------------------------------------------------

-   2020-04-07 Lynn Garren : larrecodnn v08\_02\_00 for larsoft v08\_49\_00
-   2020-04-07 Lynn Garren : additional whitespace cleanup
-   2020-04-06 mhlswang : implemented PR review comments from Kyle K
-   2020-04-03 mhlswang : new ML tool for recognizing signals in raw wire waveforms
-   2020-04-03 mhlswang : refactored tool version of PointIdAlg that splits model interfaces apart
-   2020-04-03 mhlswang : new version of EmTrackMichelId that uses tool interface in PointIdAlgTools
-   2020-04-03 mhlswang : restored previous version of PointIdAlg

larwirecell v08\_12\_09(#larwirecell-v08_12_09)
--------------------------------------------------

-   2020-04-07 Lynn Garren : larwirecell v08\_12\_09 for larsoft v08\_49\_00

larana v08\_17\_02(#larana-v08_17_02)
----------------------------------------

-   2020-04-07 Lynn Garren : larana v08\_17\_02 for larsoft v08\_49\_00

larreco v08\_31\_00(#larreco-v08_31_00)
------------------------------------------

-   2020-04-07 Lynn Garren : larreco v08\_31\_00 for larsoft v08\_49\_00
-   2020-04-06 Lynn Garren : Merge pull request \#10 from cerati/tbb-gaushitfinder
-   2020-04-02 Giuseppe Cerati : more compact and more efficient code, following Kyle’s suggestions on PR\#10
-   2020-04-02 Giuseppe Cerati : removeWhiteSpace.sh
-   2020-04-02 Giuseppe Cerati : set input parameters as const where appropriate
-   2020-04-01 Giuseppe Cerati : add FillHists parameter
-   2020-04-01 Giuseppe Cerati : fill filteredHitVec only if required
-   2020-04-01 Giuseppe Cerati : fix bug that prevented proper setting of NDF
-   2020-02-12 Giuseppe Cerati : multi-threaded implementation of GausHitFinder module (from Sophie Berkman)

larsim v08\_22\_02(#larsim-v08_22_02)
----------------------------------------

-   2020-04-07 Lynn Garren : larsim v08\_22\_02 for larsoft v08\_49\_00
-   2020-04-07 Lynn Garren : Merge pull request \#12 from vpec0/develop
-   2020-04-06 Viktor Pec : Merge branch ‘develop’ of github.com:LArSoft/larsim into develop
-   2020-03-30 Viktor Pec : Fixing a decision on which XY face to generate muons based on their direction, so that they point inside of the generation box, not outside of it.

larevt v08\_11\_02(#larevt-v08_11_02)
----------------------------------------

-   2020-04-07 Lynn Garren : larevt v08\_11\_02 for larsoft v08\_49\_00

lardata v08\_15\_02(#lardata-v08_15_02)
------------------------------------------

-   2020-04-07 Lynn Garren : lardata v08\_15\_02 for larsoft v08\_49\_00

larcore v08\_11\_03(#larcore-v08_11_03)
------------------------------------------

-   2020-04-07 Lynn Garren : larcore v08\_11\_03 for larsoft v08\_49\_00

larpandoracontent v03\_15\_16(#larpandoracontent-v03_15_16)
--------------------------------------------------------------

larsoftobj v08\_27\_05(#larsoftobj-v08_27_05)
------------------------------------------------

-   2020-04-07 Lynn Garren : larsoftobj v08\_27\_05 for larsoft v08\_49\_00
-   2020-04-07 Lynn Garren : product versions

lardataobj v08\_10\_06(#lardataobj-v08_10_06)
------------------------------------------------

-   2020-04-07 Lynn Garren : lardataobj v08\_10\_06 for larsoft v08\_49\_00
-   2020-04-07 Lynn Garren : Merge pull request [\#6](/redmine/issues/6 "Feature: Non-KCA Remediation (New)") from wesketchum/wketchum\_missing\_VtxSliceAssnsDicts
-   2020-04-01 Wesley : add VertexSlice Assns

lardataalg v08\_13\_08(#lardataalg-v08_13_08)
------------------------------------------------

-   2020-04-07 Lynn Garren : lardataalg v08\_13\_08 for larsoft v08\_49\_00

larcorealg v08\_21\_03(#larcorealg-v08_21_03)
------------------------------------------------

-   2020-04-07 Lynn Garren : larcorealg v08\_21\_03 for larsoft v08\_49\_00

larcoreobj v08\_10\_05(#larcoreobj-v08_10_05)
------------------------------------------------

-   2020-04-07 Lynn Garren : larcoreobj v08\_10\_05 for larsoft v08\_49\_00
-   2020-04-07 Lynn Garren : Merge pull request [\#6](/redmine/issues/6 "Feature: Non-KCA Remediation (New)") from wesketchum/wketchum\_SampledDicts
-   2020-04-06 Wesley : removeWhiteSpace
-   2020-04-06 Wesley : add in SampledDicts files for SamplingSource

larbatch v01\_52\_02(#larbatch-v01_52_02)
--------------------------------------------

larutils v1\_25\_09(#larutils-v1_25_09)
------------------------------------------
