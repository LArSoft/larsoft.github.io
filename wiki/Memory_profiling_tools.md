Memory profiling tools(#Memory-profiling-tools)
==================================================

-   **Table of contents**
-   [Memory profiling tools](#Memory-profiling-tools)
    -   [valgrind](#valgrind)
    -   [Memory leaks](#Memory-leaks)
    -   [Memory use](#Memory-use)
    -   [Execution speed](#Execution-speed)
        -   [dhap tool](#dhap-tool)
    -   [Ignominous Profiler (igprof)](#Ignominous-Profiler-igprof)
    -   [MemoryTracker - art module](#MemoryTracker-art-module)

valgrind(#valgrind)
----------------------

-   open source
-   mature
-   does not require recompilation (debugging symbols are used if present)
-   user guide: [http://valgrind.org/docs/manual/manual.html](http://valgrind.org/docs/manual/manual.html)

is a way to determine which method is using the most resources in a job.\
A `valgrind` binary is now distributed with [LArSoft bundle](http://scisoft.fnal.gov/scisoft/bundles/larsoft): you can set it up with `setup valgrind v3_13_0` (or the right version: ask `ups list -aK+ valgrind`). Check out [instructions](/redmine/projects/art/wiki/Getting_started_with_valgrind) at [art](/redmine/projects/art) wiki as well.

To get the latest version of valgrind (which at the time of writing, 20170808, is 3.13.0), instead, [download](http://valgrind.org/downloads/current.html) and install valgrind in your home directory:\

    # Download valgrind
    tar xjvf valgrind-<version>.tar.bz2
    cd valgrind-<version>
    ./configure --prefix=$HOME
    make install

This will install valgrind in `~/bin` and `~/lib` of your account.

Memory leaks(#Memory-leaks)
------------------------------

[Valgrind](http://valgrind.org/docs/manual/manual.html) is actually a suite of tools. The default tool is [memcheck](http://valgrind.org/docs/manual/mc-manual.html), which hunts for memory leaks:\

    valgrind `which lar` -c prodgenie.fcl | tee memcheck.txt

\
Breaking down the above line:

  -------------------- ----------------------------------------------------------------------------------------------
  `valgrind`           running valgrind from the current directory (you may need the full valgrind executable path)
  `` `which lar` ``    returns the location of the `lar` executable as an argument to valgrind
  `-c prodgenie.fcl`   typical `lar` arguments; can be whatever you want
  `tee memcheck.txt`   display the output on the screen *and* write it to file `memcheck.txt`
  -------------------- ----------------------------------------------------------------------------------------------

> **Warning:** The above command will take many hours or days to execute; *valgrind* is ***slow***. A better strategy is edit your FHiCL job configuration so you’re only executing the particular module in question (e.g. `largeant` or `simwire`).

The *memcheck* tool should also be supported by `larrun.sh` as `larrun.sh --memcheck`.

Memory use(#Memory-use)
--------------------------

If you’re looking for which part of your program is using large chunks of memory, the appropriate tool is [massif](http://valgrind.org/docs/manual/ms-manual.html). \

    valgrind --tool=massif --time-unit=B `which lar` -c prodgenie.fcl | tee massif.txt

\
This (*very slow*) process will produce an additional file in the directory from which the command was executed: `massif.out.<pid>`, where `<pid>` is the process id of that run of `lar`. To interpret the contents of this file, use *valgrind* `ms_print` utility:\

    ms_print massif.out.<pid> | less

\
There is also a handy visualization tool in KDE4 called `massif-visualizer` (by now, you will have to use some virtual machine to get it; needless to say, the latest SLF7 is old enough for this).

> In comparison with *massif*, *memcheck* feels fast.

The script `larrun.sh` supports *massif* via `--massif` option.

As always, one has to understand the precise way the tool works, or be surprised. `massif` tracks the dynamic (heap) memory allocation performed by `new`, `malloc` and friends. They handle the heap as they like, which is usually to book some large chunk of memory (in POSIX and BSD, by `mmap`) and then they slice it as needed. Even more interesting, the memory `free`’d or `delete`’d is not necessarily immediately returned to the operating system. Programs like `top` and the generic information in the `proc` filesystem do not descend into this slicing mechanism, and show an amount of memory sensibly larger than the actual requested heap size.

The largest figure in `/proc/PID/status` (“VmSize”) includes shared libraries, heap, stack and the unused allocated memory all together. *massif* only talks used heap (and, optionally, stacks).

Execution speed(#Execution-speed)
------------------------------------

If one is looking for which portions of the program are being called most often, the appropriate tool is [callgrind](http://valgrind.org/docs/manual/cl-manual.html).\

    valgrind --tool=callgrind  `which lar` -c prodgenie.fcl | tee callgrind.txt

\
As with *massif*, the file `callgrind.out.<pid>` will be produced. Use `callgrind_annotate` to interpret this file:\

    callgrind_annotate callgrind.out.<pid> | less

However, *callgrind* is the slowest of these tools; for example, if it is run it on a “vanilla” `prodgenie.fcl` script (which processes 10 events), it will probably take a week to execute. Fortunately, one can obtain a snapshot of the information accumulated by a running instance of *callgrind*. First, find the process id (pid):\

    ps -u $USER | grep callgrind

\
The first number is the pid. Then use `callgrind_control` to get a snapshot:\

    callgrind_control <pid> --dump
    ls -blarth callgrind.*

\
One will see a `callgrind.out.<pid>.N` file on which one can run `callgrind_annotate`.\
For KDE, a `kcachegrind` is available which has some pitfalls but is still invaluable in navigating the plenty of information from *callgrind* (and, you may guess, *cachegrind*).

> Do not take *callgrind* at face value: *valgrind* is a CPU emulator, and it may grossly overestimate parts of the execution time by ignoring optimisations and tricks your particular CPU may be using. The best way to identify the slowest part of a job is via a sample profiler. *callgrind* may be useful to explore the flow of the execution though, and sometimes it can point to a code line inside a function which takes lot of time to execute (but again, it may very well be wrong).

### `dhap` tool(#dhap-tool)

Another heap analyser. Not tested yet.\
It should be supported as `larrun.sh --dhap`.

Ignominous Profiler (`igprof`)(#Ignominous-Profiler-igprof)
--------------------------------------------------------------

-   open source
-   mature
-   does not require recompilation for simple memory usage monitoring
-   requires injection of markers in the code to trigger detailed memory mapping
-   can profile CPU time instead of memory

[Instructions to obtain it](_igprof_profiler) are available (so far, for Linux only).\
The detailed memory mapping must be triggered. This makes the tool complementary to, for example, [valgrind](_Profiling_LArSoft_#valgrind-massif-tool).\
We can get a snapshot at precisely the point we want, but we can’t find out where precisely we want it.

[MemoryTracker - art module](https://cdcvs.fnal.gov/redmine/projects/art/wiki/MemoryTracker)(#MemoryTracker-art-module)
--------------------------------------------------------------------------------------------------------------------------

Memory tracker is a *art* service provided with the *art* distribution. It writes its detailed information into a SQL database, that can be later unrolled and analysed.\
It is [documented in *art* wiki](/redmine/projects/art/wiki/MemoryTracker).

* * * * *

For questions, contact [Gianluca Petrillo](mailto:petrillo@fnal.gov "petrillo@fnal.gov").
