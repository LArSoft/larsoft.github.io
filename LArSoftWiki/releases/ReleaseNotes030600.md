# LArSoft v03_06_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
[Download instructions](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v03_06_00/larsoft-v03_06_00.html)

## Purpose

-   LBNE MCC1

## New features

-   AuxDet\* changes
-   PCA

## Bug fixes

## Updated dependencies

|          |          |           |                                                 |
|----------|----------|-----------|-------------------------------------------------|
| Product  | Version  | Qualifier | Notes                                           |
| art      | v1_12_05 | nu:e6     | bug fixes - no changes required in larsoft code |
| ifdh_art | v1_6_1  | s6:nu:e6  | uses art v1_12_05 - no other changes            |
| nutools  | v1_07_01 | e6        | uses art v1_12_05 - no other changes            |

# Change List

## larsoft v03_06_00

-   2015-01-14 Lynn Garren : package versions
-   2015-01-14 Lynn Garren : larsoft v03_06_00 for larsoft v03_06_00
-   2015-01-14 Lynn Garren : header changes for v03_06_00

## lareventdisplay v03_03_01

-   2015-01-14 Lynn Garren : lareventdisplay v03_03_01 for larsoft v03_06_00

## larexamples v03_02_11

-   2015-01-14 Lynn Garren : larexamples v03_02_11 for larsoft v03_06_00

## larpandora v03_05_00

-   2015-01-14 Lynn Garren : larpandora v03_05_00 for larsoft v03_06_00
-   2015-01-13 Andrew Blake : Add a legacy file 'pandoramodules.fcl' to avoid breaking uboonecode
-   2015-01-12 Andrew Blake : Merge branch 'feature/blake_pandoraVertices' into develop
-   2015-01-12 Andrew Blake : Adding analysis modules to runpandora fcl files
-   2015-01-12 Andrew Blake : Modifying MicroBooNE fcl files
-   2015-01-12 Andrew Blake : Modifying MicroBooNE fcl files
-   2015-01-12 Andrew Blake : updating ParticleAnalysisAlgorithm.cc (equivalent to PFParticleAnalysis module)
-   2015-01-12 Andrew Blake : Expanding the flow of algorithms that neutrino events and vertices
-   2015-01-12 Andrew Blake : Adding particle seeds to PFParticleAnalysis module (and removing particle seed header from LArPandoraParticleCreator)
-   2015-01-12 Andrew Blake : Updating neutrino and cosmic scripts, and deleting combined script which cheats cosmic subtraction
-   2015-01-12 Andrew Blake : Writing particle vertices (and better seeds) to ART output
-   2015-01-12 Andrew Blake : Add code to calculate the position and direction of particle vertices, to be used in building recob::Vertex and recob::Seed objects.

## larana v03_03_09

-   2015-01-14 Lynn Garren : larana v03_03_09 for larsoft v03_06_00

## larreco v03_05_00

-   2015-01-14 Lynn Garren : larreco v03_05_00 for larsoft v03_06_00
-   2015-01-14 Tingjun Yang : Make sure bin is at least 2 before subtracting 2.
-   2015-01-13 Tingjun Yang : Update fcl parameters for fasthitfinder.
-   2015-01-13 Michelle Stancari : add default threshold values
-   2015-01-13 Michelle Stancari : add default threshold values
-   2015-01-13 Michelle Stancari : Merge branch 'feature/mstancar_rawhits' into develop
-   2015-01-13 Michelle Stancari : new hitfinder that runs on rawdata
-   2015-01-13 Michelle Stancari : Add RawData for rawhitfinder
-   2015-01-13 Michelle Stancari : Add RawHitFinder configuration
-   2015-01-13 Michelle Stancari : Add switch for hit constructor
-   2015-01-11 Michelle Stancari : add switch to choose appropriate hit constructor
-   2015-01-08 Lynn Garren : add missing install_headers directive

## larsim v03_04_00

