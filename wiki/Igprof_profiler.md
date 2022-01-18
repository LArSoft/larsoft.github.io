igprof profiler
====================================

e10 and e15 qualified versions of igprof are available.

1. Installation into your home directory. We first install UPS, to make a UPS database of your own; then we install igprof

    $> cd $HOME
    $> mkdir products
    $> wget http://scisoft.fnal.gov/scisoft/packages/ups/v5_2_0/ups-5.2.0-Linux64bit%2B2.6-2.12.tar.bz2
    $> tar xf ups-5.2.0-Linux64bit+2.6-2.12.tar.bz2
    $> rm ups-5.2.0-Linux64bit+2.6-2.12.tar.bz2
    $> wget http://scisoft.fnal.gov/scisoft/packages/igprof/v5_9_16b/igprof-5.9.16b-slf6-x86_64-e15.tar.bz2
    $> tar xf igprof-5.9.16b-slf6-x86_64-e15.tar.bz2
    $> rm igprof-5.9.16b-slf6-x86_64-e15.tar.bz2

2. After you’ve set up your experiment software, then

    $> export PRODUCTS:$HOME/products:$PRODUCTS
    $> setup igprof v5_9_16b -q e15

3. To run igprof on your FHiCL file do

    igprof -t lar -o igprof_lar.gz lar -c <your file>.fcl

    Other useful options:   -mp : enable memory profiling   -pp : enable performance profiling   -d  : add information about the workings of the profiler itself   -z  : compress the profile statistics file using gzip.

4. To run analysis (****igprof-analyse****) with profiled data (igprof_lar.gz)

-   To produce the text file of the report,

        igprof-analyse -d -v -g igprof_lar.gz >& igprof_lar.res

    how to interpret the ascii report, see [http://igprof.org/text-output-format.html](http://igprof.org/text-output-format.html)

-   To produce the sqlite file for the web-navigable version of the report

        igprof-analyse --sqlite -d -v -g -r XMODE igprof_lar.gz | sqlite3 XMODE.sql3 

    -   where XMODE=[MEM_TOTAL|MEM_LIVE|MEM_MAX]
        -   MEM_TOTAL: the total amount of memory allocated by any function - a snapshot of poor memory locality
        -   MEM_LIVE: memory that has not been freed - snapshot of the heap, i.e. a heap profile.
        -   MEM_MAX: the largest single allocation by any function
    -   to navigate profiling reports on web, see instruction at [http://igprof.org/analysis.html](http://igprof.org/analysis.html)
        and an example page at [https://g4cpt.fnal.gov/larsoft/dunetpc_v06_57_00/igprof.html](https://g4cpt.fnal.gov/larsoft/dunetpc_v06_57_00/igprof.html)

5. Related links

-   IgProf home page: [http://igprof.org/](http://igprof.org/)
-   installation: see [http://igprof.org/install.html](http://igprof.org/install.html)

For a more recent example, see [ProtoDUNE_and_DUNE_Far_Detector_simulation_and_reconstruction_workflows_(v06_57_00)\#Profiling-memory-and-CPU-performance](ProtoDUNE_and_DUNE_Far_Detector_simulation_and_reconstruction_workflows_(v06_57_00)#Profiling-memory-and-CPU-performance)
