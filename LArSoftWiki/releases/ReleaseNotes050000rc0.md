# LArSoft v05_00_00_rc0 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
[Download instructions](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v05_00_00_rc0/larsoft-v05_00_00_rc0.html)

## Purpose

-   [new Core Services](Core_Services_Review)
-   NOTE that this release is ONLY available for SLF6.

## New features

-   [new Core Services](Core_Services_Review)
-   The v05_00_00_rc0 tag collects the phase 1 architecture changes
    -   based on feature/jpaley_LArPropertiesBreakup in larsoft repositories
    -   experiment repository branches based on feature/gp_ServiceCoreReview
    -   [Core_Services_Review](Core_Services_Review)
-   This tag also exists for argoneutcode, lar1ndcode, lariatsoft, and uboonecode.
    -   All necessary changes have been made in the tags.

## Breaking Changes

-   See [new Core Services](Core_Services_Review)
-   To update local code, run UpdateCoreServices.py
    -   setup larsoft v05_00_00_rc0
    -   UpdateCoreServices.py —doit <mydir>
    -   It is safe to run UpdateCoreServices.py more than once on the same code.
-   Although a script has been provided, there are a number of changes which will need to be made by the user.
    -   These changes are already in place for argoneutcode, lar1ndcode, lariatsoft, and uboonecode.
    -   Changes to dunetpc are in progress.
-   If you want to test code in your favorite feature branch, it might be easier in some cases to check out the appropriate v05 tag, then merge your changes rather than rely on the translation scripts to perform all the necessary architecture changes.

## Updated dependencies

-   larsoft v05_00_00_rc0 was built with the same dependencies as larsoft v04_30_00.

# Change List

## larsoft v05_00_00_rc0

-   2015-12-07 Lynn Garren : larsoft v05_00_00_rc0 for larsoft v05_00_00_rc0
-   2015-12-07 Lynn Garren : update product versions
-   2015-12-07 Lynn Garren : update dependency database

## lareventdisplay v05_00_00_rc0

-   2015-12-07 Lynn Garren : lareventdisplay v05_00_00_rc0 for larsoft v05_00_00_rc0
-   2015-11-30 Gianluca Petrillo : Moving Temperature() (and what follows) from LArProperties to DetectorProperties
-   2015-11-20 Gianluca Petrillo : Updated paths and class names after relocation to DetectorInfo
-   2015-11-19 Gianluca Petrillo : Merging with LArSoft v04_30_00.
-   2015-11-19 Gianluca Petrillo : Renaming ChannelStatusService and DetectorPedestalService to adhere more closely to the standard pattern (but not there yet…)
-   2015-11-12 Gianluca Petrillo : Updated FHiCL files to reflect new core services
-   2015-11-12 Gianluca Petrillo : Removed unnecessary linking of concrete implementation of service interfaces
-   2015-11-10 Gianluca Petrillo : Merge remote-tracking branch 'origin/feature/jpaley_LArPropertiesBreakup' into feature/jpaley_LArPropertiesBreakup
-   2015-11-10 Jonathan Paley : Remove “I”
-   2015-11-09 Gianluca Petrillo : Updated lareventdisplay to the new core services
-   2015-11-05 Gianluca Petrillo : Merge remote-tracking branch 'origin/develop' into feature/jpaley_LArPropertiesBreakup
-   2015-11-03 Jonathan Paley : Use IServices
-   2015-10-05 Jonathan Paley : Merge branch 'develop' into feature/jpaley_LArPropertiesBreakup
-   2015-09-29 Jonathan Paley : Code changes for services factorization.

## larexamples v05_00_00_rc0

-   2015-12-07 Lynn Garren : larexamples v05_00_00_rc0 for larsoft v05_00_00_rc0

## larpandora v05_00_00_rc0

