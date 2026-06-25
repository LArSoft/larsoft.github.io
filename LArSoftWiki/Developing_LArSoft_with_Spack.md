# Developing LArSoft with Spack and MPD

## Quickstart instructions for common activities with Spack and MPD

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

All examples assume that you have access to `/cvmfs/larsoft.opensciencegrid.org/spack-fnal-*`. If not, then follow the [bootstrap instructions here]().

### Create a workspace and a "project" with Spack

```bash
    source source /cvmfs/larsoft.opensciencegrid.org/spack-fnal-v1.1.1/setup-env.sh
    mkdir <working_area>
    spack subspack 
