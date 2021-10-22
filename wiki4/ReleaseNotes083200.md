LArSoft v08\_32\_00 Release Notes[¶](#LArSoft-v08_32_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v08\_32\_00 Release Notes](#LArSoft-v08_32_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_32\_00](#larsoft-v08_32_00)
    -   [lareventdisplay v08\_08\_15](#lareventdisplay-v08_08_15)
    -   [larexamples v08\_02\_21](#larexamples-v08_02_21)
    -   [larg4 v08\_04\_01](#larg4-v08_04_01)
    -   [larpandora v08\_07\_19](#larpandora-v08_07_19)
    -   [larwirecell v08\_06\_00](#larwirecell-v08_06_00)
    -   [larana v08\_10\_15](#larana-v08_10_15)
    -   [larreco v08\_19\_00](#larreco-v08_19_00)
    -   [larsim v08\_13\_02](#larsim-v08_13_02)
    -   [larevt v08\_06\_11](#larevt-v08_06_11)
    -   [lardata v08\_08\_00](#lardata-v08_08_00)
    -   [larcore v08\_05\_02](#larcore-v08_05_02)
    -   [larpandoracontent v03\_15\_06](#larpandoracontent-v03_15_06)
    -   [larsoftobj v08\_18\_01](#larsoftobj-v08_18_01)
    -   [lardataobj v08\_05\_01](#lardataobj-v08_05_01)
    -   [lardataalg v08\_08\_07](#lardataalg-v08_08_07)
    -   [larcorealg v08\_14\_04](#larcorealg-v08_14_04)
    -   [larcoreobj v08\_05\_05](#larcoreobj-v08_05_05)
    -   [larbatch v01\_51\_08](#larbatch-v01_51_08)
    -   [larutils v1\_24\_04](#larutils-v1_24_04)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_32\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_32_00/larsoft-v08_32_00.html)\
Download instructions for [just larsoftobj v08\_18\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_18_01/larsoftobj-v08_18_01.html)


Purpose[¶](#Purpose)
--------------------

-   changes in develop
-   approved feature branches
-   resolve [\#23348](/redmine/issues/23348 "Bug: Memory leaks while reading artdaq Fragments from data files (Closed)")


New features[¶](#New-features)
------------------------------

-   larwirecell feature/wgu\_simChannel
-   larreco feature/usher\_candhitinterfacemods.
-   lardata LArFFTW
    -   see [\#23343](/redmine/issues/23343 "Feature: thread-safe replacement for LArFFT (Closed)")
    -   as part of adding LArFFTW to lardata/Utilities, MarqFitAlg was move from larreco to lardata/Utilities


Bug fixes[¶](#Bug-fixes)
------------------------

-   root v6\_18\_04b resolves [\#23348](/redmine/issues/23348 "Bug: Memory leaks while reading artdaq Fragments from data files (Closed)")
    -   Reading certain DUNE data fragments with root v6\_18\_04 triggered a bug that had been in root for a very long time.
    -   This bug was identified and fixed with a patch in root v6\_18\_04b


Updated dependencies[¶](#Updated-dependencies)
----------------------------------------------

-   root v6\_18\_04b
-   fftw v3\_3\_8a
    -   with enhanced build options including threads, OpenMP and micro-architecture settings (where appropriate)
-   artdaq\_core v3\_05\_06
-   art\_root\_io v1\_00\_10
-   canvas\_root\_io v1\_03\_07
-   gallery v1\_12\_07
-   genie v3\_00\_06c
-   nusimdata v1\_19\_02
-   nugen v1\_05\_03
-   nug4 v1\_01\_02
-   nurandom v1\_01\_02
-   nutools v3\_04\_03
-   artg4tk v09\_05\_02
-   systematicstools v00\_04\_02
-   nusystematics v00\_06\_03
-   wirecell v0\_12\_4c
-   marley v1\_1\_1c
-   pandora v03\_11\_01e


Change List[¶](#Change-List)
============================


larsoft v08\_32\_00[¶](#larsoft-v08_32_00)
------------------------------------------

-   2019-10-03 Lynn Garren : larsoft v08\_32\_00 for larsoft v08\_32\_00
-   2019-10-03 Lynn Garren : Product versions


lareventdisplay v08\_08\_15[¶](#lareventdisplay-v08_08_15)
----------------------------------------------------------

-   2019-10-03 Lynn Garren : lareventdisplay v08\_08\_15 for larsoft v08\_32\_00


larexamples v08\_02\_21[¶](#larexamples-v08_02_21)
--------------------------------------------------

-   2019-10-03 Lynn Garren : larexamples v08\_02\_21 for larsoft v08\_32\_00


larg4 v08\_04\_01[¶](#larg4-v08_04_01)
--------------------------------------

-   2019-10-03 Lynn Garren : larg4 v08\_04\_01 for larsoft v08\_32\_00


larpandora v08\_07\_19[¶](#larpandora-v08_07_19)
------------------------------------------------

-   2019-10-03 Lynn Garren : larpandora v08\_07\_19 for larsoft v08\_32\_00


larwirecell v08\_06\_00[¶](#larwirecell-v08_06_00)
--------------------------------------------------

-   2019-10-03 Lynn Garren : larwirecell v08\_06\_00 for larsoft v08\_32\_00
-   2019-10-01 Lynn Garren : Merge branch ‘feature/wgu\_simChannel’ into release/v08\_31\_02
-   2019-10-01 Wenqiang Gu : keep it compatible with uboone so far
-   2019-09-23 Wenqiang Gu : generic simChannelSink


larana v08\_10\_15[¶](#larana-v08_10_15)
----------------------------------------

-   2019-10-03 Lynn Garren : larana v08\_10\_15 for larsoft v08\_32\_00


larreco v08\_19\_00[¶](#larreco-v08_19_00)
------------------------------------------

-   2019-10-03 Lynn Garren : larreco v08\_19\_00 for larsoft v08\_32\_00
-   2019-10-02 Lynn Garren : move MarqFitAlg to lardata Utilities
-   2019-10-01 Usher, Tracy L : Enabling better output for the diagnostics mode of the candidate peak finder. This required a slight modification to the interface class. These changes should be minor and non-breaking to standard users (icaruscode needs this for some updates it has in the pipeline).


larsim v08\_13\_02[¶](#larsim-v08_13_02)
----------------------------------------

-   2019-10-03 Lynn Garren : larsim v08\_13\_02 for larsoft v08\_32\_00


larevt v08\_06\_11[¶](#larevt-v08_06_11)
----------------------------------------

-   2019-10-03 Lynn Garren : larevt v08\_06\_11 for larsoft v08\_32\_00


lardata v08\_08\_00[¶](#lardata-v08_08_00)
------------------------------------------

-   2019-10-03 Lynn Garren : lardata v08\_08\_00 for larsoft v08\_32\_00
-   2019-10-02 Lynn Garren : remove circular dependence on larreco
-   2019-10-02 Lynn Garren : move MarqFitAlg here from larreco
-   2019-09-26 Michael Wang : added thread-safe version of LArFFT called LArFFTW


larcore v08\_05\_02[¶](#larcore-v08_05_02)
------------------------------------------

-   2019-10-03 Lynn Garren : larcore v08\_05\_02 for larsoft v08\_32\_00


larpandoracontent v03\_15\_06[¶](#larpandoracontent-v03_15_06)
--------------------------------------------------------------

-   2019-10-03 Lynn Garren : larpandoracontent v03\_15\_06 for larsoft v08\_32\_00
-   2019-10-03 Lynn Garren : v03\_15\_06 with root v6\_18\_04b


larsoftobj v08\_18\_01[¶](#larsoftobj-v08_18_01)
------------------------------------------------

-   2019-10-03 Lynn Garren : larsoftobj v08\_18\_01 for larsoft v08\_32\_00
-   2019-10-03 Lynn Garren : versions
-   2019-10-03 Lynn Garren : product versions


lardataobj v08\_05\_01[¶](#lardataobj-v08_05_01)
------------------------------------------------

-   2019-10-03 Lynn Garren : lardataobj v08\_05\_01 for larsoft v08\_32\_00


lardataalg v08\_08\_07[¶](#lardataalg-v08_08_07)
------------------------------------------------

-   2019-10-03 Lynn Garren : lardataalg v08\_08\_07 for larsoft v08\_32\_00


larcorealg v08\_14\_04[¶](#larcorealg-v08_14_04)
------------------------------------------------

-   2019-10-03 Lynn Garren : larcorealg v08\_14\_04 for larsoft v08\_32\_00


larcoreobj v08\_05\_05[¶](#larcoreobj-v08_05_05)
------------------------------------------------

-   2019-10-03 Lynn Garren : larcoreobj v08\_05\_05 for larsoft v08\_32\_00


larbatch v01\_51\_08[¶](#larbatch-v01_51_08)
--------------------------------------------

-   2019-10-03 Lynn Garren : larbatch v01\_51\_08 for larsoft v08\_32\_00
-   2019-09-26 Herbert Greenlee : Add optional stage xml element batchname.


larutils v1\_24\_04[¶](#larutils-v1_24_04)
------------------------------------------
