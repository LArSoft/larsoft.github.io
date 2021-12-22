Using git repositories
==================================================

LArSoft has specific guidelines for git code repositories.

Directory Structure
--------------------------------------------

### Recommended Directory Structure

-   If a package is named xyz, then all code shall be found in the xyz/xyz subdirectory. The code can be split into further subdirectories when appropriate.
-   Headers are kept in the same directory as the matching source code. The install step will put headers into an include/xyz directory structure that mirrors the code directory structure.
-   In general, we expect unit tests to be in the xyz/test directory. However, they may also be in xyz/xyz/test or in further subdirectories.
-   Continuous Integration (CI) tests should installed in the xyz/test/ci directory.
-   The xyz/ups directory contains ups/product\_deps and other files used to establish both the build environment and the installed product structure.

### Optional Subdirectories

-   fcl files may be in a single subdirectory or found with their matching code. The cetbuildtools install\_fhicl() cmake directive will copy fcl files into the build directory so they can be found by the unit tests and also install fcl files in the directory defined by ups/product\_deps.
-   Sometimes other directories are added for shell scripts, cmake modules, etc., but this is not the norm.

Inappropriate Files
--------------------------------------------

### Large files

Some files (e.g. xml descriptions) can become quite large. The LArSoft git repositories will reject files which deemed to be too large. The definition of “too large” may change over time.

### Binary files

Occasionally some binary (e.g., root) files are needed by the code. It is inappropriate to include binary files in code management systems. If these files are stable and change rarely, they may be candidates for inclusion in larsoft\_data. If these files are specific to one experiment, their distribution should be handled by that experiment. If these files change frequently or are larger than 20M or so, it will be better to use dcache and ifdhc. Requests to add files to larsoft\_data should be sent to the LArSoft Team.

### Other inappropriate files

Backup files created by editors, sed scripts, etc. should never be added to the repository. Files which are automatically generated should not be added to the repository. Care should be taken when adding new directories to make sure only the actual code is added.
