# The new core services



LArSoft architecture review on 2015 affected most of the “core” services.  
Main changes are summarized in the table of contents:

## New service access pattern

**The old pattern**: use the service directly, e.g.:

```cpp

    art::ServiceHandle<util::DetectorProperties> detprop;
    double sampling_rate = detprop->SamplingRate();
```

**The new pattern**: obtain the service provider first, and use that one, e.g.:

```cpp

    detinfo::DetectorProperties const* detprop
      = lar::providerFrom<detinfo::DetectorPropertiesService>();
    double sampling_rate = detprop->SamplingRate();
```

  
`lar::providerFrom<>` is defined in `larcore/CoreUtils/ServiceUtil.h`.  
The first line can be also written as:

```cpp

    detinfo::DetectorPropertiesService::provider_type const* detprop
      = lar::providerFrom<detinfo::DetectorPropertiesService>();
```

  
if you don't want to bother to learn the real provider name, or:

```cpp

    auto const* detprop = lar::providerFrom<detinfo::DetectorPropertiesService>();
```

  
The service provider pointer should be obtained anew on each new event rather than saved in the module. In the module/algorithm factorization model, the algorithm should store the pointer and the module should update the algorithm pointer on each event.

> Important: you will **not** be able any more to access methods from the service: `art::ServiceHandle<detinfo::DetectorPropertiesService>()->Efield()` will *not* work.

### How to update to the new service access pattern

As described above, you can't use the *art* services, nor their `ServiceHandle`, directly any more, as all the functionality has been moved one layer deeper, in the service providers.

#### If your code declares and uses a *local service handle*…

… a service provider needs to be used instead.

```cpp

    art::ServiceHandle<util::DetectorProperties> detprop;
    double sampling_rate = detprop->SamplingRate();
```

  
becomes:

```cpp

    auto const* detprop = lar::providerFrom<detinfo::DetectorPropertiesService>();
    double sampling_rate = detprop->SamplingRate();
```

  
Note that the access looks the same (the second line in the example does not change), and only one header file is included (was `Utilities/DetectorProperties.h`, now is `DetectorInfoServices/DetectorPropertiesService.h`, see below).

#### If your code uses a *service pointer or reference*…

… a service provider needs to be used instead.

```cpp

    util::DetectorProperties const&amp; detprop = *art::ServiceHandle<util::DetectorProperties>();
    double sampling_rate = detprop.SamplingRate();
```

  
becomes:

```cpp

    auto const&amp; detprop = *lar::providerFrom<detinfo::DetectorPropertiesService>();
    double sampling_rate = detprop.SamplingRate();
```

  
This case is very similar to the previous one.

#### If your algorithm class has a *service handle* member…

… a service provider needs to be used instead.  
You may have in your class declaration:

```cpp

      art::ServiceHandle<util::DetectorProperties> fDetProp;
```

  
and in your code:

```cpp

      double sampling_rate = fDetProp->SamplingRate();
```

This fix is more articulated.  
The class declaration should host a provider pointer instead:

```cpp

      detinfo::DetectorProperties const* fDetProp = nullptr;
```

  
Note that here you need to include the *provider header* (`#include "DetectorInfo/DetectorProperties.h"`). And no `auto` option here, sorry.  
That pointer needs to be initialized with a valid pointer to provider, for example in the *constructor* of your class (`MyAlg`):

```cpp

    MyAlg::MyAlg(fhicl::ParameterSet const&amp;)
      : fDetProp(lar::providerFrom<detinfo::DetectorPropertiesService>())
      // ... the normal constructor follows
```

  
and in this case the source file also needs to explicitly include the *service header* (`#include "DetectorInfoService/DetectorPropertiesService.h"`).  
Or you can opt for other initialization methods, like a deferred set up function:

```cpp

    void MyAlg::Setup(detinfo::DetectorProperties const&amp; detprop) {
      fDetProp = &amp;detprop;
    } // MyAlg::Setup()
```

  
This approach puts an additional burden to the owner ofthe algorithm, that needs to fetch the provider and pass it to the algorithm, but it makes the algorithm *independent* of the framework (*art*) as the service is concerned.

