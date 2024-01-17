# Guidelines on writing (and using) algorithms in LArSoft



An algorithm is a class, with one or more instances managed by user code, that performs a task or part of it. In the context of the *art* framework, an algorithm is used by an *art* module class. The best practice is to make the algorithm itself as independent as possible from the framework and use the module to provide the interface between the two. In other words,

-   **algorithm** class performs some or all the operations required for a task (e.g., “parametrize the shape of a hit”)
-   **framework module** (or simply *module*) class manages and coordinates its algorithms in order to produce and deliver a result to the framework

Consider the `LineCluster` module:

-   the algorithm, `cluster::ClusterCrawlerAlg`, can be configured by a FHiCL parameter set, receives sets of reconstructed hits as input and produces sets of refined hits, clusters, vertices etc.
-   the module, `cluster::LineCluster`, creates, configures and owns a `cluster::ClusterCrawlerAlg` instance, reads the hit from `art::Event`, directs the steps of the algorithm, and stores its results back into `art::Event`

### Algorithm factorization model

As the unit of a modular system, an algorithm should:

-   perform one single task
-   delegate subtasks to other algorithms
-   minimize its dependencies (see in particular our [factorization guidelines](Architecture_revision#Factorization))

Independent algorithms are more portable and easy to test. Small, independent algorithms also form a strong foundation for solving complex problems. Some criteria for developing well-factorized and portable code are collected in our [architecture guidelines](Data_products_architecture_and_design).

Additional requirements for a well-written LArSoft algorithm include:

-   uses standard LArSoft data products as input
-   delivers standard LArSoft data products as output
-   has well-documented interfaces
-   has comments where-ever the code is less than trivial
-   follows good coding practices and [LArSoft guidelines](The_rules_and_guidelines)
-   follows the LArSoft [interoperability recommendations](Architecture_revision#Interoperability)

### Developing a new algorithm

An algorithm devoted to cluster reconstruction may look as follows. Note this is an example for illustration, not existing code.

```cpp


      /// Include plenty of documentation such as the purpose of the class, what it does, how to use it, any prerequisites, input assumptions, etc.

    namespace cluster {

      class MyClusterAlg {
          public:
        /// Constructor: configure the algorithm from a FHiCL parameter set
        MyAlgorithm(fhicl::ParameterSet const&amp; pset);

        /// Prepare to run the algorithm: receive updated geometry
        void Setup(geo::GeometryCore const*);

        /// Set the input to the algorithm
        void SetInputHits(std::vector<recob::Hit> const&amp; hits);

        /// Run the algorithm
        void Reconstruct();

        /// Extract the results (document here the format!)
        void GetClustersAndAssociations
          (std::vector<recob::Cluster>&amp;, std::vector<std::pair<size_t, size_t>>&amp;);

        // ...

      }; // class MyClusterAlg

    } // namespace cluster
```

  
The algorithm might also sport a `void Reconfigure(fhicl::ParameterSet const&amp;)` to change the configuration that was given on construction. It might also have a more compact method

```cpp

    std::pair<std::vector<recob::Cluster>, std::vector<std::pair<size_t, size_t>>>
    Reconstruct(std::vector<recob::Hit> const&amp; hits);
```

  
combining the input, reconstruction and output phase; this will reduce flexibility on caller side, but it's easier to write.

The algorithm **must** provide in its documentation all the information that is needed to use it; for example:

-   should the caller instantiate it once and reuse the same instance for every new event?
-   is the original collection of input hits required to be valid until `Reconstruct()` has been called and returned? or until `GetClustersAndAssociations()` has?
-   what is the format of the associations returned as result?
-   can `GetClustersAndAssociations()` be called many times, or after the first time it will “forget” the results?

This model is by no mean the only one, but it's a reasonably good one for starting. It has been suggested that the algorithms be (almost) *stateless*, meaning that beside the configuration, nothing should be stored in its data members. This may be good or bad depending on the planned use. For example, it makes the algorithm very easy to be used in parallel. But since the state information needs to be *somewhere*, it might turn out not to be very different from instantiating a new algorithm for each thread.

Other details of the implementation are to the author, as long as their effects are well documented. The complete declaration of the algorithm above might look like:

```cpp

    namespace cluster {

      /**
       * @brief Reconstructs clusters with a new, never seen before algorithm.
       * 
       * This algorithm reconstructs clusters using information exclusively from
       * hits.
       * 
       * This algorithm requires a GeometryCore service provider that needs to be
       * updated after first setting it only if the geometry service has changed
       * memory location. After the set up, the algorithm can be used to reconstruct
       * clusters from hits any number of times, each one following the cycle:
       * 1. SetInputHits() to provide the input for cluster reconstruction
       * 2. Reconstruct() to perform the reconstruction
       * 3. GetClustersAndAssociations() to retrieve the results
       * 
       * Note that:
       * - results can be retrieved only once; after that, a new input must be
       *   provided
       * - the /original/ input must be available until Reconstruct() has returned,
       *   since this algorithm does not store a local copy of the input hits
       * 
       * 
       * Configuration parameters
       * =========================
       * 
       * - *Threshold* (real, mandatory): charge accumulated in a cluster in
       *   calibrated ADC counts (same as Clusters::SummedADC())
       * 
       */
      class MyClusterAlg {
          public:
        /// Constructor: configure the algorithm from a FHiCL parameter set
        MyAlgorithm(fhicl::ParameterSet const&amp; pset):
          threshold(pset.get<double>("Threshold")) // mandatory!
          {}

        /// Prepare to run the algorithm: receive updated geometry
        void Setup(geo::GeometryCore const* new_geom) { geom = new_geom; }

        /**
         * @brief Record the input hit vector
         * @param hits a (constant) reference to the input hits)
         * 
         * Note that the input hits are not copied and the hit collection must
         * remain valid until after Reconstruct() has completed.
         */
        void SetInputHits(std::vector<recob::Hit> const&amp; hits)
          { ClearOutput(); pHits = &amp;hits; }

        /**
         * @brief Run the algorithm
         * @throw std::runtime_error in case of error
         * 
         * The original input hit vector must still be valid, and its information
         * will be directly used.
         */
        void Reconstruct();

        /**
         * @brief Returns clusters and their associated hits
         * @param clusters (output) a vector with all reconstructed clusters
         * @param assoc_hits (output) hits associated to reconstructed clusters
         * 
         * The reconstructed information is moved into the arguments.
         * After this call, the reconstructed information is lost and Reconstruct()
         * needs to be executed again to regenerate it.
         * 
         * The format of assoc_hits is a list of pairs, the first being the index
         * of a cluster from the clusters vector, the second being the index of one
         * of the hits associated with that cluster, as seen in the input hit list.
         * There are multiple hits associated with each cluster. The order of the
         * associating pairs is not defined.
         */
        void GetClustersAndAssociations(
          std::vector<recob::Cluster>&amp; clusters,
          std::vector<std::pair<size_t, size_t>>&amp; assoc_hits
          )
          {
            clusters = std::move(Clusters);
            assoc_hits = std::move(HitClusterAssns);
            ClearInput();
          }

        /// Forgets the input and destroys the output, preparing for a new execution
        void Clear() { ClearInput(); ClearOutput(); }

          public:
        geo::GeometryCore const* geom = nullptr; ///< pointer to geometry service provider

        std::vector<recob::Hit> const* pHits = nullptr; ///< pointer to input hits

        std::vector<recob::Cluster> Clusters; ///< reconstructed clusters
        std::vector<std::pair<size_t, size_t>> HitClusterAssns; ///< hit/cluster associations

        void ClearInput() { pHits = nullptr; }
        void ClearOutput() { Clusters.clear(); HitClusterAssns.clear(); }

      }; // class MyClusterAlg

    } // namespace cluster
```

  
while the implementation would provide the implementation for `cluster::MyClusterAlg::Reconstruct()`.  
Note that this algorithm *does* depend on LArSoft for the service provider definition and for the data format.

### Service and algorithm dependencies

The algorithm **must** obtain in the setup phase *all* the service providers it directly uses.  
If e.g. `DetectorProperties` provider depends on `LArProperties` provider, and the algorithm needs both, the algorithm will not try to obtain `LArProperties` from `DetectorProperties`, but rather will require the caller to explicitly provide both. This ensures that the dependencies are explicit.

The algorithm may obtain other algorithms it needs from the caller, or it can instantiate them by itself, owning them. Depending on the algorithm, one or the other solution are better. We recommend the first second solution to be attempted for the highest-level algorithms, the ones delivering final products, since it makes them easier to use. We recommend that algorithm that instantiate subalgorithms require a separate sub-parameter-set for their configuration, like in:

```python

    physics.producers.MyModule: {
      module_type:  MyModule

      input:       "cchits"

      hough: {
        # configuration for the Hough transform sub-algorithm
      }

      stitch: {
        # configuration for the stitching transform sub-algorithm
      }

    }
```

A *art* module running this algorithm would look like this:

```cpp

    namespace cluster {

      /// Never forget plenty of documentation!!
      class MyCluster {
          public:
        /// Constructor
        MyCluster(fhicl::ParameterSet const&amp; pset);

        /// Reconstruct the clusters
        void produce(art::Event&amp;);

          protected:
        fhicl::ParameterSet config; ///< copy of the algorithm configuration
        art::InputTag fHitLabel; ///< input tag for the input hits

      }; // class MyCluster

    } // namespace cluster
```

It is recommended, but not mandatory, to have the name of the module to reflect the name of the main algorithm when this makes sense.

A possible implementation could follow these lines:

```cpp

    namespace cluster {

      MyCluster::MyCluster(fhicl::ParameterSet const&amp; pset)
        : fHitLabel(pset.get<art::InputTag>("Hits")) // mandatory!
      {

        produces<std::vector<recob::Cluster>>();
        produces<art::Assns<recob::Hit, recob::Cluster>>();

        config = pset; // store a copy of the configuration for the algorithm

      } // MyCluster::MyCluster()


      void MyCluster::produce(art::Event&amp; event) {

        // create a new instance of the algorithm
        cluster::MyClusterAlg algo(config);

        // set up up-to-date service provider pointers
        algo.Setup(lar::providerFrom<geo::Geometry>());

        // feed the input
        auto HitsHandle = event.getValidHandle<std::vector<recob::Hit>>(fHitLabel);
        algo.SetInputHits(*HitsHandle);

        // run the algorithm
        algo.Reconstruct();

        // store the results
        // - extract the raw results
        std::vector<recob::Cluster> Clusters;
        std::vector<std::pair<size_t, size_t>> RawAssns;
        algo.GetClustersAndAssociations(Clusters, RawAssns);

        // - convert the output into something storable
        art::Assns<recob::Hit, recob::Cluster> ArtAssns
          = lar::ConvertPairsToAssociations(event, *this, Clusters, Hits, RawAssns);

        // - store into the event
        event.put(std::move(Clusters));
        event.put(std::move(ArtAssns));

      } // MyCluster::produce()

    } // namespace cluster
```

  
The module has the simple task to configure the algorithm, get the input, execute the algorithm, and save the results.  
Here we have been fundamentalist in avoiding any framework dependency in the algorithm. This results in a quite clumsy two-step procedure to produce the cluster-hit associations, where the algorithm produces *<span class="index hit index, cluster"></span>* pairs and a fictional `lar::ConvertPairsToAssociations()` takes care of creating the associations[^1].

#### Dependencies from external libraries

While *art* services and modules have no particular limitation to their depending from other libraries, service providers and algorithms do.  
The current recommendation is not to trespass the border of what may be run in project:gallery. This allows:

-   usage of common low level infrastructure for configuration (project:FHiCL) and console output (project:messagefacility)
-   access to *art* ROOT files containing LArSoft data products
    -   this includes data product associations

This does *not* allow:

-   creation of data product in *art* fashion (you really have to use *art* for that)
-   creation of `art::Ptr` objects, even just local in the code (this is *not supported even in gallery*, which does support reading and using them)
-   direct access to *art* services (service providers are fine as long as they follow this same policy)
-   to be verified: direct access to *art* tools (a mechanism similar to service providers could be used to propagate them)

In principle, dependencies might be reduced even further, by having code that can't read LArSoft data objects from *art* data products but can use them once read (this excludes dependency on gallery) and that can't use `art::Ptr` and `art::Assns` (this excludes also dependence on canvas, down to `cetlib`, but it comes with some cost).

According to this policy, the following constructs are allowed:

-   CLHEP (anything… but the only thing LArSoft uses by (*art*) choice as are random engines; for the rest, there are likely better alternatives)
-   ROOT (anything; nevertheless, [please avoid TVector3 and similar](From ROOT vectors (TVector3) to ROOT GenVector))
-   Boost (be aware that C++17 includes a lot of the classes from Boost… time to get standard!)
-   project:cetlib_except exceptions (`cet::exception`)
-   project:fhiclcpp configuration parsing (and its validation facilities as well!)
-   project:messagefacility functions (e.g. `mf::LogVerbatim` and `LOG_DEBUG()`)
-   `art::Ptr` and `art::Assns`, which, despite the legacy name, are now in project:canvas
-   `art::InputTag` (you rarely need it unless you are accessing the event, though)
-   any content from project:nusimdata (pretty much only data products)
-   any content from `larcoreobj`, `larcorealg` and `lardataobj` (more to come in the future!)

The following are also accepted when targeting only gallery compatibility, in that they are framework-specific but are by design supported by both gallery and *art*:

-   `art::FindOne`, `art::FindOneP`, `art::FindMany` and `art::FindManyP` (be aware of their limitations: it's not unusual that a direct parsing of `art::Assns` is as easy and more efficient)

The following are not allowed:

-   LArSoft repositories other than `larcoreobj`, `larcorealg` and `lardataobj`
    -   actually, some libraries in other repositories are framework independent and waiting to be moved out (e.g. `lardata_DetectorInfo`), so depending on them is future-proof; ask!
-   pretty much everything else in the `art` namespace (but ask if not mentioned here!)
-   access to `art::ServiceHandle` (expect to receive a service provider instead)
-   access to the `Event`, while sometimes still possible, is still discouraged for design reasons

About the access to the `Event`: both *art* and gallery have an event type (`art::Event` and `gallery::Event`, respectively), which share some interface outlook (for example, both have a `getValidHandle()` method that returns a `ValidHandle` object whose class is defined in their respective namespace). With some care, it's possible to write code to read from an event object without knowing which that one is. For example:

```cpp
    #include "nusimdata/SimulationBase/MCParticle.h"
    #include "canvas/Utilities/InputTag.h"
    #include <vector>

    class MyAlg {
      art::InputTag fTruthTag;                                ///< Label of the simulation producer (usually a `LArG4` instance)
      std::vector<simb::MCParticle> const* fMCPart = nullptr; ///< Collection of simulated particles to work on.
        public:

      template <typename Event>
      void loadInput(Event const&amp; event)
        {
          fMCPart = &amp;*(event.template getValidHandle<std::vector<simb::MCParticle>>(fTruthTag));
        }

    }; // class MyAlg
```

  
Note that neither *art* nor gallery headers were included; it will be task of the caller to include the proper headers where calling `MyAlg::loadInput()`, and to link to the proper libraries.  
It is still recommended that this approach is avoided whenever possible, that is when the type being read is already known. For example:

```cpp
    #include "nusimdata/SimulationBase/MCParticle.h"
    #include <vector>

    class MyAlg {
      std::vector<simb::MCParticle> const* fMCPart = nullptr; ///< Collection of simulated particles to work on.
        public:

      void loadInput(std::vector<simb::MCParticle> const&amp; mcPart)
        {
          fMCPart = &amp;mcPart;
        }

    }; // class MyAlg
```

  
which clearly states that the algorithm requires a collection of `simb::MCParticle`.

### Multi-threading support

This model has not been confronted with multi threading yet.  
Due to the local nature of the algorithms, they are often self-contained, and in those cases it should be easy to make them thread safe.

------------------------------------------------------------------------

Note: These are guidelines for best practices. Some code may not currently follow these guidelines.

*For questions, contact Gianluca Petrillo.*

[^1]: Matter of fact, a `lar::ConvertPairsToAssociations()` template function *can* be implemented in a reasonably efficient way if there is demand for it.
