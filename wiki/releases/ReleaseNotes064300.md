LArSoft v06_43_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06_43_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_43_00/larsoft-v06_43_00.html)
Download instructions for [just larsoftobj v1_23_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_23_00/larsoftobj-v1_23_00.html)

Purpose
--------------------

-   changes to develop
-   move gdml from larcore to larcorealg

New features
------------------------------

-   add larcorealg
    -   contains gdml and other parts of the geometry
    -   part of larsoftobj distribution
    -   larcorealg fixes [redmine issue 17123](https://cdcvs.fnal.gov/redmine/issues/17123)
    -   See [Geometry and utility code moved to larcorealg](Breaking_Changes#Geometry-and-utility-code-moved-to-larcorealg)
    -   **The experiments should merge feature/gp_Issue17099**
-   larcore feature/wketchum_SortingUpdate
    -   more general wire sorting, tracked by ticket [redmine issue 15688](https://cdcvs.fnal.gov/redmine/issues/15688)
    -   this code is also in larcorealg
-   lardataobj feature/usher_cluster3dupdates

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v06_43_00
------------------------------------------

-   2017-07-12 Lynn Garren : larsoft v06_43_00 for larsoft v06_43_00
-   2017-07-11 Lynn Garren : update dependency database
-   2017-07-11 Lynn Garren : update product versions and add larcorealg
-   2017-07-05 Gianluca Petrillo : Added update script for code move from larcore to larcorealg (issue [redmine issue 17099](https://cdcvs.fnal.gov/redmine/issues/17099))

lareventdisplay v06_09_00
----------------------------------------------------------

-   2017-07-12 Lynn Garren : lareventdisplay v06_09_00 for larsoft v06_43_00
-   2017-07-05 Gianluca Petrillo : Ran update script for code move from larcore to larcorealg (issue [redmine issue 17099](https://cdcvs.fnal.gov/redmine/issues/17099))

larexamples v06_05_00
--------------------------------------------------

-   2017-07-12 Lynn Garren : larexamples v06_05_00 for larsoft v06_43_00
-   2017-07-05 Gianluca Petrillo : Ran update script for code move from larcore to larcorealg (issue [redmine issue 17099](https://cdcvs.fnal.gov/redmine/issues/17099))

larpandora v06_15_00
------------------------------------------------

-   2017-07-12 Lynn Garren : larpandora v06_15_00 for larsoft v06_43_00
-   2017-07-05 Gianluca Petrillo : Ran update script for code move from larcore to larcorealg (issue [redmine issue 17099](https://cdcvs.fnal.gov/redmine/issues/17099))

larwirecell v06_05_04
--------------------------------------------------

-   2017-07-12 Lynn Garren : larwirecell v06_05_04 for larsoft v06_43_00

larana v06_08_00
----------------------------------------

-   2017-07-12 Lynn Garren : larana v06_08_00 for larsoft v06_43_00
-   2017-07-05 Gianluca Petrillo : Ran update script for code move from larcore to larcorealg (issue [redmine issue 17099](https://cdcvs.fnal.gov/redmine/issues/17099))

larreco v06_34_00
------------------------------------------

-   2017-07-12 Lynn Garren : larreco v06_34_00 for larsoft v06_43_00
-   2017-07-11 Lynn Garren : Merge branch ‘feature/gp_Issue17099’ into release/v06_43_00
-   2017-07-11 Mike Wallbank : protect against dividing by zero at a point noted for throwing exceptions on occassion
-   2017-07-10 Bruce Baller : Protect against FitChi = 0
-   2017-07-05 Gianluca Petrillo : Ran update script for code move from larcore to larcorealg (issue [redmine issue 17099](https://cdcvs.fnal.gov/redmine/issues/17099))
-   2017-07-04 Robert Sulej : remove terminal output
-   2017-07-04 Robert Sulej : add cmakelists for job folder
-   2017-07-04 Robert Sulej : move example job cfg to subdir
-   2017-07-04 Robert Sulej : add default configurations for dune
-   2017-07-04 Robert Sulej : add check of the cryostat to vertex projection
-   2017-07-01 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-07-01 Robert Sulej : simplify script
-   2017-07-01 Robert Sulej : allow to override config parameters from command line
-   2017-07-01 Robert Sulej : fix handling of the failed vertexing
-   2017-06-29 Tingjun Yang : Ignore shower like pfparticles microboone_pmalgtrajfitter.

larsim v06_26_00
----------------------------------------

-   2017-07-12 Lynn Garren : larsim v06_26_00 for larsoft v06_43_00
-   2017-07-05 Gianluca Petrillo : Ran update script for code move from larcore to larcorealg (issue [redmine issue 17099](https://cdcvs.fnal.gov/redmine/issues/17099))

larevt v06_15_00
----------------------------------------

-   2017-07-12 Lynn Garren : larevt v06_15_00 for larsoft v06_43_00
-   2017-07-05 Gianluca Petrillo : Ran update script for code move from larcore to larcorealg (issue [redmine issue 17099](https://cdcvs.fnal.gov/redmine/issues/17099))

lardata v06_24_00
------------------------------------------

-   2017-07-12 Lynn Garren : lardata v06_24_00 for larsoft v06_43_00
-   2017-07-05 Gianluca Petrillo : Ran update script for code move from larcore to larcorealg (issue [redmine issue 17099](https://cdcvs.fnal.gov/redmine/issues/17099))

larcore v06_13_00
------------------------------------------

-   2017-07-12 Lynn Garren : find_ups_product larcorealg
-   2017-07-12 Lynn Garren : need root libraries
-   2017-07-12 Lynn Garren : do not set test properties here anymore
-   2017-07-12 Lynn Garren : larcore v06_13_00 for larsoft v06_43_00
-   2017-07-05 Gianluca Petrillo : Tuning of the move of non-art code into larcorealg.
-   2017-07-05 Gianluca Petrillo : Removed sources that are now in larcorealg.
-   2017-06-22 Gianluca Petrillo : Using the new geometry ID interface.

larpandoracontent v03_07_02
--------------------------------------------------------------

larsoftobj v1_23_00
----------------------------------------------

-   2017-07-12 Lynn Garren : larsoftobj v1_23_00 for larsoft v06_43_00
-   2017-07-11 Lynn Garren : update product versions
-   2017-07-11 Lynn Garren : add larcorealg

lardataobj v1_18_00
----------------------------------------------

-   2017-07-12 Lynn Garren : lardataobj v1_18_00 for larsoft v06_43_00
-   2017-07-06 Gianluca Petrillo : Added unit test for recob::Edge.
-   2017-07-06 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/usher_cluster3dupdates
-   2017-06-14 Usher, Tracy L : Merge branch ‘master’ into feature/usher_cluster3dupdates
-   2017-05-18 Usher, Tracy L : Merge branch ‘master’ into feature/usher_cluster3dupdates
-   2017-05-10 Usher, Tracy L : Incorporating Gianluca’s modifications which should allow for introduction into the main line
-   2017-05-04 Usher, Tracy L : Merge branch ‘develop’ into feature/usher_cluster3dupdates
-   2017-04-26 Usher, Tracy L : Merge branch ‘develop’ into feature/usher_cluster3dupdates
-   2017-04-17 Usher, Tracy L : Merge branch ‘develop’ into feature/usher_cluster3dupdates
-   2017-04-08 Usher, Tracy L : Merge branch ‘master’ into feature/usher_cluster3dupdates
-   2017-04-08 Usher, Tracy L : reconcile finally with Edge and other objects
-   2017-03-27 Usher, Tracy L : Merge branch ‘develop’ into feature/usher_cluster3dupdates
-   2017-02-23 Usher, Tracy L : Merge branch ‘develop’ into feature/usher_cluster3dupdates
-   2017-02-09 Usher, Tracy L : Merge branch ‘develop’ into feature/usher_cluster3dupdates
-   2017-02-03 Usher, Tracy L : add edge object back in
-   2017-02-03 Usher, Tracy L : Merge branch ‘develop’ into feature/usher_cluster3dupdates
-   2017-01-28 Usher, Tracy L : Merge commit ‘0b76712611a92dfd2dd68c4b614c016e1e55833f’ into feature/usher_cluster3dupdates
-   2016-12-17 Usher, Tracy L : Merge branch ‘develop’ into feature/usher_cluster3dupdates
-   2016-11-23 Usher, Tracy L : Updating to include new “Edge” object
-   2016-11-23 Usher, Tracy L : New data object aimed at “connecting” (providing an “edge”) SpacePoints. It does so by keeping track of the SpacePoint ID for the start/end points

larcoreobj v1_15_01
----------------------------------------------

larbatch v01_32_03
--------------------------------------------

larutils v1_16_00
------------------------------------------
