# Developing LArSoft with Spack and MPD

## Quickstart for common activities with Spack and MPD

A typical working area for developing LArSoft with spack mpd has the following structure
```bash
    working_directory/
        spack/            # Local, write-accessible instance of Spack
        project_dir_1/
            build/
            local/
            srcs/
        project_dir_2/
```

The code to be developed lives in the `srcs` directories. Each project is developed in isolation from the others, though they will share a common Spack instance.

All examples assume that you have access to `/cvmfs/larsoft.opensciencegrid.org/spack-fnal-*`. If not, then follow the [bootstrap instructions here]() to install a local instance of Spack.

### Create a workspace and a "project" with Spack

Starting in your working directory: 

```bash
    source source /cvmfs/larsoft.opensciencegrid.org/spack-fnal-v1.1.1/setup-env.sh
    mkdir <working_area>
    #
    # Make a development spack with current spack as upstream
    #
    spack subspack $PWD/spack
    #
    # Set up the local spack
    #
    source spack/setup-env.sh
    #
    # List the available environments. Will choose one later.
    #
    spack env list
    #
    # Initialize mpd (only needs to be done once per working area), and create
    # a new project (which creates a directory with the project name)
    #
    # In this example
    # - compiler is gcc v12.5.0
    # - project depends on cetmodules v3
    # - Creates <project_name> directory in working area
    # - project build on the environment larsoft-v10_20_09-unified-cuda-python-3_11-trimmed-rc2
    #
    spack mpd init
    spack mpd n -C gcc@12.5.0 -d cetmodules@3 -T ./<project_name>  -E  /cvmfs/larsoft.opensciencegrid.org/spack-fnal-v1.1.1/var/spack/environments/larsoft-v10_20_09-unified-cuda-python-3_11-trimmed-rc2
    #
    # Ready to go! Add a package to develop
    #
    spack mpd git-clone <repository or suite>
    #
    # Refresh project using current source area and generator=ninja variant
    #
    spack mpd refresh generator=ninja
    #
    # Now build!
    #
    spack mpd build      
```
### Starting from same spot after logging out

`cd` to the working directory
```
    source spack/setup-env.sh
    #
    # List the available projects, then select one to work on
    #
    spack mpd list
    spack mpd select <project_name>
    #
    # Continue working...
```
### Adding a new package to develop

Starting from a selected project:
```
    spack mpd git-clone <repository>
    spack mpd refresh
    spack mpd build
```
