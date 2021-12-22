Usability improvements(#Usability-improvements)
==================================================

Goals(#Goals)
----------------

Have LArSoft as a friendly platform as possible for the Experiment members to

-   develop new analysis, reconstruction and simulation code for their Experiment \* elevate that code to LArSoft standards for it to be merged for shared use by *all* LArSoft-using Experiments

**Delivery time: June 2016 (“phase 1”)**

The plan(#The-plan)
----------------------

The potential targets are listed in the next section.\
Due to the time span of this project, the first choices are reported in this table:

  ------------------------------------------------------------------------------------------------------------ -------------- ---------------------------------
  task                                                                                                         delivery       status
  [Code examples](Usability_improvements)                                       June 2106      three examples delivered
  [Creation of associations with data products](Usability_improvements)         June 2106      closing up
  [Services inheriting configuration from input file](Usability_improvements)   off schedule   thinking ongoing…
  [Access to indirectly associated objects](Usability_improvements)             TBD            scheduled to start on June/July
  ------------------------------------------------------------------------------------------------------------ -------------- ---------------------------------

Targets(#Targets)
--------------------

A number of people within a wide range of roles and expertise have been actively interviewed, and information has been collected during support requests.\
The following topics emerged from this collection and some elaboration based on them.\
Collection will continue, mostly as side effect of support requests.

> This list is a draft, and it is still subject to discussion

Part of the interview results is strictly *art* framework improvements or feature extensions, and they haven’t been listed here.

### Configuration(#Configuration)

  ---------------------------------------------- ------------------ -------------- ---------- --------------- --------------------------------------
                                                 source             contributors   delivery   effort          status
  Configuration language made parametric         Amir Farbin                                  not scheduled   To do: channel the request from DUNE
  Service configuration inheritance from input   Herbert Greenlee                             not scheduled   To do: submit *art* feature request
  ---------------------------------------------- ------------------ -------------- ---------- --------------- --------------------------------------

#### Configuration language(#Configuration-language)

FHiCL configuration language could evolve to allow for parametric configuration that allows easy reuse of template configurations.\
Despite some level of reusability, running for example two clustering modules differing by a single parameter and then a tracking module on each of them is more complicate than it should be.

> The size of this request requires multi-month dedicated effort by FHiCL maintainers.

#### Services inheriting configuration from input file(#Services-inheriting-configuration-from-input-file)

Most of the services are *required* to have the same configuration as in the previous jobs the input comes from.\
Failure to enforce this causes subtle errors. Multiple instances of this problem have been met in MicroBooNE, while dealing with `develop`-level reconstruction code on production level input files, and DUNE, when testing different geometries and settings.\
The ability to read service configuration from input file would systematically solve this problem.

Discussion must start on how to approach the problem. A general solution from the *art* side may be advisable.\
If *art* stakeholders are not interested, LArSoft can devise a proprietary solution.\
Expected 3 week of work to get first service on proprietary solution; 0.5 to 1 week for every other.

##### Status and to do

-   submit feature request for the general solution to *art* and let the stakeholders decide whether they are interested;

### Coding(#Coding)

source

contributors

delivery

effort

status

examples

Michael Mooney

LArSoft team

2-8 weeks^[1](#fn1)^

​(1) new data product

2 week

not scheduled

​(2) service: single implementation

LArSoft core team

June 2016

2 weeks

delivered

​(3) service: multiple implementations

LArSoft core team

June 2016

2 weeks

delivered

templates

LArSoft (and *art*?) team

*not scheduled*

#### Code examples(#Code-examples)

Copying existing code is a standard practice for LArSoft developers, which has fed diffusion and adoption of unwanted, non-optimal and dangerous patterns.\
Authors should be provided with examples from where to grow their code. These examples should:

-   be of limited scope and clear use case: authors can easily identify which example they want, and don’t have to trim too much code
-   moderately documented: the code must be understandable, but since comments are typically left untouched and get outdated, they should not be overwhelming in number
-   fully working
-   pointing to the relevant documentation, if any
-   fully tested: examples do get old quickly and we don’t want broken examples

Examples will be collected in `larexamples` repository and a catalogue will be maintained [in the LArSoft wiki](LArSoft_examples) to make them easy to find.\
A *incomplete* list of examples to be created:

-   a new data product
-   a new service (factorization model included)
-   a new service (factorization model and experiment-specific included)

#### Code templates(#Code-templates)

Templates are counterparts of examples that are supposed to be used by an author to start new code.\
Differences with examples:

-   they don’t need to be complete and functional
-   they can have extensive inline documentation and internal placeholders (e.g. `CLASSNAME`)

Other features:

-   they are supposed to be managed and used via a script (like `artmod` or `cetskelgen`) replacing placeholders and patching code together
-   stick to the basic patterns; experience has shown templates are hard to maintain up to date

Possible themes:

-   algorithm + module template
-   service templates

### Data access(#Data-access)

  ----------------------- -------- --------------------------- ----------------- --------- --------
                          source   contributors                delivery          effort    status
  global event                     LArSoft team                *not scheduled*   4 weeks   
  associations creation            LArSoft (and *art*?) team   TBD                         
  associations query               LArSoft (and *art*?) team   *not scheduled*             
  associations chains              LArSoft (and *art*?) team   TBD                         
  ----------------------- -------- --------------------------- ----------------- --------- --------

#### Complete event view(#Complete-event-view)

An *event view* is an object that can provide a collection of objects for any relevant physics class, with no need for the caller to specify where each collection comes from.\
This is envisioned as a analysis support tool configured centrally by e.g., a physics group, where it is decided which reconstructed track collection to use, which calorimetry, etc.\
The object should be configured by FHiCL language.

#### Association utilities(#Association-utilities)

The focus is on three aspects of use of associations: creation, query and chain query.

##### Creation of associations with data products(#Creation-of-associations-with-data-products)

LArSoft `CreateAssns()` functions have become quite hard to use and often they are adding complication to user code rather than simplifying it. A common creation pattern is for a module to produce:

-   a main data product
-   ancillary data products
-   associations of the main data product (and ancillary ones) with its input data
-   associations of the main data product with the ancillary ones

If this pattern is uniform and repeated enough, supporting utilities should be written to make it straightforward^[1](#fn1)^.

^1^ One such attempt for the specific use case of hit creation is `recob::HitCollectionCreator` (`lardata/lardata/RecoBaseArt/HitCreator.h`), which might be defined “moderately successful” in that I received a single unsolicited fairly positive statement and no negative statement about its usefulness.

##### Access to associated objects(#Access-to-associated-objects)

A common usage pattern is to have an *object* (as opposed to an index) and to look for its associated objects.\
This might be made simpler with a proper query object.

##### Access to indirectly associated objects(#Access-to-indirectly-associated-objects)

Under some assumptions, the query of objects only indirectly associated should be made easy (e.g. tracks -\> … -\> hits).

### Run-time interface(#Run-time-interface)

The user needs to know that an error message on the output is something to be fixed, and the same for a warning.\
Module output to console needs to be cleaned and made readable.

source

contributors

delivery

effort

status

clean common module output

LArSoft team

*not scheduled*

generation (`GENIEGen`, CRY, `CorsikaGen`, `SingleGen`)

*not scheduled*

simulation (`LArG4`)

*not scheduled*

hit finding (`GausHitFinder`)

*not scheduled*

cluster finding (`fuzzyCluster`, …)

*not scheduled*

track finding

*not scheduled*

shower finding

*not scheduled*

calorimetry

*not scheduled*

### Environment(#Environment)

  ----------------------- -------- -------------- ----------------- -------- -------------------------
                          source   contributors   delivery          effort   status
  build machines                                  *not scheduled*            left to the experiments
  VNC for event display                                                      request to CD
  ----------------------- -------- -------------- ----------------- -------- -------------------------

#### Machine devoted to code building(#Machine-devoted-to-code-building)

DUNE seems to have benefited from having a machine exclusively devoted to, and optimized for, software building.\
All the experiments may be interested in having such a machine.\
But we leave to each experiment the decision to request one.

#### VNC for event displaying from GPVMs(#VNC-for-event-displaying-from-GPVMs)

Remote event display with the X11 protocol is extremely demanding of the network resources.\
Other protocols, like VNC, may be much better suited for slowly changing display applications like this one.

The first step should be for the GPVMs to enable the ability to host a VNC server.

Further ideas scoped out of “phase 1” usability project(#Further-ideas-scoped-out-of-phase-1-usability-project)
------------------------------------------------------------------------------------------------------------------

Visual FHiCL aids:

-   editor:
    -   scan available module and service configurations
    -   visually assemble a workflow and services
    -   visualize existing configuration files
    -   clone and change existing configuration blocks or amend them
    -   module and service configuration by form\
         *[?]* given that algorithm configuration is mostly free-form, is this worth?\
         *[?]* should we decorate algorithm configurations and develop a “protocol”?
-   viewer *(a less ambitious target than an editor)*
-   easy way to get standard reconstruction vs. truth comparisons

Event display.

* * * * *

\_Last update: April 3rd, 2016.\_\
\_For questions or requests, please contact [Gianluca Petrillo](mailto:petrillo@fnal.gov "petrillo@fnal.gov") .\_
