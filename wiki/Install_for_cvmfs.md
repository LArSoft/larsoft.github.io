Install for cvmfs(#Install-for-cvmfs)
========================================

-   **Table of contents**
-   [Install for cvmfs](#Install-for-cvmfs)
    -   [Install in /cvmfs/larsoft.opensciencegrid.org/products](#Install-in-cvmfslarsoftopensciencegridorgproducts)
    -   [Install in /grid/fermiapp/products/larsoft](#Install-in-gridfermiappproductslarsoft)

Install in /cvmfs/larsoft.opensciencegrid.org/products(#Install-in-cvmfslarsoftopensciencegridorgproducts)
-------------------------------------------------------------------------------------------------------------

-   ssh
-   cvmfs\_server transaction larsoft.opensciencegrid.org
-   ./scripts/installBundle.sh larsoft \<release\> \<qualifiers\>
    -   installBundle will install debug and prof distributions for slf7 e17 and c2, slf6 e17 and c2, d18 c2, and d17 c2. \

            ./scripts/installBundle.sh larsoft v08_14_00 s86-e17

-   check that the install was clean
    -   — make sure /cvmfs/larsoft.opensciencegrid.org/products/.working is empty
    -   — check everything! —
-   cvmfs\_server publish larsoft.opensciencegrid.org
-   Note that the eXY distributions are available only for SLF. The c2 distributions are available for both SLF and macOS.

Install in /grid/fermiapp/products/larsoft(#Install-in-gridfermiappproductslarsoft)
--------------------------------------------------------------------------------------

-   login to uboonegpvmNN as larsoft
-   If you do anything beyond installing a release, edit \~/LArLog to note what changes you made.
-   There is a README
-   Useful scripts are found in \~/work/scripts
-   cd work/\<username\>
-   installRelease.sh will run pullProducts for supported macOS platforms
    -   /grid/fermiapp/larsoft/home/larsoft/work/scripts/installRelease.sh <release> <quals>
            where <quals> might be s86-c2

-   We only install the macOS distributions on /grid/fermiapp. These are used by Jenkins builds.
-   If you need to install by hand
    -   ../scripts/pullProducts /grid/fermiapp/products/larsoft \<dXY\> larsoft-\<version\> \<quals\> \<debug|prof\>
    -   to pull, for instance, larsoft v06\_74\_00

            ./pullProducts -p /grid/fermiapp/products/larsoft  d17 larsoft-v06_74_00 s65-c2 debug
            ./pullProducts -p /grid/fermiapp/products/larsoft  d17 larsoft-v06_74_00 s65-c2 prof

-   verify
    -   source /grid/fermiapp/products/larsoft/setup
    -   ups list -aK+ larsoft \<new\_version\>
    -   ups depend larsoft \<new\_version\> -q \<qualifiers\>
        -   Information on ups is available at [Getting\_Started\_Using\_UPS](/redmine/projects/ups/wiki/Getting_Started_Using_UPS)
