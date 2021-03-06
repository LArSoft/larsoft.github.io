# Debugging with gdb



## Set up of `gdb` in a LArSoft environment

The GNU debugger (`gdb`) is distributed with UPS for Linux machines. The usual UPS magic:

    ups list -aK+ gdb

  
will show all the available versions, and you should always set up the newest one.

> Do **not** use the version of the debugger installed in the system unless it's newer than all the ones UPS provides!

Today, `/grid/fermiapp/products/larsoft` offers: `setup gdb v7_10_1`.

If you are on OSX, you haven't a `gdb` distributed by LArSoft. You can use system `lldb` and cross your fingers…

## Segmentation fault!

Let's say that I want to check where a particle is actually generated when running `prodsingle.fcl`.  
I have created my working area with a bleeding `prof` qualifier because I have no time to waste, checked out `larsim`, and I added the lines:

    auto const&amp; pos = mct.GetParticle(0).Position();
    mf::LogTrace("SingleGen") << "The first particle is at x,y = " << pos.X() << "," << pos.Y();

  
to `SingleGen::Sample()`.  
Then I execute `lar -c prodsingle.fcl -n 10` and I get:

    Begin processing the 1st record. run: 1 subRun: 0 event: 1 at 06-Jul-2016 18:45:35 CDT
    %MSG-w BackTracker:  PostSource 06-Jul-2016 18:45:35 CDT  run: 1 subRun: 0 event: 1
    failed to get handle to simb::MCParticle from largeant, return
    %MSG
    Segmentation fault: 11

  
Hmm. Something is wrong with the BackTracker! Maybe.

Segmentation faults are among the easiest things to track with `gdb`.  
I just run: `gdb --args lar -c prodsingle.fcl -n 10` and at the prompt, I type

    (gdb) run

  
and wait.

> While writing this, I am on OSX, so I am running `lldb`. The output I show will be from `lldb`, but it's not dissimilar from `gdb`.  
> With `llvm`, the command is `lldb -- lar -c prodsingle.fcl -n 10` and to run the program you use `process launch` (ok, ok: `run` will also work).

The debugger shows all the libraries it loads, and then the normal output starts.  
At the end, we get to the point. In `lldb` it looks like:

    (lldb) process launch
    [...]
    Process 10721 stopped
    * thread #1: tid = 0x1c03c3, 0x00000001064ec1cc libSimulationBase.dylib`simb::MCTrajectory::Position(unsigned long) const + 12, queue = 'com.apple.main-thread', stop reason = EXC_BAD_ACCESS (code=1, address=0x28)
        frame #0: 0x00000001064ec1cc libSimulationBase.dylib`simb::MCTrajectory::Position(unsigned long) const + 12
    libSimulationBase.dylib`simb::MCTrajectory::Position:
    ->  0x1064ec1cc <+12>: addq   (%rdi), %rax
        0x1064ec1cf <+15>: retq

    libSimulationBase.dylib`simb::MCTrajectory::Momentum:
        0x1064ec1d0 <+0>:  shlq   $0x7, %rsi
        0x1064ec1d4 <+4>:  pushq  %rbp

This shows the code where the `EXC_BAD_ACCESS` (that is, try to access invalid memory address, that provokes a segmentation violation) happens.  
It is in `simb::MCTrajectory::Position(unsigned long) const`, and the instruction is… `addq   (%rdi), %rax`. Urgh.  
We see assembly code, probably because we are in the middle of an C source line. Similar view blesses us if the debugger can't find the source code. To fix this, see the following subsection.  
For now we ignore that, because we trust `nutools` (where `simb::MCTrajectory` lives).  
How did we even get there? We want to trace back our path, that we do with

    backtrace 10

  