-   2015-01-14 Lynn Garren : larsim v03_04_00 for larsoft v03_06_00
-   2015-01-14 Tyler Alion : Merge branch 'feature/AuxDetGeneralize_talion' into develop
-   2015-01-14 Tyler Alion : change the object itentifier to not be the same name as the object type
-   2015-01-13 Tyler Alion : Merge branch 'develop' into feature/AuxDetGeneralize_talion
-   2014-12-31 Tingjun Yang : Merge branch 'develop' into feature/AuxDetGeneralize_talion
-   2014-12-27 Tyler Alion : Rewrite AuxDetReadoutGeometry to find and make AuxDets the same way that the Geometry service does. Change AuxDetReadout constructor to take a name as well as a number attached to the AuxDet. This number is the index in the vector of AuxDetGeos stored in Geometry, which will eventually be explicitly sorted just like the other \*Geo objects. The number then becomes the AuxDetSimChannel number. The old way was not flexible enough fo new users, but can now work with any GDML volume whose name starts with volAuxDet, regardless of what comes after. This GDML volume can also be anywhere in the volume tree under the World.

## larevt v03_03_01

-   2015-01-14 Lynn Garren : larevt v03_03_01 for larsoft v03_06_00

## lardata v03_06_00

-   2015-01-14 Lynn Garren : lardata v03_06_00 for larsoft v03_06_00
-   2015-01-13 Tracy Usher : Merge branch 'feature/usher_development-v03_04_06' into develop
-   2015-01-13 Tracy Usher : Fix output to actually output the correct eigenvector values
-   2015-01-09 Andrew Blake : Fix the conversion between Ticks and X in DetectorProperties service so that it accounts for the TPC drift direction. Fix is needed for LBNE, where TPCs can have either negative or positive drift directions.
-   2015-01-07 Tracy Usher : Add output and comparison functions to Seed, updated classes and classes_def to accommodate new PCAxis data product.
-   2015-01-07 Tracy Usher : Add data product to contain the results of a Principal Components Analysis of a set of space points. This contains the three principal axes and their eigen values which can be used to do a very basic shape analysis.

## larcore v03_05_00

-   2015-01-14 Lynn Garren : larcore v03_05_00 for larsoft v03_06_00
-   2015-01-14 Tyler Alion : Merge branch 'feature/AuxDetSort_standard' into develop
-   2015-01-14 Tyler Alion : add comments explaining AuxDetGeo dimensions better
-   2015-01-13 Tyler Alion : Merge branch 'develop' into feature/AuxDetSort_standard
-   2015-01-06 Lynn Garren : set FHICL_FILE_PATH and FW_SEARCH_PATH for the case where building without mrb
-   2014-12-30 Tyler Alion : Add in hooks for AuxDetGeo vector sorting. AuxDets are not in the Cryostat volume like other sorted Geo objects, so this change requires the change of several constructors and functions throughout LArSoft— essentially anywhere the Geometry service passes around the vector of cryostats for experiment-specific sorting. Just like the vector of CryostatGeos, the vector of AuxDetGeos must be passed to the ChannelMapAlg initialize function so that the experiment-specific sorter object can call a new SortAuxDets function. The GeometryHelper classes facilitate handling the specific sorting and channel map, and must be similarly changed to include an AuxDetGeo vector. For now, uboonecode is the only detector using both the AuxDetGeo code and the standard sorting. Make the default sorting the uboone way, which is based off of a number encoded in the GDML volume name. Any future users using both AuxDet and Standard sorting may need to fix this, or comply. Sample files have been changed to represent the addition of AuxDetGeo vectors in each function.

## larbatch v01_01_00

-   2015-01-14 Lynn Garren : larbatch v01_01_00 for larsoft v03_06_00
-   2015-01-14 Herbert Greenlee : Remove project group attribute. Use standard experiment name instead.
-   2015-01-07 Herbert Greenlee : Remove obsolete build instructions. Larbatch now builds properly using standard mrb.
