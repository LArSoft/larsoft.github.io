# LArSoft art-independent code and repositories



## Background

Goal is to make it possible to run LArSoft code in an alternate framework such as gallery. This requires that code be in specific repositories as detailed below.

This LArSoft policy establishes:

-   which repositories LArSoft provides hosting
-   how the repositories relate to the existing repositories, in terms of content and of dependency
-   where new code should be added, according to the new code functionality
-   where existing *art*-independent code should be moved

One of the [LArSoft design principles](https://larsoft.org/important-concepts-in-larsoft/design/) requires the separation of framework and algorithm code. This is done by encapsulating algorithms, configuration, tools and utilities into a layer that is independent of the framework and external products. This is often called the [factorization model](https://larsoft.org/services/). It prescribes:

-   “algorithmic” code providing the actual software functionality, as portable as possible and framework-independent
-   interface between the “algorithmic” and LArSoft code, usually depending on the [*art*](https://cdcvs.fnal.gov/redmine/projects/art) framework

## Code organization

The code organization chosen to accommodate the factorization model includes:

1.  algorithmic code confined in its own repository
2.  interface with LArSoft code in its own repository
    -   code that talks to art and interfaces with algorithm code needs to live in a different repository than the algorithmic code since it depends on *art*
3.  as a special category, repositories for LArSoft core code, depending on the *art* framework

The following text will describe the allocation of an hypothetical reconstruction software suite based on TensorFlow, going with the generic name of `RecoTF`.

### Algorithmic code

The category of algorithmic code includes not only actual algorithms, but any code providing some functionality. It is required to be framework-independent insofar as its full core functionality can be made available on “any” framework context. This category includes:

-   LArSoft core code that need to be framework-independent; for example: [`LArCoreAlg`](https://cdcvs.fnal.gov/redmine/projects/larcorealg)
-   third party code (e.g. the pandora toolkit); for example, `pandora SDK, recotf`

While it is preferred that a repository of algorithmic code be integrated with the LArSoft build system, this is a requirement only for the core software and not for the third party code.

The `RecoTF` software will include an algorithmic code repository, called `recotf`. This repository may include code explicitly depending on:

-   the “external” libraries it needs (e.g. `TensorFlow`)
-   the CET build system (`[cetbuildtools](https://cdcvs.fnal.gov/redmine/projects/cetbuildtools) CMake macros`)
-   code from any LArSoft algorithmic repository it needs (e.g. `[LArDataObj,](https://cdcvs.fnal.gov/redmine/projects/lardataobj) [LArCoreAlg](https://cdcvs.fnal.gov/redmine/projects/larcorealg`,) …)
-   the CET infrastructure (`[fhicl-cpp,](https://cdcvs.fnal.gov/redmine/projects/fhicl-cpp) [messagefacility](https://cdcvs.fnal.gov/redmine/projects/messagefacility)) `
-   the [`canvas`](https://cdcvs.fnal.gov/redmine/projects/canvas) libraries

They are forbidden from depending on:

-   any specific framework (e.g. *art*)
-   LArSoft core code (below) that depends on *art*

These items are in order of decreasing likelihood of being needed. We encourage the use of LArSoft data products (e.g. from `lardataobj`) as deep in the code as possible and recommend the use of FHiCL as configuration language.

### Algorithm-framework interface code

This category includes code to enable the use of algorithmic code (above) into a specific framework.  
This category includes:

-   interfaces to third party code (e.g. the pandora toolkit); for example, `[LArPandora,](https://cdcvs.fnal.gov/redmine/projects/larpandora) larrecotf`

The code must blend in with LArSoft build system and environment ([cetbuildtools,](https://cdcvs.fnal.gov/redmine/projects/cetbuildtools) [mrb](https://cdcvs.fnal.gov/redmine/projects/mrb)).

The `RecoTF` software will include algorithm-framework interface code repositories; for example, `larrecotf` (to *art* framework and LArSoft toolkit), `wcrecotf` (to a WireCell framework) etc. Of course, we prescribe only on `larrecotf`, which needs to depend on:

-   the algorithmic code repository `recotf`; there should be no need of explicit dependency on additional external libraries not already pulled in by `recotf`
-   the `CET` build system
-   usually the *art* framework, in the common case where a run-time plug-in system is needed (modules, services, tools)
-   LArSoft core code (below)

### LArSoft core code

LArSoft already includes a lot of code, with a backbone of core repositories in a dependency chain: `[LArCore,](https://cdcvs.fnal.gov/redmine/projects/larcore) [LArData,](https://cdcvs.fnal.gov/redmine/projects/lardata) [LArEvt,](https://cdcvs.fnal.gov/redmine/projects/larevt) [LArSim,](https://cdcvs.fnal.gov/redmine/projects/larsim) [LArReco,](https://cdcvs.fnal.gov/redmine/projects/larreco) [LArAna](https://cdcvs.fnal.gov/redmine/projects/larana`) (in dependency order).  
These repositories functionally merge the two categories above. Where factorization has taken place, each of these repositories has a matching algorithmic code repository. Where factorization is complete (as for `larcore`), one of the repositories is fully in the algorithmic code category ([`LArCoreAlg`](https://cdcvs.fnal.gov/redmine/projects/larcorealg)), and the other is in the algorithm-framework interface category ([`LArCore`).](https://cdcvs.fnal.gov/redmine/projects/larcore) <sup>1</sup>

The `RecoTF` software will not entwine with this category: LArSoft users will be able to pull in `RecoTF` facilities through FHiCL configuration pulling in the run-time plug-ins provided in” `larrecotf`.“:https://cdcvs.fnal.gov/redmine/projects/larcore

## Naming convention

Repository naming convention is as follows:

-   topic name - library
-   algorithmic code (art independent) - larlibraryalg
-   algorithm-framework interface code - larlibrary

## References

This material is from Gianluca Petrillo's issue \#18283.

1\. Repository `larcore` contains utilities that are *art*-specific and do not have any *art* independent scope, e.g. classes to facilitate the creation of *art* services from service providers. In this sense, `larcore` is not exclusively an interface repository. That is, a user might want to include larcore functionality even when not needing even indirectly any from `larcorealg`.
