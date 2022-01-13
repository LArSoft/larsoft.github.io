LArSoft v08_32_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08_32_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_32_00/larsoft-v08_32_00.html)
Download instructions for [just larsoftobj v08_18_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_18_01/larsoftobj-v08_18_01.html)

Purpose
--------------------

-   changes in develop
-   approved feature branches
-   resolve [redmine issue 23348](https://cdcvs.fnal.gov/redmine/issues/23348)

New features
------------------------------

-   larwirecell feature/wgu_simChannel
-   larreco feature/usher_candhitinterfacemods.
-   lardata LArFFTW
    -   see [redmine issue 23343](https://cdcvs.fnal.gov/redmine/issues/23343)
    -   as part of adding LArFFTW to lardata/Utilities, MarqFitAlg was move from larreco to lardata/Utilities

Bug fixes
------------------------

-   root v6_18_04b resolves [redmine issue 23348](https://cdcvs.fnal.gov/redmine/issues/23348)
    -   Reading certain DUNE data fragments with root v6_18_04 triggered a bug that had been in root for a very long time.
    -   This bug was identified and fixed with a patch in root v6_18_04b

Updated dependencies
----------------------------------------------

-   root v6_18_04b
-   fftw v3_3_8a
    -   with enhanced build options including threads, OpenMP and micro-architecture settings (where appropriate)
-   artdaq_core v3_05_06
-   art_root_io v1_00_10
-   canvas_root_io v1_03_07
-   gallery v1_12_07
-   genie v3_00_06c
-   nusimdata v1_19_02
-   nugen v1_05_03
-   nug4 v1_01_02
-   nurandom v1_01_02
-   nutools v3_04_03
-   artg4tk v09_05_02
-   systematicstools v00_04_02
-   nusystematics v00_06_03
-   wirecell v0_12_4c
-   marley v1_1_1c
-   pandora v03_11_01e

Change List
============================

larsoft v08_32_00
------------------------------------------

-   2019-10-03 Lynn Garren : larsoft v08_32_00 for larsoft v08_32_00
-   2019-10-03 Lynn Garren : Product versions

lareventdisplay v08_08_15
----------------------------------------------------------

-   2019-10-03 Lynn Garren : lareventdisplay v08_08_15 for larsoft v08_32_00

larexamples v08_02_21
--------------------------------------------------

-   2019-10-03 Lynn Garren : larexamples v08_02_21 for larsoft v08_32_00

larg4 v08_04_01
--------------------------------------

-   2019-10-03 Lynn Garren : larg4 v08_04_01 for larsoft v08_32_00

larpandora v08_07_19
------------------------------------------------

-   2019-10-03 Lynn Garren : larpandora v08_07_19 for larsoft v08_32_00

larwirecell v08_06_00
--------------------------------------------------

-   2019-10-03 Lynn Garren : larwirecell v08_06_00 for larsoft v08_32_00
-   2019-10-01 Lynn Garren : Merge branch ‘feature/wgu_simChannel’ into release/v08_31_02
-   2019-10-01 Wenqiang Gu : keep it compatible with uboone so far
-   2019-09-23 Wenqiang Gu : generic simChannelSink

larana v08_10_15
----------------------------------------

-   2019-10-03 Lynn Garren : larana v08_10_15 for larsoft v08_32_00

larreco v08_19_00
------------------------------------------

-   2019-10-03 Lynn Garren : larreco v08_19_00 for larsoft v08_32_00
-   2019-10-02 Lynn Garren : move MarqFitAlg to lardata Utilities
-   2019-10-01 Usher, Tracy L : Enabling better output for the diagnostics mode of the candidate peak finder. This required a slight modification to the interface class. These changes should be minor and non-breaking to standard users (icaruscode needs this for some updates it has in the pipeline).

larsim v08_13_02
----------------------------------------

-   2019-10-03 Lynn Garren : larsim v08_13_02 for larsoft v08_32_00

larevt v08_06_11
----------------------------------------

-   2019-10-03 Lynn Garren : larevt v08_06_11 for larsoft v08_32_00

lardata v08_08_00
------------------------------------------

-   2019-10-03 Lynn Garren : lardata v08_08_00 for larsoft v08_32_00
-   2019-10-02 Lynn Garren : remove circular dependence on larreco
-   2019-10-02 Lynn Garren : move MarqFitAlg here from larreco
-   2019-09-26 Michael Wang : added thread-safe version of LArFFT called LArFFTW

larcore v08_05_02
------------------------------------------

-   2019-10-03 Lynn Garren : larcore v08_05_02 for larsoft v08_32_00

larpandoracontent v03_15_06
--------------------------------------------------------------

-   2019-10-03 Lynn Garren : larpandoracontent v03_15_06 for larsoft v08_32_00
-   2019-10-03 Lynn Garren : v03_15_06 with root v6_18_04b

larsoftobj v08_18_01
------------------------------------------------

-   2019-10-03 Lynn Garren : larsoftobj v08_18_01 for larsoft v08_32_00
-   2019-10-03 Lynn Garren : versions
-   2019-10-03 Lynn Garren : product versions

lardataobj v08_05_01
------------------------------------------------

-   2019-10-03 Lynn Garren : lardataobj v08_05_01 for larsoft v08_32_00

lardataalg v08_08_07
------------------------------------------------

-   2019-10-03 Lynn Garren : lardataalg v08_08_07 for larsoft v08_32_00

larcorealg v08_14_04
------------------------------------------------

-   2019-10-03 Lynn Garren : larcorealg v08_14_04 for larsoft v08_32_00

larcoreobj v08_05_05
------------------------------------------------

-   2019-10-03 Lynn Garren : larcoreobj v08_05_05 for larsoft v08_32_00

larbatch v01_51_08
--------------------------------------------

-   2019-10-03 Lynn Garren : larbatch v01_51_08 for larsoft v08_32_00
-   2019-09-26 Herbert Greenlee : Add optional stage xml element batchname.

larutils v1_24_04
------------------------------------------
