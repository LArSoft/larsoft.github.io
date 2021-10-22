How we initialized larsoft cvmfs[¶](#How-we-initialized-larsoft-cvmfs)
======================================================================


Initialize /cvmfs/larsoft.opensciencegrid.org[¶](#Initialize-cvmfslarsoftopensciencegridorg)
--------------------------------------------------------------------------------------------

-   cvmfs\_server transaction larsoft.opensciencegrid.org
-   mkdir /cvmfs/larsoft.opensciencegrid.org/products
-   create /cvmfs/larsoft.opensciencegrid.org/.cvmfsdirtab\

        /*
        /products/*/*
        ! *.version
        ! *current.chain

-   rm /cvmfs/larsoft.opensciencegrid.org/test
    -   leave “new\_repository” file in place for now
-   cvmfs\_server publish larsoft.opensciencegrid.org
-   install scripts in /home/cvmfslarsoft/scripts
-   create /home/cvmfslarsoft/temp for a working area
-   installing production releases\

        ./scripts/installBundle.sh larsoft v03_08_02 s6-e6
