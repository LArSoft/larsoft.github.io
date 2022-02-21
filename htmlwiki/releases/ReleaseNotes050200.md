LArSoft v05_02_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v05_02_00/larsoft-v05_02_00.html)

Purpose
--------------------

-   Changes to develop since v05_01_02
-   Features approved at the Coordination Meeting

New features
------------------------------

-   larpandora feature/gp_PandoraVisualization
-   larreco feature/higuera

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|cetbuildtools|v4_18_04||use -isystem \$BOOST_INC instead of -I \$BOOST_INC|
|mrb|v1_06_01||support mrb g lariatutil and mrb g lariatfragments|
|gitflow|v1_9_1|||

Change List
============================

larsoft v05_02_00
------------------------------------------

-   2016-03-09 Lynn Garren : larsoft v05_02_00 for larsoft v05_02_00
-   2016-03-09 Lynn Garren : make sure we build gitflow
-   2016-03-09 Lynn Garren : update product versions
-   2016-03-02 Lynn Garren : larsoft v05_01_02
-   2016-03-02 Lynn Garren : use mrb v1_05_07

lareventdisplay v05_01_03
----------------------------------------------------------

-   2016-03-09 Lynn Garren : lareventdisplay v05_01_03 for larsoft v05_02_00
-   2016-03-08 Tingjun Yang : Use .key() instead of -\>ID when appropriate. Make a few changes to make it work better for pmtrack.

larexamples v05_00_05
--------------------------------------------------

-   2016-03-09 Lynn Garren : larexamples v05_00_05 for larsoft v05_02_00

larpandora v05_01_00
------------------------------------------------

-   2016-03-09 Lynn Garren : larpandora v05_01_00 for larsoft v05_02_00
-   2016-03-09 Lynn Garren : Merge branch ‘feature/gp_PandoraVisualization’ into release/v05_02_00
-   2016-03-08 Hamlet : Updated comment on the ROOT garphics workaround
-   2016-03-04 Hamlet : John Marshall found out how to allow processing to continue
-   2016-03-03 Hamlet : Added a service to allow interactive ROOT graphic systems (TEve-like)

larana v05_01_02
----------------------------------------

-   2016-03-09 Lynn Garren : larana v05_01_02 for larsoft v05_02_00
-   2016-03-09 Tingjun Yang : Update TPC boundaries, optimzed by Pip.
-   2016-03-07 Tingjun Yang : Fix a bug. When there is not hit tagged by cosmic tagger, we need to keep the original hits.

larreco v05_02_00
------------------------------------------

-   2016-03-09 Lynn Garren : larreco v05_02_00 for larsoft v05_02_00
-   2016-03-08 Tingjun Yang : Update to be consistent with v5.
-   2016-03-08 Tingjun Yang : Merge branch ‘develop’ into feature/higuera
-   2016-03-08 Bruce Baller : Merge branch ‘feature/bb_mcc7’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_mcc7
-   2016-03-08 Bruce Baller : Return from KillGhostClusters if no clusters exist
-   2016-03-08 Bruce Baller : Merge branch ‘develop’ into feature/bb_mcc7
-   2016-03-08 Tingjun Yang : A quick fix to prevent segfault (from Tracy). Bruce may fix it properly later.
-   2016-03-07 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_mcc7
-   2016-03-04 Robert Sulej : the same check for wire existance in the other version of validation function, thanks for Tingjun and Gianluca
-   2016-03-04 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-03-03 Tingjun Yang : Merge branch ‘develop’ into feature/bb_mcc7
-   2016-03-03 Tingjun Yang : Merge branch ‘feature/bb_mcc7’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_mcc7
-   2016-03-03 Tingjun Yang : Check if channel is valid first. Thanks to Gianluca.
-   2016-03-03 Bruce Baller : Merge branch ‘develop’ into feature/bb_mcc7
-   2016-03-03 Bruce Baller : Significant rework of MergeOverlap. Added allowance for missed wires in ChkSignal.
-   2016-03-03 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-03-03 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-03-03 Robert Sulej : remove from the module an option to save dQdx in TTree (all needed info is saved with associated hits and metadata and used downstream)
-   2016-03-02 Lynn Garren : larsoft v05_01_02
-   2016-03-02 Bruce Baller : Merge branch ‘feature/bb_mcc7’ into develop
-   2016-03-02 Herbert Greenlee : Fix indentation.
-   2016-03-02 Bruce Baller : Update to latest set of fcl parameters
-   2016-03-02 Bruce Baller : Merge branch ‘feature/bb_mcc7’ into develop
-   2016-03-02 Bruce Baller : Remove unnecessary filtered wires code. Produce (again) Cluster - EndPoint2D associations. Comment out consistency check (now done in ClusterCrawlerAlg)
-   2016-03-02 Bruce Baller : Change fMinAmp to a vector to handle wire planes with small signals.
-   2016-03-02 Bruce Baller : Improvements in merging code. Change shorts to ints.
-   2016-03-02 Robert Sulej : minor cleanups in the code
-   2016-02-29 Tingjun Yang : Merge branch ‘feature/bb_mcc7’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_mcc7
-   2016-02-29 Tingjun Yang : Merge branch ‘feature/bb_mcc7’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_mcc7
-   2016-02-28 Aaron Higuera Pichardo : remove unnecessary pointer
-   2016-02-27 Aaron Higuera Pichardo : Shower Eff module update
-   2016-02-26 Aaron Higuera Pichardo : Shower efficiency module for neutrino interactions. Alpha version
-   2016-02-25 Tingjun Yang : Merge branch ‘develop’ into feature/bb_mcc7
-   2016-02-16 Aaron Higuera Pichardo : Tracking efficiencies for neutrino interactions, i.e. muon, pion and proton tracking efficiency from neutrino interaction

larsim v05_01_01
----------------------------------------

-   2016-03-09 Lynn Garren : larsim v05_01_01 for larsoft v05_02_00

larevt v05_01_01
----------------------------------------

-   2016-03-09 Lynn Garren : larevt v05_01_01 for larsoft v05_02_00

lardata v05_01_03
------------------------------------------

-   2016-03-09 Lynn Garren : lardata v05_01_03 for larsoft v05_02_00
-   2016-03-04 Gianluca Petrillo : Added inline documentation to a raw::Uncompress() and a raw::Compress() function

larcore v05_00_01
------------------------------------------

larbatch v01_20_06
--------------------------------------------

-   2016-03-09 Lynn Garren : larbatch v01_20_06 for larsoft v05_02_00
-   2016-03-03 Herbert Greenlee : Fix problems caused by recursive element fetches.

larutils v1_05_03
------------------------------------------