(to see up to 10 entries in the path that led us here). Short in `gdb`: `bt 10`; in `lldb`, also `thread backtrace --count 10`:

    (lldb) thread backtrace --count 10
    * thread #1: tid = 0x1c03c3, 0x00000001064ec1cc libSimulationBase.dylib`simb::MCTrajectory::Position(unsigned long) const + 12, queue = 'com.apple.main-thread', stop reason = EXC_BAD_ACCESS (code=1, address=0x28)
      * frame #0: 0x00000001064ec1cc libSimulationBase.dylib`simb::MCTrajectory::Position(unsigned long) const + 12
        frame #1: 0x000000010a1c8d98 liblarsim_EventGenerator_SingleGen_module.dylib`evgen::SingleGen::Sample(simb::MCTruth&amp;) [inlined] simb::MCParticle::Position(i=909267456, this=<unavailable>) const + 40 at MCParticle.h:221
        frame #2: 0x000000010a1c8d8a liblarsim_EventGenerator_SingleGen_module.dylib`evgen::SingleGen::Sample(this=0x000000010e9b5820, mct=0x00007fff5fbee4a0) + 26
        frame #3: 0x000000010a1c9867 liblarsim_EventGenerator_SingleGen_module.dylib`evgen::SingleGen::produce(this=0x000000010e9b5820, evt=0x00007fff5fbee720) + 103 at SingleGen_module.cc:262
        frame #4: 0x0000000102e3186f libart_Framework_Core.dylib`art::EDProducer::doEvent(art::EventPrincipal&amp;, art::CurrentProcessingContext const*) + 63
        frame #5: 0x0000000102c884a1 libart_Framework_EventProcessor.dylib`bool art::Worker::doWork<art::OccurrenceTraits<art::EventPrincipal, (art::BranchActionType)0> >(art::OccurrenceTraits<art::EventPrincipal, (art::BranchActionType)0>::MyPrincipal&amp;, art::CurrentProcessingContext const*) + 129
        frame #6: 0x0000000102c894ad libart_Framework_EventProcessor.dylib`void art::Path::processOneOccurrence<art::OccurrenceTraits<art::EventPrincipal, (art::BranchActionType)0> >(art::OccurrenceTraits<art::EventPrincipal, (art::BranchActionType)0>::MyPrincipal&amp;) + 333
        frame #7: 0x0000000102c89e78 libart_Framework_EventProcessor.dylib`void art::Schedule::processOneOccurrence<art::OccurrenceTraits<art::EventPrincipal, (art::BranchActionType)0> >(art::OccurrenceTraits<art::EventPrincipal, (art::BranchActionType)0>::MyPrincipal&amp;) + 392
        frame #8: 0x0000000102c8a348 libart_Framework_EventProcessor.dylib`void art::EventProcessor::processOneOccurrence_<art::OccurrenceTraits<art::EventPrincipal, (art::BranchActionType)0> >(art::OccurrenceTraits<art::EventPrincipal, (art::BranchActionType)0>::MyPrincipal&amp;) + 264
        frame #9: 0x0000000102c6e299 libart_Framework_EventProcessor.dylib`art::EventProcessor::processEvent() + 25

  
