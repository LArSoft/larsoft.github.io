# Fast cloning

An *art* job configured with a `RootInput` source and a `RootOutput` output module will, by default, copy the entire input file into the *art* ROOT output file. This is by and large the most common job configuration.  
Normally, this would imply some steps:

1.  read from the input file the packed data including the event
2.  unpack the event data from the input tree (all branches)
3.  pack its data into the output tree
4.  write the packed data into the output file

This is repeated event after event (although ROOT buffering may change this a bit) by `RootOutput` module in the event loop.  
In the “most common” case described above, the neat result of this process is that each branch in the input tree is exactly replicated in the output tree.  
The **fast cloning** feature shortcuts all those steps and just *copies* the data from all the input branches into the output tree:

1.  read the packed data in a branch from the input tree
2.  write that packed data as a new branch in the output tree

This happens *before* the event loop has even started[^1].

> Note that since fast cloning process is outside the event loop, the usual time tracking tools (e.g. `TimeTracker` service) will not charge the time taken by the cloning on `RootOutput` tab; the observable will be *art* spending a lot of time without writing anything on screen, and in that meanwhile the output *art* ROOT file can be observed to grow in size up to the one of the input file.

## Disabling fast cloning

Fast cloning feature is enabled by default as it saves some time and loads of memory. Yet there are cases where it needs to be disabled.

### Automatic disable

Modern *art* versions (for sure from 2.6 on) are pretty smart in guessing when fast cloning is feasible. In general, fast cloning is not feasible when the output branches would be different from the input ones. Reasons may include:

-   excluding (filtering out) events
-   changes in the data product structure (“schema evolution”)
-   critical changes in ROOT tree format
-   changes in branch settings (but not necessarily: see below)

Some conditions that *do not disable* fast cloning are:

-   multiple input files, even with a single output file
-   change of general compression level
-   selection of branches to keep/drop (`outputCommands` configuration parameter of `RootOutput`)

When relevant conditions are detected, *art* disables fast cloning and prints a message about it. Note that when `compressionLevel` is specified, *art* prefers fast cloning, so that the new branches are created with the specified compression level but the old ones are cloned and retain the original compression level.

Here are collected some conditions under which *art* will enable and disable fast cloning, and their message on screen:

|                  | **Condition**                                      | **message**                                                                                                  |
|------------------|----------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
|                  |                                                    | *art* 2.8.3                                                                                                  |
| *per job*        | no `fastCloning` in `RootOutput` configuration     | `Initial fast cloning configuration (from default): true`                                                    |
| *per job*        | `fastCloning: true` in `RootOutput` configuration  | `Initial fast cloning configuration (user-set): true`                                                        |
| *per job*        | `fastCloning: false` in `RootOutput` configuration | `Initial fast cloning configuration (user-set): false`                                                       |
| *per input file* | limited number of events (e.g. `-n` option)        | `Fast cloning deactivated for this input file due to information in FileBlock.`                              |
| *per input file* | skipping events (e.g. `--nskip` option)            | `Fast cloning deactivated for this input file due to information in FileBlock.`                              |
| *per input file* | change in data product structure                   | `Fast cloning deactivated for this input file due to reading in file that has a different ProductID schema.` |
| *per input file* | input from a version of *art* too old              | `Fast cloning deactivated for this input file due to reading in file that does not support RangeSets.`       |
| *per input file* | input file from older ROOT (ROOT 5)                | ?                                                                                                            |

Only one message (at most) is printed per input file. The messages in this table are in rough order of priority. For example, a file from LArSoft 5 is both from a version of *art* too old to support `RangeSet`, and from ROOT 5: only the message about `RangeSet` support is printed.

### Manual disable

If you have reasons on your own to disable fast cloning, this can be achieved by a configuration parameter in `RootOutput`: `fastCloning: false` (see `lar --print-description RootOutput`).

[^1]: This is technically incorrect, since it actually happens in the `postProcessEvent` state (*art* 2.8.3), and also because this may happen on each input file.
