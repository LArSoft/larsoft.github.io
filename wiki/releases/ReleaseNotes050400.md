LArSoft v05_04_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v05_04_00 Release Notes](#LArSoft-v05_04_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v05_04_00](#larsoft-v05_04_00)
    -   [lareventdisplay v05_01_04](#lareventdisplay-v05_01_04)
    -   [larexamples v05_00_06](#larexamples-v05_00_06)
    -   [larpandora v05_02_00](#larpandora-v05_02_00)
    -   [larana v05_02_00](#larana-v05_02_00)
    -   [larreco v05_02_01](#larreco-v05_02_01)
    -   [larsim v05_01_02](#larsim-v05_01_02)
    -   [larevt v05_01_02](#larevt-v05_01_02)
    -   [lardata v05_02_00](#lardata-v05_02_00)
    -   [larcore v05_00_02](#larcore-v05_00_02)
    -   [larbatch v01_20_06](#larbatch-v01_20_06)
    -   [larutils v1_05_04](#larutils-v1_05_04)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v05_04_00/larsoft-v05_04_00.html)

Purpose
--------------------

-   Integrate approved changes

New features
------------------------------

-   nutools v1_23_02 with fix to magnetic field
-   larana, uboonecode, dunetpc feature/gvsinev_SplitOpFlashFinder
    -   [https://indico.fnal.gov/getFile.py/access?contribId=1&resId=0&materialId=slides&confId=11676](https://indico.fnal.gov/getFile.py/access?contribId=1&resId=0&materialId=slides&confId=11676)
-   pandora v02_06_00 and larpandoracontent v02_05_00
    -   [https://indico.fnal.gov/getFile.py/access?contribId=4&resId=0&materialId=slides&confId=11676](https://indico.fnal.gov/getFile.py/access?contribId=4&resId=0&materialId=slides&confId=11676)
    -   larpandora, dunetpc, lar1ndcode feature/PrepareFor_LArPandoraContent_v02-05-00
-   lardata, larreco, larana, dunetpc, argoneutcode, lariatsoft feature/gp_NoServiceInTrack
    -   [https://indico.fnal.gov/getFile.py/access?contribId=3&resId=0&materialId=slides&confId=11714](https://indico.fnal.gov/getFile.py/access?contribId=3&resId=0&materialId=slides&confId=11714)

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|nutools|v1_23_02|e9||
|pandora|v02_06_00|e9:nu||
|larpandoracontent|v02_05_00|e9:nu||

Change List
============================

larsoft v05_04_00
------------------------------------------

-   2016-03-16 Lynn Garren : larsoft v05_04_00 for larsoft v05_04_00
-   2016-03-16 Lynn Garren : update product versions
-   2016-03-16 Lynn Garren : update dependency database

lareventdisplay v05_01_04
----------------------------------------------------------

-   2016-03-16 Lynn Garren : lareventdisplay v05_01_04 for larsoft v05_04_00

larexamples v05_00_06
--------------------------------------------------

-   2016-03-16 Lynn Garren : larexamples v05_00_06 for larsoft v05_04_00

larpandora v05_02_00
------------------------------------------------

-   2016-03-16 Lynn Garren : larpandora v05_02_00 for larsoft v05_04_00
-   2016-03-14 John Marshall : Updated config for VertexBasedPfoMerging algorithm; add new SplitShowerMerging algorithm. Update LArPandoraContent version.

larana v05_02_00
----------------------------------------

-   2016-03-16 Lynn Garren : larana v05_02_00 for larsoft v05_04_00
-   2016-03-16 Lynn Garren : Merge branch ‘feature/gp_NoServiceInTrack’ into release/v05_04_00
-   2016-03-16 Gleb Sinev : Changing standard_opflashsimpleanamodule.OpHitModuleLabel to ophit in opticaldetectormodules.fcl.
-   2016-03-14 Gleb Sinev : Merge branch ‘develop’ into feature/gvsinev_SplitOpFlashFinder
-   2016-03-14 Gleb Sinev : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larana into develop
-   2016-03-11 Gleb Sinev : Use GeometryCore instead of Geometry in OpFlashAlg and OpHitFinder.
-   2016-03-09 Hamlet : Moved TrackUtils.h into lardata (lardata/RecoBaseArt)
-   2016-03-08 Hamlet : Moving recob::Track methods PitchInView() and ProjectedLength() into larreco/RecoAlg/TrackUtils.h
-   2016-02-26 Gleb Sinev : Merge branch ‘develop’ into feature/gvsinev_SplitOpFlashFinder
-   2016-02-26 Gleb Sinev : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larana into develop
-   2016-02-19 Gleb Sinev : Merge branch ‘develop’ into feature/gvsinev_SplitOpFlashFinder
-   2016-02-19 Gleb Sinev : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larana into develop
-   2016-02-19 Gleb Sinev : Update to LArSoft v05_00_02.
-   2016-02-18 Gleb Sinev : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larana into develop
-   2016-02-18 Gleb Sinev : Solve all the merge issues that appeared while updating to v04_36_01.
-   2016-02-17 Gleb Sinev : Merge tag ‘v04_18_01’ of ssh://cdcvs.fnal.gov/cvs/projects/larana into develop
-   2016-02-17 Gleb Sinev : Add a couple of used include statements to OpFlashAlg.h.
-   2016-02-17 Gleb Sinev : Fix OpFlashAlg_test.
-   2016-02-17 Gleb Sinev : Remove NHits_prev variable from OpFlashAlg, since OpFlashAlg does not produce OpHits any more.
-   2016-02-16 Gleb Sinev : Split OpFlashAlg into OpFlashAlg and OpHitAlg.
-   2016-02-16 Gleb Sinev : Remove unused include statements in OpFlashFinder and OpHitFinder.
-   2016-02-16 Gleb Sinev : Remove unnecessary brackets in OpFlashAlg.cxx.
-   2016-02-16 Gleb Sinev : Fix associations created in OpFlashFinder.
-   2016-02-16 Gleb Sinev : Create OpHitFinder and move hit finding code from OpFlashFinder there.
-   2016-02-12 Gleb Sinev : Decouple hit finding and flash finding in OpFlashAlg.
-   2016-02-04 Gleb Sinev : Tidy up OpFlashFinder_module.
-   2016-02-03 Gleb Sinev : Tidy up code in OpFlashAlg.

larreco v05_02_01
------------------------------------------

-   2016-03-16 Lynn Garren : larreco v05_02_01 for larsoft v05_04_00
-   2016-03-16 Lynn Garren : Merge branch ‘feature/gp_NoServiceInTrack’ into release/v05_04_00
-   2016-03-16 Tingjun Yang : Change cout to LogWarning.
-   2016-03-12 Bruce Baller : Comment out std::courts
-   2016-03-12 Bruce Baller : Added more protection against bad overlapping cluster merging.
-   2016-03-09 Hamlet : Moved TrackUtils.h into lardata (lardata/RecoBaseArt)
-   2016-03-09 Hamlet : Moved TrackUtils.h into lardata (lardata/RecoBaseArt)
-   2016-03-08 Hamlet : Moving recob::Track methods PitchInView() and ProjectedLength() into larreco/RecoAlg/TrackUtils.h

larsim v05_01_02
----------------------------------------

-   2016-03-16 Lynn Garren : larsim v05_01_02 for larsoft v05_04_00

larevt v05_01_02
----------------------------------------

-   2016-03-16 Lynn Garren : larevt v05_01_02 for larsoft v05_04_00

lardata v05_02_00
------------------------------------------

-   2016-03-16 Lynn Garren : need the boost system library
-   2016-03-16 Lynn Garren : lardata v05_02_00 for larsoft v05_04_00
-   2016-03-16 Lynn Garren : Merge branch ‘feature/gp_NoServiceInTrack’ into release/v05_04_00
-   2016-03-09 Hamlet : Moved TrackUtils.h into lardata (lardata/RecoBaseArt)
-   2016-03-09 Hamlet : Reduced the dependencies of RecoBase and RawData libraries to the minimum
-   2016-03-08 Hamlet : Moving recob::Track methods PitchInView() and ProjectedLength() into larreco/RecoAlg/TrackUtils.h

larcore v05_00_02
------------------------------------------

-   2016-03-16 Lynn Garren : larcore v05_00_02 for larsoft v05_04_00
-   2016-03-09 Lynn Garren : the correct units are g/cm3, not g/cc

larbatch v01_20_06
--------------------------------------------

larutils v1_05_04
------------------------------------------

-   2016-03-16 Lynn Garren : larutils v1_05_04 for larsoft v05_04_00
-   2016-03-11 Lynn Garren : pull nubase source
-   2016-03-10 Lynn Garren : build a release candidate