The second “frame” (#1) is in the method we just changed. Let's go with that:

    (gdb) up

  
or:

    (lldb) frame select --relative +1
    frame #1: 0x000000010a1c8d98 liblarsim_EventGenerator_SingleGen_module.dylib`evgen::SingleGen::Sample(simb::MCTruth&amp;) [inlined] simb::MCParticle::Position(i=0, this=<unavailable>) const + 40 at MCParticle.h:221
       218  inline       std::string     simb::MCParticle::EndProcess()             const { return fendprocess;              }
       219  inline       int             simb::MCParticle::NumberDaughters()          const { return fdaughters.size();            }
       220  inline       unsigned int    simb::MCParticle::NumberTrajectoryPoints() const { return ftrajectory.size();         }
    -> 221  inline const TLorentzVector&amp; simb::MCParticle::Position( const int i )  const { return ftrajectory.Position(i);  }
       222  inline const TLorentzVector&amp; simb::MCParticle::Momentum( const int i )  const { return ftrajectory.Momentum(i);  }
       223  inline       double          simb::MCParticle::Vx(const int i)          const { return Position(i).X();            }
       224  inline       double          simb::MCParticle::Vy(const int i)          const { return Position(i).Y();            }

  
… and this one points to the method we are calling, `MCParticle::Position()`. One step up brings us to…

    (lldb) frame select --relative +1
    frame #2: 0x000000010a1c8d8a liblarsim_EventGenerator_SingleGen_module.dylib`evgen::SingleGen::Sample(this=0x000000010e9b5820, mct=0x00007fff5fbee4a0) + 26
       1    ////////////////////////////////////////////////////////////////////////
       2    /// \file  MCParticle.h
       3    /// \brief Particle class
       4    /// \version $Id: MCParticle.h,v 1.16 2012-11-20 17:39:38 brebel Exp $
       5    /// \author  Brian Rebel
       6    ////////////////////////////////////////////////////////////////////////
       7

  
… the void. The failure of the debugger to point us to the actual code is likely due to optimisations by the compiler, which prunes and mixes the code. The effect can be apparently wrong, as in this case, or misleadingly wrong (i.e., pointing to an actual line of code, but not the right one).  
If we had used `debug` qualifiers, we could in fact directly see `this` pointer that the debugger says “<unavailable>”, and it would probably show a value of `0x0`. Now, `this` pointer is the location in memory of the `MCParticle` we are printing the position of, and, sure as SEGV, this must not point to `0x0` (also known as `0`, `NULL` or `nullptr`, and intrinsically evil to use). It would probably also have pointed to the first of the two lines of code we added.  
By using

    print mct.NParticles()

  
we would have found that there are in fact no particles in the `MCTruth` yet, and finally realised that we printed the particles before we create them.  
`lldb` has serious problems with evaluating expressions in my machine:

    (lldb) expression mct.NParticles()
    error: call to a function 'MCTruth::NParticles() const' ('_ZNK7MCTruth10NParticlesEv') that is not present in the target
    error: 0 errors parsing expression
    error: The expression could not be prepared to run in the target

So: before this gets too deep, rebuild with debugging qualifiers (and maybe in a Linux system!).

Oh, and type `quit` to exit the debugger.

## Executing my module step by step

Now we need to look in detail to the flow of a module, and read the position of the generated particles on the fly!  
The lesson we have learned from the previous experience above is: use the `debug` qualifier.  
So we first set up `larsoft` in a Linux machine and set up `gdb` as above. Then, as above, we start the debugger.

    setup gdb v7_10_1
    setup larsoft v05_14_00 -q e9:debug
    gdb --args lar -c prodsingle.fcl

If we want to execute a module line by line, the hard part is to get access to the module itself: before it gets to our code, `art` has a long way to go.  
So we set a breakpoint to the method we are interested in:

    (gdb) break evgen::SingleGen::SampleOne
    Function "evgen::SingleGen::SampleOne" not defined.
    Make breakpoint pending on future shared library load? (y or [n]) y
    Breakpoint 1 (evgen::SingleGen::SampleOne) pending.

  
What's going on? `evgen::SingleGen::SampleOne` is in a library (I guess, `liblarsim_EventGenerator_SingleGen_module.so`) that `art` will load as soon as it knows we need the `SingleGen` module. Until then, `gdb` does not know about the existence of that method, that class nor that library.  
But it kindly asks us if it should try later, when it loads new libraries - we answered `y`.

> On some terminal configurations (probably including `tmux` and `screen`), `gdb` is so confused that it thinks there is nobody behind the keyboard, and therefore will automatically answer that question with `n`. In that (frustrating) case, I use to start the job (`run`) and after I think it has loaded the library I need, hit <Ctrl>+<C>, try to set the breakpoint again, and then `continue` the execution. In the worst case, I let the job run once in full, after which the library stays loaded and then I can st the breakpoint and `run` a second time.

Then, `run`. And wait.

    Breakpoint 1, 0x00007fffdda6a138 in evgen::SingleGen::SampleOne(unsigned int, simb::MCTruth&amp;)@plt ()
       from /grid/fermiapp/products/larsoft/larsim/v05_14_00/slf6.x86_64.e9.debug/lib/liblarsim_EventGenerator_SingleGen_module.so
    (gdb)

  
Where are we?

    (gdb) backtrace 5
    #0  0x00007fffdda6a138 in evgen::SingleGen::SampleOne(unsigned int, simb::MCTruth&amp;)@plt ()
       from /grid/fermiapp/products/larsoft/larsim/v05_14_00/slf6.x86_64.e9.debug/lib/liblarsim_EventGenerator_SingleGen_module.so
    #1  0x00007fffdda7577b in evgen::SingleGen::Sample (this=0x1cb3ea0, mct=...) at /scratch/workspace/larsoft-v05_14_00/SLF6/debug/build/larsim/v05_14_00/src/larsim/EventGenerator/SingleGen_module.cc:383
    #2  0x00007fffdda74586 in evgen::SingleGen::produce (this=0x1cb3ea0, evt=...) at /scratch/workspace/larsoft-v05_14_00/SLF6/debug/build/larsim/v05_14_00/src/larsim/EventGenerator/SingleGen_module.cc:262
    #3  0x00007ffff0b80771 in art::EDProducer::doEvent (this=0x1cb3ea0, ep=..., cpc=0x7ffffffefe90)
        at /scratch/workspace/nu-release-build/v1_22_00/s30-e9/debug/build/art/v1_17_07/src/art/Framework/Core/EDProducer.cc:28
    #4  0x00007ffff0c2748c in art::WorkerT<art::EDProducer>::implDoBegin (this=0x1cb2b60, ep=..., cpc=0x7ffffffefe90)
        at /scratch/workspace/nu-release-build/v1_22_00/s30-e9/debug/build/art/v1_17_07/src/art/Framework/Core/WorkerT.h:94
    #5  0x00007ffff19ef28c in art::Worker::doWork<art::OccurrenceTraits<art::EventPrincipal, (art::BranchActionType)0> > (this=0x1cb2b60, ep=..., cpc=0x7ffffffefe90)
        at /scratch/workspace/nu-release-build/v1_22_00/s30-e9/debug/build/art/v1_17_07/src/art/Framework/Principal/Worker.h:221

  
Not sure what that `plt` is on frame 0, so let's jump one frame up:

    (gdb) up
    #1  0x00007fffdda7577b in evgen::SingleGen::Sample (this=0x1cb3ea0, mct=...) at /scratch/workspace/larsoft-v05_14_00/SLF6/debug/build/larsim/v05_14_00/src/larsim/EventGenerator/SingleGen_module.cc:383
    383 /scratch/workspace/larsoft-v05_14_00/SLF6/debug/build/larsim/v05_14_00/src/larsim/EventGenerator/SingleGen_module.cc: No such file or directory.

  
Ugh. This is in `larsim`, but `gdb` can't find it. We fix it as described below:

    378    in /scratch/workspace/larsoft-v05_14_00/SLF6/debug/build/larsim/v05_14_00/src/larsim/EventGenerator/SingleGen_module.cc
    (gdb) set substitute-path /scratch/workspace/larsoft-v05_14_00/SLF6/debug/build/larsim/v05_14_00/src /grid/fermiapp/products/larsoft/larsim/v05_14_00/source
    (gdb) list
    378
    379     switch (fMode) {
    380     case 0: // List generation mode: every event will have one of each
    381         // particle species in the fPDG array
    382       for (unsigned int i=0; i<fPDG.size(); ++i) {
    383     SampleOne(i,mct);
    384       }//end loop over particles
    385       break;
    386     case 1: // Random selection mode: every event will exactly one particle
    387             // selected randomly from the fPDG array

  
That's better. We are on line 383… close to where we wanted to be, but not quite. So we make a `step` (that means, we execute an instruction, descending into the function we are calling).

    (gdb) step
    Single stepping until exit from function _ZN5evgen9SingleGen9SampleOneEjRN4simb7MCTruthE@plt,
    which has no line number information.
    evgen::SingleGen::SampleOne (this=0x3112e09b45 <do_lookup_x+1861>, i=0, mct=...)
        at /scratch/workspace/larsoft-v05_14_00/SLF6/debug/build/larsim/v05_14_00/src/larsim/EventGenerator/SingleGen_module.cc:276
    276   void SingleGen::SampleOne(unsigned int i, simb::MCTruth &amp;mct){

  
Ok, we are in the function. Actually, we want to see the value of that first particle, don't we? Let's take a look at where we want to go, by printing 100 lines of code after the current one:

    list 276,375
    [...]
    363     std::string primary("primary");
    364
    365     simb::MCParticle part(trackid, fPDG[i], primary);
    366     part.AddTrajectoryPoint(pos, pvec);
    367
    368     //std::cout << "Px: " <<  pvec.Px() << " Py: " << pvec.Py() << " Pz: " << pvec.Pz() << std::endl;
    369     //std::cout << "x: " <<  pos.X() << " y: " << pos.Y() << " z: " << pos.Z() << " time: " << pos.T() << std::endl;
    370     //std::cout << "YZ Angle: " << (thyzrad * (180./M_PI)) << " XZ Angle: " << (thxzrad * (180./M_PI)) << std::endl;
    371
    372     mct.Add(part);
    373   }
    374
    375   //____________________________________________________________________________

  
We see that at line 365 the particle is created, and on the next one its position (the first trajectory point) is added.  
That seems a good target as any. So we set a *temporary* breakpoint to that line, we `continue` until we hit it, and then we explore the data.

    (gdb) tbreak 366
    Temporary breakpoint 2 at 0x7fffdda75599: file /scratch/workspace/larsoft-v05_14_00/SLF6/debug/build/larsim/v05_14_00/src/larsim/EventGenerator/SingleGen_module.cc, line 366.
    (gdb) continue
    Continuing.

    Temporary breakpoint 2, evgen::SingleGen::SampleOne (this=0x1cb3ea0, i=0, mct=...)
        at /scratch/workspace/larsoft-v05_14_00/SLF6/debug/build/larsim/v05_14_00/src/larsim/EventGenerator/SingleGen_module.cc:366
    366     part.AddTrajectoryPoint(pos, pvec);

  
We could set the position and then recover it from the particle, but it's simpler to check that promising `pos` local variable instead:

    (gdb) print pos
    $1 = {<TObject> = {_vptr.TObject = 0x7ffff7959490 <vtable for TLorentzVector+16>, fUniqueID = 0, fBits = 33554432, static fgDtorOnly = 0, static fgObjectStat = false, static fgIsA = {_M_b = {_M_p =
        0x11d8450}}}, fP = {<TObject> = {_vptr.TObject = 0x7ffff795a950 <vtable for TVector3+16>, fUniqueID = 0, fBits = 33554432, static fgDtorOnly = 0, static fgObjectStat = false, static fgIsA = {
            _M_b = {_M_p = 0x11d8450}}}, fX = 25, fY = 0, fZ = 20, static fgIsA = {_M_b = {_M_p = 0x3355a80}}}, fE = 0, static fgIsA = {_M_b = {_M_p = 0x3348570}}}

  
`TLorentzVector` in all its glory.

    (gdb) print pos.X()
    $2 = 25
    (gdb) print pos.Y()
    $3 = 0
    (gdb) print pos.Z()
    $4 = 20

  
Sounds good enough: let's do… like, every time.

    (gdb) break
    Breakpoint 3 at 0x7fffdda75599: file /scratch/workspace/larsoft-v05_14_00/SLF6/debug/build/larsim/v05_14_00/src/larsim/EventGenerator/SingleGen_module.cc, line 366.
    (gdb) display pos.X()
    1: pos.X() = 25
    (gdb) display pos.Y()
    2: pos.Y() = 0

  
The command `break` without line number or function name sets a *permanent* breakpoint on the current line.  
Also we set a permanent display of those two interesting expressions (tonight I am not interested in `Z()`).  
Since the other breakpoint is now obsolete, let's remove it:

    (gdb) info breakpoints
    Num     Type           Disp Enb Address            What
    1       breakpoint     keep y   <MULTIPLE>
        breakpoint already hit 2 times
    1.1                         y     0x00007fffdda6a138 <evgen::SingleGen::SampleOne(unsigned int, simb::MCTruth&amp;)@plt>
    1.2                         y     0x00007fffdda74806 in evgen::SingleGen::SampleOne(unsigned int, simb::MCTruth&amp;)
                                                       at /scratch/workspace/larsoft-v05_14_00/SLF6/debug/build/larsim/v05_14_00/src/larsim/EventGenerator/SingleGen_module.cc:279
    3       breakpoint     keep y   0x00007fffdda75599 in evgen::SingleGen::SampleOne(unsigned int, simb::MCTruth&amp;)
                                                       at /scratch/workspace/larsoft-v05_14_00/SLF6/debug/build/larsim/v05_14_00/src/larsim/EventGenerator/SingleGen_module.cc:366
    (gdb) delete 1
    (gdb) info breakpoints
    Num     Type           Disp Enb Address            What
    3       breakpoint     keep y   0x00007fffdda75599 in evgen::SingleGen::SampleOne(unsigned int, simb::MCTruth&amp;)
                                                       at /scratch/workspace/larsoft-v05_14_00/SLF6/debug/build/larsim/v05_14_00/src/larsim/EventGenerator/SingleGen_module.cc:366

  
The command `info breakpoints` gives their list, and number 1 is the one we want to delete. Cross check: we are left with only the last one (number 3).  
When we hit `continue`, the execution continues through `LArG4`, `SimWire` and finally back to `SingleGen` for the next event. And, lo and behold:

    [...]
    %MSG-w BackTracker:  PostSource 06-Jul-2016 20:25:39 CDT  run: 1 subRun: 0 event: 2
    failed to get handle to simb::MCParticle from largeant, return
    %MSG

    Breakpoint 3, evgen::SingleGen::SampleOne (this=0x1cb3ea0, i=0, mct=...) at /scratch/workspace/larsoft-v05_14_00/SLF6/debug/build/larsim/v05_14_00/src/larsim/EventGenerator/SingleGen_module.cc:366
    366     part.AddTrajectoryPoint(pos, pvec);
    2: pos.Y() = 0
    1: pos.X() = 25

  
So, the position is still the same.

### Have the debugger point to the right source directory

The debugger has some idea of where to find the source code. That idea is in fact stored in the library, and describes the absolute path of the source code in the machine it was compiled in. If you are using precompiled packages, that path is just bogus.  
The GNU debugger will tell you that it can't find such and such source file, and you can find from that path which UPS package the file is in.  
Say it's `nutools`. The, we have to provide `gdb` with the correct path to `nutools` sources. This is easy:

    ls -d "${NUTOOLS_DIR}/source"

  
will confirm that a `source` directory is distributed with the `nutools` UPS package we have set up, at the specified path.  
Then we “just” have to tell `gdb` about this substitution:

    (gdb) set substitute-path /where/gdb/is/looking/for/nutools /path/we/just/discovered/products/nutools/v1_24_04/sources

  
Of course, each time we get into a new precompiled package, we have to do it again.  
On the good side, the code where the bug is, that is our own, is compiled locally and it should be promptly available.
