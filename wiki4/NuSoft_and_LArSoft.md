-   **Table of contents**
-   [nutools and LArSoft](#nutools-and-LArSoft)
    -   [Use of nutools and Related Environmental Variables](#Use-of-nutools-and-Related-Environmental-Variables)
    -   [Compiling LArSoft Code against nutools](#Compiling-LArSoft-Code-against-nutools)

nutools and LArSoft[¶](#nutools-and-LArSoft)
============================================


Use of nutools and Related Environmental Variables[¶](#Use-of-nutools-and-Related-Environmental-Variables)
----------------------------------------------------------------------------------------------------------

LArSoft makes use of the [NuSoft](https://cdcvs.fnal.gov/redmine/projects/nusoftart/wiki) packages that provide a common interface to event generators, Geant4 and event display libraries developed for use by all neutrino experiments. The packages used fall under the nutools subgroup of NuSoft and are

-   EventDisplayBase
-   EventGeneratorBase
-   G4Base
-   MagneticField
-   NuReweight
-   SimulationBase

The LArSoft setup script sets the nutools ups product up automatically, including the following environmental variables

    printenv | grep NUTOOLS
    NUTOOLS_DIR=/nusoft/app/externals/nutools/v1_00_00
    SETUP_NUTOOLS=nutools v1_00_00 -f Linux64bit+2.6-2.5 -z /nusoft/app/externals -q debug:e2
    NUTOOLS_VERSION=v1_00_00
    NUTOOLS_FQ=slf5.x86_64.e2.debug
    NUTOOLS_FQ_DIR=/nusoft/app/externals/nutools/v1_00_00/slf5.x86_64.e2.debug
    NUTOOLS_INC=/nusoft/app/externals/nutools/v1_00_00/include
    NUTOOLS_LIB=/nusoft/app/externals/nutools/v1_00_00/slf5.x86_64.e2.debug/lib
    NUTOOLS_CXXFLAGS=-g -O0 -std=c++0x
    NUTOOLS_CFLAGS=-g -O0


Compiling LArSoft Code against nutools[¶](#Compiling-LArSoft-Code-against-nutools)
----------------------------------------------------------------------------------

If you want to include code from any of those packages in your package or link against their libraries, you need to set the LDFLAGS and CPPFLAGS variables to point at the appropriate locations for the packages mentioned above. \
Add the following line to the top level CMakeLists.txt\

    find _ups_product(nutools v1_00_00)

\
and the following line in the CMakeLists.txt file in any directory that includes a file from nutools.\

    include_directories($ENV{NUTOOLS_INC})

\
 If you are having problems, you can check that the environmental variables mentioned above are pointing to the location you expect.
