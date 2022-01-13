LArSoft v05_12_01 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v05_12_01/larsoft-v05_12_01.html)

Purpose
--------------------

-   changes to develop since v05_12_00

New features
------------------------------

Bug fixes
------------------------

-   a bug was identified and fixed in lardata/RawData/raw.cxx

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v05_12_01
------------------------------------------

-   2016-06-08 Lynn Garren : larsoft v05_12_01 for larsoft v05_12_01
-   2016-06-08 Lynn Garren : update product versions
-   2016-06-08 Lynn Garren : update dependency database

lareventdisplay v05_07_01
----------------------------------------------------------

-   2016-06-08 Lynn Garren : lareventdisplay v05_07_01 for larsoft v05_12_01
-   2016-06-02 Matt Robinson : Landed: switched from cerr and cout to mf:: and replaced ::length with ::empty on checks to see if outputFilename_ is unset.
-   2016-06-02 Matt Robinson : Landed events filter now ignored when running over unix socket.
-   2016-06-02 Matt Robinson : Missing ‘events’ parameter now tolerated (was throwing exception before)
-   2016-06-02 Matt Robinson : Landed module now builds with boost asio implementation of unix sockets
-   2016-06-02 Matt Robinson : Converting low level unix socket i/o to boost asio

larexamples v05_06_09
--------------------------------------------------

-   2016-06-08 Lynn Garren : larexamples v05_06_09 for larsoft v05_12_01

larpandora v05_09_06
------------------------------------------------

-   2016-06-08 Lynn Garren : larpandora v05_09_06 for larsoft v05_12_01

larana v05_09_03
----------------------------------------

-   2016-06-08 Lynn Garren : larana v05_09_03 for larsoft v05_12_01

larreco v05_12_01
------------------------------------------

-   2016-06-08 Lynn Garren : larreco v05_12_01 for larsoft v05_12_01
-   2016-06-08 Tingjun Yang : Convert range unit to cm.
-   2016-05-31 Dorota Stefan : add margin to isContained check in the track validation.
-   2016-05-27 Bruce Baller : Revert back to develop
-   2016-05-27 Bruce Baller : Revert back to develop version.
-   2016-05-27 Bruce Baller : Delete std::cout
-   2016-05-27 Bruce Baller : Merge branch ‘develop’ into feature/bb_TrajCluster
-   2016-05-27 Bruce Baller : Clean up wire checking.
-   2016-05-27 Bruce Baller : Deal with special hits (Chi/DOF \< 0). Use fVertex2DIPCut instead of fMaxVertexTrajSep when attaching trajectories to vertices. Add wire number checks in FindJunkTraj. Change criteria for making TPs in MakeJunkTraj. Add call to CheckHiMultEndHits in CheckTraj. Deal with special hits in GetHitMultiplet.
-   2016-05-27 Bruce Baller : Change CheckHiMultEndHits to handle any trajectory
-   2016-05-19 Bruce Baller : Make histo hits on long signal regions
-   2016-05-18 Bruce Baller : Merge branch ‘develop’ into feature/bb_TrajCluster
-   2016-05-18 Bruce Baller : Create histo hits instead of crude hits
-   2016-05-18 Bruce Baller : Create histo hits instead of crude hits
-   2016-05-12 Bruce Baller : Check for out of range trajectory point in SignalAtTp
-   2016-05-11 Bruce Baller : Check for invalid MC particle.

larsim v05_12_01
----------------------------------------

-   2016-06-08 Lynn Garren : larsim v05_12_01 for larsoft v05_12_01

larevt v05_07_01
----------------------------------------

-   2016-06-08 Lynn Garren : larevt v05_07_01 for larsoft v05_12_01

lardata v05_08_03
------------------------------------------

-   2016-06-09 Lynn Garren : Merge branch ‘develop’ into release/v05_12_01
-   2016-06-08 Gianluca Petrillo : Merge branch ‘feature/gp_FixHuffmannCompress’ into develop
-   2016-06-08 Gianluca Petrillo : Fixed a minor bug in Huffman compression algorithm
-   2016-06-08 Gianluca Petrillo : Added another test of compression
-   2016-06-08 Lynn Garren : lardata v05_08_03 for larsoft v05_12_01
-   2016-05-27 Tingjun Yang : Add space charge service.

larcore v05_07_03
------------------------------------------

larbatch v01_22_00
--------------------------------------------

larutils v1_06_03
------------------------------------------

-   2016-06-08 Lynn Garren : larutils v1_06_03 for larsoft v05_12_01
-   2016-06-06 Lynn Garren : pull larsoftobj
-   2016-06-06 Lynn Garren : add s33:e10
