-   **Table of contents**
-   [Using LArSoft on the GPVM nodes](#Using-LArSoft-on-the-GPVM-nodes)
    -   [Available nodes](#Available-nodes)
    -   [Setting up LArSoft](#Setting-up-LArSoft)
    -   [Disk Space](#Disk-Space)

Using LArSoft on the GPVM nodes(#Using-LArSoft-on-the-GPVM-nodes)
====================================================================

**You must have an afs home area at FNAL in order to be added as a user on the GPVM nodes.** If you do not have one, please request it through the [ServiceDesk](http://computing.fnal.gov/xms/Services/Service_Desk).

Available nodes(#Available-nodes)
------------------------------------

The new GPVM nodes are virtual machines that are accessible by the intensity frontier experiments. Several nodes have been setup for the LAr experiments,

-   `argoneutgpvm01.fnal.gov`, `argoneutgpvm02.fnal.gov`
-   `uboonegpvm01.fnal.gov` through uboonegpvm06.fnal.gov (`01`, `02` and `03` with SLF5, the rest with SLF6)
-   `lbnegpvm01.fnal.gov` through `lbnegpvm06.fnal.gov` (`01` and `02` with SLF5, the rest with SLF6), lbnesl6test.fnal.gov (test node for SLF6 migration)
-   `lariatgpvm01.fnal.gov`

Users from the different experiments should log into the node for their experiment. These nodes will give us access to the FermiGrid.

If you have just received notification that you have an account on one of these machines, your login shell is likely bash. If you prefer a different login shell you need to submit a [ServiceDesk ticket](http://computing.fnal.gov/xms/Services/Service_Desk) to get it changed. We recommend that you just use bash.

Each of these nodes also has the BlueArc space for the corresponding experiment mounted to it. See the section on disk space below for details.

Setting up LArSoft(#Setting-up-LArSoft)
------------------------------------------

Each of the experiments has their own setup procedure. The one’s we know about at present are:

-   For LBNE: `/grid/fermiapp/lbne/software/setup_lbne.sh`(`csh`)
-   For MicroBooNE: `/grid/fermiapp/products/uboone/setup_uboone.sh`(`csh`)

See the [Quick-start guide to using and developing LArSoft code](_Quick-start_guide_to_using_and_developing_LArSoft_code_) and the experiment user guides for further details on on setting up and configuring LArSoft and the accompanying experiment software.

See the [LArSoft wiki](LArSoftWiki#Where-to-find-the-software) to see where to find the software.

Disk Space(#Disk-Space)
--------------------------

Two disk areas are available for user code and data:

`/<experiment>/app/users`\
`/<experiment>/data/users`

Where \<experiment\> is the name of the experiment the users is working on. The `app` area is where where users should store their test releases as well as any analysis files. No data should be stored in these areas.\
(on lariatgpvms the /lariat/app directory does not exist and so the users are encouraged to create their test releases in /lariat/data )

All data or Monte Carlo files should be stored on the `data` disk, regardless whether they are for general consumption by the experiment or whether they are for the user alone. This file system is mounted without executable permission, both on grid nodes and on the interactive notes. Files located here cannot be executed, regardless of the permissions on the individual files. Executables must be run from the `/<experiment>/app` directories.

These filesystems are located on disks collectively called “BlueArc” (after the manufacturer’s name).

On the grid, many jobs accessing the BlueArc disks can cause I/O slowdowns for interactive and batch processing. Users should use the \
[IF Dat Handling Client Tools (ifdhc)](/redmine/projects/ifdhc/wiki/Wiki) to move files to and from storage resources in general, and from BlueArc in particular. The tools in this product will select the optimal transport protocol and ensure that loads are managed so as to maximize throughput.
