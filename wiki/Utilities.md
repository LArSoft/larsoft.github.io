-   **Table of contents**
-   [Utilities](#Utilities)
    -   [FHICFiles](#FHICFiles)
        -   [messageservice.fcl](#messageservicefcl)
        -   [services.fcl](#servicesfcl)
        -   [standard_reco.fcl](#standard_recofcl)
        -   [eventdump.fcl](#eventdumpfcl)
    -   [Services](#Services)
        -   [LArFFT](#LArFFT)
        -   [LArProperties](#LArProperties)
        -   [DatabaseUtil](#DatabaseUtil)
        -   [DetectorProperties](#DetectorProperties)
        -   [SignalShapingService](#SignalShapingService)
    -   [Developer tools](#Developer-tools)
        -   [AssociationUtils](#AssociationUtils)
        -   [VectorMap](#VectorMap)
        -   [SumSecondFunction](#SumSecondFunction)
        -   [LArFFT](#LArFFT-2)

[Note: This page appears to refer to a very old version of LArSoft, back from the days when it was
all in one repository called larsoftsvn. The links on this page to that repo don’t work,
and the universal “services.fcl” file doesn’t seem to exist in any directory in the current software.
The classes referred to below have been moved into separate repositories. E.g., LArFFT is now in
[lardata/Utilities](https://cdcvs.fnal.gov/redmine/projects/lardata/repository/revisions/develop/show/lardata/Utilities) – some of the other files and classes listed below can be found there too, but not all.]

Utilities
========================

There is currently no package maintainer for this package.

The Utilities package contains programs that are useful for understanding the LArSoft code and analysis chain, but have no function in reconstruction. It also contains several predefined fcl files for general purpose uses, like definitions of message facility configurations.

FHICFiles
------------------------

The following files are general use files that contain parameter set definitions for general purpose use.

### [messageservice.fcl](https://cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/Utilities/messageservice.fcl)

This file contains definitions of various message service configurations, with each configuration representing a different level of verbosity.

### [services.fcl](https://cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/Utilities/services.fcl)

This file contains definitions of parameter sets to configure LArSoft services for the different experiments.

### [standard_reco.fcl](https://cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/Utilities/standard_reco.fcl)

This file is an example of a standard reconstruction job. It should not be considered as the only possible reconstruction job, just an example.

### [eventdump.fcl](https://cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/Utilities/eventdump.fcl)

This fcl file defines a job that will open a ROOT file containing data objects produced through the ART framework and output the type and number of each product in the file for each event.

Services
----------------------

There are several services located in this package.

### [LArFFT](https://cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/Utilities/LArFFT.h)

This service implements a real to real fast Fourier transform as well as a FFT deconvolution scheme in order to simplify implementation and clean up the code a bit. The Fourier transform of a real function has imaginary components for which the negative frequencies are the Hermitian Conjugate of the positive frequencies. Because of this the “forward” transform, real to complex, only computes, for transform size n, n/2+1 complex values. The transforms are computed using ROOT’s TFFTRealComplex and TFFTComplexReal implementation which uses the basic interface of the very high performance FFTW3 package.

In order to perform a FFT of size n using this package you must do the following: create a LArFFT object, have data to be transformed in an array of float and create an array of TComplex of size n/2+1, run the transform. Note that the LArFFT constructor takes an optional char\* parameter. This parameter can have the values “ES”, “P”, “M”, or “EX”. This determines the amount of time FFTW uses to compute the optimal configuration for the transform. From testing the different parameters “ES” is the fastest option for a single transform, but if running over many events, “M” makes the first event about 3 times slower but all subsequent events about 3% faster so is probably the more efficient option for large jobs. The default is “ES”.

       unsigned int n = 1024;
    std::vector<double> data(n);

    //fill data with signal to be transformed

    std::vector<TComplex> frequencyData(n/2+1);

    utils::LArFFT FFT = new utils::LArFFT(n);

    FFT->DoFFT(data,frequencyData);

The complex frequency space data is now in frequencyData. Now to bring this back to time-space you simply perform

       FFT->DoInvFFT(frequencyData,data);

This puts the time-domain data into data. There is also an FFT deconvolution scheme in this package in order to simplify code using this technique. A code example for this is given below.

       unsigned int n = 1024;
    std::vector<double> data(n);

    //fill data with signal to be transformed

    std::vector<double> responseFunction(n);

    //fill response function

    utils::LArFFT FFT = new LArFFT(n);

    //Set the parameters of the frequency space filter.

    FFT->SetFilter("Gauss",2.56, 100.0, 200.0);

    //Deconvolute

    FFT->Deconvolute(data,responseFunction,filter)

The deconvoluted signal is now placed in data.

### [LArProperties](https://cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/Utilities/LArProperties.h)

A service to return known information about liquid argon, such as drift velocities for given temperatures and electric field strength, Birk’s law corrections, and density. It should read the values of temperature, electron lifetime and Electric field from a dedicated Database - if this fails it falls back to the values found in larproperties.fcl

### [DatabaseUtil](https://cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/Utilities/DatabaseUtil.h)

A service that contacts the PostGreSQL database with needed run parameters. The idea is that this service should rarely be called by the user instead providing the needed parameters to other services at their startup. It does however provide the user with the option to execute nonstandard queries to the DB if needed. The database connection parameters are found in the databaseutil.fcl file. Some more details on the Database setup can be found [here](DatabaseUtil?parent=Utilities)

### [DetectorProperties](https://cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/Utilities/DetectorProperties.h)

A service designed to return information about the detector in question such as the sampling rate, conversion from charge to ADC, etc.

### [SignalShapingService](https://cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/Utilities/SignalShapingServiceMicroBooNE.h)

A service designed to provide electronics signal shaping information to the user from a single location. It makes use of the [source:trunk/Utilities/SignalShaping.h](/redmine/projects/larsoft/repository/entry/trunk/Utilities/SignalShaping.h) object.

Developer tools
------------------------------------

The following utility classes and routines may be of interest to LArSoft developers. (If you don’t know what [STL](http://www.sgi.com/tech/stl/) stands for, then you can skip the first two sections.)

### [AssociationUtils](https://cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/Utilities/AssociationUtil.h)

A set of in-line functions designed to handle the creation of [ART associations](Use_Associations) and returning the information from created associations.

### [VectorMap](https://cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/Utilities/VectorMap.h)

STL maps are useful containers for items that you want to keep in sorted order. However, maps have two problems: they take up more memory than vectors, and any iterator operations (e.g., looping over the entries in a map) take longer than those with vector iterators.

VectorMap is an implementation of a container class with the same interface as an std::map, but with the underlying implementation of an std::vector\>. This takes care of the issues mentioned in the previous paragraph, but at a cost: insertions and deletions in a VectorMap are much slower than in the corresponding std::map.

For more information, see the comments in [source:packages/Utilities/VectorMap.h](/redmine/projects/larsoft/repository/entry/packages/Utilities/VectorMap.h).

### [SumSecondFunction](https://cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/Utilities/SumSecondFunction.h)

I find that if I have a container of std::pair, frequently I have to sum all the second elements in the pair. One could write out the loop explicitly:

       std::map<Key,Value> list = // ...
    Value sum();
    for ( std::map<Key,Value>::const_iterator i = list.begin(), end = list.end(); i != end; ++i )
    sum += (*i).second;

However, a principle of generic programming is that you want to use the STL algorithms if you can, especially if there’s any chance that the designer of the container class may do a better job of optimizing the code than the above loop. What one wants is to write is something like:

       std::map<Key,Value> list = // ...
    Value sum = std::accumulate( list.begin(), list.end(), Value(), ??? );

The ??? is the tricky part, since list is a container of std::pair (otherwise you can probably make do with std::plus\<Value\> and/or write your own operator+\<Value\>()).

Some solutions are:

-   Create a fairly unreadable (although computationally efficient) mess using &mem_fun, bind, composeXXX, and so on. \* Use [BOOST](http://www.boost.org). Unfortunately, we’re not supposed to use BOOST in LArSoft. \* Write a custom function to sum the second item in a pair.

SumSecondFunction implements the last choice using a template. If you put `#include "Utilities/SumSecondFunction.h"` in your code, then you can supply a simple substitute for ??? above:

    std::map<Key,Value> list = // ...
    Value sum = std::accumulate( list.begin(), list.end(), Value(), util::SumSecondFunction<Key,Value>() );

SumSecondFunction inherits from std::binary_function, so you can use the various STL binding tricks to create interesting algorithms. See [source:packages/Utilities/SumSecondFunction.h](/redmine/projects/larsoft/repository/entry/packages/Utilities/SumSecondFunction.h) for the complete function template.

### LArFFT
