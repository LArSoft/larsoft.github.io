-   **Table of contents**
-   [Space Points.](#Space-Points)
    -   [SpacePoint class.](#SpacePoint-class)
        -   [SpacePoints and Hits.](#SpacePoints-and-Hits)
    -   [SpacePointAlg algorithm.](#SpacePointAlg-algorithm)
        -   [Use cases.](#Use-cases)
        -   [Ghost SpacePoints and filtering.](#Ghost-SpacePoints-and-filtering)
        -   [Merging.](#Merging)
        -   [Time-to-distance calculation.](#Time-to-distance-calculation)
    -   [SpacePointFinder module.](#SpacePointFinder-module)
    -   [SpacePointCheater module.](#SpacePointCheater-module)
    -   [SpacePointAna module.](#SpacePointAna-module)

Space Points.
===============================

This article describes various aspects of space points, what they are, how they are created, how they used.

SpacePoint class.
---------------------------------------

Class `recob::SpacePoint` in svn package RecoBase represents a space point objects. Data members of `recob::SpacePoint` are as follows.

-   Unique ID.
-   Position (*x*, *y*, *z*) in the global coordinate system.
-   Position error matrix.
-   Chisquare.

SpacePoint objects are persistable, meaning they can be stored in events.

### SpacePoints and Hits.

Recall that Hits (class `recob::Hit`) represent a pulse on a particular wire at a particular time: (*t*, *w*). The time determines the *x*-coordinate in the global coordinate system. The wire number determines some linear combination of *y* and *z* coordinates. Hits from different views can be combined into space points with all three spatial coordinates (*x*, *y*, *z*) determined.

SpacePoints are created from Hits (either directly or as a side effect of track reconstruction) as part of the reconstruction chain. SpacePoints that have been constructed from Hits are connected with their parent Hits using art associations (see [Use_Associations](Use_Associations)).

SpacePointAlg algorithm.
-----------------------------------------------------

`SpacePointAlg` (svn package RecoAlg. The SpacePoint tracking module is in svn package TrackFinder.) is an algorithm type class, which means that it is neither an art service nor an art module, but it is nevertheless constructed from an art parameter set. As such, algorithms can easily be data members of modules. Standard configurations for `SpacePointAlg` are stored in fcl file TrackFinder/trackfinderalgorithms.fcl.

### Use cases.

-   Determine whether a collection of Hits is compatible with being made into a SpacePoint, based on time differences and spatial separation (method `compatible`).
-   Make a single SpacePoint from specified collection of Hits (method `fillSpacePoint`).
-   Make a collection of SpacePoints from all compatible combinations of Hits from a collection of Hits (method `makeSpacePoints`).
-   Make a collection of SpacePoints from a collection of Hits using MC truth (method `makeMCTruthSpacePoints`).

### Ghost SpacePoints and filtering.

If SpacePoints are reconstructed *ab initio* from a collection of Hits without being guided by some other kind of pattern recognition (e.g. track reconstruction), then it is likely that many false combinations of Hits will be found to be compatible, and many fake (ghost) space points will be made. To mitigate the ghost SpacePoint problem, `SpacePointAlg` supports the concept of filtering, which is enabled by config parameter `Filter` (true by default). If filtering is enabled, method `makeSpacePoints` will select the best SpacePoint (based on chisquare) from among all candidate SpacePoints with Hits on any single wire in the preferred view. The preferred view is the view with the most Hits, or the collection view if config parameter `PreferColl` is true.

### Merging.

`SpacePointAlg` has another method for dealing with ghost space points called merging, which is enabled by config parameter `Merge` (false by default). Rather than selecting the best SpacePoint, the merge algorithm attempts to combine candidate SpacePoints into a single SpacePoint with multiple Hits from the same view (a complex SpacePoint). Currently, merging should be regarded as experimental, and should not be used in any kind of standard reconstruction.

### Time-to-distance calculation.

SpacePoint reconstruction involves a time-to-distance calculation to obtain the *x* coordinate of the SpacePoint. The entire calculation is contained in service `DetectorProperties` in package Utilities via the following methods.

-   `ConvertXToTicks`.
-   `ConvertTicksToX`.

The `DetectorProperties` service also includes tunable time offset parameters for each view.

SpacePointFinder module.
-----------------------------------------------------

Module `SpacePointFinder` (svn package TrackFinder) is a producer module that makes all possible SpacePoints based on all clustered Hits in an event. `SpacePointFinder` includes `SpacePointAlg` as a data member. `SpacePointModule` inserts the following data products into the event.

-   A collection of SpacePoints (`vector<SpacePoint>`).
-   SpacePoint-Hit associations.
-   SpacePoint-Cluster associations (if config parameter `ClusterAssns` is true).
-   A collection of pointers to SpacePoints (`vector<PtrVector<SpacePoint> >)` that preserves the cluster structure of the constituent hits. That is, each `PtrVector<SpacePoint>` points to space points that were constructed from the same Cluster in each view.

SpacePointCheater module.
-------------------------------------------------------

Module `SpacePointCheater` (svn package TrackFinder) has the identical functionality as `SpacePointFinder`, and makes the same data products, except SpacePoints are made using MC truth.

SpacePointAna module.
-----------------------------------------------

Module `SpacePointAna` (svn package TrackFinder) is an analyzer module that fills histograms using SpacePoints in an event. Among other things, the generated histograms enable to test and/or tune time offsets in the time-to-distance calculation.