-   2015-12-07 Lynn Garren : larpandora v05_00_00_rc0 for larsoft v05_00_00_rc0
-   2015-11-23 Gianluca Petrillo : Cosmetic change
-   2015-11-20 Gianluca Petrillo : Updated paths and class names after relocation to DetectorInfo
-   2015-11-19 Gianluca Petrillo : Merging with LArSoft v04_30_00.
-   2015-11-12 Gianluca Petrillo : Removed unnecessary linking of concrete implementation of service interfaces
-   2015-11-10 Jonathan Paley : Remove “I”
-   2015-11-03 Jonathan Paley : Use IServices
-   2015-10-05 Jonathan Paley : Merge branch 'develop' into feature/jpaley_LArPropertiesBreakup
-   2015-09-29 Jonathan Paley : Code changes for service factorization.

## larana v05_00_00_rc0

-   2015-12-07 Lynn Garren : larana v05_00_00_rc0 for larsoft v05_00_00_rc0
-   2015-11-30 Gianluca Petrillo : Moving Temperature() (and what follows) from LArProperties to DetectorProperties
-   2015-11-23 Gianluca Petrillo : Renamed namespace for ElecClock and stuff it depends on
-   2015-11-20 Gianluca Petrillo : Updated paths and class names after relocation to DetectorInfo
-   2015-11-19 Gianluca Petrillo : Merging with LArSoft v04_30_00.
-   2015-11-19 Gianluca Petrillo : Renaming ChannelStatusService and DetectorPedestalService to adhere more closely to the standard pattern (but not there yet…)
-   2015-11-12 Gianluca Petrillo : Removed unnecessary linking of concrete implementation of service interfaces
-   2015-11-03 drinkingkazu : feature enhanced ophit finder sliding window algo —kazu
-   2015-10-28 Tingjun Yang : Use ModBox mode as the default recombination correction.
-   2015-10-28 Tingjun Yang : Update parameters for dune10kt.
-   2015-10-23 Thomas Warburton : Adding a PE threshold for making a T0, as requested. It is defaulted to 0 so that it doesn't effect any exisiting analyses
-   2015-10-19 Herbert Greenlee : Fix crash.
-   2015-10-15 drinkingkazu : Adding new algorithm & a bit of re-organization —kazu
-   2015-10-07 Thomas Warburton : Adding the BestFitParam variable to the Photon Detector T0.
-   2015-10-06 Tracy Usher : Reverse order of objects in associations definition to prevent interesting crash when running where the associations are both created and then used in the same job.
-   2015-10-06 Tingjun Yang : Fix a bug in saving 3D points. The index was off by one. Thanks Greg Pulliam for spotting this.
-   2015-10-02 Gianluca Petrillo : Replacing deprecated ChannelFilter with IChannelStatusService
-   2015-11-10 Jonathan Paley : Remove “I”.
-   2015-11-03 Jonathan Paley : Use IServices.
-   2015-10-05 Jonathan Paley : Merge branch 'develop' into feature/jpaley_LArPropertiesBreakup
-   2015-09-29 Jonathan Paley : Code changes for service factorization.

## larreco v05_00_00_rc0

-   2015-12-07 Lynn Garren : larreco v05_00_00_rc0 for larsoft v05_00_00_rc0
-   2015-11-30 Gianluca Petrillo : Moving Temperature() (and what follows) from LArProperties to DetectorProperties
-   2015-11-20 Gianluca Petrillo : Updated paths and class names after relocation to DetectorInfo
-   2015-11-19 Gianluca Petrillo : Merging with LArSoft v04_30_00.
-   2015-11-19 Gianluca Petrillo : Removed “lardata/” from include path. That is, I changed my mind.
-   2015-11-19 Gianluca Petrillo : Renaming ChannelStatusService and DetectorPedestalService to adhere more closely to the standard pattern (but not there yet…)
-   2015-11-12 Gianluca Petrillo : Removed unnecessary linking of concrete implementation of service interfaces
-   2015-11-12 Gianluca Petrillo : Updated FHiCL files to reflect new core services
-   2015-11-10 Gianluca Petrillo : Merge remote-tracking branch 'origin/feature/jpaley_LArPropertiesBreakup' into feature/jpaley_LArPropertiesBreakup
-   2015-11-10 Jonathan Paley : Remove “I”
-   2015-11-09 Gianluca Petrillo : Merge develop in.
-   2015-11-09 Gianluca Petrillo : Updated lareventdisplay to the new core services
-   2015-11-05 Gianluca Petrillo : Merge remote-tracking branch 'origin/develop' into feature/jpaley_LArPropertiesBreakup
-   2015-11-03 Jonathan Paley : Merge branch 'develop' into feature/jpaley_LArPropertiesBreakup
-   2015-09-29 Jonathan Paley : Code changes for service factorization.

