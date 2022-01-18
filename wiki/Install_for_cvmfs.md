Install for cvmfs
========================================

Install in /cvmfs/larsoft.opensciencegrid.org/products
-------------------------------------------------------------------------------------------------------------

-   ssh
-   cvmfs_server transaction larsoft.opensciencegrid.org
-   ./scripts/installBundle.sh larsoft \<release\> \<qualifiers\>
    -   installBundle will install debug and prof distributions. It will also install c7 distributions when you specify the e20 qualifier.

            ./scripts/installBundle.sh larsoft v09_42_00 s112-e20

-   check that the install was clean
    -   — make sure /cvmfs/larsoft.opensciencegrid.org/products/.working is empty
    -   — check everything! —
-   cvmfs_server publish larsoft.opensciencegrid.org
-   This information is also found in the README in .
