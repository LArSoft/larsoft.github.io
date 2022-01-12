Procedure to create a new version of larsoft\_data, uboone\_data, etc.
=============================================================================================================================================

This procedure also works for uboone\_data, or any similar product.
Only release managers will have the appropriate permissions for all steps.
If you are not a release manager, send email to the LArSoft team.

This procedure also works for uboone\_data, or any similar product.
Only release managers will have the appropriate permissions for all steps.
If you are not a release manager, send email to the LArSoft team.

Work in a local product directory, \<product\_dir\>

1.  make sure you have a good copy of the latest release
2.  cd \<product\_dir\>/larsoft\_data
3.  cp -r vx\_yy\_zz va\_bb\_cc
    -   where x\_yy\_zz is the existing version, a\_bb\_cc is the new

4.  declare the new version

        ups declare larsoft_data va_bb_cc -f NULL -m larsoft_data.table -r larsoft_data/va_bb_cc

5.  Create a new tarball
    1.  setup larutils \<version\>
        -   where \<version\> is at least v1\_00\_01

    2.  makeDataTar.sh \<product\_topdir\> \<product\_name\> va\_bb\_cc
        -   this creates a tarball in \<product\_topdir\>/\<product\_name\>

6.  upload to the distribution server
    -   copyToSciSoft \<product\_topdir\>/\<product\_name\>/\<product\_name\>-a.bb.cc-noarch.tar.bz2
    -   This step requires appropriate permissions.

7.  install in /grid/fermiapp/products/larsoft, or other appropriate product directory
    -   This step requires appropriate permissions.

8.  update cvmfs
    -   This step requires appropriate permissions.
