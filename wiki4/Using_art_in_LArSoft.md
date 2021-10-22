-   **Table of contents**
-   [Using art in LArSoft](#Using-art-in-LArSoft)
    -   [Basic Concepts](#Basic-Concepts)
        -   [art::EDProducer](#artEDProducer)
        -   [art::EDAnalyzer](#artEDAnalyzer)
        -   [art::EDProducer/Analyzer/Filter::beginJob, endJob, etc.](#artEDProducerAnalyzerFilterbeginJob-endJob-etc)
        -   [art::Event](#artEvent)
        -   [art::ValidHandle and art::Handle](#artValidHandle-and-artHandle)
        -   [Upcast on read](#Upcast-on-read)
        -   [cet::search\_path](#cetsearch_path)
        -   [FHiCL configuration: fhicl::ParameterSet and fhicl::Table](#FHiCL-configuration-fhiclParameterSet-and-fhiclTable)
        -   [art::ServiceHandle](#artServiceHandle)
        -   [art::TFileService](#artTFileService)
        -   [Message Facility and MessageLogger](#Message-Facility-and-MessageLogger)
        -   [art::Exception](#artException)
        -   [art::Ptr\<T\> and art::PtrVector\<T\>](#artPtrltTgt-and-artPtrVectorltTgt)
        -   [art::Assns](#artAssns)
        -   [art::RandomNumberGenerator Service](#artRandomNumberGenerator-Service)
    -   [Making Objects to Store in the Output](#Making-Objects-to-Store-in-the-Output)
    -   [Schema Evolution for Data Products](#Schema-Evolution-for-Data-Products)
    -   [Making a Module](#Making-a-Module)
        -   [A word about Algorithm objects](#A-word-about-Algorithm-objects)
    -   [Checking the Configuration of a ROOT file](#Checking-the-Configuration-of-a-ROOT-file)

Using art in LArSoft[¶](#Using-art-in-LArSoft) {.wiki-class-count}
==============================================

The *art* framework interface makes use of the following basic ideas - all the algorithms are stored in modules and the event information is accessed using objects living in the art namespace. The I/O uses ROOT, but it is not based on `TObject`.

For information on using *art*, please examine the [art workbook](http://art.fnal.gov/art-workbook/). It may also be useful to issue the command `art --help`.


Basic Concepts[¶](#Basic-Concepts) {.wiki-class-count}
----------------------------------

The `art` namespace contains, among other things, handles to information stored in an event. Objects that are stored in an event are collectively known as [*data products*](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Data_Product_Design_Guide). They can either be added to an event using an `art::EDProducer` or `art::EDFilter` derived module, and they can be retrieved and operated on using an `art::EDAnalyzer` module. *Once an object has been stored in the event, its data cannot be altered* (a modified copy can be added to the event instead).

Other namespaces include:

-   `fhicl` - the namespace corresponding to the `ParameterSet` and `Table` information described below
-   `cet` - the namespace where exceptions and some other utilities live
-   `mf` - the namespace of the message logger facility

There is a link to the interface for each concept in the heading for that concept. The first three sections below, `art::EDProducer`, `art::EDAnalyzer`, `art::EDFilter` are the three main classes from which probably *all* module classes will derive. These are used to:

1.  add a data product to the event record, or
2.  read a data product from the event record and do analysis but not write to the event record and
3.  use the event record to determine if you want to keep this event at all to write to an output stream.

There are a number of features in art that can be found by issuing the command `art --help`. This will display options such as:

    art --print-description <module_type>

There are also `--print-available-modules` and `--print-available-services` options available.


### [`art::EDProducer`](https://cdcvs.fnal.gov/redmine/projects/art/repository/revisions/master/entry/art/Framework/Core/EDProducer.h)[¶](#artEDProducer) {.wiki-class-count}

This is a type of module that makes data products and stores them in the `art::Event`. The module takes a [fhicl::ParameterSet](/redmine/projects/fhicl-cpp/wiki/Wiki) or [art::EDProducer::Table](/redmine/projects/art/wiki/Configuration_validation_and_description) in the constructor and uses that to configure that module.

The module can also implement a reconfigure method to allow for run time reconfiguration, for example while running the event display. This feature is not well supported in LArSoft, and you should not rely on it.

The user must supply the implementation for the `art::EDProducer::produce()` method to create and store data products.


### [`art::EDAnalyzer`](https://cdcvs.fnal.gov/redmine/projects/art/repository/revisions/master/entry/art/Framework/Core/EDAnalyzer.h)[¶](#artEDAnalyzer) {.wiki-class-count}

This is a type of module that analyzes data products but cannot write them in an `art::Event`. The module takes a [fhicl::ParameterSet](/redmine/projects/fhicl-cpp/wiki/Wiki) or [art::EDAnalyzer::Table](/redmine/projects/art/wiki/Configuration_validation_and_description) in the constructor and uses that to configure that module.

The user must supply the implementation for the `art::EDAnalyzer::analyze()` method.\
h3(count). [`art::EDFilter`](https://cdcvs.fnal.gov/redmine/projects/art/repository/revisions/master/entry/art/Framework/Core/EDFilter.h)

The object allows the user to filter events based on information obtained about the event itself. Following modules can decide to process or ignore an event, according to the response of one or more filters.


### `art::EDProducer`/`Analyzer`/`Filter::beginJob`, `endJob`, etc.[¶](#artEDProducerAnalyzerFilterbeginJob-endJob-etc) {.wiki-class-count}

These are methods that do tasks that are needed only once a job starts, ends, or a run starts or ends, etc. For example, a `beginJob` method would likely contain definitions of histograms that might need to be filled during the operation of the module. A `beginRun` method could contain definitions of properties that can change from run to run (e.g. electron lifetime, temperature etc… ).


### [`art::Event`](https://cdcvs.fnal.gov/redmine/projects/art/repository/revisions/master/entry/art/Framework/Principal/Event.h)[¶](#artEvent) {.wiki-class-count}

The `art::Event` is the primary way to access products made by `art::EDProducer` type modules.

It also provides the user with information about an event such as the run, event number, etc through methods like

    // assume we have an art::Event &evt

    // get the run number. RunNumber_t is a typedef to unsigned int
    art::RunNumber_t run = evt.run();

    // get the subrun number. SubRunNumber_t is a typedef to unsigned int
    art::SubRunNumber_t subRun = evt.subRun();

    // get the time stamp.  art::Timestamp::value() returns a TimeValue_t which is a typedef to unsigned long long.
    // The conventional use is for the upper 32 bits to have the seconds since 1970 epoch and the lower 32 bits to be
    // the number of nanoseconds within the current second.
    art::Timestamp ts = evt.time();

    // make it into a TTimeStamp
    TTimeStamp tts(ts.timeHigh(), ts.timeLow());

    // get the event number - this calls a reference to art::EventID().  EventNumber_t is a typedef to unsigned int
    art::EventNumber_t event = evt.id().event();

The header files for the classes mentioned above are at:

-   [`canvas/Persistency/Provenance/EventID.h`](https://cdcvs.fnal.gov/redmine/projects/canvas/repository/changes/canvas/Persistency/Provenance/EventID.h)
-   [`canvas/Persistency/Provenance/Timestamp.h`](https://cdcvs.fnal.gov/redmine/projects/canvas/repository/revisions/master/entry/canvas/Persistency/Provenance/Timestamp.h)

The `art::Event` can also be used to access products, by asking it to return an `art::Handle`.


### [`art::ValidHandle` and `art::Handle`](https://cdcvs.fnal.gov/redmine/projects/art/repository/changes/art/Framework/Principal/Handle.h)[¶](#artValidHandle-and-artHandle) {.wiki-class-count}

An `art::ValidHandle` or an `art::Handle` is what is returned to an *art* module when a data product is requested. The request can either be from a `art::EDProducer` that is attempting to get objects stored in a previous reconstruction or analysis step, or it can be from a `art::EDAnalyzer` that is attempting to do some analysis task using the information in the object. For example, to get the data product `mp::MyProd` from the event, one should do

    auto mplistHandle = evt.getValidHandle<std::vector<mp::MyProd>>("modulelabel");

where `evt` is an object of type `art::Event`.

You must specify the type of the data product: in this case, it is a collection of `mp::MyProd`, specifically a `std::vector<mp::MyProd>`. The `"modulelabel"` string is a shortcut: your program should use a `art::InputTag` instead, that is more specific and easy to identify as an input when reading the code. Usually, the label associated to the module that produced the data product you need is enough (e.g. `"largeant"` or `"daq"`).

A `art::ValidHandle` always points to an existing and available data product, and if the data product is not available, an exception is thrown. Note that retrieved data products are **always immutable** and cannot be changed. An alternative way to read a data product is by getting a `art::Handle` via `art::Event::getByLabel()` call, but then you have to check if it found it (return value `true`) and if not, do the right thing.

You can also get all the data product of a given type out of the event using the `art::Event::getByType` method:

    std::vector<art::Handle<std::vector<mp::MyProd>>> mpHandles;
    evt.getManyByType(mpHandles);

Notice that no module label is used because we are getting all objects of the specified type out of the event.

`art::Handle` looks like a pointer in the code in that the data members of the object being handled are accessed using the `->` operator (it’s a “smart pointer”). For example, to get the size of the vector of `mp::MyProd` one can do

    mpcollHandle->size();

To use the objects in the handle collection, you can

-   Use the `art::ValidHandle` directly, \

        // in the code below, ev is an art::Event...
        auto hnd = evt.getValidHandle<std::vector<mp::MyProd>>("..."); // use the appropriate input tag, not "..." 

        for (mp::MyProd const& prod: *hnd) {
          // do something with prod
        }

-   Get the collection from the `art::ValidHandle`,\

        // in the code below, ev is an art::Event...
        auto hnd = evt.getValidHandle<std::vector<mp::MyProd>>("..."); // use the appropriate input tag, not "..." 
        std::vector<mp::MyProd> const& prodvec(*hnd);

        for (mp::MyProd const& prod: prodvec) {
          // do something with prod
        }

Occasionally, it is necessary to sort such a collection, in which case, a sorted container of pointers to the original collection can be used (e.g.):

    std::vector<mp::MyProd const*> ptrColl;
    for (mp::MyProd const& prod: prodvec)
      ptrColl.push_back(&prod);

or, in a more C++-aware style using functions from the `algorithm` or `larcorealg/CoreUtils/operations.h` C++ headers^[1](#fn1)^:

    std::vector<mp::MyProd const*> ptrColl(prodvec.size());
    std::transform(cbegin(prodvec), cend(prodvec), begin(ptrColl), [](auto& p) { return &p; }); 

    // or using the LArSoft utility:
    std::transform(cbegin(prodvec), cend(prodvec), begin(ptrColl), util::takeAddress);

([`util::takeAddress()`](https://nusoft.fnal.gov/larsoft/doxsvn/html/namespaceutil.html#a1b7b3801e849acc3b819c67e57bff2f3) is defined in [larcorealg:source:larcorealg/CoreUtils/operations.h](/redmine/projects/larcorealg/repository/entry/larcorealg/CoreUtils/operations.h)).

Also remember that as long as the pointers in your collection are from the data product, you can track back the index of the item in the data product (for example, `prodPtr - &prodvec.front()` for your vector of pointers, and `prodIter - prodvec.begin()`, or `std::distance(prodvec.begin(), prodIter)`, for iterator vectors).

In all cases, you won’t be able to change the *content* of a `mp::MyProd` object in the data product.

**NB** Only `art::PtrVector<mp::MyProd>` and `std::vector<art::Ptr<mp::MyProd>>` correctly save the references to objects made in other modules, so if you want to save the collection, it must be one of them:\

    art::PtrVector<mp::MyProd> ptrColl;
    for (size_t i = 0; i < hnd->size(); ++i)
      ptrColl.push_back( { hnd, i } );

\
(the braces construct in place the argument that `art::PtrVector::push_back` expects, that is a `art::Ptr<mp::MyProd>`, out of the handle and the index of the element in the data product that handle points to).

* * * * *

^1^ Note that the right `cbegin()`, `cend()` and `begin()` functions are picked by the compiler from the “proper namespace” depending on the type of `prod` (usually `prod` is a `std::vector`, so the proper namespace is `std`): this is called [argument-dependent lookup](https://en.cppreference.com/w/cpp/language/adl).


### Upcast on read[¶](#Upcast-on-read) {.wiki-class-count}

The upcast on read functionality can be used to read back objects written into a file that follow a simple inheritance scheme, i.e. reading in objects of a derived type using the base class type.\
For instance, imagine that `recob::Track` inherited from a `recob::Prong`. A collection of tracks, data product of type `std::vector<recob::Track>`, can be retrieved from the `art::Event` by passing a `std::vector<recob::Prong const*>` to the `art::Event::getView()` method:

    // declare the std::vector
    std::vector<const recob::Prong*> prongs;

    // Read in the list of recob::Tracks we made in fTrackInputTag as recob::Prongs.
    evt.getView(fTrackInputTag, prongs)

If you write an algorithm (a function) that uses prongs in this way:\

    void doSomething(std::vector<recob::Prong const*>& prongs);

\
you can use it with any data product derived from `recob::Prong`.

> LArSoft strongly discourages the use of polymorphism (that is, inheritance with virtual functions) in data products. Occurrences of inheritance in data products at all are rare (if any), as the preferred solution is containment: the “derived” class contains a “base” class as a data member.

Note that the vector is of constant pointers of the requested type. You shouldn’t save these vectors anywhere (i.e. as collections in other data objects).


### [`cet::search_path`](https://cdcvs.fnal.gov/redmine/projects/cetlib/repository/revisions/master/entry/cetlib/search_path.h)[¶](#cetsearch_path) {.wiki-class-count}

This is a utility that will search a list of predefined directories for a relative location of a file. For instance, if you want to use the geometry definition for a detector, `mydet.gdml`, as the input for the `Geometry` service, you would pass the geometry service the value `"mydet.gdml"` as a `std::string`. The `cet::search_path` object then searches through the previously defined `$FW_SEARCH_PATH` variable to see if it can locate the specified file. It will then allow access to information about the file, including its full path. This is helpful when writing code that needs data files that could be on a different path depending on the execution environment (e.g. a BlueArc area when running locally, but dCache when running on the grid), or for generic code that can’t know where customisation points are (e.g. a experiment-specific data area), or for versioned data whose path includes a version number and therefore can change (e.g. the deployed UPS products). The necessary variables are set when a user sets up the environment.

An example of using `cet::search_path` to find a file your code needs can be found in [LArSoft’s `ShowerCalibrationGaloreByPID` example](https://cdcvs.fnal.gov/redmine/projects/larexamples/repository/revisions/develop/entry/larexamples/Services/ShowerCalibrationGalore/Providers/ShowerCalibrationGaloreFromPID.cxx "@OpenROOTdirectory@ method").\
Here is another:\

    // this is the name of the GDML file, from configuration
    std::string GDMLname = pset.get<std::string>("GDML");

    cet::search_path sp("FW_SEARCH_PATH");

    // taking a parameter from the parameter set passed into the geometry as the first argument,
    // the second argument is the local variable where to store the full path - both are std::string objects
    // return value is true unless the file could not be found
    if (!sp.find_file(GDMLname, fGDMLFile) {
      // failed to resolve the file name
      throw art::Exception(art::errors::Configuration)
        << "geometry file '" << GDMLname << "' not found!";
    }


### FHiCL configuration: `fhicl::ParameterSet` and `fhicl::Table`[¶](#FHiCL-configuration-fhiclParameterSet-and-fhiclTable) {.wiki-class-count}

Either objects keep track of the configuration passed to the current *art* module or service.\
The configuration is read from files in a specific language, [FHiCL](https://cdcvs.fnal.gov/redmine/documents/327), and *art* distributes to each module and service the chunk of configuration that pertains that module and service. For examples on using FHiCL, please read/listen to the information available at: [http://larsoft.org/configuration/](http://larsoft.org/configuration/)

The interpretation of that information can follow one of two possible approaches:

-   `fhicl::ParameterSet` is the old way to access configuration; access can be done in one line, does not impose any structure, and it is documented in [fhicl::ParameterSet](/redmine/projects/fhicl-cpp/wiki/Wiki). Being the first one, this is what most of LArSoft still uses.
-   `fhicl::Table` is the new way of accessing configuration: it provides validation of the configuration (that is, it will warn if there is unexpected additional configuration, that is usually just a typo) and can be used to provide users with run-time documentation about the configuration. It requires some structure and is in general somehow less flexible than the above. It is the future, and many of the newest modules in LArSoft adopt it. The documentation is split in two areas:
    -   *art*’s [Configuration validation and description](/redmine/projects/art/wiki/Configuration_validation_and_description) wiki page describes how to set up a self-validating configuration in a *art* module or service
    -   FHiCL’s [Configuration validation and fhiclcpp types](/redmine/projects/fhicl-cpp/wiki/Configuration_validation_and_fhiclcpp_types) wiki page describes how to write the content of that configuration

[All the examples in `larexamples`](https://cdcvs.fnal.gov/redmine/projects/larexamples/repository/revisions/develop/entry/larexamples) use the self-validating configuration.

In both approaches, each element of the configuration is translated into a C++ data type, whether a trivial type or a class. Some examples:

type

`fhicl::ParameterSet` approach

`fhicl::Table` approach

`bool`

`pset.get<bool>("MyBool")`

`fhicl::Atom<bool>{ fhicl::Name{"MyBool"} };`

`int`

`pset.get<int>("MyInt")`

`fhicl::Atom<int>{ fhicl::Name{"MyInt"} };`

`unsigned int`

`pset.get<unsigned int>("MyUInt", 18U)`

`fhicl::Atom<unsigned int>{ fhicl::Name{"MyUInt"}, 18U };`

*(with default value `18`)*

`double`

`pset.get<double>("MyReal")`

`fhicl::Atom<double>{ fhicl::Name{"MyReal"} };`

`std::vector<int>`

`pset.get<std::vector<int>>("MyVInt")`

`fhicl::Sequence<int>{ fhicl::Name{"MyVInt"} };`

`std::string`

`pset.get<std::string>("MyString")`

`fhicl::Atom<std::string>{ fhicl::Name{"MyString"} };`

`std::vector<std::string>`

`pset.get<std::vector<std::string>>("MyVString")`

`fhicl::Sequence<std::string>{ fhicl::Name{"MyVString"} };`

`art::InputTag`

`pset.get<art::InputTag>("inputLabel")`

`fhicl::Atom<art::InputTag>{ fhicl::Name{"inputLabel"} };`

parameter set

`pset.get<fhicl::ParameterSet>("subConfig")`

`fhicl::Table<SubConfigStruct>{ fhicl::Name{"subConfig"} };`

The `art::InputTag` is **the** recommended way to read an input data product label from configuration.\
The latter example allows to read a chunk of configuration enclosed in nested braces. This is useful to isolate and organise parameters belonging to different algorithms. The configuration validation approach requires the specific structure of that parameters subset to be defined in a C data structure.


### [`art::ServiceHandle`](https://cdcvs.fnal.gov/redmine/projects/art/repository/changes/art/Framework/Services/Registry/ServiceHandle.h)[¶](#artServiceHandle) {.wiki-class-count}

The `art::ServiceHandle` is a handle with the semantics of a smart pointer, just like the `art::ValidHandle` above. The resource it handles is not data, but code.\
In particular, any instance of this class points to the same *art* service object (that is a *singleton*).

A *art* service can be used within any *art* module. Services can be configured using the job configuration file. A typical example of the use of a service is the detector geometry. The `Geometry` service is needed in most modules, but you don’t want to keep making new instances of the geometry. Additionally, the different detectors may have to set different parameter values that should be handled in the job configuration.

LArSoft services pursue the factorization of the services into a framework interface (*art* service described above) and a *service provider* independent of any framework.\
For this reason you will see calls to LArSoft’s `lar::providerFrom()` in place of the `art::ServiceHandle` instance you would expect. For example:\

    auto const* geom = lar::providerFrom<geo::Geometry>();

\
replaces `art::ServiceHandle<geo::Geometry> geom;`. The `auto` type is effective type of the service provider, that is not `geo::Geometry`.\
We encourage to call `lar::providerFrom()` no more than once per event (and suggesting no less), and to save it for further use as in the example above.


### [`art::TFileService`](https://cdcvs.fnal.gov/redmine/projects/art/repository/revisions/master/entry/art/Framework/Services/Optional/TFileService.h)[¶](#artTFileService) {.wiki-class-count}

This is a specialized service that connects up to the file where histograms made by modules are to be stored. It provides a mechanism for making `TObject` to be stored in that file and managing the memory for those objects. For example

        // get the geometry to figure out something for the histogram
        auto const* geom = lar::providerFrom<geo::Geometry>();

        // get access to the TFile service
        art::ServiceHandle<art::TFileService> tfs;

        // make the histogram - fHist is assumed to have been declared in the .h file
        fHist    = tfs->make<TH1D>("channels",  ";channel;# PE",  geo->Nchannels(), 0, geo->Nchannels());

        // note that ROOT does not automatically register TGraphs into a TFile;
        // so we tell TFileService to register it for us;
        // the register function demands name and title of the new object,
        // followed by the object constructor arguments; here we use the default constructor
        // (therefore, no additional constructor arguments) and will set number of points and values later
        fGraph   = tfs->makeAndRegister<TGraph>("channelGraph", "Graph title;channel;# PE");


### [Message Facility](https://cdcvs.fnal.gov/redmine/projects/messagefacility/wiki/Using_MessageFacility) and MessageLogger[¶](#Message-Facility-and-MessageLogger) {.wiki-class-count}

**The Message Levels**

The MessageLogger provides several levels of messages that can be used to print information to an output log. The decision of which level to use is your first way to determine how frequently your message will be printed. If you choose the INFO level, then typically all such messages are printed; if instead you choose the DEBUG level, then typically those messages are not printed unless a specific environmental flag is set or the message service is configured properly.

The levels most likely to be useful are LOG\_DEBUG, mf::LogInfo, mf::LogVerbatim, mf::LogWarning and mf::LogError. Note there is no mf:: in front of LOG\_DEBUG because it is a macro that will include the file and line numbers of the code producing the output. These are listed in order of severity and have the following behaviors:

-   LogInfo, LogWarning, and LogError represent three levels of “severity” of the message. It is possible (see MessageLogger Parameters ) to configure the job to ignore all LogInfo messages, or all messages of severity less than LogError.
-   LogVerbatim is identical in all ways to LogInfo, except that absolutely no message formatting is performed, and no context, module, or other information is appended to the message. This is appropriate, for example, if the program has prepared a nicely-formatted table for output.
-   The category should specify what this message is about. The category will generally appear as the first part of the message, but it also plays two other roles:\
     1. It is possible to set limits on how many times some specific type of message will be sent to the outputs of the logger. By “type” we mean any messages with some specific category. See MessageLogger Parameters for details.\
     2. When message statistics are provided, the counts of how many times messages of a given type were issued are keyed to category, module label, and (if provided) subroutine. \
     Normally a category name should be up to 20 characters long, without special characters other than underscore.
-   It is unnecessary to explicitly specify the module label or the run/event number; these are automatically provided by the logger.
-   An arbitrary number of additional objects \<\< a \<\< b \<\< … \<\< z can be appended to the message. These can be strings, ints, doubles, or any object that has an operator\<\< to an ostream. (Or the message can be issued with no additional objects at all.)
-   There is no need to add spaces at the beginning or end of text items sent to the message, or to add text separators between numerical items. This spacing is taken care of by the logger. However, if any item appended to a message ends in a space, then it is assumed that the user is handling spacing explicitly, and no further automatic spaces are inserted for that message.
-   There is no need to affix any sort of endl; when the statement ends the message will be dispatched.
-   Newline characters can be included in the objects appended to the message. These will be used in formatting the message. But they are generally not necessary: Line breaks are automatically inserted if the next appended object would cause the line to exceed 80 characters.
-   LOG\_DEBUG is identical to the others, except:
    -   LOG\_DEBUG affixes the *FILE* and *LINE* number to the message.
    -   LOG\_DEBUG messages are considered to be lower in severity than LogInfo messages.
    -   By default, LOG\_DEBUG messages will be rapidly discarded with a minimum of overhead. The user must specify in the .fcl file LOG\_DEBUG messages from various modules that are to be enabled
    -   Because it must get *FILE* and *LINE* from the spot issuing the message, LOG\_DEBUG is implemented as a macro rather than a free function.
    -   Because LOG\_DEBUG is a macro, it is not prepended with the mf:: namespace designation.

**Using the Message Service in Code**

In order to issue messages, the module must include the MessageLogger header:

    #include "messagefacility/MessageLogger/MessageLogger.h" 

Having included the necessary MessageLogger header, when code wishes to issue a message, one of these functions can be used:

    mf::LogError    ("category") << a << b << ... << z;
    mf::LogWarning  ("category") << a << b << ... << z;
    mf::LogInfo     ("category") << a << b << ... << z;
    mf::LogVerbatim ("category") << a << b << ... << z;
    LOG_DEBUG       ("category") << a << b << ... << z;

The easiest way to produce output that is formatted to your specifications is to emply the mf::LogVerbatim level. This level has absolutely no extra formatting from the message service tacked on to it and most closely resembles what one would expect from std::cout.

You can use std formatting functions in all message service levels. For example

    mf::LogVerbatim("MyMessageStream") << "define the width of the following field to be 5, " 
                                       << std::setw(5) << 999 
                                       << " and now define the precision of the following field to be 1, " 
                                       << std::setprecision(2) << 1.00012;

The above example uses mf::LogVerbatim, but the same would work in LOG\_DEBUG, mf::LogInfo, mf::LogWarning, and mf::LogError.

**Configuring the Message Service**

Here is a [tutorial](https://cdcvs.fnal.gov/redmine/projects/messagefacility/wiki/Tutorial_for_MessageFacility_v12_Configuration) for configuring the message facility. Below are some helpful tips for configuring message output.

The .fcl file controlling the job should contain the line

    message:      @local::standard_xxx

in the services block of the file, where xxx indicates the message level severity. The various predefined configurations are defined in the [source:trunk/Utilities/messageservice.fcl](/redmine/projects/larsoft/repository/entry/trunk/Utilities/messageservice.fcl) file. Those options are

    standard_debug
    standard_info
    standard_warning
    standard_error

**NB** you can only use one of the above in a job .fcl file.

The MessageLogger can be configured to set the number of messages printed and to send each class of message to a different output stream. For example, see the standard\_warning configuration of the [source:trunk/Utilities/messageservice.fcl](/redmine/projects/larsoft/repository/entry/trunk/Utilities/messageservice.fcl) file, which is repeated here

    standard_warning: { 

     destinations:  #defines the behavior of the configuration
     {  
      warningmsg:   #conveniently defined name for a destination, this is not a FHICL key word
      {
       type:      "cout"      #tells the message service to output this destination to cout
       threshold: "WARNING"   #tells the message service that this destination applies to WARNING and higher level messages
       append:    true        #says to append all messages to the output
       categories:            #these correspond to the strings in the mf::LogWarning("") calls in the code
       {
         default:             #defines a default behavior, this is a FHICL key word
         {
          limit:       1000   #limits the total number of messages in this category to 1000
          timespan:    60     #in seconds, tells the message service it can output 1000 messages from this category every minute
         }

         RecoBaseDefaultCtor: #an example of a loud category in LArSoft mf::LogWarning messages
         {
          limit: 10           #limit the total number printed to 10
          timespan: 600       #only print this category every 5 minutes
         }

       } # end categories
      } # end warningmsg
     } # end destinations
    } # end standard_warning

If one wanted to add another category in the job control .fcl file, it can be done with these lines after the services block:

    services.message.destinations.warningmsg.categories.YourStringHere: { limit: 100 timespan: 60 }

If instead, you want to add some message printing for info level messages you can add the following to the fcl file after the services block:

    services.message.destinations.infomsg: {
       type:      "cout"      #tells the message service to output this destination to cout
       threshold: "INFO"      #tells the message service that this destination applies to INFO and higher level messages
       append:    true        #says to append all messages to the output
       categories{
         default:        {limit: 0}  #don't print anything at the infomsg level except the explicitly named categories
         YourStringHere: {limit: 100 timespan: 60 }
         YourOtherString:{limit: 1   timespan: 1000} 
      }
    }


### art::Exception[¶](#artException) {.wiki-class-count}

art::Exception is defined in canvas (./canvas/Utilities/Exception.h).\
[Doxygen source file](http://nusoft.fnal.gov/larsoft/doxsvn/html/Exception_8h_source.html)

The use of the art::Exception can be configured to skip a module, or skip to the next event, run, etc. Different exception classes can be set to do different things. Since LArSoft is built upon art, the art::Exception is preferred to the cet::exception.

    if(x > 2) throw art::Exception("SomeUsefulDescription") << "x = " << x << " is too big";

The default behavior of the framework upon catching an exception is to rethrow (except for some system exceptions, which skip the event). However, one can specify the behavior for exceptions with the following configuration fragment:

    services.scheduler.XXXX: [ "SomeUsefulDescription", "SomeOtherUsefulDescription", ... ]

where `XXX` can be:

-   `Rethrow`;
-   `IgnoreCompletely`;
-   `SkipEvent`;
-   `FailModule` (behave as if the module returned a failure value for this event);
-   `FailPath` (behave as if the path rejected this event).

Note that the `FailModule` setting does not imply a path rejection if the module throwing the exception so configured is a filter set to “VETO” or “IGNORE.”


### [art::Ptr\<T\>](https://cdcvs.fnal.gov/redmine/projects/art/repository/revisions/master/entry/art/Persistency/Common/Ptr.h) and [art::PtrVector\<T\>](https://cdcvs.fnal.gov/redmine/projects/art/repository/revisions/master/entry/art/Persistency/Common/PtrVector.h)[¶](#artPtrltTgt-and-artPtrVectorltTgt) {.wiki-class-count}

The art::Ptr\<T\> is a template class that acts like a ROOT TRef. It provides a linkage between objects written into different areas of the event (and output file). For example, the rb::Cluster object holds an art::PtrVector\<recob::Hit\> pointing to the hits contained in the recob::Cluster. The art::Ptr\<T\> behaves like a pointer (ie you access the methods of the T using the “-\>”). It also has functionality to return the actual pointer to the object in question using art::Ptr\<T\>::get() or to check if the art::Ptr\<T\> is pointing to a legitimate object using art::Ptr\<T\>::isNull().

An art::Ptr\<T\> can only be made from an object that has been stored in the event record and is being fetched from the event record. Put another way, you can only make an art::Ptr\<T\> if you have an art::Handle to a collection of objects of type T. art::Ptr\<T\> cannot be instantiated like an object of type T,

    // The following line will NOT work
    art::Ptr<T> myt = new T(); 

or similar will not work because the object you are interested in for that code has not been first stored in the event record.

Please see this [note](https://cdcvs.fnal.gov/redmine/projects/art/wiki/A_note_on_the_behavior_of_Ptr) about art::Ptrs as well.

An art::PtrVector\<T\> is a vector of art::Ptr\<T\> objects. It provides the basic functionality you would expect from a std::vector, including iterators, size(), begin() and end() methods.


### [art::Assns](https://cdcvs.fnal.gov/redmine/projects/canvas/repository/changes/canvas/Persistency/Common/Assns.h)[¶](#artAssns) {.wiki-class-count}

art::Assns are a way to associate (Assns is a contraction for associations) objects of one type with another. For example, you may want to associate a recob::Cluster with the recob::Hit objects comprising the recob::Cluster. The art:Assns object allows you to navigate these associations bidirectionally, that is you can ask a recob::Cluster which recob::Hits it contains, as well as as a recob::Hit to which recob::Cluster it belongs. The art::Assns also allow us to avoid storing these connections in the higher level object that is being associated. Instead the associations are stored in the event record.

A set of utility functions to perform the necessary steps to associate objects for storage in the art::Event are found in\
[source:trunk/Utilities/AssociationUtil.h](/redmine/projects/larsoft/repository/entry/trunk/Utilities/AssociationUtil.h) There are also methods to retrieve a collection of objects of one type that are not associated with objects of another type. Those methods allow one to retrieve, for example, all recob::Hits from an event that are not associated with recob::Tracks. The comments in that file describe how to use the functions.

To make use of the associations and retrieve objects from the file, one would do

    // below trackListHandle is of type art::Handle< std::vector<recob::Track> >, 
    // evt is an art::Event, and trackCreatorModule is an std::string holding the 
    // label of the module making the tracks and the associations of hits to tracks
    art::FindMany<recob::Hit> fmh(trackListHandle, evt, trackCreatorModule);

    // loop over all tracks in the handle and get their hits
    for(size_t t = 0; t < trackListHandle->size(); ++t){
       std::vector<const recob::Hit*> hits = fmh.at(t);
    }

    // can also get a collection of art::Ptrs instead of const pointers
    art::FindManyP<recob::Hit> fmh(trackListHandle, evt, trackCreatorModule);

    // loop over all tracks in the handle and get their hits
    for(size_t t = 0; t < trackListHandle->size(); ++t){
       std::vector<art::Ptr<recob::Hit> > hits = fmh.at(t);
    }

One can also use the art::FindOne and art::FindOneP, see the detailed description on how to use art::Assns is [here.](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Inter-Product_References) The art::FindOne returns a cet::maybe\_ref, whose interface is defined [here.](http://cdcvs.fnal.gov/lxr/cetlib/source/cetlib/maybe_ref.h#044) The cet::maybe\_ref can be tested for validity, allowing a user to be sure a valid association was created.

**NB** The art::FindMany(P) and art::FindOne(P) are smart query objects and should only be instantiated once for a given collection. If they are instantiated once for each item in a art::Handle, art::PtrVector, art::View or std::vector\< art::Ptr\<T\> \> then a heavy performance price will be paid as a lookup table is made multiple times.


### art::RandomNumberGenerator Service[¶](#artRandomNumberGenerator-Service) {.wiki-class-count}

A nice description of how to use this service can be found [here](http://mu2e.fnal.gov/public/hep/computing/Random.shtml). Note that this write up is for the older fw implementation of art, but there are only minor differences.

To store the [state](https://cdcvs.fnal.gov/redmine/projects/art/repository/revisions/master/entry/art/Persistency/Common/RNGsnapshot.h) of the random number engines for each event one must add the RandomNumberSaver module to the list of physics producers to be run by the job. The necessary line to add to the fcl file is

    physics{
     producers{
       ...
       rns: { module_type: "RandomNumberSaver" }
     }

     ...
    }

A more detailed description of how to use the service in your code and store the state of the generator in the event record and retrieve it later is located [here](Saving_and_recovering_random_number_generator_states_?parent=Using_art_in_LArSoft).


Making Objects to Store in the Output[¶](#Making-Objects-to-Store-in-the-Output) {.wiki-class-count}
--------------------------------------------------------------------------------

Making objects to store in the art::Event is a straightforward operation. The first step is to declare a container for the objects,

    std::unique_ptr<std::vector<mp::MyProd> > mpCollection(new std::vector<mp::MyProd>);

Here we used the std::auto\_ptr because it handles the cleanup of the memory for the collection for us.

The mpCollection now behaves just like a std::vector, except one accesses the std::vector methods using the “-\>” operator. Once the collection has been filled (and it can be a collection of just one object), it is written to the event by doing

    event.put(std::move(mpCollection));

Now the ownership of the collection belongs to the event and the user cannot modify the collection or the objects in the collection any more.


Schema Evolution for Data Products[¶](#Schema-Evolution-for-Data-Products) {.wiki-class-count}
--------------------------------------------------------------------------

Data products may change over time and we will want to do everything we can to ensure backwards compatibility between old and new versions. Please see [this page](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Facilitating_Schema_Evolution_for_Data_Products) on the ART wiki for information on how to evolve a data product while still maintaining backwards compatibility.


Making a Module[¶](#Making-a-Module) {.wiki-class-count}
------------------------------------

Below are examples of how to make both an EDProducer module and an EDAnalyzer module. The examples show a basic .cc file for each.

**Important** Module names may not contain underscores. Underscores are special characters used by the ART system for storing data products in an event to label the products according to what module, instance and process created them. Using underscores in module names will result in your job not running.

The artmod command is useful for generating these files required for plugging a new module (Analyzer, Producer, or Filter) into the framework. The command documents itself:

`% artmod --help`

Suppose I’m working in a package called “MyPackage” which uses the namespace “mp” and I want to create a producer module called “MyProducer”. Moreover, assume that I want to include certain methods from the art::EDProducer base class, like art::EDProducer::beginJob() and art::EDProducer::reconfigure():

`% artmod --header-loc MyPackage -e beginJob -e reconfigure producer mp::MyProducer`

I can also pass it methods specific to my module using the -e tag as long as the interface is completely defined, ie

`% artmod --header-loc MyPackage -e beginJob -e reconfigure -e "bool CheckSomethingOut(double d)" producer mp::MyProducer`

Similarly I could pass data members like

`% artmod --header-loc MyPackage -e beginJob -e reconfigure -e "bool CheckSomethingOut(double d)" -e "double fMyDouble" producer mp::MyProducer`

Read the help screen for more details.

**NB Objects are stored in the art::Event as collections of references, not pointers. You need to get them out of the event as collections of references, not pointers.**


### A word about Algorithm objects[¶](#A-word-about-Algorithm-objects)

Before describing how to use the ART module objects, it is worth discussing a complementary concept used in LArSoft.

In LArSoft we have the concept of an Algorithm object. Its basic purpose is to take data products in and return either new or modified data products back to the user. In almost all cases, the user will be a EDProducer or EDFilter type module. The reason to have this additional type of object, which is not defined in the ART framework, is to facilitate use of algorithms in multiple modules. That is, a user may write a module that makes use of both Algorithm objects A&B while another may only want to use Algorithm object A. If the algorithm code is written outside of the modules, then the code can be reused in many modules.

The Algorithm objects that are used in modules should have constructors that take a fhicl::ParameterSet const& p as an argument, and they must also define reconfigure(fhicl::ParameterSet const& p) methods. The constructor should call the reconfigure method in order to configure any parameters needed by the Algorithm. The modules owning the Algorithm object should call the Algorithm’s reconfigure method from within the module reconfigure method.


Checking the Configuration of a ROOT file[¶](#Checking-the-Configuration-of-a-ROOT-file) {.wiki-class-count}
----------------------------------------------------------------------------------------

To dump the information regarding all the `ParameterSet` stored in a given art data file, then the program `config_dumper` is useful:\

    $ config_dumper -P file_name.root

Use `config_dumper --help` to find the available options.
