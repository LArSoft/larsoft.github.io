# Procedure to create a new version of larsoft_data, uboone_data, etc.

This procedure also works for uboone_data, or any similar product.  
Only release managers will have the appropriate permissions for all steps.  
If you are not a release manager, send email to the LArSoft team.

Work in a local product directory, <product_dir>

1.  make sure you have a good copy of the latest release
        pullPackage <product_dir> noarch larsoft_data-vx_yy_zz
        cd <product_dir>/larsoft_data
        cp -r vx_yy_zz va_bb_cc   
         where vx_yy_zz is the existing version, va_bb_cc is the new
2.  add files in appropriate subdirectories of larsoft_data/va_bb_cc
3.  declare the new version
        ups declare larsoft_data va_bb_cc -f NULL -m larsoft_data.table -r larsoft_data/va_bb_cc
4.  Create a new tarball
        setup larutils <version>
         where <version> is at least v1_00_01
        makeDataTar.sh <product_topdir> <product_name> va_bb_cc
         this creates a tarball in <product_topdir>/<product_name>
5.  upload to the distribution server
    -   This step requires appropriate permissions.
            copyToSciSoft <product_topdir>/<product_name>/<product_name>-a.bb.cc-noarch.tar.bz2
6.  update cvmfs
    -   This step requires appropriate permissions.
