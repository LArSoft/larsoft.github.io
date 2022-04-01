# LArSoft v02_04_00 Release Notes

[list of LArSoft releases](LArSoft_release_list)

## larsoft v02_04_00

-   2014-08-05 Lynn Garren : use ifdh_art v1_4_3a with libwda v2_13_0a
-   2014-08-05 Lynn Garren : use larsoft_data v0_01_00
-   2014-08-05 Lynn Garren : releaseDB/base_dependency_database for v02_04_00

## lareventdisplay v02_04_00

-   2014-08-04 Bruce Baller : remove std::cout
-   2014-08-04 Bruce Baller : Use ConvertXToTicks in Simulation Drawer

## larexamples v02_04_00

-   2014-08-05 Lynn Garren : for larsoft v02_04_00

## larpandora v02_04_00

-   2014-08-01 Andrew Blake : Commit latest chain of algorithms, plus use of track/shower flag in Producer
-   2014-08-01 John S. Marshall : Wide range of algorithm updates including two- and three-dimensional shower reconstruction, neutrino building and enhanced 3D hit creation.

## larana v02_04_00

-   2014-08-03 Tingjun Yang : fix particleid fcl files
-   2014-08-02 Tingjun Yang : avoid deleting the same object twice

## larreco v02_04_00

-   2014-08-05 Jonathan Asaadi : Change default value in the hit finder to what it should be
-   2014-08-05 Wesley Ketchum : avoid out of range error
-   2014-08-05 Benjamin Carls : Converting the FLAME code from C to C
-   2014-08-05 Tingjun Yang : update fuzzycluster paramter suggested by Ben C.
-   2014-08-05 Tingjun Yang : add back some old code
-   2014-08-04 Tingjun Yang : change MinRMS from 4 to 2.2
-   2014-08-04 Benjamin Carls : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2014-08-04 Benjamin Carls : Adding threshold parameter for FLAME clustering, it sets the lower limit on hit density for whether a hit is considered a part of a cluster or an outlier.
-   2014-08-04 Bruce Baller : Fix ClusterCrawler vertex bug
-   2014-08-03 Tingjun Yang : add cchitrefineralg for microboone
-   2014-08-03 Tingjun Yang : update fcl parameters for cchitfinderalg from Bruce optimized for gain 7.8 mV/fC and 2us shaping time, moved all microboone parameters to cluster_microboone.fcl, please include cluster_microboone.fcl instead of clustermodules.fcl
-   2014-08-02 Tingjun Yang : get p/t/c from cluster
-   2014-08-02 Muhammad Elnimr : Modifications to the cosmic tracker for the 35t.
-   2014-07-31 Eric Church : update stitch parameters

## larsim v02_04_00

-   2014-08-05 Lynn Garren : removing another library that does not belong in a larsim link list
-   2014-08-05 Lynn Garren : remove RecoAlg, which would create a circular dependency and does not appear to be used.
-   2014-08-05 Eric Church : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larsim into develop
-   2014-08-05 Eric Church : More fies to NoDirt Filter. Still not ready.
-   2014-08-04 Gianluca Petrillo : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larsim into develop
-   2014-08-04 yuntse : Bill's fix on LArG4
-   2014-08-04 Gianluca Petrillo : Merge branch 'feature/MicroBooNEauxDet' into develop
-   2014-08-03 Eric Church : New Filter
-   2014-07-29 Gianluca Petrillo : Replaced std::set by std::vector in sim::AuxDetSimChannel; added move constructor.

## larevt v02_04_00

-   2014-07-31 Gianluca Petrillo : Added module to dump the content of recob::Wire on screen

## lardata v02_04_00

-   2014-08-04 Tracy Usher : Fixing doxygen comment lines
-   2014-08-04 Tracy Usher : Incorporating suggestions to make comments doxygen friendly, add constructor and change definition of primary to const value
-   2014-08-01 TRACY USHER : Making PFParticle known to art, enumerating the possible associations
-   2014-08-01 TRACY USHER : Introducing PFParticle serving two main purposes - a) to introduce a particle hierarchy to the reconstruction, b) to serve to anchor the various associated recon objects like tracks, clusters, showers, spacepoints, etc.
-   2014-08-03 drinkingkazu : Merge branch 'feature/yuntse_TPCSim' into develop
-   2014-08-03 drinkingkazu : Resolvin a conflict —kazu
-   2014-08-01 Gianluca Petrillo : Fixes to MemoryPeakReporter.
-   2014-08-01 Gianluca Petrillo : New service to print peak memory usage (Linux only, sorry). This functionality will be eventually integrated in art's SimpleMemoryCheck.
-   2014-08-01 Tingjun Yang : Set timeservice parameters for bo
-   2014-08-01 Tingjun Yang : Set default FFT size for bo and argoneut, they have to be set for historic reasons
-   2014-08-01 Tingjun Yang : change timeservice parameters for argoneut after consulting Kazu
-   2014-07-31 Anne Schukraft : constrain PIDA calculation to first 30cm
-   2014-07-30 David Caratelli : SignalShaping now allows recob::wire object to be normalized to min ADC of RawDigit if this is specified —David Caratelli
-   2014-07-24 David Caratelli : Commented out RawDigit and recob::wire normalization which was giving issues with U plane signal —David Caratelli
-   2014-07-24 David Caratelli : reverting changes to SignalShaping.cxx —David Caratelli
-   2014-07-24 David Caratelli : SignalShaping edited to not normalize RawDigit and recob::wire objects. previously recob::wire max amplitude was normalized to be equal to the RawDigit max, positive, baseline subtracted, ADC tick on the waveform. This caused problems with U wire signals. That section was not commented out. —David Caratelli
-   2014-07-23 Matthew Toups : Update product_deps
-   2014-07-18 Yun-Tse : Modify the SignalShaping object to reset the response.

## larcore v02_04_00

-   2014-07-31 Muhammad Elnimr : Fixed WireIDsIntersect(). —elnimr
