LArSoft production transition timeline[¶](#LArSoft-production-transition-timeline)
==================================================================================

Here is a summary of the important dates and times for the transition:

-   From now until Jan 21 – continue beta testing of the LArSoft beta release (currently larsoft v0\_02\_02 plus the experiment repositories uboonecode and lbnecode)
-   Jan 20 18:00 – contents of existing LArSoft git repositories preserved for future reference, then deleted from the repositories
-   Jan 21 07:00 – svn repository made READ-ONLY
    -   The svn repository will be tagged at this time and the FINAL svn-based release will be created and deployed
    -   Nightly builds will be disabled
-   Jan 21 — Jan 22 – work on the formal transition from svn/SRT to git/mrb/ups
    -   The core LArSoft code will be factored into larcore, lardata, larevt, larsim, larreco, larpandora, lareventdisplay and larexamples git repositories.
    -   (Most) experiment specific software corresponding to the larcore, lardata, larevt and larsim repositories will be refactored into lbnecode and uboonecode repositories.
-   Jan 23 – testing and validation of the first release
-   Jan 24 07:00 – new system in production
    -   Will include installed v1\_00\_00 versions of all larsoft products as well as lbnecode and uboonecode
    -   Nightly builds will begin immediately and will be accessible as version ‘nightly’
-   Jan 24 to Jan 31 – quick–response to questions and issues raised to ensure that everything works as needed.
