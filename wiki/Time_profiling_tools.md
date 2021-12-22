Time profiling tools(#Time-profiling-tools)
==============================================

-   **Table of contents**
-   [Time profiling tools](#Time-profiling-tools)
    -   [valgrind (callgrind tool)](#valgrind-callgrind-tool)
    -   [Ignominous Profiler (igprof)](#Ignominous-Profiler-igprof)
        -   [Quick start](#Quick-start)
    -   [fast](#fast)
    -   [gperftools](#gperftools)

valgrind (`callgrind` tool)(#valgrind-callgrind-tool)
--------------------------------------------------------

`valgrind` comes with a set of amazing tools. At time of writing, it’s at version 3.9.\
While the provided tools are extremely powerful, `valgrind` sets a new reference for slowness.

The `callgrind` tool provides an estimation of the cycles spent by each function and also some insight inside the functions.\
This systematic approach is different from the statistical one that tools like `fast` and `gperftools` provide.\
But, it’s *valgrind-slow*: `valgrind` is sort of a processor emulator, which interprets each machine instruction of the original program.\
`callgrind` provides a full call graph of the program: for each function, how many times it calls each other (and how long it spends there) is recorded. Yet, **the call graph can’t be used to infer about call paths**.

I run it in the usual way by `larrun.sh` script, using `--callgrind` option.\
The output (`callgrind.PID`) can be read by visualizers like `kcachegrind` (which I found to crash when exploring the callee list of blocks called `<cycle ##>`).

The inflating factor I found in one test is `x35` /respect to `gperftools`/ (which has little overhead).\
Connected with that, it’s easy to misjudge the runtime or to get impatient. A partial output can be generated at any time, by:\

    callgrind_control --dump="After 7 events" 

\
where the text in the argument is just a convenience argument.\
If there are more than one sessions of `valgrind` running, it will be necessary to specify which one to dump, too.\
Note that after each dump, the counters are reset: to have the total usage, files need to be merged (just `cat` kind-of-does).\
When using `kcachegrind`, I have found that the concatenated files report twice the calls. A panel allows to select which part to include, and in fact each part is showing twice. Just selecting one of each seems to do the trick.

Ignominous Profiler (igprof)(#Ignominous-Profiler-igprof)
------------------------------------------------------------

-   open source
-   mature
-   can profile either CPU time or memory (or energy consumption?!)
-   does not require recompilation for simple memory usage monitoring
-   requires injection of markers in the code to trigger detailed memory mapping

This is a sampling profiler. Results are produced with running the profiled program, and saved in a human-unreadable format.\
Additional tools, also provided by `igprof`, will allow queries and human-readable reports.\
[Instructions to obtain it](_igprof_profiler) are available (so far, for Linux only).\
The `igprof` profiler also allows memory profiling.\
Public documentation is available at [http://igprof.org/](http://igprof.org/).

### Quick start(#Quick-start)

`igprof` may be available as UPS product^[1](#fn1)^. ROOT does not play well with profilers relying on `SIGPROF` signal^[2](#fn2)^, therefore special options are required (limiting the profiling to `lar` process seems to be enough.\
Example of performance profiling run:\

    igprof --performance-profiler --target lar --compress --output CONFIG-DATE-performance.gz --debug lar -c CONFIG.fcl -s INPUT.root

\
The run time is comparable to the one without profiling, but afterwards a long time is spent to reorganise the collected information.\
The command creates a file with profiling information (`CONFIG-DATE-performance.gz`). A report can be extracted from it with `igprof-analyze`, e.g.\

    igprof-analyse --demangle --gdb --verbose CONFIG-DATE-performance.gz >& CONFIG-DATE-performance-report.txt

^1^ At the date of writing (November 2, 2017) a version `v5_9_16b` is available for qualifiers `e10`, `e14` and `e15` on selected servers; ask [Lynn Garren](mailto:garren.fnal.gov) for further deployment.

^2^ The default action for a process receiving `SIGPROF` is to terminate. `igprof` uses `SIGPROF` for its sample profiling. ROOT spawns processes like `ls` to determine some library paths, and when a `SIGPROF` is generated (because igprof activated them), `ls` is killed and ROOT (at least until 6.10) interprets it like no library path at all. Therefore it does not find dictionary libraries and it starts trying to compile any source it may find to create class dictionaries on the fly. That compilation normally fails, bringing ROOT to a quit. This also kills programs linking to ROOT libraries, like `art`/`lar`.

* * * * *

The following profilers are not recommended.

[fast](/redmine/projects/fast/wiki)(#fast)
---------------------------------------------

> This profiler is not currently maintained.

-   sampling profiling
-   does not require recompilation
-   very little overhead

The FAST tool, developed at FermiLab, uses sampling for the profiling.\
That means, every now and then it interrupts the profiled program and looks what it’s doing, and records the full stack of calls currently ongoing. To say it more plainly: it **collects independent statistics for each call path**.\
In the end we get a statistical representation of how the program spends its real time.\
The times a function was caught while doing something (that is, it was at the top of the call stack and it was not calling another function) tells how demanding the function is in resources.\
The results are affected by statistic fluctuations and by the load of the machine was undergoing.\
It can’t give an idea of how often a function is called: whether a function is run for 1 ms and 1000 times or it’s called only once for 1s, the result will be the same.

Yet this approach is, in fact… fast.

The program allows for the creation of call graphs in `dot` language.\
The only limit is that it has not been updated in a while, and that could affect the efficiency of the stack unwinding^[1](#fn1)^ on code created with recent compilers.

^1^ Stack unwinding is the discovery of the full chain of calls of the current function.\
It’s a completely non-trivial algorithm; `fast` (among others) relies on `libunwind`, which is distributed with `gcc` and `binutils`.

gperftools(#gperftools)
--------------------------

-   does not require recompilation
-   produce cachegrind output
-   it also has a heap profiler
-   documentation at [http://google-perftools.googlecode.com/svn/trunk/doc/cpuprofile.html](http://google-perftools.googlecode.com/svn/trunk/doc/cpuprofile.html)

The [Google performance tools](http://code.google.com/p/gperftools) are a tool performing similarly to FAST, with the added advantage that they are more or less actively maintained to be up-to-date with the current execution environments.

The profiler **does not force** recompilation, but having debugging information is obviously a plus.\
The easiest way to go with no recompilation is to preload the profiling library. In Linux it works like:\

    env LD_PRELOAD=${GPROF_LIB}/libprofiler.so CPUPROFILE=ProfileOutputFile.prof lar -c ...

\
which creates a `ProfileOutputFile.prof` file with the profiling information.\
My `GPROF_LIB` path is `/afs/fnal.gov/files/home/room1/petrillo/local/lib`.\
The same effect is achieved by calling `larrun.sh --gperftools ...`.

As `fast`, `gperftools` also collects statistics for each call path independently.\
That beans that if there are two sequences of possible calls to get to `c`: `a` -\> `b1` -\> `c` and `a` -\> `b2` -\> `c`, we have two counters which say how often each of them happened (or, how often we interrupted the program while `c` was being executed while called in each of the two ways).

A perl script is provided which converts the output in callgrind format:\

    pprof --callgrind lar ProfileOutputFile.prof > ProfileOutputFile.callgrind

\
(my script `gperf_lar_callgrinder.sh` does this recursively).\
Then one can use a viewer to get a better view or the profiling data (for example, [`kcachegrind`](http://kcachegrind.sourceforge.net)).\
This is very cool, **but it loses the call path information**, since the `callgrind` format does not keep that information.

* * * * *

Created by: [Gianluca Petrillo](mailto:petrillo@fnal.gov "petrillo@fnal.gov")
