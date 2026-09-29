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
            ...
```

An mpd "project" is an area that contains the code that you want to develop at a given time, along
with the build artifacts, installed repositories, and the associated environment created during 
concretization. There can be multiple projects within a working area, but you can only build one 
project at a time. You tell `mpd` which project you are working on with the `spack mpd select` command.
All projects in a given working area share a common local Spack instance. The actual code to be developed 
lives in the `srcs` directories. The `local` directories contain the environment for your project 
created during concretization, along along with any packages you `spack mpd install`. The `build`
areas are used by `mpd` to perform the build. 

All examples assume that you have access to `/cvmfs/larsoft.opensciencegrid.org/spack-fnal-*`. If not, then follow the [bootstrap instructions here]() to install a local instance of Spack.

### Create a workspace and a "project" with Spack

Starting in your top-level working directory: 

```bash
    source /cvmfs/larsoft.opensciencegrid.org/spack-fnal-v1.1.1/setup-env.sh
    mkdir <working_area>
    cd <working_area>
    
    # Make a development (i.e., local) Spack instance with the current spack as upstream.
    # The local instance ensures that you have write access, which is required for some
    # Spack opereations.
    #
    spack subspack $PWD/spack
    
    # Set up the local spack
    #
    source spack/setup-env.sh
    
    # List the available environments. Will choose one later.
    #
    spack env list
    
    # Initialize mpd (only needs to be done once per working area)
    #
    spack mpd init

    # Create a new mpd "project" and create the project directory with the project name.
    # This operation will also `mpd' "select" it. 
    #
    # In this example
    # - compiler is gcc v12.5.0
    # - project depends on cetmodules v3
    # - Creates <project_name> directory in working area
    # - project builds on the environment larsoft-v10_20_09-unified-cuda-python-3_11-trimmed-rc2
    #
    spack mpd n -C gcc@12.5.0 -d cetmodules@3 -T ./<project_name>  -E  /cvmfs/larsoft.opensciencegrid.org/spack-fnal-v1.1.1/var/spack/environments/larsoft-v10_20_09-unified-cuda-python-3_11-trimmed-rc2
    
    # Ready to go! Add a package to develop
    #
    spack mpd git-clone <repository or suite>
    
    # Refresh project using current source area and generator=ninja variant
    # This performs the concretization step, so can take a little time. You 
    # need to do this if you change dependencies, or change the repositories you
    # are developing.
    #
    spack mpd refresh generator=ninja
    
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
### Update the list of LArSoft environments visible in the sub-spack

Creating a sub-spack freezes the list of environments that the local development version of Spack knows about. The list can be updated by creating symlinks back to the upstream spack environment list:
```
    cd <dev area>/spack/var/spack/environments
    ln -s /cvmfs/larsoft.opensciencegrid.org/spack-fnal-v<VERSION NUMBER>/var/spack/environments/* .
```

