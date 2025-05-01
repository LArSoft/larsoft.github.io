# More about SciSoft

## About SciSoft permissions

For security reasons, the ability to upload files is strictly controlled. Only a few people from any one project or experiment will have the necessary permissions to upload files. Read-write access to SciSoft is controlled via nfs4 Kerberos groups. Each project/experiment will have their own group. Anyone requesting permissions must have a valid Fermilab user account and a FermiCloud account. A valid Kerberos ticket is required when using the upload tools.

## Update an existing package on SciSoft

To upload tarballs for an existing package, use copyToSciSoft.

copyToSciSoft hdf5-1.10.1b-source.tar.bz2

## Update an existing bundle on SciSoft

To add a new bundle release, simply use copyToSciSoft to upload the manifests, related tarballs, build config, and bundle description html files. The build config files are used by buildFW.

## Adding a new package or bundle to SciSoft

First make a [Service Now reqest](https://fermi.servicenowservices.com/nav_to.do?uri=%2Fservice_offering.do%3Fsys_id%3Dc548068a6fd81200c8b668826e3ee4ec%26sysparm_view%3Dess%26sysparm_affiliation%3D) for permissions to add the new product or bundle. You will need to specify the correct spelling of the package or bundle. You will also need to specify the permission group (generally an experiment) who will need write permissions for this bundle or package. If there is not yet an appropriate permission group, you will also need to specify the people who need write access. Once permissions have been granted, use copyToSciSoft to upload the appropriate files.

## copyToSciSoft

The copyToSciSoft script makes all necessary directories and copies the files into them. Wildcards are permissible. The file will NOT be copied if it already exists. If you need to replace a file, please first login to scisoftgpvm01.fnal.gov and carefully remove only the file you wish to replace. Files are rooted under /nasroot/SciSoft on scisoftgpvm01. Then run copyToSciSoft.

## Getting Help:

-   Requests for new versions of existing packages should be made through the [SciSoft issues tracker](https://cdcvs.fnal.gov/redmine/projects/scisoft/issues/new).
-   Bug reports for experiments or projects should be made via the redmine site for that experiment or project.
-    If you wish to do any of the following, please open a [Service Now ticket](https://fermi.servicenowservices.com/nav_to.do?uri=%2Fservice_offering.do%3Fsys_id%3Dc548068a6fd81200c8b668826e3ee4ec%26sysparm_view%3Dess%26sysparm_affiliation%3D)
   -    request space on SciSoft for a new experiment or project
   -    add or remove people from a permission list
   -    add the build of a new package to SciSoft for an existing experiment or project
-   User instructions for uploading packages and distribution bundles are on [redmine](https://cdcvs.fnal.gov/redmine/projects/scisoft/wiki/SciSoft).
-   All other questions may be directed to the SciSoft team




