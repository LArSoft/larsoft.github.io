LArSoft v04\_00\_00 Release Notes(#LArSoft-v04_00_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v04\_00\_00 Release Notes](#LArSoft-v04_00_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04\_00\_00](#larsoft-v04_00_00)
    -   [lareventdisplay v04\_00\_00](#lareventdisplay-v04_00_00)
    -   [larexamples v04\_00\_00](#larexamples-v04_00_00)
    -   [larpandora v04\_00\_00](#larpandora-v04_00_00)
    -   [larana v04\_00\_00](#larana-v04_00_00)
    -   [larreco v04\_00\_00](#larreco-v04_00_00)
    -   [larsim v04\_00\_00](#larsim-v04_00_00)
    -   [larevt v04\_00\_00](#larevt-v04_00_00)
    -   [lardata v04\_00\_00](#lardata-v04_00_00)
    -   [larcore v04\_00\_00](#larcore-v04_00_00)
    -   [larbatch v01\_04\_01](#larbatch-v01_04_01)
    -   [larutils v1\_00\_03](#larutils-v1_00_03)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_00_00/larsoft-v04_00_00.html)

Purpose(#Purpose)
--------------------

-   MCC6 preliminary release

New features(#New-features)
------------------------------

Bug fixes(#Bug-fixes)
------------------------

Updated dependencies(#Updated-dependencies)
----------------------------------------------

-   note that larpandora now depends on larreco

Change List(#Change-List)
============================

larsoft v04\_00\_00(#larsoft-v04_00_00)
------------------------------------------

-   2015-02-11 Lynn Garren : Merge branch ‘v04\_00\_rc’
-   2015-02-11 Lynn Garren : larsoft v04\_00\_00
-   2015-02-11 Lynn Garren : new SpaceCharge header
-   2015-02-11 Lynn Garren : larsoft v03\_08\_02 for larsoft v03\_08\_02
-   2015-02-11 Lynn Garren : psycopg2 has no qualifiers
-   2015-02-11 Lynn Garren : update versions
-   2015-02-06 Lynn Garren : keep the html file here
-   2015-02-05 Lynn Garren : larsoft v04\_00\_00\_rc1
-   2015-02-05 Lynn Garren : adding a source code manifest template
-   2015-02-05 Lynn Garren : DataProduct changes
-   2015-02-05 Lynn Garren : Merge branch ‘feature/DataProductRevision’ into v04\_00\_rc
-   2015-01-30 Gianluca Petrillo : Merge tag ‘LARSOFT\_SUITE\_v03\_08\_00’ into feature/DataProductRevision

lareventdisplay v04\_00\_00(#lareventdisplay-v04_00_00)
----------------------------------------------------------

-   2015-02-11 Lynn Garren : Merge branch ‘v04\_00\_rc’
-   2015-02-11 Lynn Garren : lareventdisplay v04\_00\_00
-   2015-02-11 Lynn Garren : lareventdisplay v03\_04\_02 for larsoft v03\_08\_02
-   2015-02-11 Gianluca Petrillo : Changes for updated recob::Cluster (v14 =\> v15, MultipleHitDensity() replacing MultipleHitWires())
-   2015-02-05 Lynn Garren : lareventdisplay v04\_00\_00\_rc1
-   2015-02-05 Lynn Garren : Merge branch ‘feature/DataProductRevision’ into v04\_00\_rc
-   2015-02-02 Gianluca Petrillo : Merge tag ‘LARSOFT\_SUITE\_v03\_08\_00’ into feature/DataProductRevisionNewCluster
-   2015-01-30 Gianluca Petrillo : recob::Cluster member renamed to MultipleHitWires(), its algorithm defined.
-   2015-01-28 Gianluca Petrillo : Updated for the new recob::Cluster v14. Some shortcuts have been taken, and the clusters produced by GraphCluster module are not as shiny as the ones from larreco.
-   2015-01-28 Gianluca Petrillo : Merge ub\_showerreco branch
-   2015-01-15 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision This synchronizes to larsoft v03\_06\_00 .
-   2015-01-07 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision
-   2014-12-30 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision
-   2014-12-26 Gianluca Petrillo : Merge branch ‘develop’ into feature/DataProductRevision
-   2014-12-23 Gianluca Petrillo : Update for the new recob::Hit. Test needed.
-   2014-12-10 Gianluca Petrillo : Changes for data product review: raw::RawData (lardata commit b4b4d04)

larexamples v04\_00\_00(#larexamples-v04_00_00)
--------------------------------------------------

-   2015-02-11 Lynn Garren : Merge branch ‘v04\_00\_rc’
-   2015-02-11 Lynn Garren : larexamples v04\_00\_00
-   2015-02-11 Lynn Garren : larexamples v03\_02\_14 for larsoft v03\_08\_02
-   2015-02-05 Lynn Garren : larexamples v04\_00\_00\_rc1
-   2015-01-30 Gianluca Petrillo : Merge tag ‘LARSOFT\_SUITE\_v03\_08\_00’ into feature/DataProductRevision
-   2015-01-15 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision This synchronizes to larsoft v03\_06\_00 .
-   2015-01-07 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision
-   2015-01-02 Gianluca Petrillo : Using the old semantic for what was Hit::\<Start|End\>Time()
-   2014-12-26 Gianluca Petrillo : Merge branch ‘develop’ into feature/DataProductRevision
-   2014-12-23 Gianluca Petrillo : Update for the new recob::Hit.

larpandora v04\_00\_00(#larpandora-v04_00_00)
------------------------------------------------

-   2015-02-11 Lynn Garren : Merge branch ‘v04\_00\_rc’
-   2015-02-11 Lynn Garren : larpandora v04\_00\_00
-   2015-02-11 Lynn Garren : larpandora v03\_07\_01 for larsoft v03\_08\_02
-   2015-02-09 Gianluca Petrillo : Test error condition directly instead that by using exceptions.
-   2015-02-06 Lynn Garren : new dependency on larreco
-   2015-02-05 Lynn Garren : larpandora v04\_00\_00\_rc1
-   2015-02-04 Wesley Ketchum : Merge remote-tracking branch ‘origin/feature/DataProductRevision’ into feature/DataProductRevision
-   2015-02-02 Wesley Ketchum : update for new hit object
-   2015-02-02 Gianluca Petrillo : Updated code from develop to new data products
-   2015-02-02 Gianluca Petrillo : Merge tag ‘LARSOFT\_SUITE\_v03\_08\_00’ into feature/DataProductRevisionNewCluster
-   2015-02-02 Wesley Ketchum : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision
-   2015-01-30 Gianluca Petrillo : Added structure to allow to skip non-core hits in cluster creation
-   2015-01-28 Gianluca Petrillo : Removed old code from LArPandoraHelper
-   2015-01-28 Gianluca Petrillo : Update for the new recob::Cluster definition (old code commented out)
-   2015-01-20 Gianluca Petrillo : Update for the new recob::Cluster
-   2015-01-15 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision This synchronizes to larsoft v03\_06\_00 .
-   2015-01-14 Gianluca Petrillo : Merge branch ‘develop’ into feature/DataProductRevision
-   2015-01-07 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision
-   2015-01-02 Gianluca Petrillo : Using the old semantic for what was Hit::\<Start|End\>Time()
-   2014-12-26 Gianluca Petrillo : Merge branch ‘develop’ into feature/DataProductRevision
-   2014-12-23 Gianluca Petrillo : Update for the new recob::Hit. Compiles, needs testing.

larana v04\_00\_00(#larana-v04_00_00)
----------------------------------------

-   2015-02-11 Lynn Garren : Merge branch ‘v04\_00\_rc’
-   2015-02-11 Lynn Garren : larana v04\_00\_00
-   2015-02-11 Lynn Garren : larana v03\_04\_02 for larsoft v03\_08\_02
-   2015-02-11 Tingjun Yang : Merge branch ‘develop’ into v04\_00\_rc
-   2015-02-11 Thomas Warburton : Changing the other fcl parameters to useArea-true and ModuleLabels-true. Sorry for multiple commits…
-   2015-02-11 Thomas Warburton : Calibration of 35ton CalAmp constants as discussed in todays 35ton meeting. As noted will need to be re-calibrated again in future.
-   2015-02-11 Thomas Warburton : Calibration of 35ton CalAmp constants as discussed in todays 35ton meeting. As noted will need to be re-calibrated again in future.
-   2015-02-11 Tingjun Yang : Add PlaneID to particleid.
-   2015-02-05 Lynn Garren : larana v04\_00\_00\_rc1
-   2015-02-05 Lynn Garren : Merge branch ‘feature/DataProductRevision’ into v04\_00\_rc
-   2015-01-30 Gianluca Petrillo : Merge tag ‘LARSOFT\_SUITE\_v03\_08\_00’ into feature/DataProductRevisionNewCluster
-   2015-01-16 Gianluca Petrillo : Update for new recob::Cluster object
-   2015-01-15 Gianluca Petrillo : Merge remote-tracking branch ‘origin/feature/DataProductRevision’ into feature/DataProductRevision
-   2014-12-23 Gianluca Petrillo : Using TimeService to define the spill window in CRHitRemoval
-   2014-12-19 Gianluca Petrillo : Code updated with new RawDigit, Wire and Hit.
-   2015-01-08 Gianluca Petrillo : Merge branch ‘develop’ into feature/DataProductRevision
-   2015-01-07 Gianluca Petrillo : Merge branch ‘develop’ into feature/DataProductRevision
-   2014-12-30 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision
-   2014-12-23 Gianluca Petrillo : Using TimeService to define the spill window in CRHitRemoval
-   2014-12-19 Gianluca Petrillo : Code updated with new RawDigit, Wire and Hit.

larreco v04\_00\_00(#larreco-v04_00_00)
------------------------------------------

-   2015-02-11 Lynn Garren : Merge branch ‘v04\_00\_rc’
-   2015-02-11 Lynn Garren : larreco v04\_00\_00
-   2015-02-11 Lynn Garren : larreco v03\_08\_00 for larsoft v03\_08\_02
-   2015-02-11 Gianluca Petrillo : Changes for updated recob::Cluster (v14 =\> v15, MultipleHitDensity() replacing MultipleHitWires())
-   2015-02-11 Kalousis Leonidas : Correct a silly bug
-   2015-02-01 Kalousis Leonidas : Fix angular resolution value
-   2015-01-31 Kalousis Leonidas : last change; MultiScatter2 almost ready
-   2015-01-31 Kalousis Leonidas : re-arrange class functions
-   2015-01-31 Kalousis Leonidas : import single LLHD code
-   2015-01-30 Kalousis Leonidas : add aux. pull term in chi\^2
-   2015-01-30 Kalousis Leonidas : push latest chi\^2 (ECC) method
-   2015-01-30 Kalousis Leonidas : modify/imrove RMS algo
-   2015-01-30 Kalousis Leonidas : Modify theta\_{rms} code
-   2015-01-30 Kalousis Leonidas : chi\^2 structure improvement
-   2015-01-29 Kalousis Leonidas : test, first change on MultiScatter2
-   2015-02-11 Kalousis Leonidas : Correct a silly bug
-   2015-02-01 Kalousis Leonidas : Fix angular resolution value
-   2015-01-31 Kalousis Leonidas : last change; MultiScatter2 almost ready
-   2015-01-31 Kalousis Leonidas : re-arrange class functions
-   2015-01-31 Kalousis Leonidas : import single LLHD code
-   2015-01-30 Kalousis Leonidas : add aux. pull term in chi\^2
-   2015-01-30 Kalousis Leonidas : push latest chi\^2 (ECC) method
-   2015-01-30 Kalousis Leonidas : modify/imrove RMS algo
-   2015-01-30 Kalousis Leonidas : Modify theta\_{rms} code
-   2015-01-30 Kalousis Leonidas : chi\^2 structure improvement
-   2015-01-29 Kalousis Leonidas : test, first change on MultiScatter2
-   2015-02-11 Tingjun Yang : Fix a bug where hit start is \>= end. Thanks Michelle.
-   2015-02-10 Tingjun Yang : Print out a warning instead of throw an exception if the hit counts do not match.
-   2015-02-10 Tingjun Yang : Revert a change since the function is available in larsim now.
-   2015-02-09 Tingjun Yang : Change to art::Ptr\<recob::Hit\>.
-   2015-02-09 Gianluca Petrillo : Add a bit more protection in ClusterParamsAlg case of total cluster charge zero
-   2015-02-09 Gianluca Petrillo : Test error condition directly instead that by using exceptions.
-   2015-02-06 Gianluca Petrillo : DisambigCheater does not try to replicate associations that never existed any more.
-   2015-02-06 Gianluca Petrillo : The standard cluster parameter algorithms are not designed, and they are fragile, for clusters with few hits. Some fixes added, many more are likely needed.
-   2015-02-06 Gianluca Petrillo : Fixed a real bug in HitCheater module and a potential one in HoughBaseAlg and the same HitCheater. Both introduced with new data products.
-   2015-02-06 Lynn Garren : adding fhiclcpp to the link list
-   2015-02-05 Lynn Garren : larreco v04\_00\_00\_rc1
-   2015-02-05 Lynn Garren : Merge branch ‘feature/DataProductRevision’ into v04\_00\_rc
-   2015-02-04 Gianluca Petrillo : Fixed declaration of associations produced by ClusterCrawler
-   2015-02-04 Gianluca Petrillo : Merge remote-tracking branch ‘origin/feature/DataProductRevisionNewCluster’ into feature/DataProductRevision
-   2015-02-04 Gianluca Petrillo : Fixed a comment in fuzzyCluster module
-   2015-02-04 Bruce Baller : Merge branch ‘feature/DataProductRevisionNewCluster’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/DataProductRevisionNewCluster
-   2015-02-04 Bruce Baller : Modify ClusterCrawler\_module and CCTrackMaker\_module for new hit and cluster objects
-   2015-02-03 Gianluca Petrillo : Fixed another merge problem on cluster\_microboone.fcl (shoudl not this stuff be in uboonecode instead?)
-   2015-02-03 Gianluca Petrillo : Fixed merge problem on clustermodules.fcl
-   2015-02-03 Gianluca Petrillo : Cluster3D now uses again its own dTdW for the cluster angles
-   2015-02-02 Gianluca Petrillo : Merge branch ‘feature/DataProductRevision’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/DataProductRevision
-   2015-02-02 Gianluca Petrillo : Updated code from develop to new data products
-   2015-02-02 Gianluca Petrillo : Merge tag ‘LARSOFT\_SUITE\_v03\_08\_00’ into feature/DataProductRevisionNewCluster
-   2015-02-02 Wesley Ketchum : make it so hitanamodule works even if hitfinder does not make wire assocs
-   2015-02-02 Wesley Ketchum : bug fix to prevent seg fault on merging signal set, and fcl files
-   2015-02-02 Wesley Ketchum : fill out the module code now
-   2015-02-02 Wesley Ketchum : add in an AmplitudeVector, and put in the EmplaceHit function in RFFHitFinderAlg, and additions to CMake list to build
-   2015-02-02 Wesley Ketchum : add in a bunch of new files for the RFF HitFinder overhaul
-   2015-01-30 Gianluca Petrillo : recob::Cluster member renamed to MultipleHitWires(), its algorithm defined.
-   2015-01-29 Bruce Baller : Merge branch ‘feature/DataProductRevisionNewCluster’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/DataProductRevisionNewCluster
-   2015-01-29 Bruce Baller : in-progress commit
-   2015-01-29 Gianluca Petrillo : Removing ShowerAngleCluster module (dropped from ub\_showerreco branch too)
-   2015-01-29 Gianluca Petrillo : Merge branch ‘feature/DataProductRevision’ into feature/DataProductRevisionNewCluster This updates recob::Hit to version 15.
-   2015-01-29 Gianluca Petrillo : Update for recob::Hit version 15
-   2015-01-28 Gianluca Petrillo : LineMerger module updated for new recob::Cluster v14.
-   2015-01-28 Gianluca Petrillo : Update of ClusterCrawler to the new recob::Cluster v14. Still work to be done on it.
-   2015-01-28 Gianluca Petrillo : Removed ClusterCrawlerShower and KingaCluster cluster finders.
-   2015-01-28 Gianluca Petrillo : ClusterMergeAlg depends on SimulationBase (nutools): added in CMakeLists.txt
-   2015-01-28 Gianluca Petrillo : First commit for updates for recob::Cluster v14. Not everything fixed yet
-   2015-01-26 Gianluca Petrillo : New cluster algorithm interface, plus standard implementation. NWiresOverNHits() still missing.
-   2015-01-23 Wesley Ketchum : updates to fill some elements of RFF hitfinder more better
-   2015-01-22 Eric Church : slightly altered hitana.fcl
-   2015-01-20 Eric Church : Add a vector of TTrees: one TTree for each HitFinder, each with one single branch that is a recob::Hit.
-   2015-01-15 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision This synchronizes to larsoft v03\_06\_00 .
-   2015-01-15 Gianluca Petrillo : Bug fix on ClusterCrawler module - I was using the wrong constructor
-   2015-01-15 Gianluca Petrillo : Updated new version of RawHitFinder module to new recob::Hit
-   2015-01-14 Gianluca Petrillo : Merge branch ‘develop’ into feature/DataProductRevision
-   2015-01-08 Gianluca Petrillo : Merge branch ‘develop’ into feature/DataProductRevision
-   2015-01-07 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision
-   2015-01-02 Gianluca Petrillo : Using the old semantic for what was Hit::\<Start|End\>Time()
-   2014-12-30 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision
-   2014-12-23 Gianluca Petrillo : Updated for new recob::Hit . The code compiles, but many to-do’s are left
-   2014-12-19 Gianluca Petrillo : Code updated for new RawDigit, Wire and Hit. A bit log of it does not compile yet. RecoAlg and VertexFinder libraries fully compile, as GausHitFinder module does.

larsim v04\_00\_00(#larsim-v04_00_00)
----------------------------------------

-   2015-02-11 Lynn Garren : Merge branch ‘v04\_00\_rc’
-   2015-02-11 Lynn Garren : larsim v04\_00\_00
-   2015-02-11 Lynn Garren : larsim v03\_07\_00 for larsoft v03\_08\_02
-   2015-02-11 Lynn Garren : Merge branch ‘feature/mrmooney\_SpaceChargeTest’ into v04\_00\_rc
-   2015-02-11 Michael Mooney : Quick fix
-   2015-02-11 Lynn Garren : photon\_library.xml is a sample
-   2015-01-27 Matthew Toups : Update version of larsoft.
-   2015-01-27 Matthew Toups : Nonfunctional changes to largeant fcl file.
-   2015-01-27 Matthew Toups : Update job submission script
-   2014-12-02 Matthew Toups : Update optical library build tools.
-   2014-12-01 Matthew Toups : Comment out redundant line in simulationservices.fcl for microboone.fcl.
-   2015-02-10 Matthew Toups : Change default file for photon library to point to the updated library with 32 PMTs.
-   2015-02-10 Matthew Toups : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into feature/toups\_photon\_library
-   2015-02-10 Matthew Toups : Updated ups product\_deps
-   2015-02-09 Gianluca Petrillo : Extended interfact of BackTracker::HitToEveID()
-   2015-02-07 Michael Mooney : Merge branch ‘develop’ into feature/mrmooney\_SpaceChargeTest
-   2015-02-06 Lynn Garren : Merge branch ‘feature/mrmooney\_SpaceChargeTest’ into v04\_00\_rc
-   2015-02-06 Michael Mooney : Moved space charge effect service to larevt
-   2015-02-05 Lynn Garren : larsim v04\_00\_00\_rc1
-   2015-01-30 Gianluca Petrillo : Merge tag ‘LARSOFT\_SUITE\_v03\_08\_00’ into feature/DataProductRevision
-   2015-01-27 Matthew Toups : Update version of larsoft.
-   2015-01-27 Matthew Toups : Merge remote-tracking branch ‘origin/develop’ into feature/toups\_photon\_library
-   2015-01-27 Matthew Toups : Nonfunctional changes to largeant fcl file.
-   2015-01-27 Matthew Toups : Update job submission script
-   2015-01-22 Michael Mooney : Modifications for improved performance
-   2015-01-21 Michael Mooney : Another minor bug fix for SCE implementation
-   2015-01-20 Michael Mooney : Minor bug fixes for SCE
-   2015-01-17 Michael Mooney : First version of space charge effect implementation
-   2015-01-15 Gianluca Petrillo : Updated DumpRawDigits module for new RawDigit
-   2015-01-15 Gianluca Petrillo : Merge branch ‘develop’ into feature/DataProductRevision
-   2015-01-15 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision This synchronizes to larsoft v03\_06\_00 .
-   2015-01-14 Gianluca Petrillo : Merge branch ‘develop’ into feature/DataProductRevision
-   2015-01-07 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision
-   2014-12-30 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision
-   2014-12-23 Gianluca Petrillo : Channel ID variables now of type raw::ChannelID\_t instead of uint32\_t
-   2014-12-19 Gianluca Petrillo : Code updated for new RawDigit, Wire and Hit.
-   2014-12-02 Matthew Toups : Update optical library build tools.
-   2014-12-01 Matthew Toups : Comment out redundant line in simulationservices.fcl for microboone.fcl.

larevt v04\_00\_00(#larevt-v04_00_00)
----------------------------------------

-   2015-02-11 Lynn Garren : Merge branch ‘v04\_00\_rc’
-   2015-02-11 Lynn Garren : larevt v04\_00\_00
-   2015-02-11 Lynn Garren : larevt v03\_04\_02 for larsoft v03\_08\_02
-   2015-02-06 Lynn Garren : Merge branch ‘feature/mrmooney\_SpaceChargeTest’ into v04\_00\_rc
-   2015-02-06 Michael Mooney : New home/name for the space charge effect service
-   2015-02-06 Lynn Garren : need RawData in link list
-   2015-02-05 Lynn Garren : larevt v04\_00\_00\_rc1
-   2015-01-30 Gianluca Petrillo : Merge tag ‘LARSOFT\_SUITE\_v03\_08\_00’ into feature/DataProductRevisionNewCluster
-   2015-01-15 Gianluca Petrillo : Updated for new recob::Cluster
-   2015-01-15 Gianluca Petrillo : Merge branch ‘develop’ into feature/DataProductRevision
-   2015-01-15 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision This synchronizes to larsoft v03\_06\_00 .
-   2015-01-07 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision
-   2014-12-19 Gianluca Petrillo : Code updated for new RawDigit, Wire and Hit.
-   2014-12-10 Gianluca Petrillo : Changes for data product review: raw::RawData (lardata commit b4b4d04); also added support for compressed raw digits in ArgoNeuT CalData

lardata v04\_00\_00(#lardata-v04_00_00)
------------------------------------------

-   2015-02-12 Lynn Garren : Merge branch ‘v04\_00\_rc’
-   2015-02-12 Lynn Garren : root does not deal properly with uint64\_t
-   2015-02-12 Lynn Garren : root does not deal properly with uint64\_t
-   2015-02-11 Lynn Garren : Merge branch ‘v04\_00\_rc’
-   2015-02-11 Lynn Garren : lardata v04\_00\_00
-   2015-02-11 Lynn Garren : lardata v03\_08\_01 for larsoft v03\_08\_02
-   2015-02-11 Gianluca Petrillo : Changed recob::Cluster (v14 =\> v15): MultipleHitDensity() replaces MultipleHitWires()
-   2015-02-11 Tingjun Yang : Add PlaneID to particleid.
-   2015-02-07 Xin Qian : fix normalization problem
-   2015-02-10 Brian\_Rebel : add TimeStamp information to AuxDetDigit. uint64\_t, upper 32 bits used for seconds since 1970, lower for nanosecond precision
-   2015-02-10 Brian\_Rebel : add TimeStamp information to AuxDetDigit. uint64\_t, upper 32 bits used for seconds since 1970, lower for nanosecond precision
-   2015-02-09 Gianluca Petrillo : Minor change: avoid using pow() to square a number
-   2015-02-06 Gianluca Petrillo : Added a warning about loss of precision of StatCollector\<\>::Variance()
-   2015-02-05 Lynn Garren : lardata v04\_00\_00\_rc1
-   2015-02-04 Gianluca Petrillo : Added dictionaries for the many classes needed by new ClusterCrawler associations
-   2015-02-04 Gianluca Petrillo : Renamed the /implementation/ of the function to create associations with metadata
-   2015-02-04 Gianluca Petrillo : Merge branch ‘feature/DataProductRevision’ of ssh://cdcvs.fnal.gov/cvs/projects/lardata into feature/DataProductRevision
-   2015-02-04 Gianluca Petrillo : Renamed the function to create associations with metadata
-   2015-02-04 Wesley Ketchum : Merge remote-tracking branch ‘origin/feature/DataProductRevision’ into feature/DataProductRevision
-   2015-02-02 Gianluca Petrillo : Added a CreateAssn() function with associated data
-   2015-02-02 Wesley Ketchum : update for new hit object
-   2015-02-02 Wesley Ketchum : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision
-   2015-01-30 Gianluca Petrillo : Removed unnecessary art dependency
-   2015-01-30 Gianluca Petrillo : Merge tag ‘LARSOFT\_SUITE\_v03\_08\_00’ into feature/DataProductRevisionNewCluster
-   2015-01-30 Gianluca Petrillo : recob::Cluster member renamed to MultipleHitWires(), its algorithm defined.
-   2015-01-29 Gianluca Petrillo : Added a CreateAssn() taking only indices of future data products as input
-   2015-01-29 Gianluca Petrillo : Hit test updated for recob::Hit v15.
-   2015-01-29 Gianluca Petrillo : Merge branch ‘feature/DataProductRevision’ into feature/DataProductRevisionNewCluster This updates recob::Hit to version 15.
-   2015-01-29 Gianluca Petrillo : Removed fHitSignal from recob::Hit (now version 15)
-   2015-01-29 Gianluca Petrillo : Added Cluster::isValid() member returning if cluster ID is valid
-   2015-01-27 Gianluca Petrillo : Minor changes to LinearFir object
-   2015-01-27 Gianluca Petrillo : Added move operations to recob::Cluster
-   2015-01-26 Gianluca Petrillo : Added a C++ class for simple linear fit
-   2015-01-25 Gianluca Petrillo : Added sumADC to PxHit object; extended interface to convert from recob::Hit
-   2015-01-25 Gianluca Petrillo : Added utilities to automatically dereference a variable if it is a pointer
-   2015-01-21 Gianluca Petrillo : Updated imported utilities to new Hit object
-   2015-01-21 Gianluca Petrillo : Import utilities from ub\_showerreco branch (Terao/Szelc)
-   2015-01-20 Gianluca Petrillo : Fixed a bug in raw::RawData constructor moving the ADC vector
-   2015-01-20 Gianluca Petrillo : Merge branch ‘feature/DataProductRevisionNewCluster’ of ssh://cdcvs.fnal.gov/cvs/projects/lardata into feature/DataProductRevisionNewCluster
-   2015-01-20 Gianluca Petrillo : Added back uncertainties on the start and end position of the cluster
-   2015-01-16 Gianluca Petrillo : Added new functionalities to lar::util::StatCollector
-   2015-01-16 Gianluca Petrillo : Added new functionalities to lar::util::StatCollector
-   2015-01-15 Gianluca Petrillo : Merge branch ‘feature/DataProductRevision’ into feature/DataProductRevisionNewCluster
-   2015-01-15 Gianluca Petrillo : Fixed the move constructors for hits and wires
-   2015-01-15 Gianluca Petrillo : Completed tests on Hit, Wire, RawDigit data products
-   2015-01-15 Gianluca Petrillo : Fixed some definitions
-   2015-01-15 Gianluca Petrillo : Merge branch ‘feature/DataProductRevision’ into feature/DataProductRevisionNewCluster This synchronizes to larsoft v03\_06\_00 .
-   2015-01-15 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision This synchronizes to larsoft v03\_06\_00 .
-   2015-01-15 Gianluca Petrillo : Added a new Hit construction method using RawDigit
-   2015-01-14 Gianluca Petrillo : Merge branch ‘develop’ into feature/DataProductRevision
-   2015-01-14 Gianluca Petrillo : New recob::Cluster (and unit test)
-   2015-01-14 Gianluca Petrillo : Added data product tests (recob::Hit and recob::Cluster just place holders so far)
-   2015-01-14 Gianluca Petrillo : Added constructor to move data into RawDigit
-   2015-01-14 Gianluca Petrillo : Fixed (probably) a bug crashing the program on read/write access to sparse\_vector void areas
-   2015-01-07 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision
-   2015-01-02 Gianluca Petrillo : Added ROOT dictionaries for the new associations
-   2014-12-30 Gianluca Petrillo : Fixed cosmetic typo
-   2014-12-29 Gianluca Petrillo : Added StatCollector test suite
-   2014-12-26 Gianluca Petrillo : Added a class to keep track of maximum and minimum of a sample
-   2014-12-23 Gianluca Petrillo : CreateAssn() now take constant pointers; added StatCollector to accumulate simple statistics (average, RMS)
-   2014-12-19 Gianluca Petrillo : Code updated with new RawDigit, Wire and Hit and utilities.
-   2014-12-10 Gianluca Petrillo : Data product review: raw::RawData - fADC made private, interface added - added bitset and interface; currently one bit is supported: saturation - added aliases for types - pedestal and its RMS transformed from double to float - documentation added

larcore v04\_00\_00(#larcore-v04_00_00)
------------------------------------------

-   2015-02-11 Lynn Garren : larcore v04\_00\_00
-   2015-02-11 Gianluca Petrillo : Fixed another bug (or two) that was activated by my last “fix”. Added a geo::TPCGeo::ContainsPosition() method.
-   2015-02-09 Gianluca Petrillo : Geometry test now prints the TPC coordinates
-   2015-02-09 Gianluca Petrillo : Fixed a minor bug in Geometry::FindTPCAtPosition()
-   2015-02-05 Lynn Garren : larcore v04\_00\_00\_rc1
-   2015-01-25 Gianluca Petrillo : Added pi constant and degree-to-radians conversion functions in PhysicalConstants.h
-   2015-01-25 Gianluca Petrillo : Removed “static” keyword from constants in PhysicsConstants.h
-   2015-01-15 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision This synchronizes to larsoft v03\_06\_00 .
-   2015-01-14 Gianluca Petrillo : Merge branch ‘develop’ into feature/DataProductRevision
-   2015-01-07 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision
-   2014-12-30 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision
-   2014-12-26 Gianluca Petrillo : Cosmetic changes
-   2014-12-23 Gianluca Petrillo : Replaced the channel IDs with variables of raw::ChannelID\_t type
-   2014-12-19 Gianluca Petrillo : Added TDC tick and channel ID types into raw namespace.

larbatch v01\_04\_01(#larbatch-v01_04_01)
--------------------------------------------

-   2015-02-11 Lynn Garren : larbatch v01\_04\_01 for larsoft v03\_08\_02
-   2015-02-11 Lynn Garren : larbatch v01\_04\_01 for larsoft v03\_08\_02
-   2015-02-11 Herbert Greenlee : Add version to job name.
-   2015-02-11 Herbert Greenlee : Prevent text widgets from taking input focus.
-   2015-02-10 Herbert Greenlee : Fix typo (add missing “\$”). Thanks Kirby.
-   2015-02-10 Herbert Greenlee : Get rid of all interactive use of ifdh for accessing dCache (use posix instead).
-   2015-02-10 Herbert Greenlee : Add missing splitlines.
-   2015-02-10 Herbert Greenlee : Preserve current directory during job submission.
-   2015-02-05 Tingjun Yang : Missing “then”.

larutils v1\_00\_03(#larutils-v1_00_03)
------------------------------------------

-   2015-02-11 Lynn Garren : larutils v1\_00\_03 for larsoft v03\_08\_02
-   2015-02-11 Lynn Garren : larutils v1\_00\_03 for larsoft v03\_08\_02
-   2015-02-04 Lynn Garren : larsoft v03\_08\_01
-   2015-02-04 Herbert Greenlee : Fix tar extension.
