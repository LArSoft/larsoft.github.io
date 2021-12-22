The central repositories for core LArSoft
========================================================================================

Central repositories contain the reference copy of the software. A release is made by extracting tagged code from the central repositories and creating a set of relocatable ups products. There is a one-to-one mapping of product to repository. Each repository and the associated product contain LArSoft software components that are within the same layer of functionality. All LArSoft repositories are found in the [LArSoft github organization](https://github.com/LArSoft)

**Product / \
repository name**

**Reference repository url**

Framework independent repositories

larcoreobj

[https://github.com/LArSoft/larcoreobj](https://github.com/LArSoft/larcoreobj)

larcorealg

[https://github.com/LArSoft/larcorealg](https://github.com/LArSoft/larcorealg)

lardataobj

[https://github.com/LArSoft/lardataobj](https://github.com/LArSoft/lardataobj)

lardataalg

[https://github.com/LArSoft/lardataalg](https://github.com/LArSoft/lardataalg)

larsoftobj

[https://github.com/LArSoft/larsoftobj](https://github.com/LArSoft/larsoftobj) \
 (A product used to set up larcoreobj, larcorealg, lardataobj, and lardataalg with a single command.)

Framework dependent repositories

larcore

[https://github.com/LArSoft/larcore](https://github.com/LArSoft/larcore)

lardata

[https://github.com/LArSoft/lardata](https://github.com/LArSoft/lardata)

larevt

[https://github.com/LArSoft/larevt](https://github.com/LArSoft/larevt)

larsim

[https://github.com/LArSoft/larsim](https://github.com/LArSoft/larsim)

larreco

[https://github.com/LArSoft/larreco](https://github.com/LArSoft/larreco)

larana

[https://github.com/LArSoft/larana](https://github.com/LArSoft/larana)

lareventdisplay

[https://github.com/LArSoft/lareventdisplay](https://github.com/LArSoft/lareventdisplay)

larexamples

[https://github.com/LArSoft/larexamples](https://github.com/LArSoft/larexamples)

larpandora

[https://github.com/LArSoft/larpandora](https://github.com/LArSoft/larpandora)

larsoft

[https://github.com/LArSoft/larsoft](https://github.com/LArSoft/larsoft) \
 (A product used to set up the others with a single command.)

Although you can use git clone to download a copy of each repository to your local area, additional steps are needed to use, build or develop the software. Go back to [Step 1 under Using LArSoft](https://cdcvs.fnal.govUsing_LArSoft) for more information.

In addition to the above repositories, there is an external product `larsoft_data` that contains certain data files that were previously stored in `svn` in locations that were included in `FW_SEARCH_PATH`. Setting up the `larsoft` product will set up `larsoft_data` and make the appropriate additions to `FW_SEARCH_PATH`.

The [nutools suite](https://github.com/NuSoftHEP) contains code that is used by LArSoft, NOvA, and some other neutrino experiments. More information about the nutools suite can be found here: [https://cdcvs.fnal.gov/redmine/projects/nusoftart/wiki](https://cdcvs.fnal.gov/redmine/projects/nusoftart/wiki).