## larsim v05_00_00_rc0

-   2015-12-07 Lynn Garren : larsim v05_00_00_rc0 for larsoft v05_00_00_rc0
-   2015-11-30 Gianluca Petrillo : Moving Temperature() (and what follows) from LArProperties to DetectorProperties
-   2015-11-23 Gianluca Petrillo : Renamed namespace for ElecClock and stuff it depends on
-   2015-11-20 Gianluca Petrillo : Updated paths and class names after relocation to DetectorInfo
-   2015-11-19 Gianluca Petrillo : Merging with LArSoft v04_30_00.
-   2015-11-19 Gianluca Petrillo : Renaming ChannelStatusService and DetectorPedestalService to adhere more closely to the standard pattern (but not there yet…)
-   2015-11-12 Gianluca Petrillo : Overlooked one linkage to a service implementation
-   2015-11-12 Gianluca Petrillo : Removing link to implementations of core service interfaces
-   2015-11-11 Gianluca Petrillo : (Automated) fix of FHiCL configuration file after service renaming
-   2015-11-10 Gianluca Petrillo : Merge remote-tracking branch 'origin/feature/jpaley_LArPropertiesBreakup' into feature/jpaley_LArPropertiesBreakup
-   2015-11-10 Jonathan Paley : Remove “I”
-   2015-11-05 Gianluca Petrillo : Merge remote-tracking branch 'origin/develop' into feature/jpaley_LArPropertiesBreakup
-   2015-11-03 Jonathan Paley : Use IServices.
-   2015-10-05 Jonathan Paley : Merge branch 'develop' into feature/jpaley_LArPropertiesBreakup
-   2015-09-28 Jonathan Paley : Code modifications required for service factorization.

## larevt v05_00_00_rc0

-   2015-12-07 Lynn Garren : larevt v05_00_00_rc0 for larsoft v05_00_00_rc0
-   2015-11-30 Gianluca Petrillo : Moving Temperature() (and what follows) from LArProperties to DetectorProperties
-   2015-11-20 Gianluca Petrillo : Updated paths and class names after relocation to DetectorInfo
-   2015-11-19 Gianluca Petrillo : Merging with LArSoft v04_30_00.
-   2015-11-19 Gianluca Petrillo : Renaming ChannelStatusService and DetectorPedestalService to adhere more closely to the standard pattern (but not there yet…)
-   2015-11-10 Gianluca Petrillo : Removing unnecessary link to service implementations
-   2015-11-10 Gianluca Petrillo : Updated FHiCL files for new core services
-   2015-11-10 Gianluca Petrillo : Merge remote-tracking branch 'origin/feature/jpaley_LArPropertiesBreakup' into feature/jpaley_LArPropertiesBreakup
-   2015-11-10 Gianluca Petrillo : Services now conform the provider requirements
-   2015-11-10 Jonathan Paley : Remove “I”
-   2015-11-06 Gianluca Petrillo : Conforming to LArSoft service provider protocol
-   2015-11-05 Gianluca Petrillo : Merge remote-tracking branch 'origin/develop' into feature/jpaley_LArPropertiesBreakup
-   2015-11-03 Jonathan Paley : Merge branch 'develop' into feature/jpaley_LArPropertiesBreakup
-   2015-09-25 Jonathan Paley : Necessary changes for service factorization.

## lardata v05_00_00_rc0

