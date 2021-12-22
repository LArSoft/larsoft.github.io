LArSoft v07\_01\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v07\_01\_00 Release Notes](#LArSoft-v07_01_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Known issues](#Known-issues)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v07\_01\_00](#larsoft-v07_01_00)
    -   [lareventdisplay v07\_00\_02](#lareventdisplay-v07_00_02)
    -   [larexamples v07\_00\_02](#larexamples-v07_00_02)
    -   [larg4 v07\_00\_02](#larg4-v07_00_02)
    -   [larpandora v07\_00\_02](#larpandora-v07_00_02)
    -   [larwirecell v07\_00\_02](#larwirecell-v07_00_02)
    -   [larana v07\_00\_02](#larana-v07_00_02)
    -   [larreco v07\_01\_00](#larreco-v07_01_00)
    -   [larsim v07\_01\_00](#larsim-v07_01_00)
    -   [larevt v07\_00\_02](#larevt-v07_00_02)
    -   [lardata v07\_00\_02](#lardata-v07_00_02)
    -   [larcore v07\_00\_00](#larcore-v07_00_00)
    -   [larpandoracontent v03\_13\_02](#larpandoracontent-v03_13_02)
    -   [larsoftobj v07\_01\_00](#larsoftobj-v07_01_00)
    -   [lardataobj v07\_01\_00](#lardataobj-v07_01_00)
    -   [lardataalg v07\_00\_00](#lardataalg-v07_00_00)
    -   [larcorealg v07\_00\_00](#larcorealg-v07_00_00)
    -   [larcoreobj v07\_00\_00](#larcoreobj-v07_00_00)
    -   [larbatch v01\_43\_00](#larbatch-v01_43_00)
    -   [larutils v1\_22\_10](#larutils-v1_22_10)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v07\_01\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v07_01_00/larsoft-v07_01_00.html)\
Download instructions for [just larsoftobj v07\_01\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v07_01_00/larsoftobj-v07_01_00.html)

Purpose
--------------------

-   changes in develop
-   approved feature branch
-   full e17 support

New features
------------------------------

-   improvements to LazyVector
    -   lardataobj
    -   larsim feature/gp\_LazyVector

Known issues
------------------------------

-   larana test temporarily disabled until the macOS problem is fixed

Updated dependencies
----------------------------------------------

-   caffe v1\_0k for both e15 and e17
-   tensorflow v1\_3\_0d for both e15 and e17
-   protobuf v3\_5\_2

Change List
============================

larsoft v07\_01\_00
------------------------------------------

-   2018-08-08 Lynn Garren : tensorflow no longer uses the python qualifier
-   2018-08-08 Lynn Garren : larsoft v07\_01\_00 for larsoft v07\_00\_02
-   2018-08-08 Lynn Garren : update dependency database
-   2018-08-08 Lynn Garren : update versions
-   2018-08-08 Lynn Garren : building tensorflow for e17

lareventdisplay v07\_00\_02
----------------------------------------------------------

-   2018-08-08 Lynn Garren : lareventdisplay v07\_00\_02 for larsoft v07\_00\_02
-   2018-08-08 Lynn Garren : find headers

larexamples v07\_00\_02
--------------------------------------------------

-   2018-08-08 Lynn Garren : larexamples v07\_00\_02 for larsoft v07\_00\_02
-   2018-08-08 Lynn Garren : find headers

larg4 v07\_00\_02
--------------------------------------

-   2018-08-08 Lynn Garren : larg4 v07\_00\_02 for larsoft v07\_00\_02
-   2018-08-08 Lynn Garren : find headers

larpandora v07\_00\_02
------------------------------------------------

-   2018-08-08 Lynn Garren : larpandora v07\_00\_02 for larsoft v07\_00\_02
-   2018-08-08 Lynn Garren : find headers

larwirecell v07\_00\_02
--------------------------------------------------

-   2018-08-08 Lynn Garren : larwirecell v07\_00\_02 for larsoft v07\_00\_02
-   2018-08-08 Lynn Garren : find headers

larana v07\_00\_02
----------------------------------------

-   2018-08-08 Lynn Garren : larana v07\_00\_02 for larsoft v07\_00\_02
-   2018-08-08 Lynn Garren : find headers
-   2018-08-07 Lynn Garren : disable larana tests which have a child process problem

larreco v07\_01\_00
------------------------------------------

-   2018-08-08 Lynn Garren : larreco v07\_01\_00 for larsoft v07\_00\_02
-   2018-08-08 Lynn Garren : larreco v07\_01\_00 for larsoft v07\_00\_02
-   2018-08-08 Lynn Garren : find headers
-   2018-08-08 Lynn Garren : tensorflow v1\_3\_0d
-   2018-08-07 baller : Bug fixes for ProtoDUNE Merge branch ‘feature/bb\_restruct’ into develop
-   2018-08-07 baller : Split slices into sub-slices in each TPC
-   2018-08-07 baller : Bug fixes
-   2018-08-07 baller : Bug fixes
-   2018-08-07 baller : Bug fixes
-   2018-08-07 baller : Bug fixes
-   2018-08-07 baller : Bug fixes
-   2018-08-07 Christoph Alt : Hit start and end time is now the actual start and end time of the hit instead of the start and end time of the group of hits. Also fixed some cout’s.
-   2018-08-07 Christoph Alt : Corrected description of .fcl parameters
-   2018-08-06 baller : Remove incorrect check of cryostat - tpc.
-   2018-08-06 baller : Check validity of input hits.
-   2018-08-06 baller : Check validity of input hits.
-   2018-08-06 baller : Check validity of input hits.
-   2018-08-06 Christopher Backhouse : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2018-08-06 Christopher Backhouse : Fix bug in initialization of space charge interaction terms.
-   2018-08-05 Tingjun Yang : Add slice-spacepoint association.
-   2018-08-05 Tingjun Yang : Fix compiling error in e15.
-   2018-08-05 Usher, Tracy L : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2018-08-04 Usher, Tracy L : oops, last commit was meant to be this one… recover the missing 3D hit from missed wire combination
-   2018-08-04 Usher, Tracy L : Recover the missing wire combination
-   2018-08-04 Usher, Tracy L : Move the output of the Convex Hull module into its own output object (still in the internal Cluster3D representation) in order to make easier to recover all the output information (and differentiate from other methods)
-   2018-08-03 baller : Comment out PFParticle - Slice associations for now.
-   2018-08-03 baller : Merge bug fixes Merge branch ‘feature/bb\_restruct’ into develop
-   2018-08-03 baller : Use Vector2\_t.
-   2018-08-03 baller : Fix bug and add PFParticle -\> Slice assn
-   2018-08-03 Christopher Backhouse : Fix a bug in bad collection wire handling. Require one of the crossing induction wires to be unexplained anywhere, rather than the pair to be unexplained. This is symmetric with the requirement made for bad induction wires. Ought to reduce ghost hits further, appears to have very little effect in practice.
-   2018-08-02 Usher, Tracy L : Merge branch ‘feature/usher\_cluster3dclean’ into develop
-   2018-08-02 Usher, Tracy L : Implement new cluster breaking strategies - break by gap, break by vertex, break by defect and break in half

larsim v07\_01\_00
----------------------------------------

-   2018-08-08 Lynn Garren : larsim v07\_01\_00 for larsoft v07\_00\_02
-   2018-08-08 Lynn Garren : find headers
-   2018-08-06 Gianluca Petrillo : Small optimization of photon library load time
-   2018-08-04 Jason Stock : Merge branch ‘feature/JStock\_PBT\_FlashToHitAssnsRevision’ into develop
-   2018-08-04 Jason Stock : Fixes for the spammy PhotonBackTracker initialization messages.

larevt v07\_00\_02
----------------------------------------

-   2018-08-08 Lynn Garren : larevt v07\_00\_02 for larsoft v07\_00\_02
-   2018-08-08 Lynn Garren : find headers

lardata v07\_00\_02
------------------------------------------

-   2018-08-08 Lynn Garren : lardata v07\_00\_02 for larsoft v07\_00\_02

larcore v07\_00\_00
------------------------------------------

larpandoracontent v03\_13\_02
--------------------------------------------------------------

larsoftobj v07\_01\_00
------------------------------------------------

-   2018-08-08 Lynn Garren : larsoftobj v07\_01\_00 for larsoft v07\_00\_02
-   2018-08-08 Lynn Garren : update versions

lardataobj v07\_01\_00
------------------------------------------------

-   2018-08-08 Lynn Garren : lardataobj v07\_01\_00 for larsoft v07\_00\_02
-   2018-08-06 Gianluca Petrillo : LazyVector: added methods to preallocate storage.
-   2018-08-03 baller : Add PFParticle - Slice associations

lardataalg v07\_00\_00
------------------------------------------------

larcorealg v07\_00\_00
------------------------------------------------

larcoreobj v07\_00\_00
------------------------------------------------

larbatch v01\_43\_00
--------------------------------------------

larutils v1\_22\_10
------------------------------------------

-   2018-08-08 Lynn Garren : larutils v1\_22\_10 for larsoft v07\_00\_02
-   2018-08-08 Herbert Greenlee : Remove “\_offline” from tarball version.
-   2018-08-06 Herbert Greenlee : Check OS+qual combination.
-   2018-08-04 Herbert Greenlee : Skip unsupported flavors.
-   2018-08-04 Herbert Greenlee : Skip e-qualified builds on macos.
-   2018-08-04 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larutils into develop
-   2018-08-04 Herbert Greenlee : Add qualifier “offline.”
