# Overview page of LArSoft with SPACK


These instructions are temporary until Spack is in production and complete documentation pages are available.


## The migration plan:

- Migration to spack-based builds and development before SL7 EOL
- SL7 build machines scheduled to shut-down mid-May 
- Decided: Containers can be used for code that requires UPS under SL7 
- Firm: No plan to support UPS under AL9. 


## The current spack build of LArSoft

Have Spack builds of LArSoft v09.81.00 under AL9 and SL7

To set up in AL9 
* source /cvmfs/larsoft.opensciencegrid.org/spack-packages/setup-env.sh spack load larsoft/e3ryycs
  
To set up in SL7
* source /cvmfs/larsoft.opensciencegrid.org/spack-packages/setup-env.sh spack load larsoft/2vibnrv
