

# The rules and guidelines

This is a working set of rules and guidelines. Suggestions for improvements are welcomed. Basically, we urge lean, modular code that is detector-agnostic. LArSoft code is intended to be usable by any N-plane, N_w wires, M-PMT Liquid Argon TPC.

## Writing modular code that is detector-agnostic.

1.  All data formats which are a) stored in the output file, b) passed between job control modules or c) written to `histos.root` should be generalizable for N wire planes and / or M PMTs. Obviously, the number of wires N_w per plane must be generalizable.
    -   No fixed size arrays for things that relate to planes, wires, PMTs, number of TPCs.
    -   No “Induction” and “Collection” data members in base classes for reconstruction or simulation. (For usability it is acceptable to have `GetCollectionPlane()` and `GetInductionPlane()` as methods of the class to return, for example, the first and last wire plane). One can test whether a plane is induction or collection using the [Geometry interface](https://code-doc.larsoft.org/doc/latest/html/classgeo_1_1GeometryCore.html) already, [`geo::PlaneGeo::SignalType()`](https://code-doc.larsoft.org/doc/latest/html/classgeo_1_1PlaneGeo.html#afee6843450e4e10af008a8dbce02d7b3), so if you have a plane number you can ask the Geometry if it is induction or collection.
    -   No hard-coded assumptions in data containers about positions, spacings, etc. That information should only come from the Geometry, as is stated in the Geometry package documentation.
2.  An example of something that breaks from the N+M generalizability guideline is the front end electronics simulation. That will be specific to a given detector. So for that simulation it is ok, but still not great practice and certainly not to be encouraged. That is the last step of the simulation. But, in the Geant4 and all other parts of the simulation, keep it detector agnostic.
3.  All reconstruction code should be written as generally as possible. Setting up the data ready to be processed should be done for N planes. Output should be given for N planes. Actually developing the algorithm to run for N planes may be more difficult – in this case, the package developer should:
    -   write as much of their code module as possible for N planes - always vectors, never arrays! Getting this information from the Geometry is the way to do this – i.e. one gets the number of planes from the Geometry and write your loops based on that. See code snippets in the [“Good” example](The rules and guidelines#Looping-over-geometry-entities) for how to do this.
    -   indicate with comments the start and end of the 2-plane specific section of code, and check for 2 planes and throw an exception if necessary. Never write code that assumes a hard coded number of planes. When in doubt of whether such code can be written, contact the conveners for guidance. We believe that using the Geometry methods such an exception to protocol should never be necessary. One unfortunate case may be inherited, legacy code whose cleanup is being deferred to the very busy original author.
4.  Wire position and pitch and PMT position and orientation should be read only from the geometry file. Anywhere where a specific configuration is required should be checked for in the code with clear exceptions thrown if necessary, and detailed on the wiki.

## Configuration

All LArSoft users are expected to follow the guidelines for developing configurations and configuration-aware C code as described at https://larsoft.org/configuration/ which includes two presentations, one with video.

## Coding Conventions

Conventions to keep in mind when writing code for LArSoft include the following:

1.  Namespaces must be explicit, no `using namespace XXX` statements are allowed.
2.  All packages are a namespace; the names of the namespaces should be kept to 5 letters or less and should indicate the package, i.e. `evd` for the EventDisplay package.
3.  Data members of an object should have variable names that begin with `f`, i.e., `fADC`.
4.  Variable names should be reasonably descriptive for the scope in which they are used - `i` is ok in a small for loop, not ok in one spanning 20 lines or more.
5.  Typedefs for predefined types are discouraged, i.e. `typedef int Int_t`, `typedef std::vector<double> dubvec`. Typedefs should be reserved for legitimate new types, i.e., `Origin_t` in `SimulationBase/MCTruth.h`.
6.  **Comments are mandatory** - each new object should have a description of its purpose in the header file.
7.  Comments should be of a format that enables [doxygen](https://www.stack.nl/~dimitri/doxygen/docblocks.html) to interpret them.
8.  Use the [message facility](https://cdcvs.fnal.gov/redmine/projects/messagefacility/wiki/Using_MessageFacility) (see also its [configuration tutorial](https://cdcvs.fnal.gov/redmine/projects/messagefacility/wiki/Tutorial_for_MessageFacility_v12_Configuration)) for output to the screen.
9.  Non-module classes should use consistent header and implementation file names, e.g., al algorithm implemented in class `MyAlgo` should be written into `MyAlgo.h` and `MyAlgo.cxx`.
10. Module types and file names should be consistent. For example, a module named `MyModule` should be declared, defined, and implemented in `MyModule_module.cc`.
11. Include statements should use full paths to header files, where the full path to any LArSoft header is everything up to, but not including, the top level of the repository (e.g., `#include "larcore/Geometry/GeometryCore.h"`).
12. Only use TObject subclasses when absolutely required since it can result in considerable and unnecessary memory and CPU overheads.
13. All for and if statements should be followed by explicit braces. Failure to do so can cause trouble with maintenance.
14. Data products should be selected using art::InputTag values whenever possible.
15. Creation and filling of TTrees should be confined to a separate analyzer module that is used for debugging only. While embedded TTrees for diagnostic purposed is valuable in developing new algorithm code, these should be removed from production code.
16. Whenever possible, use constexpr instead of static const and avoid using non-const statics since they are a source of inefficiency in multi-threaded code.

## Uniform code format

LArSoft is considering adopting `clang-format` as a code-formatting tool to ensure a uniform code layout. Although `clang-format` can be made available by explicitly setting up the `clang` UPS product, the recommended way of using `clang-format` is to integrate it into your editor.

### Prerequisites

To use the UPS-provided `clang-format` utility inside the editors, it is necessary that UPS is setup for your file-editing session. If UPS has been setup, then you should see the following when typed in your shell:

    type ups >&amp; /dev/null &amp;&amp; echo UPS available
    UPS available

If UPS is not found or Clang 7 is not installed in the UPS area, then you will not have access to the `clang-format` commands within the editors.

### Supported editors

- **Emacs**

Download [attachment:ups-claing-format-v7.el](ups-clang-format-v7.el) and place it in a directory `<my_dir>`.

Add the following commands to your .emacs file:

    (add-to-list 'load-path "<my_dir>")
    (load "ups-clang-format-v7")

This will allow you to use the `'M-x clang-format-buffer'` and `'M-x clang-format-region'` commands while editing files.

-   **VIM**
    -   Download [attachment:ups-clang-format-v7.vim](ups-clang-format-v7.vim) and place it in your `~/.vim/plugin/` subdirectory.
    -   You can then use `'Ctrl-k'` while editing files to apply `clang-format` to the selected line or region.

### Expected behavior

For the files being edited, the `clang-format` commands will use the `.clang-format` file that is closest to the file. In other words, assume a file has the full path:

    /dir1/dir2/dir3/my_file.cpp

and that each of the directories `dir1`, `dir2`, and `dir3` have `.clang-format` files. `clang-format` will choose the `.clang-format` file located in `dir3` as the style to apply to the code in `my_file.cpp`. If `dir3` does not have a `.clang-format` file, then `clang-format` will search for a `.clang-format` file in `dir2`, and so on. If a `.clang-format` file cannot be found in the directory hierarchy, then `clang-format` applies its own default.

## File and Library Naming

The problem of conflicting names can arise when developing code against multiple experiment repositories (e.g., `argoneutcode`, `lariatsoft`, `uboonecode`, `dunetpc`, etc.). In order to facilitate being able to develop in a multiple experiment environment, it is helpful if the experiments use unique naming for classes, headers, libraries, and fcl files.

1.  In the case of headers, the header path is considered part of the header name and should always be used in the include directive.
```cpp
        #include "uboone/OpticalDetectorSim/RandomServer.h" // uboonecode
        #include "dune/Geometry/ChannelMap35Alg.h" // dunetpc
        #include "MCShowerReco/MCShower.h" // argoneutcode
```
2.  Classes should have a unique name. Namespaces (e.g., `uboone`, `dune`, `argoevd`) may be used to create a unique name, but it is safer to rely on the name of the class itself.
3.  We require including the path in library names in LArSoft to ensure unique naming (e.g., `libart_Persistency_Common.so` rather than just `libCommon.so`).
    -   `art_make()` will do this by default
    -   The use of `BASENAME_ONLY` with `art_make()` is not allowed in LArSoft. We *strongly* recommend experiment code follow the same practice.
    -   If `USE_PRODUCT_NAME` is specified, the UPS product name (e.g., `dunetpc`) will be prepended to the calculated library name
4.  Since the path is not used to reference FHiCL files, we request that the experiments take care to indicate the experiment in the names of their FHiCL files.
    -   good FHiCL file naming:
            prodgenie_common_uboone.fcl
            evd_ub.fcl
            detsimmodules_microboone.fcl
            standard_ana_dune35t.fcl
            dune35t_buildopticallibrary_test.fcl
    -   problematic FHiCL file naming:
            copy.fcl
            ana.fcl
            rawevd.fcl
            anatree.fcl (used to appear in at least two different experiments)
5.  Avoid common names, such as `version`. Instead use `mypackage_version`.

## Other sources of useful C practices and hints

The ARTists have provided a nice set of “good practices” for coding that also include some hints on newer C standard (2011, 2014…). Please read this [document](https://cdcvs.fnal.gov/redmine/documents/534).

CMS has a very useful set of notes about [Using Data Structures Safely with Threads](https://twiki.cern.ch/twiki/bin/view/CMSPublic/FWMultithreadedThreadSafeDataStructures).

## Good code writing examples

### Looping over geometry entities

```cpp

    // For each plane, do something on the hits on that plane
    std::vector<recob::Hit> const&amp; hits = *hitHandle;
    auto const* geom = lar::providerFrom<geo::Geometry>();
    // iterates through all planes in the detector (all TPCs!)
    for (geo::PlaneID const&amp; pid: geom->IteratePlaneIDs()) {
      std::vector<recob::Hit const*> hitsOnPlane;
      for (recob::Hit const&amp; hit: hits) {
        if (hit.WireID().planeID() != pid) continue;
        hitsOnPlane.push_back(&amp;hit);
      } // for hits
      geo::View_t view = geom->View(pid); // this is the view in this plane
      // do something
    } // for planes
```

### Using transient data

*Transient data* is data that is specific to a given event but it is not saved into the event record. For example, results of an algorithm that need to be translated into LArSoft data products are transient.

Transient data *should be local*, and even if conditions force it to be a data member of a class, they should be emptied **at the end of each event** rather than at the beginning. Otherwise, you are carrying your now useless transient data across the whole job, wasting memory.

Let's assume we have an algorithm whose workflow is split in different phases: initialisation, run and result retrieval.

```cpp
    class MyProducer: public art::EDProducer {

      std::unique_ptr<MyAlgorithm> myAlgo;
      // ...

    };

    void MyProducer::produce(art::Event&amp; event) {

      // configure the algorithm, provide it inputs...

      // run the algorithm
      myAlgo->run();

      // retrieve the results (may be more than just one collection)
      std::vector<recob::Vertex> vertices;
      myAlgo->getVertices(vertices);

      // move the results into the event
      event.put(std::make_unique<std::vector<recob::Vertex>>(std::move(vertices)));

    } // MyProducer::produce()
```

  
This requires the algorithm to keep the results until they are retrieved.  
To implement correctly the algorithm, there are two main options, plus a “backup” one:

1. every method returning results also removes them from the object; the best way to implement this is actually merging the run and result retrieval phases:

```cpp
    class MyAlgorithm {

          public:
        struct Results_t {
          std::vector<recob::Vertex> vertices; ///< result: vertices
          // ...
        };

        results_t run() const
          {
            Results_t results;
            // fill the results by executing the algorithm code
            return results;
          }

        //...

      } // class MyAlgorithm
```

  
with a `produce()` like:

```cpp
    void MyProducer::produce(art::Event&amp; event) {

        // configure the algorithm, provide it inputs...

        // run the algorithm
        auto results = myAlgo->run();

        // move the results into the event
        event.put
          (std::make_unique<std::vector<recob::Vertex>>(std::move(results.vertices)));

      } // MyProducer::produce()
```

  
If there is only one result, the `Results_t` data structure is optional.  
This solution allows avoiding copies of the result(s).  
The following variant keeps the two phases separate:

```cpp
    class MyAlgorithm {
          public:
        struct Results_t {
          std::vector<recob::Vertex> vertices; ///< result: vertices
          // ...
        };

        void run();

        Results_t getResults() { return std::move(results); }

        //...
          private:
        Results_t results;
      } // class MyAlgorithm
```

  
This still presents memory hoarding if the caller decides not to `getResults()`, and it gives wrong results if `getResults()` is called more than once. For these reasons, it is disfavoured respect to the first variant.

1. require the caller to clear the data when done:

```cpp
    class MyAlgorithm {

        std::vector<recob::Vertex> vertices; ///< result: vertices

          public:
        std::vector<recob::Vertex> const&amp; getVertices() const
          { return vertices; }

        void clear()
          { vertices.clear(); /* ... */ }

        // ...

      } // class MyAlgorithm
```

  
paired with a different version of `produce()`:

```cpp
    void MyProducer::produce(art::Event&amp; event) {

        // configure the algorithm, provide it inputs...

        // run the algorithm
        myAlgo->run();

        // retrieve the results (may be more than just one collection)
        std::vector<recob::Vertex> const&amp; vertices = myAlgo->getVertices();

        // move the results into the event
        event.put(std::make_unique<std::vector<recob::Vertex>>(vertices));

        myAlgo->clear();

      } // MyProducer::produce()
```

  
The main weakness of this approach is that it can't verify that the caller actually `clear()`ed the data, and it is therefore *not recommended*.  
Note that this will *not* avoid a copy of the vertices, since the *art* producer will be forced to create a copy to be entrusted to the event.

1. if the algorithm does not allow this approach, one can instantiate the algorithm on every event anew; this is typically not that expensive, and since the algorithm is automatically destroyed after each event, no hoarding is possible:

```cpp
    void MyProducer::produce(art::Event&amp; event) {

        // construct and configure the algorithm, provide it inputs...
        MyAlgorithm myAlgo;

        // run the algorithm, do whatever it takes to get the results out of it
        myAlgo.run();

        // retrieve the results (may be more than just one collection)
        std::vector<recob::Vertex> vertices;
        myAlgo.getVertices(vertices);

        // move the results into the event
        event.put(std::make_unique<std::vector<recob::Vertex>>(std::move(vertices)));

      } // MyProducer::produce()
```

  
```

</pre>

Example of **wrong** behavior:

```cpp
    void MyProducer::produce(art::Event&amp; event) {

      // configure the algorithm, provide it inputs...

      // run the algorithm
      myAlgo->run();

      // retrieve the results (may be more than just one collection)
      std::vector<recob::Vertex> const&amp; vertices = myAlgo->getVertices();

      // move the results into the event
      event.put(std::make_unique<std::vector<recob::Vertex>>(vertices));

    } // MyProducer::produce()
```

  
This is the wrong implementation of the option 2, where we do not instruct the algorithm to clear its results, even if it is very likely that the algorithm is still retaining a copy of them.

## Bad code examples

1.  It should never be necessary to know the specific detector we are working on. If you think you need to, please should check with a convener/peer to see if there’s a more elegant alternative.
```cpp

        auto const* geom = lar::providerFrom<geo::Geometry>();
        if (geom->DetectorName() == "ArgoNeuT") {
          // Do the desired specific ArgoNeuT thing here to get detector constants, e.g.
        }
```

      
    To get configuration for a specific detector, services should be used that are configured for that detector.
2.  no hard-coded numbers! these belong to a FHiCL configuration file
```cpp

        // Oi!
          double plane_pitch = 0.3;   //wire plane pitch in cm 
          double wire_pitch = 0.3;    //wire pitch in cm
          double Efield_SI = 0.8;   // Electric Field between Shield and Induction planes in kV/cm
          double Efield_IC = 0.65;     // Electric Field between Induction and Collection
```
3.  This is also bad (and at the end of this bad example we show a more correct approach):
```cpp

        // This first bit is fine ....
        auto const channel = theWire->Channel();    
        auto const* geom = lar::providerFrom<geo::Geometry>();
        auto wireIDs = geom->ChannelToWire(channel); // note that there might be more wires read by the same readout channel
        auto const&amp; wireID = wireIDs->at(0);
          // ... But here, we go off the rails.
        //correct for the distance between wire planes
        if      (wireID.Plane == 0) time -= tI;         // Induction
        else if (wireID.Plane == 1) time -= (tI+tC); // Collection
        // Bit below is especially odious ...
        switch (wireID.Plane) {
          case 0:
            IclusHitlists.push_back(hitlist);
            break;
          case 1:     
            CclusHitlists.push_back(hitlist);
            break;   
        } // switch

```
    This is how this snippet should look like instead:
```cpp

        auto const* geom = lar::providerFrom<geo::Geometry>();
        auto const signalType = geom->SignalType(theWire->Channel());
        switch (signalType) {
          case geo::kInduction:
            time -= tI;
            IclusHitlists.push_back(hitlist);
            break;
          case geo::kCollection:
            time -= (tI+tC);
            CclusHitlists.push_back(hitlist);
            break;
          default:
            throw art::Exception(art::errors::LogicError) << "Unexpected signal type!\n";   
        } // switch
```

      
    That is: use the right abstraction (here, signal type and channel, instead of wire and plane number), and rely on the geometry service to map readout and geometry.

## Enforcing LArSoft coding standards

We value your contributions. We are all physicists and not computer scientists. We want everyone to be able to walk in and contribute to LArSoft. Nevertheless, your LArSoft co-conveners have decided some words are in order regarding coding conventions. We run unit tests, and experiments can run regression tests (through the Continuous Integration), and we want more. No one has volunteered to spend the many hours necessary to vet the code of contributors and make it conform to the proper rules and aesthetics. Our use of Code Analysis and spot checks and urging and individual follow-up will continue as much as time allows.

Mechanism for enforcement of violators is loose. The most serious route toward urging re-examining of your code that may be in violation of the tenants listed is through a discussion with the appropriate experiment spokesperson. Only eventually, in extreme cases and as a last resort, will repeat offenders of the codified rules be locked out of the repository. But, it could happen. Please do your best to follow the rules. See example code snippets on this page and code throughout the repository to guide you.
