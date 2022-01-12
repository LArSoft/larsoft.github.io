-   **Table of contents**
-   [ClusterFinder](#ClusterFinder)
    -   [DBSCAN](#DBSCAN)
    -   [HoughLineFinder](#HoughLineFinder)

ClusterFinder
================================

The package maintainer is Ben Carls .

DBSCAN
------------------

DBScan is a fast clustering algorithm. It works on points in (wire, time) space one plane at a time. The default distance metric is aware of bad wires.

Based on *Martin Ester, Hans-Peter Kriegel, J. Sander, Xiaowei Xu "A Density-Based Algorithm for Discovering Clusters
in Large Spatial Databases with Noise" (1996-). Proceedings of the Second International Conference on Knowledge Discovery and Data Mining (KDD-96)*

HoughLineFinder
------------------------------------

The HoughLineFinder module is designed to find lines (Houghclusters) from hits in an event. HoughLineFinder can be considered a cluster finding algorithm and a track fitting algorithm. After finding the line-like clusters, the algorithm returns information (slope, intercept, endpoints) about the clusters themselves. HoughLineFinder’s input can be either clusters found by the DBSCAN algorithm or hits found directly from a hit finding algorithm after deconvolution and hit finding. That is, the HoughLineFinder can search for lines, considering all the hits (in a plane) or hits on a cluster-by-cluster basis. The former is perhaps most useful for cluster-finding while the latter is most useful for actual track fitting. Running HoughLineFinder multiple times before/after other cluster finding algorithms (e.g. DBSCAN) may be useful for efficient cluster finding and track fitting.

There are a number of xml parameters one can specify before running HoughLineFinder. These parameters are explained in the xml file. A few of the parameter definitions are elaborated upon here. The ‘numAngleCells’ and ‘RhoResolutionFactor’ parameters determine the resolution of the HoughLineFInder line fits to the hits in question. These parameters can each be increased (improving resolution) at the expense of processor cycles. Gaussian smoothing can be used on the Hough Accumulator in order to reduce the effect of noisy hits by setting ‘SmootherSigma’ to a non-zero, positive value.

The HoughLineFinder::Ana method outputs a root TTree of information on the hits that have been associated with the Hough cluster(s).

The algorithm is based on *Queisser, A. “Computing the Hough Transform”, C/C++ Users Journal 21, 12 (Dec. 2003)* and *Niblack, W. and Petkovic, D. On Improving the Accuracy of the Hough Transform", Machine Vision and Applications 3, 87 (1990)*.
