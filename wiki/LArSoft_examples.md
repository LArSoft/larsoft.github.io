LArSoft examples
======================================

-   **Table of contents**
-   [LArSoft examples](#LArSoft-examples)
    -   [List of examples](#List-of-examples)
    -   [Services](#Services)
    -   [Algorithms and modules](#Algorithms-and-modules)

> Note that a single example is often not enough for your real purpose.
> We expect users to copy pieces from different examples to make up their solution, and the `README` files try to highlight which are the most serviceable parts to be exported to other code.

List of examples
--------------------------------------

Type

Short description

name

Where to find it

service

a simple service, following the factorization model

`AtomicNumber`

[larexamples:source:larexamples/Services/AtomicNumber](/redmine/projects/larexamples/repository/entry/larexamples/Services/AtomicNumber)

a simple service depending on other services

LArSoft’s `detinfo::DetectorPropertiesServiceStandard` has this feature

a simple service, with experiment-specific implementations

`ShowerCalibrationGalore`

[larexamples:source:larexamples/Services/ShowerCalibrationGalore](/redmine/projects/larexamples/repository/entry/larexamples/Services/ShowerCalibrationGalore)

similar to `ShowerCalibrationGalore`, but needs to know about new run and events

`TBD3`

nowhere yet

algorithm + module

a trivial reconstruction algorithm using services, with a unit test

`RemoveIsolatedSpacePoints`

[larexamples:source:larexamples/Algorithms/RemoveIsolatedSpacePoints](/redmine/projects/larexamples/repository/entry/larexamples/Algorithms/RemoveIsolatedSpacePoints)

a trivial producer module with a integration test

will appear in the [*art* workbook](http://art.fnal.gov/art-workbook-versions)

a trivial producer module with a `lar_ci` integration test

`TBD5`

nowhere yet

a module producing a new data product and its associations

`TotallyCheatTracks`

[larexamples:source:larexamples/Algorithms/TotallyCheatTracks](/redmine/projects/larexamples/repository/entry/larexamples/Algorithms/TotallyCheatTracks)

analysis module

[accesses reconstructed and simulated data](_AnalysisExample_)

`AnalysisExample`

[larexamples:source:larexamples/AnalysisExample](/redmine/projects/larexamples/repository/entry/larexamples/AnalysisExample)

Tests are in the matching `test/...` directory (for example, a service in `larexamples/Services/AtomicNumber/Services` will have its tests in `test/Services/AtomicNumberService/Services`).

A [section in LArSoft doxygen page](http://nusoft.fnal.gov/larsoft/doxsvn/html/modules.html) also lists most of the examples.

Services
----------------------

We provide a few examples of services.
How to pick the right one?

-   **factorization**: do you need to split the actual code providing the service from the specificity of the *art* framework?
    -   *yes*: **you do**. This is a major LArSoft recommendation. If you think you don’t need it, please discuss with LArSoft team. All examples currently follow this model, the simplest being `AtomicNumber`.
-   **experiment-specific implementation**: is it apparent that different experiments or scenarios will need different implementations?
    -   *yes*: for example, it uses database access<sup>[1](#fn1)</sup>; or it uses one of many specific models available in your experiment (e.g. assumptions based on the candidate geometry) =\> `ShowerCalibrationGalore` (nice name!)
    -   *no*: it uses no specific experiment assumptions or dependencies. Even in this case some time should be devoted to the interface design, so that the jump to the experiment-dependent implementation will not be too troublesome. But you want =\> `AtomicNumber`
-   **automatic calls**: does the service need to react when a new run or event happens, or to some other framework status?
    -   *yes*: take a look at `TBD3` to see how to add that feature on top of `ShowerCalibrationGalore`
    -   *no*: never mind then, `TBD3` does not help you
-   **unit tests**: do you plan to have this service used in others’ unit tests? (note that the question is not if you plan to write a test: that, you just have to)
    -   *yes*: take a look at the unit tests for `ShowerCalibrationGalore`; the unit tests are for those very services, but the set up of the test environment is just the same.
    -   *no*: no problem.

<sup>1</sup> … and, as of LArSoft 5, we are far from having converged on a single database access model or interface.

Algorithms and modules
--------------------------------------------------

A guide to find your example:

-   **unit test**: do I need to have a unit test for my algorithm?
    -   *yes*: **you do**. LArSoft **strongly** encourages writing tests for services (all the examples come with one), algorithms, producer and filter modules, and for analyzer modules whose results are important in production. Take a look at `RemoveIsolatedSpacePoints`
    -   *no*: if you have a analyzer module that does not use any algorithm specific to it and produces output and plots that are not critical, you *might* get away without a test. For example, `AnalysisTree` is **not** in this case, since, for example, its output has to be parseable by other analyses.
-   **integration test**: do I need to have a integration test for my module?
    -   *yes*: you *likely* do. `TBD5` shows you how to write one.
    -   *no*: think again. Integration tests, even simple ones, help find mess in your results from upstream changes.
-   **data products**: do I need to save my results into a new data product?
    -   *yes*: the design of a new data product is not as trivial as one would hope, and LArSoft is full of bad examples. Discuss with the experts in your experiment on the need of it (maybe there is already something like that?), and with them and/or LArSoft and *art* teams about their design. If you are so unlucky that people does like and use your product, the outcome of the design process may have a huge impact in the future. The example, `TotallyCheatTracks`, does not explain how to design a data product, but it shows how to shove a well designed one into LArSoft
    -   *no*: you may stick with `RemoveIsolatedSpacePoints` or `TBD5`
-   **associations**: do I need to create associations between input and output objects, or between output objects?
    -   *yes*: check the `TBD7` example; if some of the produced objects are from a new data product type, also check `TotallyCheatTracks`.
    -   *no*: if you are writing a producer, think it well: associations of output with input often end up being useful.

* * * * *

*For questions or request of new examples, please contact [Gianluca Petrillo](mailto:petrillo@fnal.gov) or any person in the LArSoft project team.*
