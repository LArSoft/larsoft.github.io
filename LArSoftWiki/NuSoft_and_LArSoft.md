

# nutools and LArSoft

## Use of nutools and Related Environmental Variables

LArSoft makes use of the [NuSoft](https://cdcvs.fnal.gov/redmine/projects/nutools/wiki/) packages that provide a common interface to event generators, Geant4 and event display libraries developed for use by all neutrino experiments. The packages used fall under the nutools subgroup of NuSoft and are

-   EventDisplayBase
-   EventGeneratorBase
-   G4Base
-   G4NuPhysicsLists
-   MagneticField
-   NuBeamWeights
-   NuReweight
-   SimulationBase

The LArSoft setup script sets the nutools ups product up automatically, including a number of environmental variables that can be found via:

    printenv | grep NUTOOLS
    
## Compiling LArSoft Code against nutools

If you want to include code from any of those packages in your package or link against their libraries, you need to set the LDFLAGS and CPPFLAGS variables to point at the appropriate locations for the packages mentioned above.  
Add the following line to the top level CMakeLists.txt

    find_ups_product(nutools)

If you are having problems, you can check that the environmental variables are pointing to the location you expect.
