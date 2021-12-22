LArSoft repositories packages and dependencies(#LArSoft-repositories-packages-and-dependencies)
==================================================================================================

-   **Table of contents**
-   [LArSoft repositories packages and dependencies](#LArSoft-repositories-packages-and-dependencies)
    -   [larg4](#larg4)
    -   [larwirecell](#larwirecell)
    -   [larpandora](#larpandora)
    -   [larsoft](#larsoft)
    -   [larana](#larana)
    -   [larreco](#larreco)
    -   [larsim](#larsim)
    -   [larevt](#larevt)
    -   [lardata](#lardata)
    -   [larcore](#larcore)
    -   [larrecodnn](#larrecodnn)
    -   [larsimdnn](#larsimdnn)
    -   [larsimrad](#larsimrad)
    -   [larsoftobj](#larsoftobj)
    -   [lardataalg](#lardataalg)
    -   [lardataobj](#lardataobj)
    -   [larcorealg](#larcorealg)
    -   [larcoreobj](#larcoreobj)
    -   [larsoft\_data](#larsoft_data)
    -   [Experiment Code](#Experiment-Code)

There are a number of repositories/ups products that are in core LArSoft.

There are three types of core LArSoft repositories:

1.  framework-dependent - depends on *art* and directly and indirectly on other things. These repositories are depicted in the dependency diagram below as the center column of magenta ovals. These repositories also depend on a variety of external products, depicted in the column on the left, and on framework-independent LArSoft repositories (to be discussed next) shown in the column to the right.
2.  framework-independent - sometimes referred to as “shared” repositories (e.g., in the context of LArLite) because they can be shared directly with external frameworks and packages, and LArSoft. They are designed to have minimal dependencies to other products or repositories beyond other “shared” repositories, as shown in the right column of ovals.
3.  product-interface - provides direct access to a particular package (such as Pandora or LArWireCell) without making any other part of LArSoft dependent on that package. The interface products may depend on other core LArSoft repositories, but none of the other core LArSoft repositories may depend on the interface products. Some examples of these repositories are depicted as the green ovals in the dependency diagram below.

Note that arrows in the dependency diagram point to repositories that resolve direct dependencies in the repository at the tail of the arrow.

![structural diagram](/redmine/attachments/download/62528/structural.png "structural diagram")

![Dependencies diagram](/redmine/attachments/download/62527/dependencies.png "Dependencies diagram")

larg4(#larg4) {.wiki-class-count}
----------------

-   interface to Geant4

larwirecell(#larwirecell) {.wiki-class-count}
----------------------------

-   interface to the Wire Cell Toolkit

larpandora(#larpandora) {.wiki-class-count}
--------------------------

-   LArSoft interface to the pandora reconstruction package

larsoft(#larsoft) {.wiki-class-count}
--------------------

-   An umbrella product which is used to setup all the individual larsoft products

larana(#larana) {.wiki-class-count}
------------------

-   Secondary reconstruction/analysis e.g. PID

larreco(#larreco) {.wiki-class-count}
--------------------

-   Primary reconstruction modules

larsim(#larsim) {.wiki-class-count}
------------------

-   Simulation modules

larevt(#larevt) {.wiki-class-count}
------------------

-   Low level algorithm and utility code that may be needed at various levels of the simulation and reconstruction, and that use data products. Interface services to conditions databases typically live here.

lardata(#lardata) {.wiki-class-count}
--------------------

-   Utilities and services that manipulate or provide simplified interfaces to data products.

larcore(#larcore) {.wiki-class-count}
--------------------

-   Low level utilities, functions and services

The following repositories have no framework dependencies, and can be built and used in alternate frameworks and development environments

larrecodnn(#larrecodnn) {.wiki-class-count}
--------------------------

-   Deep learning algorithms and their dependencies

larsimdnn(#larsimdnn) {.wiki-class-count}
------------------------

-   Simulations that use deep learning algorithms

larsimrad(#larsimrad) {.wiki-class-count}
------------------------

-   Simulations for radiologicals

larsoftobj(#larsoftobj) {.wiki-class-count}
--------------------------

-   umbrella that sets up all the individual lar\*obj and lar\*alg

lardataalg(#lardataalg) {.wiki-class-count}
--------------------------

-   algorithms shared between larsoft and art-independent frameworks such as gallery, larlite, etc.

lardataobj(#lardataobj) {.wiki-class-count}
--------------------------

-   common data products for reconstruction, analysis, etc shared between larsoft and art-independent frameworks

larcorealg(#larcorealg) {.wiki-class-count}
--------------------------

-   core algorithms shared between larsoft and art-independent frameworks such as gallery, larlite, etc.

larcoreobj(#larcoreobj) {.wiki-class-count}
--------------------------

-   data products for geometry and core utilities that are shared between larsoft and art-independent frameworks

larsoft\_data(#larsoft_data) {.wiki-class-count}
-------------------------------

-   A special UPS package that contains configuration data in large, binary, or other file types that are unsuitable for storage in code repositories. Version control is managed through the UPS system. Because there is no corresponding code repository, this product is *not* included in the `larsoft_suite` repositories, and *is not* part of core LArSoft. Open a LArSoft issue ticket to discuss additions or modifications to the contents of this product.

Experiment Code(#Experiment-Code) {.wiki-class-count}
------------------------------------

The following diagram shows how experiment code fits into the system.

![](/redmine/attachments/download/62924/experimentcode.png)
