

**<span style="color: orange;">Full examples are available in `larexamples` repositories, extensively commented. You can also access that from [LArSoft Doxygen pages](http://nusoft.fnal.gov/larsoft/doxsvn/html/group__larexamples__Services.html) .</span>**

# Guidelines on writing (and using) services in LArSoft

A LArSoft service is a class, with a single instance managed by the framework, that performs an operation. A service is used by LArSoft algorithms and *art* modules.

In the context of the *art* framework, a service is implemented as a class with the following requirements:

1.  special macros are used to declare and then define factory functions and other things specific to *art*
2.  an implementation file name that follows a pattern like `MyService_service.cc`
3.  a constructor is available with a specific signature, like
```cpp

          MyService(fhicl::ParameterSet const&amp;, art::ActivityRegistry&amp;);
```

The best practice is to make a service provider (see below) that is as independent as possible from the framework and to use the *art* service class to provide the interface between the service provider and the framework. In other words,

-   **service provider** (or simply *provider*) class performs the operations the users need (e.g., “give me the current intensity of the electric field”)
-   **framework service** (or simple *service*) class interacts with the framework; when we think of our supported framework, *art*, this class has the requirements described above, owns and manages the lifetime of the provider, and makes sure the provider is informed of the events it's interested on (e.g. “it's a new run, this is the new electric field”, or “it's a new run, here is where you can ask about the new electric field”)

A specimen of this protocol can be seen in `Geometry` service:

-   the provider, `geo::GeometryCore`, can load given a configuration in FHiCL parameter set format, and can answer all the questions about the geometry (“which wire is the closest to this point?”)
-   the service, `geo::Geometry`, creates, configures and owns a `geo::GeometryCore` instance, hooks to the framework to know when a run change happens, and in that case asks the provider to update accordingly

To write services from scratch, one can start with the [examples in larexample repository](LArSoft examples#Services).

> The `Geometry` service is actually not quite following all LArSoft prescriptions, for legacy reasons.  
> In particular, `geo::Geometry` service doesn't follow the standard name pattern (that would have it `geo::GeometryService`) and, more important, is actually able to provide directly all the geometry functionality since it inherits the interface from `geo::GeometryCore`. This is **not** the recommended implementation.

To get to the functionality, a user needs to ask the framework about the service, and about the provider to the service:

```cpp

    art::ServiceHandle<geo::Geometry> GeoHandler;
    geo::Geometry const&amp; GeoService = *GeoHandler;
    geo::GeometryCore const* geom = GeoService->provider();
```

  
or, more compactly,

```cpp

    geo::GeometryCore const* geom = art::ServiceHandle<geo::Geometry>()->provider();
```

  
LArSoft provides a utility function `providerFrom()` in `larcore/CoreUtils/ServiceUtils.h` to make this even more compact:

```cpp

    geo::GeometryCore const* geom = lar::providerFrom<geo::Geometry>();
```

  
Both the forms can be made even more compact, at the expense of readability, by replacing the provider class name with `auto`: `geo::GeometryCore const* geom` becomes `auto const*`: faster to write, but then one has to figure out where to find the documentation of the interface (hint: start from the service documentation, and a pointer will lead you to the provider).

## Models for writing services

The plain *art* service is like described above: any class with a public constructor with a specific signature and a special *art* macro.  
In LArSoft, we may need more flexibility than just a single service with a single implementation:

-   have different implementations for the same service (for example, a generic implementation and a special implementation for ProtoDUNE detector)
-   have the class providing the service be independent of the framework; this was also described above

The following paragraphs describe the three combinations of features on top of the plain *art* service.

### Service interface with many implementations (e.g., experiment-specific)

This model allows different ways to implement the same service. This is an *art* feature, and nothing of this is specific to LArSoft.  
At run time, a single implementation will be chosen by *art* depending on the service configuration (from the FHiCL configuration file).

The service interface is a (possibly abstract[^1]) class that describes all the service is expected to be able to do. For example[^2]:

```cpp

    #include "larcorealg/CoreUtils/UncopiableAndUnmovableClass.h"

    class DetectorProperties: private lar::UncopiableAndUnmovableClass {
        public:
      // classes with virtual methods are required a virtual destructor
      virtual ~DetectorProperties() = default;

      /// Return the electric field in the TPC, in kV/cm; field is assumed the same in all TPCs
      virtual float Efield() const = 0;

      /// Return the temperature of the argon in the TPC, in kelvin
      virtual float Temperature() const = 0;

    }; // class DetectorProperties

    DECLARE_ART_SERVICE_INTERFACE(DetectorProperties, LEGACY)
```

  
For a complete example, see [lar::example::ShowerCalibrationGalore](http://nusoft.fnal.gov/larsoft/doxsvn/html/group__ShowerCalibrationGalore.html#details), or `geo::ExptGeoHelperInterface` in `larcore` (Redmine link to [larcore/Geometry/ExptGeoHelperInterface.h](https://cdcvs.fnal.gov/redmine/projects/larcore/repository/revisions/develop/entry/larcore/Geometry/ExptGeoHelperInterface.h) ).

An module or algorithm can use this service by:

```cpp

    art::ServiceHandle<DetectorProperties> detProp;
    float temperature = detProp->Temperature();
```

  
or pick the class directly with

```cpp

    DetectorProperties const* detProp = &amp;(*art::ServiceHandle<DetectorProperties>());
    float temperature = detProp->Temperature();
```

  
Note that in both cases the service class is dependent on the framework (at very least via the *art* service macros).

The user will have to choose which implementation of the service to make available in the job.  
The job configuration will include something like:

    services: {
      DetectorProperties: # this is the name of the service interface
      {
         service_provider: DetectorPropertiesStandard # this is the name of the implementation chosen
         Efield:       0.6                            # the remaining configuration is implementation-dependent
         Temperature: 83 
      } # DetectorProperties 
    } # services

  
or another one, like:

    services: {
      DetectorProperties: # this is the name of the service interface
      {
         service_provider: DetectorPropertiesFromDB            # this is the name of the implementation chosen
         DBServer: "http://database.experiment.org/conditions" # the remaining configuration is implementation-dependent
      } # DetectorProperties 
    } # services

An implementation class will have a declaration like:

```cpp

    class DetectorPropertiesStandard: public DetectorProperties {
        public:

      DetectorPropertiesStandard(fhicl::ParameterSet const&amp;, art::ActivityRegistry&amp;);

      /// Return the electric field in the TPC, in kV/cm; field is assumed the same in all TPCs
      virtual float Efield() const override { return fEfield; }

      /// Return the temperature of the argon in the TPC, in kelvin
      virtual float Temperature() const override { return fTemperature; }


        private:
      float fEfield;      ///< electric field [kV/cm]
      float fTemperature; ///< argon temperature [K]

    }; // class DetectorPropertiesStandard

    DECLARE_ART_SERVICE_INTERFACE_IMPL(DetectorPropertiesStandard, DetectorProperties, LEGACY)
```

Again, this is a standard *art* facility.

### Service factorization model

![](https://cdcvs.fnal.gov/redmine/attachments/download/29534/ServiceDependency.svg)

This is a simple scheme of LArSoft services in factorization model:

-   the service creates and owns an instance of the provider
-   the provider is a free class that knows only about its own job

The *art* service class is expected to have:

-   a method `provider()` returning a constant pointer to a provider instance users can use
-   a type definition `provider_type` indicating the type of the provider

These requests allow LArSoft to provide a simple function to obtain the provider of any service, `lar::providerFrom()`. Regardless, the service should provide *some* method to obtain the provider that the users can use directly.

An example of service provider may be:

```cpp

    /// Configuration parameter documentation goes here
    class DetectorProperties {
        public:
      /// Constructor: reads the configuration from a parameter set
      DetectorProperties(fhicl::ParameterSet const&amp; pset)
        : fEfield(pset.get<float>("Efield"))
        , fTemperature(pset.get<float>("Temperature"))
        {}

      /// Return the electric field as configured [kV/cm]
      float Efield() const { return fEfield; }

      /// Return the argon temperature as configured [K]
      float Temperature() const { return fTemperature; }

        private:
      float fEfield;      ///< value of electric field [kV/cm]
      float fTemperature; ///< value of argon temperature [K]

    }; // class DetectorProperties
```

  
This class has no dependency on the framework (although it *does* depend on some non-standard library, the FHiCL library). It can be instantiated in a simple unit test with no knowledge of any framework.

To be able to use this service provider as a *art* service, an additional class is required:

```cpp

    class DetectorPropertiesService {
        public:
      using provider_type = DetectorProperties; ///< type of the service provider

      // Standard art service constructor
      DetectorPropertiesService(fhicl::ParameterSet const&amp;, art::ActivityRegistry&amp;);

      /// Return a pointer to a (constant) detector properties provider
      provider_type const* provider() const { return fProvider.get(); }

        private:
      std::unique_ptr<DetectorProperties> fProvider; ///< owned provider

    }; // class DetectorPropertiesService

    DECLARE_ART_SERVICE(DetectorPropertiesService, LEGACY)
```

  
and a possible constructor implementation may be:

```cpp


    DetectorPropertiesService::DetectorPropertiesService
      (fhicl::ParameterSet const&amp; pset, art::ActivityRegistry&amp;)
      : fProvider(new DetectorProperties(pset))
    {
    }

    DEFINE_ART_SERVICE(DetectorPropertiesService)
```

  
An example of this factorization can be seen in the geometry service.  
In this example, the service *contains* a instance of the provider. This is the recommended pattern.  
The `Geometry` service instead inherits, rather than containing, the provider. This is an implementation forced by backward compatibility requirement and is *not* the recommended method, since it strongly couples provider and service (for example, they are forced to have the same life time).

### Service interface factorization (e.g., experiment-specific, framework-independent service implementations)

![](https://cdcvs.fnal.gov/redmine/attachments/download/29535/ServiceInterfaceDependency.svg)

The factorization model can be extended to *service interfaces* (which are summarized above).  
The way to achieve that is by writing an additional, special configuration parameter for the service:

```python

    services: {
      IService: {
        service_provider: "ImplAService"

        # ... on with the rest of the service configuration

      } # IService
    } # services
```

The factorization model applies to both the interface and to all the implementations: each of them will be split into a service and a provider.  
For the interface side, both service and provider are abstract classes:

-   the service has the only task of exposing the interface that returns the provider
-   the provider exposes the full interface of the provider functionality

For the implementation(s) side, each service is pretty much the same as the normal services, except that:

-   service and provider classes inherit from their respective abstract interface classes
-   service class `provider()` method returns a pointer to the interface provider class, not to the implementation class

Therefore, note that users do not interact at all (and don't even know the existence of) the implementation classes: outside of the implementations themselves, the name of the service implementation appears only in the configuration file, and the name of the provider implementation does not appear at all. In fact, anything added in the implementations that is not already present in the interface will be inaccessible to the user.

A fully developed example of this scheme is the actual implementation of `DetectorProperties` service (and of `DetectorClocks` and `LArProperties` as well).  
The service providers are contained in `lardataalg/DetectorInfo`, while the *art* services are in `lardata/DetectorInfoService`:

-   [`detinfo::DetectorProperties`](https://cdcvs.fnal.gov/redmine/projects/lardataalg/repository/revisions/develop/entry/lardataalg/DetectorInfo/DetectorProperties.h) is the provider interface; algorithms will use constant pointers to it
-   [`detinfo::DetectorPropertiesService`](https://cdcvs.fnal.gov/redmine/projects/lardata/repository/revisions/develop/entry/lardata/DetectorInfoServices/DetectorPropertiesService.h) is the service interface; modules will ask for it (`lar::providerFrom<DetectorPropertiesService>()` or `art::ServiceHandle<DetectorPropertiesService>`); in the configuration, `services.DetectorPropertiesService` will specify the service configuration
-   [`detinfo::DetectorPropertiesServiceStandard`](https://cdcvs.fnal.gov/redmine/projects/lardata/repository/revisions/develop/entry/lardata/DetectorInfoServices/DetectorPropertiesServiceStandard.h) is a *art* service implementation; in the configuration, there will be a line equivalent to `services.DetectorPropertiesService.service_provider: DetectorPropertiesServiceStandard` (note that the `service_provider` term is a *art* choice that clashes with LArSoft's unfortunate choice of the word “provider” to denote the framework-independent class described above); it is invisible to algorithms and modules
-   [`detinfo::DetectorPropertiesStandard`](https://cdcvs.fnal.gov/redmine/projects/lardataalg/repository/revisions/develop/entry/lardataalg/DetectorInfo/DetectorPropertiesStandard.h) is a provider implementation; it is invisible with respect to configuration, algorithms and modules; an instance of it will be owned by `detinfo::DetectorPropertiesServiceStandard`

The interface classes (of provider and service) do not need to have an implementation file (in case of `DetectorProperties`, they don't).

*Note:* %{font-family: monospace}[ShowerCalibrationGalore](http://nusoft.fnal.gov/larsoft/doxsvn/html/group__ShowerCalibrationGalore.html%) in `larexamples` is also a fully developed and thoroughly documented example of this pattern.

## Prescriptions for the use of LArSoft services

In the factorization development model, user code typically lives in an algorithm class that is interfaced to the framework by whatever the framework provides for the job (in *art*, that is a module).  
The algorithm is prescribed to be portable and with minimal dependencies: it should not usSe a framework service, because that will require the framework to be present. Therefore, the algorithm code has to use *providers* directly.

A recommended pattern is to have an algorithm class with a method that receives and stores pointers to the required providers.  
In the following example, that method is called `Setup()`:

```cpp

    namespace ns {

      /// Never forget plenty of documentation!!
      class MyAlgorithm {
          public:
        MyAlgorithm(fhicl::ParameterSet const&amp; pset);

        void Setup(pns1::NeededProvider1 const* pProv1, pns2::NeededProvider2 const* pProv2)
          {
            prov1 = pProv1;
            prov2 = pProv2;
            // maybe some check that they are not null...
          }

        // ...

          protected:
        pns1::NeededProvider1 const* prov1 = nullptr; ///< service provider 1
        pns2::NeededProvider2 const* prov2 = nullptr; ///< service provider 2

        // ...

      }; // class MyAlgorithm

    } // namespace ns
```

An *art* module using this algorithm would look like this:

```cpp

    #include "larcore/CoreUtils/ServiceUtil.h" // lar::providerFrom()
    // ...

    class MyModule: public art::EDAnalyzer {
        public:
      MyModule(fhicl::ParameterSet const&amp; pset)
        : pAlgo(new ns::MyAlgorithm(pset))
        {}

      virtual void analyze(art::Event const&amp;) override
        {
          // make sure the algorithm is provided the services it needs
          pAlgo->Setup(
            lar::providerFrom<pns1::NeededService1>(),
            lar::providerFrom<pns2::NeededService2>()
            );

          // then give the algorithm the input from the event
          // (and set for example output histograms if needed)

          // then run the algorithm

          // then do something with the results

        } // analyze()

        private:
      std::unique_ptr<ns::MyAlgorithm> pAlgo; ///< instance of my algorithm

    }; // class MyModule
```

### Naming conventions

We are currently endorsing the following naming convention:

-   for concrete services:
    -   provider: a descriptive, one- or two-word name; e.g., `LArProperties`
    -   service: the same class name as for the provider, with `Service` appended on it: e.g., `LArPropertiesService`;  
        this has the exhilarating effect of forcing a implementation file name like `LArPropertiesService_service.cc`
-   for service interfaces:
    -   provider interface: a descriptive name (as for the previous category), prefixed by `I` (capital `i`): e.g., `ILArProperties`
    -   service interface: same rule as above, e.g. `ILarPropertiesService`
    -   provider implementation: a descriptive name, connecting to the interface: `StandardLArProperties`, `LArPropertiesFromDB` (we reserve the plain `LArProperties` name for LArSoft use)
    -   service implementation: again the same class name as for the provider, with `Service` appended on it: e.g., `StandardLArPropertiesService`, `LArPropertiesFromDBService`; this can yield pretty ugly names, but has the advantage of predictability

## Developing a new LArSoft service

> This section will host excerpts of the new `DetectorProperties` service. Since the latter is not ready yet, this is a **to-do**.

### Lazy provider instantiation

The framework service is required to return a working, fully configured provider as the result of a `provider()` call.  
The service can delay the creation of the provider until then. For example:

```cpp

    class MyLazyService {
        public:
      using provider_type = MyProvider;

      MyLazyService(fhicl::ParameterSet const&amp; pset, art::ActivityRegistry&amp;)
        : config(pset)
        {}

      /// Returns a (constant) pointer to the service provider
      MyProvider const* provider()
        {
          if (!prov) prov.reset(CreateProvider());
          return prov;
        }


        private:
      fhicl::ParameterSet config; ///< a copy of the service configuration

      std::unique_ptr<MyProvider> prov; ///< pointer to our provider

      /// Creates and returns new provider
      std::unique_ptr<MyProvider> CreateProvider() const
        {
          auto new_prov = std::make_unique<MyProvider>(config);

          new_prov->Setup(
            lar::providerFrom<NeededService>(),
            lar::providerFrom<RequiredService>()
            );
          return new_prov;
        } // CreateProvider()

    }; // class MyLazyService

    DEFINE_ART_SERVICE(MyLazyService)
```

  
Note that in this paradigm the provider could still get effectively unused.  
For example, an algorithm might claim it requires `MyProvider`, and then never actually use it. Since the `Setup()` call of that algorithm takes a pointer to the provider, provider creation is forced when the algorithm is `Setup()` rather than when the provider is actually used.  
In general, providers should consider to implement their own laziness. The right solution depends on the specific case.

### Service dependencies

Service providers are not responsible for the other providers they depend on: they assume the providers are fully functional.  
It is responsibility of the framework to ensure that the services are ready when needed, and they are around long until they are not needed any more. It is responsibility of each service to make sure that their own provider is ready when its pointer is requested (by `provide()` call), and to make sure to get, by the proper `provider()` calls to other services, all the needed providers.

#### Updating services and service dependencies

Services can (and, in LArSoft, often *do*) depend on other services. This dependency is propagated to the providers too.  
Therefore the service must take care that the provider is informed of any change in the providers it depends from. In other words, when service `B` depends on service `A`, if the pointer to provider `A` can change during the job, it is on the service `B` owning provider `B` to give the latter the updated pointer to provider `A`.  
For this, a `Setup()` method is recommended.  
Although it is annoying to have the services do this, it is safe: doing it won't cause harm, not doing it might.

### Multi-threading support

This model has not been confronted with multi threading yet.  
Once the supported framework, *art*, defines its multi threading policy, this model will be updated to cope with it.

------------------------------------------------------------------------

*For questions, contact Gianluca Petrillo.*

[^1]: An abstract class, in C sense, is a class that has virtual methods it does not provide a definition of. Derived classes must provide such definitions.

[^2]: Some LArSoft utilities enforce the recommendation of having service provider classes non-copiable and unmovable. The derivation from `lar::UncopiableAndUnmovableClass` achieves that goal.
