LArSoft cvmfs
================================

-   /cvmfs/larsoft.opensciencegrid.org
-   [Installing products on cvmfs](Installing_products_on_cvmfs)

General instructions for managing software
------------------------------------------------------------------------------------------

-   login as cvmfslarsoft@oasiscfs
    -   you will be in the /home/cvmfslarsoft directory
-   FIFE instructions
    -   copied from [Introduction_to_FIFE_and_Component_Services](/redmine/projects/fife/wiki/Introduction_to_FIFE_and_Component_Services#OASISCVMFS-process-for-VOs-that-have-Fermilab-as-a-host-institution)
    -   The files for the repository are found in /cvmfs/larsoft.opensciencegrid.org.
        -   They are initially read-only until a transaction is started.
    -   Do cvmfs_server transaction larsoft.opensciencegrid.org to initiate a transaction.
        -   This makes the repository writable.
        -   If there was a transaction already under way the command will inform you.
    -   Update files in /cvmfs/larsoft.opensciencegrid.org.
        -   If you make a mistake, all changes can be discarded and the transaction aborted by running cvmfs_server abort larsoft.opensciencegrid.org.
    -   Do cvmfs_server publish larsoft.opensciencegrid.org.
        -   This processes all the changes, makes them part of the published repository, and makes the repository read-only again.
    -   Updates should then appear on worker nodes typically within a half hour, but sometimes it will be longer if the update was large or if the Stratum 1 is busy with doing a large update of another repository.

Install a larsoft release
--------------------------------------------------------

-   The product directory is /cvmfs/larsoft.opensciencegrid.org/products
-   To install any larsoft release:

        cvmfs_server transaction larsoft.opensciencegrid.org
        ./scripts/installBundle.sh larsoft <release> <qualifiers>
        cvmfs_server publish larsoft.opensciencegrid.org

-   The installBundle.sh script can be used to install any SciSoft distribution (e.g., nu).
-   See [Installing products on cvmfs](Installing_products_on_cvmfs) for more details.

[How we initialized larsoft cvmfs](How_we_initialized_larsoft_cvmfs)
