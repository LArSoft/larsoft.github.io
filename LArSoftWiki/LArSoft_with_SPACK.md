# Overview page of LArSoft with SPACK

This information is changing rapidly as we continue the migration to Spack as a replacement for UPS. Once in production, more complete information will be provided. All builds are now performed using SL7 run within a container

## Migration to Spack from UPS

LArSoft will migrate to spack-based builds and development under AL9. The plan is to complete this migration before SL7 EOL (June 30, 2024), or to allow running using SL7 within containers should the migration extend beyond SL7 EOL. UPS will not be supported under AL9.
 
Migration work is currently focused on allowing development of LArSoft,  and establishing release procedures under Spack.

## Spack builds of LArSoft

Until the Spack migration is completed, there will be a limited number of Spack-based LArSoft builds available for either SL7 or AL9. 


## The current spack build of LArSoft

Have Spack builds of LArSoft v09.81.00 under AL9 and SL7

To set up in AL9 
* source /cvmfs/larsoft.opensciencegrid.org/spack-packages/setup-env.sh spack load larsoft/e3ryycs
  
To set up in SL7
* source /cvmfs/larsoft.opensciencegrid.org/spack-packages/setup-env.sh spack load larsoft/2vibnrv