-   2015-12-07 Lynn Garren : lardata v05_00_00_rc0 for larsoft v05_00_00_rc0
-   2015-12-03 Gianluca Petrillo : Split the configuration of DetectorPropertiesStandard in a validation and a configuration part. Useful if the service performs all the validation.
-   2015-12-03 Gianluca Petrillo : Moved a service-only configuration parameter from DetectorPropertiesStandard provider to its service
-   2015-12-02 Gianluca Petrillo : Added configuration validation to DetectorPropertiesServiceStandard, and tests. And a fix or two on ArgoNeuT legacy stuff.
-   2015-12-02 Gianluca Petrillo : Modification to the unit test infrastructure
-   2015-12-02 Gianluca Petrillo : Added loading tests for LArProperties service and provider, for the standard configuration, the “standard” LAr TPC detector, Bo, and ArgoNeuT
-   2015-12-02 Gianluca Petrillo : Fixed ArgoNeuT LArProperties configuration
-   2015-12-01 Gianluca Petrillo : First instance of configuration validation for LArPropertiesStandard. Plus instantiation test.
-   2015-11-30 Gianluca Petrillo : Moving Temperature() (and what follows) from LArProperties to DetectorProperties
-   2015-11-30 Gianluca Petrillo : Temperature() moved from LArProperties to DetectorProperties; because of it: - Density(), Eloss(), ElossVar() moved to DetectorProperties - added AtomicNumber(), AtomicMass() and ExtractionEnergy() to LArProperties interface - moved Sternheimer parameters into DetectorProperties
-   2015-11-24 Gianluca Petrillo : Renamed ambiguous variable name
-   2015-11-24 Gianluca Petrillo : ArgoNeuT service configuration now points to the legacy services
-   2015-11-23 Gianluca Petrillo : Resurrecting old services for ArgoNeuT: phase 3 (process completed)
-   2015-11-23 Gianluca Petrillo : Resurrecting old services for ArgoNeuT: phase 2
-   2015-11-23 Gianluca Petrillo : Resurrecting old services for ArgoNeuT: phase 1
-   2015-11-23 Gianluca Petrillo : Added missing headers
-   2015-11-23 Gianluca Petrillo : Renamed namespace for ElecClock and stuff it depends on
-   2015-11-23 Gianluca Petrillo : Removed SetEfield() method (not needed). Removed leftover art-dependent header.
-   2015-11-23 Gianluca Petrillo : Added unit test for ServicePack.h utilities
-   2015-11-22 Gianluca Petrillo : Updated, converted to generic LArTPC detector, and reenabled core services test.
-   2015-11-22 Gianluca Petrillo : Added a “bulk” function to extract service providers from services (equivalent to lar::providerFrom(), but on many services rather than just one)
-   2015-11-22 Gianluca Petrillo : Adding initialization of provider pack from a wider provider pack
-   2015-11-22 Gianluca Petrillo : Adding support for setup via provider pack in DetectorPropertiesStandard
-   2015-11-20 Gianluca Petrillo : Added a data structure to facilitate giving an algorithm multiple service providers.
-   2015-11-20 Gianluca Petrillo : Restoring bug fixes lost during merge
-   2015-11-20 Gianluca Petrillo : Updated paths and class names after relocation to DetectorInfo
-   2015-11-19 Gianluca Petrillo : Renaming completed for DetectorInfo and DetectorInfoServices directories
-   2015-11-19 Gianluca Petrillo : A piece of merging to DataProviders was left behind
-   2015-11-19 Gianluca Petrillo : Moved part of Utilities: - core service configuration files into DetectorInfo - art service interface and standard implementation in new directory DetectorInfoServices
-   2015-11-19 Gianluca Petrillo : Merging changes from DataProviders into DetectorInfo: - a few C improvements (delegate constructors, default destructors) - removed remnants of DetectorProperties from LArProperties - fixed a bug affecting slow scintillation light spectrum setting
-   2015-11-19 Gianluca Petrillo : Merging with LArSoft v04_30_00.
-   2015-11-19 Gianluca Petrillo : Renaming ChannelStatusService and DetectorPedestalService to adhere more closely to the standard pattern (but not there yet…)
-   2015-11-13 Gianluca Petrillo : Moved electric field and electron life time settings from LArPropertiesSservice configuration to DetectorPropertiesService for experiment configurations
-   2015-11-13 Gianluca Petrillo : Adding a bug fix that got lost in a time warp (commit fee1d47)
-   2015-11-13 Gianluca Petrillo : All timeservice**.fcl files set to mirror the matching detectorclocks**.fcl
-   2015-11-12 Gianluca Petrillo : Fixed a bug in setting the scintillation spectrum (and one on reporting the error)
-   2015-11-12 Gianluca Petrillo : Bug fixes: - fixed the configuration check logic of DetectorPropertiesStandard - fixed the order of configuration in DetectorPropertiesStandard Good practises: - use std::make_unique\<\> - avoid empty default constructor and destructor - call default constructor in other constructors rather than duplicating its code - explicitly qualify seemingy-virtual methods called in constructors - reduce the configuration check to a single point; it is up to the provider manager that it delivers a fully configured provider
-   2015-11-10 Gianluca Petrillo : Removing unnecessary link to service implementations
-   2015-11-10 Gianluca Petrillo : Updated FHiCL files for new core services
-   2015-11-10 Gianluca Petrillo : Removed electron life time from LArProperties (it was left behind in the move to DetectorProperties)
-   2015-11-10 Gianluca Petrillo : Renamed service in test
-   2015-11-10 Gianluca Petrillo : Merge remote-tracking branch 'origin/feature/jpaley_LArPropertiesBreakup' into feature/jpaley_LArPropertiesBreakup
-   2015-11-10 Gianluca Petrillo : Added service class requirement checks
-   2015-11-10 Gianluca Petrillo : Removed unnecessary linked services
-   2015-11-10 Gianluca Petrillo : Reenabled LArProperties test
-   2015-11-10 Jonathan Paley : Get rid of “I”.
-   2015-11-05 Gianluca Petrillo : Merge remote-tracking branch 'origin/develop' into feature/jpaley_LArPropertiesBreakup
-   2015-11-03 Jonathan Paley : Use IServices.
-   2015-11-03 Jonathan Paley : Add pure virtual base classes.
-   2015-10-05 Jonathan Paley : Merge branch 'develop' into feature/jpaley_LArPropertiesBreakup
-   2015-09-28 Jonathan Paley : Make two more methods const.
-   2015-09-28 Jonathan Paley : More fixes for this branch.
-   2015-09-22 Jonathan Paley : Fix lots of bugs, typos, etc. Everything now seems to compile fine *within* lardata.
-   2015-09-21 Jonathan Paley : Updating to latest-greatest.
-   2015-09-18 Jonathan Paley : Almost ready to break LArSoft
-   2015-09-18 Jonathan Paley : Getting ready to break LArSoft.