There are a couple of structures to make this a bit easier, especially if our algorithm uses many services and it needs to set up sub-algorithms.  
See the `ProviderPack` section [below](Core_Services_Review#The-ProviderPack-and-ServicePack-classes).

Finally, the user code:

```cpp

    double sampling_rate = fDetProp->SamplingRate();
```

  
remains the same.

## Renamed services

| Old service                     | New service                                            | I/F |
|---------------------------------|--------------------------------------------------------|-----|
| `geo::Geometry`                 | *<span class="unchanged"></span>*                      |     |
| `util::DatabaseUtil`            | *<span class="ArgoNeuT for except deprecated"></span>* |     |
| `util::TimeService`             | `detinfo::DetectorClocksService`                       | I   |
| `util::LArProperties`           | `detinfo::LArPropertiesService`                        | I   |
| `util::DetectorProperties`      | `detinfo::DetectorPropertiesService`                   | I   |
| `lariov::IChannelStatusService` | `lariov::ChannelStatusService`                         | I   |
| `lariov::IDetPedestalService`   | `lariov::DetPedestalService`                           | I   |

The column “I/F” says “I” if the service is actually an interface. See the next section about service interfaces.  
Expand the following reference tables for the details necessary for the update:

### Geometry service (unchanged)

\| \| \|*. repo. \|*. `#include` path \|  
\|_. Old service name: \| `geo::Geometry` \| `larcore` \| `Geometry/Geometry.h` \|  
\|_. Old provider name: \| `geo::GeometryCore` \| `larcore` \| `Geometry/GeometryCore.h` \|  
\|_. Was interface: \| no \| \| \|  
\|*. New service name: \|*(unchanged)_ \| \| \|  
\|*. New provider name: \|*(unchanged)_ \| \| \|

### DatabaseUtil service (deprecated)

\| \| \|*. repo. \|*. `#include` path \|  
\|_. Old service name: \| `util::DatabaseUtil` \| `lardata` \| `Utilities/DatabaseUtil.h` \|  
\|_. Old provider name: \| *n/a* \| \| \|  
\|_. Was interface: \| no \| \| \|  
\|*. New service name: \|*(unchanged)_ \| \| \|  
\|*. New provider name: \|*(unchanged)_ \| \| \|  
\|_. Is interface: \| no \| \| \|

bq. `DatabaseUtil` service is being deprecated for all experiments except ArgoNeuT. It provides direct access to databases, which has proven to be a non-scalable approach.  
MicroBooNE-specific components in there will be moved into a MicroBooNE-specific implementation.  
ArgoNeuT will possibly keep using it, so it is not going to disappear, but it might be moved into their repository.

### LArPropertiesService (was LArProperties)

\| \| \|*. repo. \|*. `#include` path \|  
\|_. Old service name: \| `util::LArProperties` \| `lardata` \| `Utilities/LArProperties.h` \|  
\|_. Old provider name: \| *n/a* \| \| \|  
\|_. Was interface: \| no \| \| \|  
\|_. New service name: \| `detinfo::LArPropertiesService` \| `lardata` \| `Utilities/LArPropertiesService.h` \|  
\|_. New provider name: \| `detinfo::LArProperties` \| `lardata` \| `DataProviders/LArProperties.h` \|  
\|_. Is interface: \| yes \| \| \|  
\|_. Default implementation: \| `detinfo::LArPropertiesServiceStandard` \| `lardata` \| `Utilities/LArPropertiesServiceStandard.h` \|

### DetectorPropertiesService (was DetectorProperties)

\|*. \| \|*. repo. \|_. `#include` path \|  
\|_. Old service name: \| `util::DetectorProperties` \| `lardata` \| `Utilities/DetectorProperties.h` \|  
\|_. Old provider name: \| *n/a* \| \| \|  
\|_. Was interface: \| no \| \| \|  
\|_. New service name: \| `detinfo::DetectorPropertiesService` \| `lardata` \| `Utilities/DetectorPropertiesService.h` \|  
\|_. New provider name: \| `detinfo::DetectorProperties` \| `lardata` \| `DataProviders/DetectorProperties.h` \|  
\|_. Is interface: \| yes \| \| \|  
\|_. Default implementation: \| `detinfo::DetectorPropertiesServiceStandard` \| `lardata` \| `Utilities/DetectorPropertiesServiceStandard.h` \|

### DetectorClocksService (was TimeService)

\|*. \| \|*. repo. \|_. `#include` path \|  
\|_. Old service name: \| `util::TimeService` \| `lardata` \| `Utilities/TimeService.h` \|  
\|_. Old provider name: \| `util::SimpleTimeService` \| `lardata` \| `Utilities/SimpleTimeService.h` \|  
\|_. Was interface: \| no \| \| \|  
\|_. New service name: \| `detinfo::DetectorClocksService` \| `lardata` \| `Utilities/DetectorClocksService.h` \|  
\|_. New provider name: \| `detinfo::DetectorClocks` \| `lardata` \| `DataProviders/DetectorClocks.h` \|  
\|_. Is interface: \| yes \| \| \|  
\|_. Default implementation: \| `detinfo::DetectorClocksServiceStandard` \| `lardata` \| `Utilities/DetectorClocksServiceStandard.h` \|

### ChannelStatusService (was IChannelStatusService)

\|*. \| \|*. repo. \|_. `#include` path \|  
\|_. Old service name: \| `lariov::IChannelStatusService` \| `larevt` \| `CalibrationDBI/Interface/IChannelStatusService.h` \|  
\|_. Old provider name: \| `lariov::IChannelStatusProvider` \| `larevt` \| `CalibrationDBI/Interface/IChannelStatusProvider.h` \|  
\|_. Was interface: \| yes \| \| \|  
\|_. Old service name: \| `lariov::ChannelStatusService` \| `larevt` \| `CalibrationDBI/Interface/ChannelStatusService.h` \|  
\|_. Old provider name: \| `lariov::ChannelStatusProvider` \| `larevt` \| `CalibrationDBI/Interface/ChannelStatusProvider.h` \|  
\|_. Is interface: \| yes \| \| \|  
\|_. Default implementation: \| `lariov::SIOVChannelStatusService` \| `larevt` \| `CalibrationDBI/Services/SIOVChannelStatusService.cc` \|

Note that there is no header for the “standard” implementation of the art service (there is one for the provider).

### DetPedestalService (was IDetPedestalService)

\|*. \| \|*. repo. \|_. `#include` path \|  
\|_. Old service name: \| `lariov::IDetPedestalService` \| `larevt` \| `CalibrationDBI/Interface/IDetPedestalService.h` \|  
\|_. Old provider name: \| `lariov::IDetPedestalProvider` \| `larevt` \| `CalibrationDBI/Interface/IDetPedestalProvider.h` \|  
\|_. Was interface: \| yes \| \| \|  
\|_. Old service name: \| `lariov::DetPedestalService` \| `larevt` \| `CalibrationDBI/Interface/DetPedestalService.h` \|  
\|_. Old provider name: \| `lariov::DetPedestalProvider` \| `larevt` \| `CalibrationDBI/Interface/DetPedestalProvider.h` \|  
\|_. Is interface: \| yes \| \| \|  
\|_. Default implementation: \| `lariov::SIOVDetPedestalService` \| `larevt` \| `CalibrationDBI/Services/SIOVDetPedestalService.cc` \|

Note that there is no header for the “standard” implementation of the art service (there is one for the provider).

### Examples of update: `DetectorProperties` service

The first visible issue is that compilation fails for a missing header `Utilities/DetectorProperties.h`.

Changes:

-   `CMakeLists.txt`:
    -   remove `DetectorProperties_service`[^1]
-   header inclusion (the optional headers are pulled in anyway, but their explicit mention makes the code more readable):
    -   `#include "Utilities/DetectorProperties.h"` -\> `#include "Utilities/DetectorPropertiesService.h"`
    -   *<span class="optional"></span>* add `#include "DataProviders/DetectorProperties.h"`
    -   *<span class="optional"></span>* add `#include "CoreUtils/ServiceUtil.h" // lar::providerFrom<>()`
-   `art::ServiceHandle<util::DetectorProperties> detprop;` -\> `detinfo::DetectorProperties const* detprop = lar::providerFrom<detinfo::DetectorPropertiesService>();`  
    (or `auto const* detprop = lar::providerFrom<detinfo::DetectorPropertiesService>();`)
-   FHiCL configuration:
    -   `DetectorProperties:` -\> `DetectorPropertiesService:` either within a `services` parameter set or `services.` stand-alone line (note: no `user` section should appear)
    -   add `service_provider: DetectorPropertiesServiceStandard` (or the implementation of your choice) in the `DetectorPropertiesService` parameter set

### Examples of update: `TimeService` service

The first visible issue is that compilation fails for a missing header `Utilities/TimeService.h`.

Changes:

-   `CMakeLists.txt`:
    -   remove `TimeService_service`[^2]
-   header inclusion (the optional headers are pulled in anyway, but their explicit mention makes the code more readable):
    -   `#include "Utilities/TimeService.h"` -\> `#include "Utilities/DetectorClocksService.h"`
    -   *<span class="optional"></span>* add `#include "DataProviders/DetectorClocks.h"`
    -   *<span class="optional"></span>* add `#include "CoreUtils/ServiceUtil.h" // lar::providerFrom<>()`
-   `art::ServiceHandle<util::TimeService> detprop;` -\> `detinfo::DetectorClocks const* detprop = lar::providerFrom<detinfo::DetectorClocksService>();`  
    (or `auto const* detprop = lar::providerFrom<detinfo::DetectorClocksService>();`)
-   FHiCL configuration:
    -   `TimeService:` -\> `DetectorClocksService:` either within a `services` parameter set or `services.` stand-alone line (note: no `user` section should appear)
    -   add `service_provider: DetectorClocksServiceStandard` (or the implementation of your choice) in the `DetectorClocksService` parameter set

### Examples of update: `Geometry` service

The changes are backward-compatible, but future changes might break the “legacy” compatibility.

Changes:

-   header inclusion (the optional headers are pulled in anyway, but their explicit mention makes the code more readable):
    -   `#include "Geometry/Geometry.h"` (should be there already…)
    -   *<span class="optional"></span>* add `#include "Geometry/GeometryCore.h"`
    -   *<span class="optional"></span>* add `#include "#include "CoreUtils/ServiceUtil.h" // lar::providerFrom<>()`
-   `art::ServiceHandle<geo::Geometry> geom;` -\> `geo::GeometryCore const* geom = lar::providerFrom<geo::Geometry>();`  
    (or `auto const* geom = lar::providerFrom<geo::Geometry>();`)

### Additional steps for updating `DetectorPropertiesService` and `LArPropertiesService`

Some parameters have been moved from `LArProperties` to `DetectorPropertiesService` (rather than `LArPropertiesService`) (see [the table below](Core_Services_Review#Functions-and-configuration-parameters-moved-from-one-service-to-another)).  
If you are defining or overriding those parameters in your FHiCL file, you have to fix the definition to happen in the right parameter set, by replacing `LArProperties.` with `DetectorPropertiesService.` the path (in case of overriding) or by moving the line to the right service configuration (in case of complete definition of the service parameters).

## Core service dependencies

Some dependencies have changed. In particular, note the dropping of `DatabaseUtil` from the dependencies; `DatabaseUtil` is being now considered ArgoNeuT-specific.

| Service                                      | depends on                                                                         |
|----------------------------------------------|------------------------------------------------------------------------------------|
| `geo::Geometry`                              | `geo::ExptGeometryHelperInterface`                                                 |
| `util::DatabaseUtil`                         | *none* (and: *deprecated*)                                                         |
| `detinfo::DetectorClocksServiceStandard`     | *none*                                                                             |
| `detinfo::LArPropertiesServiceStandard`      | *none*                                                                             |
| `detinfo::DetectorPropertiesServiceStandard` | `geo::Geometry`, `detinfo::LArPropertiesService`, `detinfo::DetectorClocksService` |

## Core services turned into service interfaces

To use a services marked as interface, the job FHiCL configuration must contain for it the specific implementation that is requested, by a `service_provider: ImplementationName` parameter.  
The following table shows implementations provided within LArSoft:

| Service                                         | Default/other implementations                                   |            |
|-------------------------------------------------|-----------------------------------------------------------------|------------|
| `DetectorClocksService`                         | `DetectorClocksServiceStandard` (`lardata`)                     | *standard* |
| `LArPropertiesService`                          | `LArPropertiesServiceStandard` (`lardata`)                      | *standard* |
| `LArPropertiesServiceArgoNeuT` (`lardata`)      | legacy, for ArgoNeuT; depends on `DatabaseUtil`                 |            |
| `DetectorPropertiesService`                     | `DetectorPropertiesServiceStandard` (`lardata`)                 | *standard* |
| `DetectorPropertiesServiceArgoNeuT` (`lardata`) | legacy, for ArgoNeuT; depends on `LArPropertiesServiceArgoNeuT` |            |

## New namespaces

The current organization of namespaces is:

|           |                                                                                |
|-----------|--------------------------------------------------------------------------------|
| `detinfo` | service interfaces for the core services in `lardata`                          |
| `detinfo` | “standard” service implementations for the core services in `lardata`          |
| `detinfo` | service provider interfaces for the core services in `lardata`                 |
| `detinfo` | “standard” service provider implementations for the core services in `lardata` |

(also called “shove everything into `detinfo`”)

## Functions and configuration parameters moved from one service to another

| Function                                    | Old service     | New service                 | New name                          | FHiCL parameter name |
|---------------------------------------------|-----------------|-----------------------------|-----------------------------------|----------------------|
| `DriftVelocity` *<span class="all"></span>* | `LArProperties` | `DetectorPropertiesService` | *<span class="unchanged"></span>* | *none*               |
| `Efield`                                    | `LArProperties` | `DetectorPropertiesService` | *<span class="unchanged"></span>* | `Efield`             |
| `ElectronLifetime()`                        | `LArProperties` | `DetectorPropertiesService` | *<span class="unchanged"></span>* | `Electronlifetime`   |
| `BirksCorrection()`                         | `LArProperties` | `DetectorPropertiesService` | *<span class="unchanged"></span>* | `Electronlifetime`   |
| `ModBoxCorrection()`                        | `LArProperties` | `DetectorPropertiesService` | *<span class="unchanged"></span>* | `Electronlifetime`   |
| `Temperature()`                             | `LArProperties` | `DetectorPropertiesService` | *<span class="unchanged"></span>* | `Temperature`        |
| *<span class="n/a"></span>*                 | `LArProperties` | `DetectorPropertiesService` | *<span class="unchanged"></span>* | `SternheimerA`       |
| *<span class="n/a"></span>*                 | `LArProperties` | `DetectorPropertiesService` | *<span class="unchanged"></span>* | `SternheimerK`       |
| *<span class="n/a"></span>*                 | `LArProperties` | `DetectorPropertiesService` | *<span class="unchanged"></span>* | `SternheimerX0`      |
| *<span class="n/a"></span>*                 | `LArProperties` | `DetectorPropertiesService` | *<span class="unchanged"></span>* | `SternheimerX1`      |
| *<span class="n/a"></span>*                 | `LArProperties` | `DetectorPropertiesService` | *<span class="unchanged"></span>* | `SternheimerCbar`    |

### FHiCL parameter validation for `detutil::LArPropertiesStandard` and `detutil::DetectorPropertiesStandard`

The new standard implementation of `detutil::LArProperties` and `detutil::DetectorProperties` use a feature of FHiCL C library, that allows documentation and validation of the configuration parameters.

*Documentation* means that with `lar --service-description LArPropertiesServiceStandard` you get an example FHiCL file to configure, in fact, `detinfo::LArPropertiesServiceStandard`. Cool.

*Validation* means that now if you have in your configuration a parameter that is not supported, you'll get a run-time error.  
That is typically because of mistyping; but in this case it may also be that, e.g., you still have `Efield` in `LArPropertiesServiceStandard` configuration, while it should have been moved into `DetectorPropertiesServiceStandard` configuration.

This exciting new feature is documented in [FHiCL wiki documentation](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Configuration_validation_and_description), and we encourage everybody to use it for algorithms as well. Also note that the validation does not depend on *art* (in fact, our service providers do use it).

## Summary of update steps

-   “automatic” changes (compiler error if skipped):  
    - rename the service names and name spaces in source code  
    - rename the service names in FHiCL files  
    - rename the directories in the include paths  
    - remove linking to the special services
-   non-automatic changes (compiler error if skipped):  
    - replace the use of art services with service providers  
    - update which service to ask for the functions that have been moved to a different service
-   non-automatic changes (runtime error if skipped):  
    - add `service_provider` to service FHiCL configuration (if not inherited)

### Helper script

As the previous paragraph also states, you are provided no tool for automatic conversion; but almost.  
It is now provided in `larsoft` repository: `${LARSOFT_DIR}/bin/UpdateCoreServices.py` (you can copy it, but note that it needs its `SerialSubstitution.py` to be available, e.g., in the same directory).  
To get a list of supported options run `UpdateCoreServices.py --help`.  
In the end, these are not extremely sophisticated. You run the script with:

    ./UpdateCoreServices.py --verbose --color "${MRB_SOURCE}/my_package"

  
and you get a long list of messages describing what is changing.  
*Most* of the changes are ok. But pay special attention to `CMakeLists.txt` files and to class code.  
If you have a class member of type art::ServiceHandle\<\>, the script will probably change the code in a way you don't want.  
Also, *do pay attention to warnings*: they usually show a pattern that needs to be updated, and the script misses some information that would allow an automatic fix. So: you fix it by hand.  
You can process file by file or directory by directory if you want to be selective.

When you think it's time to give it a try:

1.  make sure you have committed your local changes!! `git` will let you revert if something goes bad
2.  run the same command as above but add with `--doit` option
3.  fire up `git diff` to see what happened, try to understand each change
4.  recompile and test
5.  run the script (without `--doit`) again, and consider what's left (including the warnings, that won't go away)

> If you are lost or need help, *please contact the LArSoft team* (e.g. send an e-mail to `the larsoft mailing list` or open a redmine support ticket).

## The `ProviderPack` and `ServicePack` classes

If your algorithm needs multiple providers, it may be more convenient to define all of them in a structure.  
Actually, first think: if it's just a single value that is needed, it's better to pass just that value (e.g., the electric field).  
But if services are extensively used:

```cpp

    /// Type containing all the service providers we need
    using providers_t = lar::ProviderPack<geo::GeometryCore, detinfo::LArProperties>;

    providers_t providers;

    void Setup(providers_t new_providers) { providers = new_providers; }
```

  
With this approach, to use the service provider in your code you would do something like:

```cpp

    auto nCryo = providers.get<geo::GeomeryCore>()->Ncryostats();
```

One advantage is that if your algorithm calls sub-algorithms that also use provider packs, you can write:

```cpp

    MyAlgo algo;
    algo.Setup(providers);
```

  
and let the compiler figure out which ones are needed (`MyAlgo` does not need to use all the providers in `providers`, either).

Another advantage is that the *art* module that owns and initializes the algorithm can also take some shortcut:

```cpp

    MyAlgo algo;
    algo.Setup(lar::extractProviders<geo::Geometry, detinfo::LArPropertiesService>());
```

All this is mostly typing convenience, since all is coded to be statically resolved, that is not to have run-time cost.

`ProviderPack` is currently declared in `lardata/DetectorInfo/ProviderPack.h`, while `ServicePack` is currently declared in `lardata/DetectorInfoServices/ServicePack.h`. They are pure templates, so there is no additional link-time dependency.

------------------------------------------------------------------------

*Last update: March 9, 2016 Gianluca Petrillo*

[^1]: Because the service has become an interface, and the interface itself is pure abstract, service library contains no code. The actual code will be loaded and linked by the framework at run time.

[^2]: Because the service has become an interface, and the interface itself is pure abstract, service library contains no code. The actual code will be loaded and linked by the framework at run time.
