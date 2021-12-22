Profiling utilities(#Profiling-utilities)
============================================

Some utility scripts to automate things created by [Gianluca Petrillo](mailto:petrillo@fnal.gov "petrillo@fnal.gov").\
If you would like to use any of these scripts, please contact the [author](mailto:petrillo@fnal.gov).

-   `larrun.sh`: run `lar` in a sandbox in background; options to run out of the sandbox, in foreground, and with a profiling tool. Run it with `--help`. Note that the sandbox requires some care: file paths in the command line should be specified with an absolute path (configuration file should not need that)
-   `MonitorProcess.sh`: constantly monitors a running process, relates it to log file advancement and saves memory maps
-   `AddMemoryMap.py`: sorts and prints the memory maps saved by `MonitorProcess.sh` or directly in `procfs`

Other utility scripts, not related to profiling:

-   `largit.sh`: runs the same `git` command in all the git repositories under `MRB_SOURCE` directory
-   `larcommand.sh`: runs the same command in all the git repositories under `MRB_SOURCE` directory
