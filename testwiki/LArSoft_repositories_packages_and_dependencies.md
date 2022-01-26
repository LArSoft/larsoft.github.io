# LArSoft repositories packages and dependencies

{{toc}}

There are a number of repositories/ups products that are in core LArSoft.

There are three types of core LArSoft repositories:

1.  framework-dependent - depends on *art* and directly and indirectly on other things. These repositories are depicted in the dependency diagram below as the center column of magenta ovals. These repositories also depend on a variety of external products, depicted in the column on the left, and on framework-independent LArSoft repositories (to be discussed next) shown in the column to the right.
2.  framework-independent - sometimes referred to as “shared” repositories (e.g., in the context of LArLite) because they can be shared directly with external frameworks and packages, and LArSoft. They are designed to have minimal dependencies to other products or repositories beyond other “shared” repositories, as shown in the right column of ovals.
3.  product-interface - provides direct access to a particular package (such as Pandora or LArWireCell) without making any other part of LArSoft dependent on that package. The interface products may depend on other core LArSoft repositories, but none of the other core LArSoft repositories may depend on the interface products. Some examples of these repositories are depicted as the green ovals in the dependency diagram below.

Note that arrows in the dependency diagram point to repositories that resolve direct dependencies in the repository at the tail of the arrow.

![](structural.png)

![](dependencies.png)

## larg4

-   interface to Geant4

## larwirecell

-   interface to the Wire Cell Toolkit

## larpandora

-   LArSoft interface to the pandora reconstruction package

## larsoft

-   An umbrella product which is used to setup all the individual larsoft products

## larana

-   Secondary reconstruction/analysis e.g. PID

## larreco

-   Primary reconstruction modules

## larsim

-   Simulation modules

## larevt

-   Low level algorithm and utility code that may be needed at various levels of the simulation and reconstruction, and that use data products. Interface services to conditions databases typically live here.

## lardata

-   Utilities and services that manipulate or provide simplified interfaces to data products.

## larcore

-   Low level utilities, functions and services

The following repositories have no framework dependencies, and can be built and used in alternate frameworks and development environments

## larrecodnn

-   Deep learning algorithms and their dependencies

## larsimdnn

-   Simulations that use deep learning algorithms

## larsimrad

-   Simulations for radiologicals

## larsoftobj

-   umbrella that sets up all the individual lar\*obj and lar\*alg

## lardataalg

-   algorithms shared between larsoft and art-independent frameworks such as gallery, larlite, etc.

## lardataobj

-   common data products for reconstruction, analysis, etc shared between larsoft and art-independent frameworks

## larcorealg

-   core algorithms shared between larsoft and art-independent frameworks such as gallery, larlite, etc.

## larcoreobj

-   data products for geometry and core utilities that are shared between larsoft and art-independent frameworks

## larsoft_data

-   A special UPS package that contains configuration data in large, binary, or other file types that are unsuitable for storage in code repositories. Version control is managed through the UPS system. Because there is no corresponding code repository, this product is *not* included in the `larsoft_suite` repositories, and *is not* part of core LArSoft. Open a LArSoft issue ticket to discuss additions or modifications to the contents of this product.

## Experiment Code

The following diagram shows how experiment code fits into the system.

![](experimentcode.png)
