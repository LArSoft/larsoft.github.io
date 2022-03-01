# Move to v05



v05_00_00 is a major change

## Pass 1 - refactor

### goals

-   use recommended directory structure
-   use complete library names

### [Pass 1 notes](Pass_1_notes)

### user scripts

-   update_sources.sh
    -   found in larsoft
    -   manages the header and library name changes

### known issues

-   argoneutcode geometry_iterator_loop_argoneut_test
    -   This test uses geometry_microboone.fcl, which is found in uboonecode
    -   The test passes only if you build and test argoneutcode and uboonecode at the same time.

### branches and tags

-   larcore larevt larpandora larsoft larana lardata larexamples larreco lareventdisplay larsim
    -   v05_00_00 tag
    -   branch v05_00_branch
-   argoneutcode dunetpc lariatsoft uboonecode lar1ndcode
    -   branch v05_00_branch

## Pass 2 - Core Service changes

Now merge v05_00_00_rc with v05_00_branch.  
Requires careful checking.

Summary of the branches:

|                   |                          |                                                       |
|-------------------|--------------------------|-------------------------------------------------------|
| `develop`         | based on `v04_36_01`     | it contains “all the new commits”                     |
| `v05_00_branch`   | based on `v04_36_01`     | it contains “all the new commits” and the refactoring |
| `v05_00_00_rc`    | based on `v04_30_00`     | has core service changes                              |
| `v05_00_refactor` | based on `v05_00_branch` | has a bad name; and will have core service changes    |

This pass 2 is about creating the branch `v05_00_refactor`.  
Once created, the v05_00_refactor branch was merged with v05_00_branch and removed.

### Basic steps

     working area set up with package @larXXX@ and its dependencies only (first just @larcore@, then @larcore@ and @lardata@, etc.):
     add new package
     mrb uc
     cd "${MRB_SOURCES}/larXXX"
     git checkout v05_00_branch      # has latest and greatest commits from LArSoft community, plus refactoring
     git checkout -b v05_00_refactor # new (target) branch based on @v05_00_branch@: has a bad name
     git merge v05_00_00_rc          # merge in the core service changes
     git status                      # admire the (unnecessarily large) number of unresolved conflicts

First thing: restore the `product_deps` file from `v05_00_branch`: it's newer, and `v05_00_00_rc` is not supposed to have touched dependencies anyway

    git checkout v05_00_batch -- ups/product_deps
    mrbsetenv

  
The last step should work seamlessly.  
Interpretation of `git status` (the example is from the merge of `lardata`):

|                                                                                                       |                                                                                                                                                               |
|-------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <span style="color: green;">`modified:   lardata/AnalysisAlg/CalorimetryAlg.cxx`</span>               | core service changes happened on top of the refactored file: this implies the file has not changed since `v05_00_00_rc` used it to apply core service changes |
| <span style="color: green;">`new file:   lardata/DetectorInfo/DetectorClocksException.h`</span>       | the file was added by the core service changes (or moved by them, that for `git` is a new file and a file detection; see next item)                           |
| <span style="color: red;">`both deleted:    Utilities/timeservice.fcl`</span>                         | the file was deleted in both branches, likely an effect of the refactoring (or moved: as above)                                                               |
| <span style="color: red;">`both modified:   lardata/AnalysisAlg/CMakeLists.txt`</span>                | a conflict on an existing file: file needs editing                                                                                                            |
| <span style="color: red;">`both added:      lardata/CMakeLists.txt`</span>                            | a conflict on a “new” file: file needs editing                                                                                                                |
| <span style="color: red;">`added by them:   lardata/DetectorInfo/ClockConstants.h`</span>             | added (or moved) by the core service changes; see lessons learned!                                                                                            |
| <span style="color: red;">`added by us:     lardata/DetectorInfo/DetectorPropertiesStandard.h`</span> | new file, likely from addition to `develop` after `v04_30_00`                                                                                                 |

Sometimes there will be pairs of untracked files (e.g., `timeservice.fcl~HEAD` and `timeservice.fcl~v05_00_00_rc`), that seems to be the case where `git` does not really know what to do.

