LArSoft v08\_28\_01 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08\_28\_01 Release Notes](#LArSoft-v08_28_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Breaking Changes](#Breaking-Changes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_28\_01](#larsoft-v08_28_01)
    -   [lareventdisplay v08\_08\_08](#lareventdisplay-v08_08_08)
    -   [larexamples v08\_02\_15](#larexamples-v08_02_15)
    -   [larg4 v08\_03\_13](#larg4-v08_03_13)
    -   [larpandora v08\_07\_12](#larpandora-v08_07_12)
    -   [larwirecell v08\_05\_13](#larwirecell-v08_05_13)
    -   [larana v08\_10\_08](#larana-v08_10_08)
    -   [larreco v08\_16\_05](#larreco-v08_16_05)
    -   [larsim v08\_12\_01](#larsim-v08_12_01)
    -   [larevt v08\_06\_06](#larevt-v08_06_06)
    -   [lardata v08\_07\_04](#lardata-v08_07_04)
    -   [larcore v08\_04\_09](#larcore-v08_04_09)
    -   [larpandoracontent v03\_15\_03](#larpandoracontent-v03_15_03)
    -   [larsoftobj v08\_17\_03](#larsoftobj-v08_17_03)
    -   [lardataobj v08\_04\_09](#lardataobj-v08_04_09)
    -   [lardataalg v08\_08\_04](#lardataalg-v08_08_04)
    -   [larcorealg v08\_14\_02](#larcorealg-v08_14_02)
    -   [larcoreobj v08\_05\_03](#larcoreobj-v08_05_03)
    -   [larbatch v01\_51\_06](#larbatch-v01_51_06)
    -   [larutils v1\_24\_01](#larutils-v1_24_01)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_28\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_28_01/larsoft-v08_28_01.html)\
Download instructions for [just larsoftobj v08\_17\_03](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_17_03/larsoftobj-v08_17_03.html)

Purpose
--------------------

-   changes in develop
-   approved feature branches

New features
------------------------------

-   larsim feature/update-sim-filters
    -   This branch has updates to two filter modules in SimFilters/ – FilterGenInTime and FilterPhotonTime – so that they work in ICARUS and SBND. These filters were developed by uBooNE to generate in time cosmic events from corsica. uBooNE has largely switched to using data to look at cosmic backgrounds, so no one is really using these filters right now.
    -   There are a couple changes to the filter – to FilterPhotonTime, adding in reflected photons. To FilterGenInTime, accommodating a detector with multiple cryostats and modifying the definition of the propagation time from cosmic particle creation to arrival in the cryostat. Previously, the definition was the distance from the particle start to detector origin divided by the particle velocity. Now, it is the distance from the particle start to the point it will intersect the detector cryostat, divided by its velocity.
-   wirecell v0\_12\_4
    -   update in larwirecell
-   removal of unused headers and libraries
    -   [https://indico.fnal.gov/event/21478/contribution/3/material/slides/0.pdf](https://indico.fnal.gov/event/21478/contribution/3/material/slides/0.pdf)
    -   feature/knoepfel\_rm\_unused\_headers

Breaking Changes
--------------------------------------

-   [Some headers may need to be added to code in experiment packages](Breaking_Changes#code-cleanup).
    -   See feature/knoepfel\_rm\_unused\_headers for the experiment code.

Updated dependencies
----------------------------------------------

-   wirecell v0\_12\_4

Change List
============================

larsoft v08\_28\_01
------------------------------------------

-   2019-08-13 Lynn Garren : larsoft v08\_28\_01 for larsoft v08\_28\_01
-   2019-08-13 Lynn Garren : update versions
-   2019-08-13 Lynn Garren : wirecell v0\_12\_4

lareventdisplay v08\_08\_08
----------------------------------------------------------

-   2019-08-14 Lynn Garren : restore missing library
-   2019-08-13 Lynn Garren : lareventdisplay v08\_08\_08 for larsoft v08\_28\_01
-   2019-08-13 Kyle Knoepfel : Merge branch ‘develop’ into feature/knoepfel\_rm\_unused\_headers
-   2019-08-07 Kyle Knoepfel : Merge branch ‘develop’ into feature/knoepfel\_rm\_unused\_headers
-   2019-08-07 Kyle Knoepfel : Remove unnecessary link-time dependencies.
-   2019-08-06 Kyle Knoepfel : Remove unnecessary header dependencies.

larexamples v08\_02\_15
--------------------------------------------------

-   2019-08-14 Lynn Garren : restore missing library
-   2019-08-13 Lynn Garren : larexamples v08\_02\_15 for larsoft v08\_28\_01
-   2019-08-13 Kyle Knoepfel : Merge branch ‘develop’ into feature/knoepfel\_rm\_unused\_headers
-   2019-08-07 Kyle Knoepfel : Merge branch ‘develop’ into feature/knoepfel\_rm\_unused\_headers
-   2019-08-06 Kyle Knoepfel : Remove unnecessary library dependencies.
-   2019-08-06 Kyle Knoepfel : Remove unnecessary header dependencies.

larg4 v08\_03\_13
--------------------------------------

-   2019-08-13 Lynn Garren : larg4 v08\_03\_13 for larsoft v08\_28\_01
-   2019-08-09 Lynn Garren : larsoft v08\_28\_00
-   2019-08-08 Kyle Knoepfel : Add missing header dependencies.

larpandora v08\_07\_12
------------------------------------------------

-   2019-08-13 Lynn Garren : larpandora v08\_07\_12 for larsoft v08\_28\_01
-   2019-08-09 Lynn Garren : larsoft v08\_28\_00
-   2019-08-06 Lynn Garren : Add missing headers.

larwirecell v08\_05\_13
--------------------------------------------------

-   2019-08-14 Lynn Garren : add missing library
-   2019-08-13 Lynn Garren : larwirecell v08\_05\_13 for larsoft v08\_28\_01
-   2019-08-13 Lynn Garren : wirecell v0\_12\_4
-   2019-08-13 Kyle Knoepfel : Merge branch ‘develop’ into feature/knoepfel\_rm\_unused\_headers
-   2019-08-10 Wenqiang Gu : add an interface in chNoiseDB for coherent noise filter
-   2019-08-07 Kyle Knoepfel : Merge branch ‘develop’ into feature/knoepfel\_rm\_unused\_headers
-   2019-08-07 Kyle Knoepfel : Remove unnecessary link-time dependencies.
-   2019-08-07 Kyle Knoepfel : Remove unnecessary header dependencies.

larana v08\_10\_08
----------------------------------------

-   2019-08-14 Lynn Garren : restore missing library
-   2019-08-14 Lynn Garren : restore missing library
-   2019-08-13 Lynn Garren : larana v08\_10\_08 for larsoft v08\_28\_01
-   2019-08-13 Lynn Garren : Merge branch ‘feature/knoepfel\_rm\_unused\_headers’ into release/v08\_28\_01
-   2019-08-08 Kyle Knoepfel : Remove unnecessary functions.
-   2019-08-07 Kyle Knoepfel : Merge branch ‘develop’ into feature/knoepfel\_rm\_unused\_headers
-   2019-08-06 Kyle Knoepfel : Remove unnecessary library dependencies.
-   2019-08-05 Kyle Knoepfel : Remove unnecessary header dependencies.

larreco v08\_16\_05
------------------------------------------

-   2019-08-14 Lynn Garren : there is a reason it’s called the basic lib list
-   2019-08-14 Lynn Garren : fix header path
-   2019-08-13 Lynn Garren : larreco v08\_16\_05 for larsoft v08\_28\_01
-   2019-08-13 Lynn Garren : add missing header
-   2019-08-13 Lynn Garren : Merge branch ‘feature/knoepfel\_rm\_unused\_headers’ into release/v08\_28\_01
-   2019-08-13 Lynn Garren : wrap pragmas in \#ifdefs
-   2019-08-13 Kyle Knoepfel : Get rid of extra ServiceHandle includes.
-   2019-08-13 Lynn Garren : skip openMP build if we find it on SLF6
-   2019-08-13 Kyle Knoepfel : Merge branch ‘develop’ into feature/knoepfel\_rm\_unused\_headers
-   2019-08-09 Lynn Garren : larsoft v08\_28\_00
-   2019-08-07 Kyle Knoepfel : Merge branch ‘develop’ into feature/knoepfel\_rm\_unused\_headers
-   2019-08-07 Lynn Garren : larsoft v08\_27\_02
-   2019-08-07 Usher, Tracy L : Merge remote-tracking branch ‘origin/feature/usher\_lmfitpluscluster3d’ into develop
-   2019-08-06 Usher, Tracy L : Add cut on max delta peaks vs overlap
-   2019-08-06 Usher, Tracy L : Reconcile output between two 3D hit builders and add more diagnostic output capability
-   2019-08-05 Usher, Tracy L : A bit of optimization and some addition diagnostic output
-   2019-08-01 Usher, Tracy L : Merge branch ‘feature/usher\_lmfitpluscluster3d’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/usher\_lmfitpluscluster3d
-   2019-08-01 Usher, Tracy L : set back to gauss fitter
-   2019-08-01 Usher, Tracy L : Really mostly code cleanup
-   2019-07-26 Kyle Knoepfel : Remove unnecessary library dependencies.
-   2019-07-26 Kyle Knoepfel : Remove unnecessary library dependencies.
-   2019-07-26 Usher, Tracy L : Merge branch ‘develop’ into feature/usher\_lmfitpluscluster3d
-   2019-07-18 Kyle Knoepfel : Remove unused header dependencies.
-   2019-07-25 Usher, Tracy L : Merge branch ‘develop’ into feature/usher\_lmfitpluscluster3d
-   2019-07-25 Usher, Tracy L : Primarily formatting
-   2019-07-25 Usher, Tracy L : Adding more diagnostic output
-   2019-06-29 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_lmfitpluscluster3d
-   2019-06-29 Usher, Tracy L : Adding more output… this module is getting to its breaking point?
-   2019-06-29 Usher, Tracy L : Adding in the L-M fit method, still trying to debug…
-   2019-06-18 Usher, Tracy L : More output associated to path finding
-   2019-06-18 Usher, Tracy L : Updates to include extra output related to the MST path finding
-   2019-06-18 Usher, Tracy L : Fix inconsequential typo
-   2019-06-18 Usher, Tracy L : Simplify initial delta wire conditions
-   2019-06-18 Usher, Tracy L : Add a path finding algorithm based on a minimum spanning tree for testing new metric for resolving ghost points
-   2019-06-18 Usher, Tracy L : Merge remote-tracking branch ‘origin/feature/sberkman\_gshfmrqdt’ into develop
-   2019-06-17 Sophie Berkman : Add GSHF Marqdt fitter

larsim v08\_12\_01
----------------------------------------

-   2019-08-14 Lynn Garren : restore misssing libraries
-   2019-08-13 Lynn Garren : larsim v08\_12\_01 for larsoft v08\_28\_01
-   2019-08-13 Lynn Garren : brackets for c2
-   2019-08-13 Lynn Garren : Merge branch ‘feature/knoepfel\_rm\_unused\_headers’ into release/v08\_28\_01
-   2019-08-13 Lynn Garren : Merge branch ‘feature/update-sim-filters’ into release/v08\_28\_01
-   2019-08-13 Kyle Knoepfel : Merge branch ‘develop’ into feature/knoepfel\_rm\_unused\_headers
-   2019-08-09 Lynn Garren : larsoft v08\_28\_00
-   2019-08-08 gputnam : Merge branch ‘develop’ into feature/update-sim-filters
-   2019-08-08 gputnam : Merge branch ‘feature/gputnam-gallery-fix’ into develop
-   2019-08-07 Kyle Knoepfel : Merge branch ‘develop’ into feature/knoepfel\_rm\_unused\_headers
-   2019-08-07 gputnam : Fix the way associations are obtained in the ParticleInventory service to be compatible with gallery
-   2019-07-17 Kyle Knoepfel : Remove unnecessary dependencies.
-   2019-07-29 gputnam : Change config name for whether to use reflected. Print out more debug information
-   2019-07-29 gputnam : remove old variable from constructor
-   2019-07-29 gputnam : Update FilterSimPhoton to use Reflected photons as well as normal ones
-   2019-07-29 gputnam : Updater FilterGenInTime module to work in a detector with multiple cryostats. Adapt ray-box intersection algorithm to look at intersection point to calculate propogation time.
-   2019-07-17 Kyle Knoepfel : Remove unused headers.

larevt v08\_06\_06
----------------------------------------

-   2019-08-14 Lynn Garren : add missing library
-   2019-08-14 Lynn Garren : restore missing library
-   2019-08-13 Lynn Garren : larevt v08\_06\_06 for larsoft v08\_28\_01
-   2019-08-13 Kyle Knoepfel : Merge branch ‘develop’ into feature/knoepfel\_rm\_unused\_headers
-   2019-08-07 Kyle Knoepfel : Merge branch ‘develop’ into feature/knoepfel\_rm\_unused\_headers
-   2019-08-01 Kyle Knoepfel : Remove unused library dependencies.
-   2019-07-16 Kyle Knoepfel : Remove unused headers.

lardata v08\_07\_04
------------------------------------------

-   2019-08-13 Lynn Garren : lardata v08\_07\_04 for larsoft v08\_28\_01
-   2019-08-13 Kyle Knoepfel : Merge branch ‘develop’ into feature/knoepfel\_rm\_unused\_headers
-   2019-08-07 Kyle Knoepfel : Merge branch ‘develop’ into feature/knoepfel\_rm\_unused\_headers
-   2019-07-12 Kyle Knoepfel : Remove unused library dependencies.
-   2019-07-12 Kyle Knoepfel : Remove unused headers.

larcore v08\_04\_09
------------------------------------------

-   2019-08-13 Lynn Garren : larcore v08\_04\_09 for larsoft v08\_28\_01
-   2019-08-13 Lynn Garren : Merge branch ‘feature/knoepfel\_rm\_unused\_headers’ into release/v08\_28\_01
-   2019-07-08 Kyle Knoepfel : Remove unused headers.

larpandoracontent v03\_15\_03
--------------------------------------------------------------

larsoftobj v08\_17\_03
------------------------------------------------

-   2019-08-13 Lynn Garren : larsoftobj v08\_17\_03 for larsoft v08\_28\_01
-   2019-08-13 Lynn Garren : update versions

lardataobj v08\_04\_09
------------------------------------------------

-   2019-08-13 Lynn Garren : lardataobj v08\_04\_09 for larsoft v08\_28\_01
-   2019-08-13 Lynn Garren : add missing header
-   2019-08-13 Kyle Knoepfel : Merge branch ‘develop’ into feature/knoepfel\_rm\_unused\_headers
-   2019-08-07 Kyle Knoepfel : Merge branch ‘develop’ into feature/knoepfel\_rm\_unused\_headers
-   2019-07-31 Kyle Knoepfel : Homogenize CMakeLists.txt files.
-   2019-07-10 Kyle Knoepfel : Remove unused headers.

lardataalg v08\_08\_04
------------------------------------------------

-   2019-08-13 Lynn Garren : lardataalg v08\_08\_04 for larsoft v08\_28\_01
-   2019-08-13 Kyle Knoepfel : Merge branch ‘develop’ into feature/knoepfel\_rm\_unused\_headers
-   2019-08-07 Kyle Knoepfel : Merge branch ‘develop’ into feature/knoepfel\_rm\_unused\_headers
-   2019-07-10 Kyle Knoepfel : Remove unused headers.

larcorealg v08\_14\_02
------------------------------------------------

-   2019-08-13 Lynn Garren : larcorealg v08\_14\_02 for larsoft v08\_28\_01
-   2019-08-13 Kyle Knoepfel : Merge branch ‘develop’ into feature/knoepfel\_rm\_unused\_headers
-   2019-08-09 Lynn Garren : larsoft v08\_28\_00
-   2019-08-07 Kyle Knoepfel : Merge branch ‘develop’ into feature/knoepfel\_rm\_unused\_headers
-   2019-08-06 Gianluca Petrillo : Fix error reported by Clang.
-   2019-08-06 Gianluca Petrillo : Bug fix: \`util::dereference()\` was copying the dereferenced value.
-   2019-07-31 Kyle Knoepfel : Remove unnecessary library dependencies.
-   2019-06-28 Kyle Knoepfel : Remove unused headers.

larcoreobj v08\_05\_03
------------------------------------------------

-   2019-08-13 Lynn Garren : larcoreobj v08\_05\_03 for larsoft v08\_28\_01
-   2019-08-13 Kyle Knoepfel : Merge branch ‘develop’ into feature/knoepfel\_rm\_unused\_headers
-   2019-07-31 Kyle Knoepfel : Remove unnecessary library dependencies.

larbatch v01\_51\_06
--------------------------------------------

larutils v1\_24\_01
------------------------------------------

-   2019-08-13 Lynn Garren : larutils v1\_24\_01 for larsoft v08\_28\_01
-   2019-08-08 Lynn Garren : skip py3 build on macOS
