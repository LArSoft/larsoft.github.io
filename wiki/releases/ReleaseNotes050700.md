LArSoft v05_07_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v05_07_00/larsoft-v05_07_00.html)

Purpose
--------------------

-   Approved changes

New features
------------------------------

-   larpandora feature/CreatePandoraLineGaps
    -   pandora v02_07_00 and larpandoracontent v02_06_00
    -   larpandora REQUIRES cetbuildtools v4_19_03
-   changes requested by MicroBoone
    -   [redmine issue 12098](https://cdcvs.fnal.gov/redmine/issues/12098) lardata and larreco feature/greenlee_small_mchit
    -   [redmine issue 12097](https://cdcvs.fnal.gov/redmine/issues/12097) larsim feature/greenlee_small_simchannel
-   changes to larreco/RecoAlg/ProjectionMatchingAlg presented by [Dorota Stefan](https://indico.fnal.gov/getFile.py/access?contribId=6&resId=0&materialId=slides&confId=11793)

Bug fixes
------------------------

-   Building larpandora against the new larpandoracontent exercised a bug in cetbuildtools. This bug is fixed in cetbuildtools v4_19_03.

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|pandora|v02_07_00|e9:nu:r5||
|larpandoracontent|v02_06_00|e9:nu:r5||
|larsoft_data|v0_06_01|||
|gdb|v7_10_1||by request|
|cetbuildtools|v4_19_03||REQUIRED|

Change List
============================

larsoft v05_07_00
------------------------------------------

-   2016-03-31 Lynn Garren : use cetbuildtools v4_19_03
-   2016-03-31 Lynn Garren : need cetbuildtools v4_19_03
-   2016-03-30 Lynn Garren : pandora now uses an extra r5 qualifier
-   2016-03-30 Lynn Garren : pandora v02_07_00 and larpandoracontent v02_06_00
-   2016-03-30 Lynn Garren : larsoft v05_07_00 for larsoft v05_07_00
-   2016-03-30 Lynn Garren : update product versions
-   2016-03-30 Lynn Garren : larsoft_data v0_06_01
-   2016-03-30 Lynn Garren : adding gdb v7_10_1
-   2016-03-29 Lynn Garren : add missing geant4 data products

lareventdisplay v05_06_01
----------------------------------------------------------

-   2016-03-30 Lynn Garren : lareventdisplay v05_06_01 for larsoft v05_07_00

larexamples v05_06_01
--------------------------------------------------

-   2016-03-30 Lynn Garren : larexamples v05_06_01 for larsoft v05_07_00

larpandora v05_07_00
------------------------------------------------

-   2016-03-31 Lynn Garren : need a fix
-   2016-03-30 Lynn Garren : larpandora v05_07_00 for larsoft v05_07_00
-   2016-03-30 Lynn Garren : Merge branch ‘feature/CreatePandoraLineGaps’ into release/v05_07_00
-   2016-03-30 Lynn Garren : use larpandoracontent v02_06_00
-   2016-03-29 John Marshall : Rebase CreatePandoraLineGaps feature branch against develop.
-   2016-03-23 John Marshall : Create Pandora LineGaps to represent dead wires i.e. continuous sets of wires with a bad channel status.
-   2016-03-27 Andrew Blake : Tidying up my common ART Producer module and adding a set of generic fcl and xml files. Also setting up the ART output to take a list of seeds, and associations between seeds and hits, to support track-fitting efforts.
-   2016-03-26 Andrew Blake : Committing some tidy-ups to LArPandoraModule"
-   2016-03-25 Andrew Blake : Adding a prototype common ART Producer module that should work for all experiments
-   2016-03-23 John Marshall : Create Pandora LineGaps to represent dead wires i.e. continuous sets of wires with a bad channel status.

larana v05_06_01
----------------------------------------

-   2016-03-30 Lynn Garren : larana v05_06_01 for larsoft v05_07_00
-   2016-03-24 Lynn Garren : larsoft v05_06_00
-   2016-03-23 Lynn Garren : larsoft v05_05_00
-   2016-03-23 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larana into develop
-   2016-03-23 Tingjun Yang : Fix the offset in x if no t0 correction is available.

larreco v05_07_00
------------------------------------------

-   2016-03-30 Lynn Garren : larreco v05_07_00 for larsoft v05_07_00
-   2016-03-30 Lynn Garren : Merge branch ‘feature/greenlee_small_mchit’ into release/v05_07_00
-   2016-03-29 Dorota Stefan : optimize speed
-   2016-03-29 Dorota Stefan : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-03-29 Mike Wallbank : Protect against cases where the blurring takes the clustering out of the hit map
-   2016-03-29 Mike Wallbank : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-03-28 Xiao Luo : Track kinetics energy from TSpline instead of two fit fuction -Xiao
-   2016-03-26 Alexander Booth : bug fixed so position time of hit peak in collection plane is correct.
-   2016-03-25 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/greenlee_small_mchit
-   2016-03-25 Dorota Stefan : fix conflict
-   2016-03-25 Dorota Stefan : no changes to the algorithm, only some small cleaning
-   2016-03-25 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-03-25 Robert Sulej : disable kink finding for bug fixing
-   2016-03-24 Lynn Garren : larsoft v05_06_00
-   2016-03-24 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/greenlee_small_mchit
-   2016-03-24 Robert Sulej : less numerous kinks, added fcl parameter to adjust sensitivity of kink finding
-   2016-03-22 Mike Wallbank : Add protection for the case where blurred hits are outside the original hit map area
-   2016-03-21 Dorota Stefan : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-03-21 Dorota Stefan : add reconstruction of shower segment
-   2016-03-17 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/greenlee_small_mchit
-   2016-03-17 Herbert Greenlee : Reduce size of MCHit.

larsim v05_07_00
----------------------------------------

-   2016-03-30 Lynn Garren : larsim v05_07_00 for larsoft v05_07_00
-   2016-03-30 Lynn Garren : Merge branch ‘feature/greenlee_small_simchannel’ into release/v05_07_00
-   2016-03-30 Lynn Garren : use larsoft_data v0_06_01
-   2016-03-25 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/greenlee_small_simchannel
-   2016-03-24 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/greenlee_small_simchannel
-   2016-03-18 Herbert Greenlee : Change doubles to floats in sim::IDE.

larevt v05_06_01
----------------------------------------

-   2016-03-30 Lynn Garren : larevt v05_06_01 for larsoft v05_07_00

lardata v05_07_00
------------------------------------------

-   2016-03-30 Lynn Garren : lardata v05_07_00 for larsoft v05_07_00
-   2016-03-25 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/greenlee_small_mchit
-   2016-03-24 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/greenlee_small_mchit
-   2016-03-17 Herbert Greenlee : Change doubles to floats.
-   2016-03-17 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/greenlee_small_mchit
-   2016-03-17 Herbert Greenlee : Reduce size of MCHit.

larcore v05_06_00
------------------------------------------

larbatch v01_20_08
--------------------------------------------

-   2016-03-30 Lynn Garren : larbatch v01_20_08 for larsoft v05_07_00
-   2016-03-24 Herbert Greenlee : Exit script with lar status.

larutils v1_05_06
------------------------------------------

-   2016-03-30 Lynn Garren : larutils v1_05_06 for larsoft v05_07_00
-   2016-03-24 Lynn Garren : moving to nu v1_24_01