1.  it's time to fix `CMakeLists.txt` files.
    -   Usually the content from `v05_00_00_rc` is correct, but in most of the cases `v05_00_branch` differs from it only by the removal of unused/unnecessary libraries (e.g., `LArProperties_service`/@LArPropertiesService_service`).
        # remove all the files that %{color: red}`both deleted`% and the files among %{color: red}`added by us`% and %{color: red}`added by them`% that should actually be deleted.  Use `git rm File@ for that purpose
2.  at this point, `mrb build -C` should succeed, with `cmake` doing all the right things
3.  then, time to resolve the conflicts where <span style="color: red;">`both`</span> modified or added files; most often, the conflict is just in `#include` directives.
4.  finally, address the hidden conflicts of files that `git` mistreated (see lessons learned below)

After conflict solution, the usual:

    cd "$MRB_BUILDDIR" ; make -j41 # yes, I am using _that_ kind of machine
    ctest -j41
    git commit # (and accept the message, or add the explanation of what the branch names mean)

> Not clear yet if the files <span style="color: green;">`modified`</span> are correct beyond doubt.

### Lessons learned (ongoing)

-   **do use** a target branch rather than working on `v05_00_branch` directly (and possibly use a better name than `v05_00_refactor`)
-   `git` can get *very* confused, and the lines like <span style="color: red;">`added by them: lardata/RawData/ExternalTrigger.h`</span> must be checked. In this case, there is no reason why core services would have added that file, not to mention the fact that it actually existed already before. It might be that an existing file was changed in `develop` after `v04_30_00` and `git` thinks the best solution is to forget the newer file and use the one in `v05_00_00_rc` instead; the correct solution is `git checkout v05_00_batch -- lardata/RawData/ExternalTrigger.h` and then apply the core service changes manually (or via update script). Note that the core service changes on source files have the nice feature that if you forget them you get a compilation or a linker error (not sure if that's on 100% of the cases though); missing changes to `FHiCL` files have a fair chance to appear at run time, but that assumes that somebody is actually running the FHiCL files…

### Known shortcomings of the replacement script (`larsoft/bin/UpdateCoreServices.py`)

The replacement script (`larsoft/bin/UpdateCoreServices.py`) is a dumb script that replaces text matching patterns.

-   It will change a class member `art::ServiceHandle<util::DetectorProperties> fDetProp;` into `auto const* fDetProp = lar::providerFrom<detinfo::DetectorPropertiesService>();` (because it's too stupid to know that the line is a class member declaration rather than a code statement, since it has no context); exceptions apply (module sources have a different set of replacements than headers).
-   The same is true for other core service members.
-   The recommended solution is to turn the declaration into `detinfo::DetectorProperties const* fDetProp;` and add an entry in the initializer list of the class constructor that says `fDetProp(lar::providerFrom<detinfo::DetectorPropertiesService>())`; you'll have to `#include` the proper headers (`lardata/DetectorInfo/DetectorProperties.h` in the header, `lardata/DetectorInfoService/DetectorPropertiesService.h` in the implementation file.
-   But keep in mind that the *good* solution is to have your algorithm receive that service provider in a setup phase (`void Setup(detinfo::DetectorProperties const* detprop) { fDetProp = detprop; }` - or you can use a `ProviderPack`) from the controlling module or algorithm.

Another known “feature” is that it can't determine how to fix an expression like `larprop->Efield()`: `Efield()` belongs to `DetectorProperties`, but the script does not know if `larprop` points to an instance of `DetectorProperties` or not, and even less about what to replace `larprop` with (`detp`? `detProp`? `detprop`? `foo`?). The script will always warn when it sees these instances, and then one has to check manually (and remember it was fixed: the script will warn also on a fixed or correct source). That's better than nothing.

A known bug is that sometimes substitutions to module sources in the “pretend” mode appear to be double, as in:

    INFO:     pattern '\bUtilities/DetectorProperties.h\b' matched at larreco/TrackFinder/PMAlgTrackMaker_module.cc@50:
        OLD| #include "lardata/Utilities/DetectorProperties.h"
        NEW| #include "lardata/DetectorInfoServices/DetectorPropertiesService.h"
    INFO: Processor 'modules' would change file 'larreco/TrackFinder/PMAlgTrackMaker_module.cc'
    INFO:     pattern '\bUtilities/DetectorProperties.h\b' matched at larreco/TrackFinder/PMAlgTrackMaker_module.cc@50:
        OLD| #include "lardata/Utilities/DetectorProperties.h"
        NEW| #include "lardata/DetectorInfo/DetectorProperties.h"
    INFO: Processor 'code' would change file 'larreco/TrackFinder/PMAlgTrackMaker_module.cc'
    INFO: 2 file would be changed under 'larreco/TrackFinder/PMAlgTrackMaker_module.cc'

  
This happens because module source files are subject to a module-specific substitution first (that's the first one in the example), and then to a more generic one. Both deal with some `#include` pattern. The second substitution would not happen because the pattern does not match any more after the first substitution is performed. But in the pretend mode that first substitution is not really performed, and so the second one is engaged (and it will not be performed as well, since it's still pretend mode).
