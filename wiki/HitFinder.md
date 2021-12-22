HitFinder
========================

This package contains the code and configuration for hit finding algorithms in LArSoft. The contact for this package is Jonathan Asaadi .

FFTHitFinder
------------------------------

This hit finding algorithm assumes that the wire signals have undergone an appropriate deconvolution, such that high frequency noise is eliminated and all signal shapes are unipolar. It scans through the signal on a wire for all local minima and keeps track of all regions between 2 successive minima where the maximum signal is above threshold. It identifies these regions as hits. After this it checks to see if there are adjacent hit regions in which there the valley between does not go below some threshold. On each region it performs an n Gaussian fit where n is the number of consecutive regions. It then defines the center of the hit to be the fitted Gaussian center and the beginning and end as the center minus and plus the fitted Gaussian width.

To run this hit finder you must have the CalData package and its required response functions installed. An example command to run this algorithm is given below:

ana -x argoneut.xml -x ffthitfinder.xml R631.root

The primary adjustable parameters for this algorithm are:

IndThreshold - the ADC threshold for the induction plane

ColThreshold - the ADC threshold for the collection plane

The other parameters affect the specifics of the Gaussian Fitting algorithm, a maximum multi-hit parameter for limiting computation time, as well as some parameters that are used to transform the hit time into a spacial position.