## larcore v05_00_00_rc0

-   2015-12-07 Lynn Garren : larcore v05_00_00_rc0 for larsoft v05_00_00_rc0
-   2015-12-01 Gianluca Petrillo : Extracted fundamental functions from geometry unit test base into an independent set of classes
-   2015-11-30 Gianluca Petrillo : GeometryCore::ChannelsIntersect() marked constant
-   2015-11-23 Gianluca Petrillo : Added geometry configuration for a “generic” LAr TPC detector
-   2015-11-19 Gianluca Petrillo : Merge remote-tracking branch 'origin/develop' into feature/jpaley_LArPropertiesBreakup
-   2015-11-10 Gianluca Petrillo : Added provisons to check requirement fulfillment for candidate service classes.
-   2015-11-10 Gianluca Petrillo : Geometry service now fully complies to lar::providerFrom() requirements
-   2015-11-10 Gianluca Petrillo : ServiceUtil.h” Separated static checks for a better feedback in case of error. Added example in documentation.
-   2015-11-10 Gianluca Petrillo : providerFrom() now throws an exception on empty providers
-   2015-11-10 Gianluca Petrillo : Removed tabs in ServiceUtil.h
-   2015-11-10 Gianluca Petrillo : Added documentation to ServiceUtil.h
-   2015-11-09 Gianluca Petrillo : Conforming Geometry service to service provider access protocol
-   2015-11-10 Gianluca Petrillo : Merge remote-tracking branch 'origin/develop' into feature/jpaley_LArPropertiesBreakup
-   2015-11-03 Jonathan Paley : lar::providerFrom<artService>() returns a const ptr to the associated data provider object.
