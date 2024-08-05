
# Developing LArSoft with Containers

## apptainer

Fermilab currently supports SL7 builds in apptainer.  Note that the ups flavor must be specified. Any number of disk directories may be specified after the `-B` option.
```
apptainer shell -s /bin/bash -B /cvmfs,$PWD /cvmfs/singularity.opensciencegrid.org/fermilab/fnal-dev-sl7:latest

export UPS_OVERRIDE='-H Linux64bit+3.10-2.17'

```

## Docker

Docker is no longer a recommended container.  However, the instructions are here for [a Docker container approach](Developing_LArSoft_on_Unsupported_Operating_Systems_with_Docker).
