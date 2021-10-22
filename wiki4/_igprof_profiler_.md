igprof profiler[¶](#igprof-profiler)
====================================

Both ‘e9’ and ‘e10’ qualified versions of igprof are available. Users install the one that matches the build of their experiment’s software. The instructions below are for e9; if using an e10 build, just replace e9 by e10 throughout.

​1. Installation into your home directory. We first install UPS, to make a UPS database of your own; then we install igprof

    $> cd $HOME
    $> mkdir products
    $> wget http://scisoft.fnal.gov/scisoft/packages/ups/v5_2_0/ups-5.2.0-Linux64bit%2B2.6-2.12.tar.bz2
    $> tar xf ups-5.2.0-Linux64bit+2.6-2.12.tar.bz2
    $> rm ups-5.2.0-Linux64bit+2.6-2.12.tar.bz2
    $> wget http://scisoft.fnal.gov/scisoft/packages/igprof/v5_9_16/igprof-5.9.16-slf6-x86_64-e9.tar.bz2
    $> tar xf igprof-5.9.16-slf6-x86_64-e9.tar.bz2
    $> rm igprof-5.9.16-slf6-x86_64-e9.tar.bz2

​2. After you’ve set up your experiment software, then\

    $> export PRODUCTS:$HOME/products:$PRODUCTS
    $> setup igprof v5_9_16 -q e9

​3. To run igprof on your FHiCL file do\

    igprof -t lar -o igprof_lar.gz lar -c <your file>.fcl
