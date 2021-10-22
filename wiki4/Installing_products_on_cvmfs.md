Installing products on cvmfs[¶](#Installing-products-on-cvmfs)
==============================================================

In most circumstances, users are expected to get the larsoft release from cvmfs. There is a README in cvmfslarsoft with basic instructions.

Because the home directory is tiny by design, we use a temporary directory on cvmfs when installing products. It is important to make sure this directory is empty before finalizing the download via cvmfs publish. Note that if there are real problems, you can always abort the cvmfs transaction.


basic steps[¶](#basic-steps)
----------------------------

-   login to your cvmfs distribution account
-   get a copy of pullProducts from SciSoft
-   start a cvmfs transaction
-   Make a hidden working directory in your cvmfs project directory.
    -   This is a one-time operation. Once you’ve made it, you just have to make sure it is empty before you publish.
    -   larsoft uses /cvmfs/larsoft.opensciencegrid.org/products/.working
-   install the project distribution with pullProducts -r
    -   The -r option does automatic cleanup, removing tarballs after they have been downloaded and installed.
-   fix any problems you encounter
-   remove the manifests left in the hidden directory
-   You need to do some manual sanity checks before proceeding, such as making sure the products were installed as expected and that no files remain in the hidden working directory.
-   Make sure you are in the home directory before publishing.
-   If everything is good, publish the transaction
-   The “cvmfs abort” command can be used to abort everything and return to the state before you started working.


LArSoft specific example[¶](#LArSoft-specific-example)
------------------------------------------------------

For LArSoft, we wrote a script to call pullProducts. The installBundle.sh script will download for all supported platforms.

The LArSoft cvmfs distribution includes products for SLF6, SLF7, and Mojave. At the time of this writing, the script will install sXX-e19 and sXX-c7 for SLF7. It will install sXX-c7 for Mojave. Because SLF6 does not support python3, we install sXX-e19-py2 and sXX-c7-py2 for SLF6.

    ssh cvmfslarsoft@oasiscfs.fnal.gov
    cat README
    cvmfs_server transaction larsoft.opensciencegrid.org
    ./scripts/installBundle.sh larsoft v08_49_00 s96-e19
    ll /cvmfs/larsoft.opensciencegrid.org/products/.working
    ll /cvmfs/larsoft.opensciencegrid.org/products/mrb
    ll /cvmfs/larsoft.opensciencegrid.org/products/larsoft/v08_49_00
    (These are checks.)
    time cvmfs_server publish larsoft.opensciencegrid.org
    (The time command is optional, but informative.)
