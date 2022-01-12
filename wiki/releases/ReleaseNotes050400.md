LArSoft v05\_04\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v05\_04\_00 Release Notes](#LArSoft-v05_04_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v05\_04\_00](#larsoft-v05_04_00)
    -   [lareventdisplay v05\_01\_04](#lareventdisplay-v05_01_04)
    -   [larexamples v05\_00\_06](#larexamples-v05_00_06)
    -   [larpandora v05\_02\_00](#larpandora-v05_02_00)
    -   [larana v05\_02\_00](#larana-v05_02_00)
    -   [larreco v05\_02\_01](#larreco-v05_02_01)
    -   [larsim v05\_01\_02](#larsim-v05_01_02)
    -   [larevt v05\_01\_02](#larevt-v05_01_02)
    -   [lardata v05\_02\_00](#lardata-v05_02_00)
    -   [larcore v05\_00\_02](#larcore-v05_00_02)
    -   [larbatch v01\_20\_06](#larbatch-v01_20_06)
    -   [larutils v1\_05\_04](#larutils-v1_05_04)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v05_04_00/larsoft-v05_04_00.html)

Purpose
--------------------

-   Integrate approved changes

New features
------------------------------

-   nutools v1\_23\_02 with fix to magnetic field
-   larana, uboonecode, dunetpc feature/gvsinev\_SplitOpFlashFinder
    -   [https://indico.fnal.gov/getFile.py/access?contribId=1&resId=0&materialId=slides&confId=11676](https://indico.fnal.gov/getFile.py/access?contribId=1&resId=0&materialId=slides&confId=11676)
-   pandora v02\_06\_00 and larpandoracontent v02\_05\_00
    -   [https://indico.fnal.gov/getFile.py/access?contribId=4&resId=0&materialId=slides&confId=11676](https://indico.fnal.gov/getFile.py/access?contribId=4&resId=0&materialId=slides&confId=11676)
    -   larpandora, dunetpc, lar1ndcode feature/PrepareFor\_LArPandoraContent\_v02-05-00
-   lardata, larreco, larana, dunetpc, argoneutcode, lariatsoft feature/gp\_NoServiceInTrack
    -   [https://indico.fnal.gov/getFile.py/access?contribId=3&resId=0&materialId=slides&confId=11714](https://indico.fnal.gov/getFile.py/access?contribId=3&resId=0&materialId=slides&confId=11714)

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|nutools|v1\_23\_02|e9||
|pandora|v02\_06\_00|e9:nu||
|larpandoracontent|v02\_05\_00|e9:nu||

Change List
============================

larsoft v05\_04\_00
------------------------------------------

-   2016-03-16 Lynn Garren : larsoft v05\_04\_00 for larsoft v05\_04\_00
-   2016-03-16 Lynn Garren : update product versions
-   2016-03-16 Lynn Garren : update dependency database

lareventdisplay v05\_01\_04
----------------------------------------------------------

-   2016-03-16 Lynn Garren : lareventdisplay v05\_01\_04 for larsoft v05\_04\_00

larexamples v05\_00\_06
--------------------------------------------------

-   2016-03-16 Lynn Garren : larexamples v05\_00\_06 for larsoft v05\_04\_00

larpandora v05\_02\_00
------------------------------------------------

-   2016-03-16 Lynn Garren : larpandora v05\_02\_00 for larsoft v05\_04\_00
-   2016-03-14 John Marshall : Updated config for VertexBasedPfoMerging algorithm; add new SplitShowerMerging algorithm. Update LArPandoraContent version.

larana v05\_02\_00
----------------------------------------

-   2016-03-16 Lynn Garren : larana v05\_02\_00 for larsoft v05\_04\_00
-   2016-03-16 Lynn Garren : Merge branch ‘feature/gp\_NoServiceInTrack’ into release/v05\_04\_00
-   2016-03-16 Gleb Sinev : Changing standard\_opflashsimpleanamodule.OpHitModuleLabel to ophit in opticaldetectormodules.fcl.
-   2016-03-14 Gleb Sinev : Merge branch ‘develop’ into feature/gvsinev\_SplitOpFlashFinder
-   2016-03-14 Gleb Sinev : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larana into develop
-   2016-03-11 Gleb Sinev : Use GeometryCore instead of Geometry in OpFlashAlg and OpHitFinder.
-   2016-03-09 Hamlet : Moved TrackUtils.h into lardata (lardata/RecoBaseArt)
-   2016-03-08 Hamlet : Moving recob::Track methods PitchInView() and ProjectedLength() into larreco/RecoAlg/TrackUtils.h
-   2016-02-26 Gleb Sinev : Merge branch ‘develop’ into feature/gvsinev\_SplitOpFlashFinder
-   2016-02-26 Gleb Sinev : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larana into develop
-   2016-02-19 Gleb Sinev : Merge branch ‘develop’ into feature/gvsinev\_SplitOpFlashFinder
-   2016-02-19 Gleb Sinev : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larana into develop
-   2016-02-19 Gleb Sinev : Update to LArSoft v05\_00\_02.
-   2016-02-18 Gleb Sinev : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larana into develop
-   2016-02-18 Gleb Sinev : Solve all the merge issues that appeared while updating to v04\_36\_01.
-   2016-02-17 Gleb Sinev : Merge tag ‘v04\_18\_01’ of ssh://cdcvs.fnal.gov/cvs/projects/larana into develop
-   2016-02-17 Gleb Sinev : Add a couple of used include statements to OpFlashAlg.h.
-   2016-02-17 Gleb Sinev : Fix OpFlashAlg\_test.
-   2016-02-17 Gleb Sinev : Remove NHits\_prev variable from OpFlashAlg, since OpFlashAlg does not produce OpHits any more.
-   2016-02-16 Gleb Sinev : Split OpFlashAlg into OpFlashAlg and OpHitAlg.
-   2016-02-16 Gleb Sinev : Remove unused include statements in OpFlashFinder and OpHitFinder.
-   2016-02-16 Gleb Sinev : Remove unnecessary brackets in OpFlashAlg.cxx.
-   2016-02-16 Gleb Sinev : Fix associations created in OpFlashFinder.
-   2016-02-16 Gleb Sinev : Create OpHitFinder and move hit finding code from OpFlashFinder there.
-   2016-02-12 Gleb Sinev : Decouple hit finding and flash finding in OpFlashAlg.
-   2016-02-04 Gleb Sinev : Tidy up OpFlashFinder\_module.
-   2016-02-03 Gleb Sinev : Tidy up code in OpFlashAlg.

larreco v05\_02\_01
------------------------------------------

-   2016-03-16 Lynn Garren : larreco v05\_02\_01 for larsoft v05\_04\_00
-   2016-03-16 Lynn Garren : Merge branch ‘feature/gp\_NoServiceInTrack’ into release/v05\_04\_00
-   2016-03-16 Tingjun Yang : Change cout to LogWarning.
-   2016-03-12 Bruce Baller : Comment out std::courts
-   2016-03-12 Bruce Baller : Added more protection against bad overlapping cluster merging.
-   2016-03-09 Hamlet : Moved TrackUtils.h into lardata (lardata/RecoBaseArt)
-   2016-03-09 Hamlet : Moved TrackUtils.h into lardata (lardata/RecoBaseArt)
-   2016-03-08 Hamlet : Moving recob::Track methods PitchInView() and ProjectedLength() into larreco/RecoAlg/TrackUtils.h

larsim v05\_01\_02
----------------------------------------

-   2016-03-16 Lynn Garren : larsim v05\_01\_02 for larsoft v05\_04\_00

larevt v05\_01\_02
----------------------------------------

-   2016-03-16 Lynn Garren : larevt v05\_01\_02 for larsoft v05\_04\_00

lardata v05\_02\_00
------------------------------------------

-   2016-03-16 Lynn Garren : need the boost system library
-   2016-03-16 Lynn Garren : lardata v05\_02\_00 for larsoft v05\_04\_00
-   2016-03-16 Lynn Garren : Merge branch ‘feature/gp\_NoServiceInTrack’ into release/v05\_04\_00
-   2016-03-09 Hamlet : Moved TrackUtils.h into lardata (lardata/RecoBaseArt)
-   2016-03-09 Hamlet : Reduced the dependencies of RecoBase and RawData libraries to the minimum
-   2016-03-08 Hamlet : Moving recob::Track methods PitchInView() and ProjectedLength() into larreco/RecoAlg/TrackUtils.h

larcore v05\_00\_02
------------------------------------------

-   2016-03-16 Lynn Garren : larcore v05\_00\_02 for larsoft v05\_04\_00
-   2016-03-09 Lynn Garren : the correct units are g/cm3, not g/cc

larbatch v01\_20\_06
--------------------------------------------

larutils v1\_05\_04
------------------------------------------

-   2016-03-16 Lynn Garren : larutils v1\_05\_04 for larsoft v05\_04\_00
-   2016-03-11 Lynn Garren : pull nubase source
-   2016-03-10 Lynn Garren : build a release candidate
