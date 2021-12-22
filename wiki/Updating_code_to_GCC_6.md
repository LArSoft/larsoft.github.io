Updating code to GCC 6
==================================================

-   **Table of contents**
-   [Updating code to GCC 6](#Updating-code-to-GCC-6)
    -   [Variable length array (vla)](#Variable-length-array-vla)
    -   [Indentations](#Indentations)
    -   [Headers](#Headers)
    -   [Missing parenthesis](#Missing-parenthesis)

Starting with *art* 2.6, GCC 6 is an available option as compiler.\
UPS packages using it are denoted by the `e14` qualifier (as opposed to `e10` for GCC 4.9.3a).

The new compiler:

-   is not binary-compatible with GCC 4: libraries compiled with GCC 4 *might* have issues when loaded by programs compiled with GCC 6, and vice versa. This is called a ABI change
-   has a more complete support for newer C++ standards (C++14 and some expected in C++17)
-   it has an improved detection of potential errors in the code

The last feature in particular might cause some warnings and errors^[1](#fn1)^ to appear in code which GCC 4 was happy with.\
This page collects some of the most common issues we encountered.\
LArSoft `develop` branches have been updated, as tracked in issue [\#16096](/redmine/issues/16096 "Support: Fix problems found when attempting to build with gcc 6.3.0 (Closed)"). User branches, instead, haven’t been touched and there is a good chance that if you have an old branch you’ll have to chisel some error out.

^1^ As a reminder, LArSoft settings escalate all warnings to errors, which can’t be ignored.

Variable length array (`vla`)
------------------------------------------------------------

A variable length array is a C array whose size is not known at compile time, usually from a variable. For example:\

    auto const nPlanes = TPC.Nplanes();
    int chargePerPlane[nPlanes];

\
In this snippet, `chargePerPlane` *is* a variable length array, because its size `nPlanes` is not known at compile time (in fact, its value comes from the geometry description which is loaded from a GDML file at run time). Don’t let yourself mislead by the fact that `nPlanes` is declared `const`: that is just a variable whose value can’t be changed, which is not enough as array size specifiers go.

Variable length arrays were never in C++ standard, although many compilers would allow them as “extensions”; they are instead in C (as opposed to C++) standard, currently as an “optional” feature.\
The common solution is to use a dynamically allocated vector:\

    auto const nPlanes = TPC.Nplanes();
    std::vector<int> chargePerPlane(nPlanes, 0);

\
If this has too big an impact to the performance of your code (which might well be), please discuss \
the issue with [LArSoft](mailto:larsoft@fnal.gov). There are alternative solutions which may be better, or worse.

Indentations
------------------------------

The compiler checks the code for misleading indentations. This can happen when curly braces are not used after an `if` statement. In at least one case, this check turned up an actual bug where two lines were meant to be within the if block.\
The following examples of bad indentation come from LArSoft and experiment code:\

    if (btrack.NumberFitMomentum() > 0)
      //mom = btrack.VertexMomentum();
    // fill bezier track reco branches
    TrackID = iTrk;  //bezier has some screwed up track IDs

(likely, the line with assignment to `mom` was commented out later, resulting in a bug).\
The following is a “false positive”: GCC will suspect that we might have meant to have the second if nested into the first one:\

    if(eff[plane] == 0) eff[plane] = 0.001; if(pur[plane] == 0) pur[plane] = 0.001;

\
In the following, the align suggests that the last `return` be under the `if` statement (another false positive):\

    else if (a.fSeedPoint[1] != b.fSeedPoint[1])
      return a.fSeedPoint[1] < b.fSeedPoint[1];

      return a.fSeedPoint[0] < b.fSeedPoint[0];

\
The following has a spurious semicolon immediately after the `if` clause.\

    if (plane >= planehits.size());
      throw cet::exception("TrackKalmanCheater") << "plane " << plane << "...\n";

\
It was likely in some unused code, or it would throw an exception every single time…\
Note that here “false positive” means that the dreadfully aligned code, interpreted according to the C++ rules, yielded the intended behaviour. But it *still* is dreadfully indented.

[(see some solutions to the above…)](#)[(see some solutions to the above…)](#)

Solutions are to use proper indentations and/or define the proper blocks within braces:\

    if (btrack.NumberFitMomentum() > 0) {
      //mom = btrack.VertexMomentum();
    }
    // fill bezier track reco branches
    TrackID = iTrk;  //bezier has some screwed up track IDs

\
(in this case, it’s better to comment everything out, or even better, just remove it, since commented out code is usually useless, except the cases where it is dangerous).\

    if(eff[plane] == 0) eff[plane] = 0.001;
    if(pur[plane] == 0) pur[plane] = 0.001;

\

    else if (a.fSeedPoint[1] != b.fSeedPoint[1])
      return a.fSeedPoint[1] < b.fSeedPoint[1];

    return a.fSeedPoint[0] < b.fSeedPoint[0];

\

    if (plane >= planehits.size())
      throw cet::exception("TrackKalmanCheater") << "plane " << plane << "...\n";

Headers
--------------------

Sometimes code works because a required system header has been included upstream. When the compiler changes, the set of upstream headers might also change. Whenever code is using a variable directly, the appropriate header should be explicitly included.

Here is a simple example of a missing header. This particular problem can be resolved by adding \#include \<numeric\> to OpFlashAlg.cxx.\

    [ 92%] Building CXX object larana/larana/OpticalDetector/CMakeFiles/larana_OpticalDetector.dir/OpFlashAlg.cxx.o
    /home/garren/scratch/larsoft/dev/srcs/larana/larana/OpticalDetector/OpFlashAlg.cxx: In function ‘std::vector<int> opdet::sort_permutation(const std::vector<T>&, int, Compare)’:
    /home/garren/scratch/larsoft/dev/srcs/larana/larana/OpticalDetector/OpFlashAlg.cxx:738:5: error: ‘iota’ is not a member of ‘std’
         std::iota(p.begin(), p.end(), 0);
         ^~~

\
Missing headers are not always this easy to spot. See [\#16112](/redmine/issues/16112 "Support: larcore/CoreUtils/RealComparisons.h fails to compile with gcc 6.3.0 (Closed)") for another example.\
This site can be very helpful in identifying the correct C++ header: [http://en.cppreference.com/w/cpp/algorithm](http://en.cppreference.com/w/cpp/algorithm)

Missing parenthesis
--------------------------------------------

This test can be misinterpreted by a compiler:\

    if(evdlayoutopt->fMakeClusters == 1 && !evdlayoutopt->fMakeSeeds == 1){ ...

\
The error:\

    [ 98%] Building CXX object lareventdisplay/lareventdisplay/EventDisplay/CMakeFiles/lareventdisplay_EventDisplay.dir/TWQProjectionView.cxx.o
    /home/garren/scratch/larsoft/dev/srcs/lareventdisplay/lareventdisplay/EventDisplay/TWQProjectionView.cxx: In static member function ‘static void evd::TWQProjectionView::MouseDispatch(int, void*)’:
    /home/garren/scratch/larsoft/dev/srcs/lareventdisplay/lareventdisplay/EventDisplay/TWQProjectionView.cxx:527:72: error: logical not is only applied to the left hand side of comparison [-Werror=logical-not-parentheses]
           if(evdlayoutopt->fMakeClusters == 1 && !evdlayoutopt->fMakeSeeds == 1){ wqpp->SetClusters(plane);}
                                                                            ^~

\
The solution is to use parenthesis to make sure the code is interpreted as intended:\

    if((evdlayoutopt->fMakeClusters == 1) && !(evdlayoutopt->fMakeSeeds == 1)){ ...
