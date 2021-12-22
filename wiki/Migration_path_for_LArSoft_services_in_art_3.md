Migration path for LArSoft services in art 3(#Migration-path-for-LArSoft-services-in-art-3)
==============================================================================================

-   **Table of contents**
-   [Migration path for LArSoft services in art 3](#Migration-path-for-LArSoft-services-in-art-3)
    -   [ Remove unused services](#Remove-unused-services)
    -   [ Guides for service authors](#Guides-for-service-authors)
        -   -   [Favor services that do not require header files](#Favor-services-that-do-not-require-header-files)
            -   [Favor services that do not require ServiceHandles](#Favor-services-that-do-not-require-ServiceHandles)
            -   [All registered service callbacks should be private](#All-registered-service-callbacks-should-be-private)
            -   [Interface exposed via ServiceHandles should be const](#Interface-exposed-via-ServiceHandles-should-be-const)
            -   [Remove the ActivityRegistry argument if it is not used](#Remove-the-ActivityRegistry-argument-if-it-is-not-used)

    -   [ Guides for ServiceHandles](#Guides-for-ServiceHandles)
        -   -   [Change ServiceHandle\<T\> to ServiceHandle\<T const\>](#Change-ServiceHandleltTgt-to-ServiceHandleltT-constgt)
            -   [Do not use ServiceHandle\<T\>s outside of art modules, services, or sources](#Do-not-use-ServiceHandleltTgts-outside-of-art-modules-services-or-sources)

    -   [ When the service needs to be redesigned](#When-the-service-needs-to-be-redesigned)

One of the requirements in getting an *art* job to concurrently process events is that any services used by that job must be thread-safe. With *art* 3.02, a safeguard is in place to ensure that a service cannot be used in a multi-threaded context unless its “scope” has been changed from `LEGACY` to `GLOBAL`. Because of this, LArSoft is now insulated against data-races via its services until its services’ scopes are changed to `GLOBAL`.

The steps laid out here are guidelines that should be taken into account to determine how/if a service can be modified in order that it can support multi-threaded execution. Note that the goal here is to provide *equivalent* behavior to what is currently provided by a LArSoft service. For migration reasons, any service that can be reasonably converted to be thread-safe ought to be so.

A main complication with ensuring thread-safety for LArSoft services is the prevalent use of `ServiceHandle`s. The steps below are heavily geared toward either removing `ServiceHandle` usage, or by using `ServiceHandle`s more safely.

 Remove unused services(#Remove-unused-services) {style="background:#D5D8DC;"}
---------------------------------------------------

This immediately reduces the maintenance burden, but it requires polling the experiments to determine which ones they need.

 Guides for service authors(#Guides-for-service-authors) {style="background:#D5D8DC;"}
-----------------------------------------------------------

#### Favor services that do not require header files(#Favor-services-that-do-not-require-header-files)

Not all services require header files. In fact, any service that calls `DEFINE_ART_SERVICE_INTERFACE_IMPL` does not need a header file. If you find that a service interface implementation requires a header file, a redesign is likely in order.

Similarly, a header is not necessary for most services that simply report information that does not need to be accessible to a module. An example of this would be *art*’s `TimeTracker` and `MemoryTracker` modules.

#### Favor services that do not require `ServiceHandle`s(#Favor-services-that-do-not-require-ServiceHandles)

There may be cases where a header file is still required, but a `ServiceHandle` is not (e.g. *art*’s producing-services). In that case, the following variable should be publicly defined in the service’s class definition:

    class MyService {
    public:
      static constexpr bool service_handle_allowed{false};
      // ...
    }

Any attempt to create an `art::ServiceHandle<MyService>` object will result in a compile-time failure.

#### All registered service callbacks should be `private`(#All-registered-service-callbacks-should-be-private)

Any function registered with the `ActivityRegistry` should not be accessible to any other code. The framework will invoke the function at the appropriate time, and any downstream code should not be able to invoke it through a `ServiceHandle`. For that reason any registered function/service callback should have `private` access.

#### Interface exposed via `ServiceHandle`s should be `const`(#Interface-exposed-via-ServiceHandles-should-be-const)

The circumstance in which data races occurs is when shared data is mutable. For that reason, the interface accessible via a `ServiceHandle` should be `const`-qualified. In other words, all public interface should be `const`. Although `const`-qualifying a function does not guarantee immutability, it provides a greater degree of confidence of immutability. It is still the responsibility of the author, however, to ensure that the code is thread-safe.

#### Remove the `ActivityRegistry` argument if it is not used(#Remove-the-ActivityRegistry-argument-if-it-is-not-used)

If the `ActivityRegistry` argument in the service’s constructor is not used, it should be removed. This makes it abundantly clear that the service does not hook into any framework transitions, but it is provided only as a means of having a global object that can be accessed via a `ServiceHandle`.

Assuming the accessible interface is `const`-qualified, this type of service can be a way of safely sharing large amounts of data between threads. Such services, however, are prone to misuse and should be treated with circumspection.

 Guides for `ServiceHandle`s(#Guides-for-ServiceHandles) {style="background:#D5D8DC;"}
-----------------------------------------------------------

#### Change `ServiceHandle<T>` to `ServiceHandle<T const>`(#Change-ServiceHandleltTgt-to-ServiceHandleltT-constgt)

Ideally, any interface exposed via a `ServiceHandle` will be `const`-qualified. However, to ensure this, users should specify `const` as the template argument–`ServiceHandle<T const>`. Any compilation failures will likely indicate places where services should be modified.

#### Do not use `ServiceHandle<T>`s outside of *art* modules, services, or sources(#Do-not-use-ServiceHandleltTgts-outside-of-art-modules-services-or-sources)

There are many places where `ServiceHandle`s are created outside of framework-aware code. For example:

    SurfWireLine::SurfWireLine(geo::WireID const& wireid, double const x)
    {
      art::ServiceHandle<geo::Geometry const> geom;
      geo::WireGeo const& wgeom = geom->WireIDToWireGeo(wireid);
      // ...
    }

It is not clear how the `SurfWireLine` class relates to any framework-aware code, and creating a service handle in its constructor not only obscures the required dependencies of the class, but it also introduces a dependency on *art* when `SurfWireLine` would not need it otherwise. A much better solution is to pass in a reference to the LArSoft provider:

    SurfWireLine::SurfWireLine(geo::GeometryCore const& geom,
                               geo::WireID geo& wireid, 
                               double const x)
    {
      geo::WireGeo const& wgeom = geom.WireIDToWireGeo(wireid);
      // ...
    }

 When the service needs to be redesigned(#When-the-service-needs-to-be-redesigned) {style="background:#D5D8DC;"}
-------------------------------------------------------------------------------------

If after working on the steps above you encounter situations where the services are not thread-safe (e.g. service’s data members are not protected from data races, users are updating service state from service handles, etc.), then a redesign is in order. There are multiple approaches to solving this and the one that you choose depends on the circumstance. Consider the following:

-   Are service A’s callbacks updating service B? If so, can this problem be handled by ensuring that the service B has callbacks that are invoked before service A? This can be guaranteed by creating a dummy service handle to service B in the constructor of service A.

-   Does (the use of) the service rely on side effects? Is the following being done:

        ServiceHandle<MyService> serv;
        serv->SetCurrentEvent(e);
        double val = serv->GetValue();

    If so, it would be better to replace it with:

        ServiceHandle<MyService> serv;
        double val = serv->GetValueFor(e);

-   Does the service interface rely on output parameters? For example, with modern C++, the following:

        std::vector<CalibOffsets> offsets;
        ServiceHandle<Calibration>{}->fillOffsets(offsets);

    is likely better written as:

        std::vector<CalibOffsets> const offsets = ServiceHandle<Calibration>{}->getOffsets();

    Although the former snippet of code does not result in a data race, *per se*, it is a pattern that can lead to problems later on, especially since the `offsets` variable cannot be `const`. This is not the problem with the latter solution.

-   Is the service caching variables? This can be a difficult one to solve, and it may require removing the caching, or switching to an `art::ProducingService`.

-   If none of the above solutions work, is it necessary that the service in question actually be a service? If the shared state of the service is causing data races, then it may be better to create an object that is owned only by the (e.g.) module that requires the functionality provided by the service. Ideally, just a free function that has no state could be used.
