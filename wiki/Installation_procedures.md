# Installation procedures

Each release of LArSoft has a release page on [SciSoft](http://scisoft.fnal.gov/scisoft/bundles/larsoft/)

<pre>

http://scisoft.fnal.gov/scisoft/bundles/larsoft/<version>/larsoft-<version>.html

</pre>

## Installing a binary distribution

The pull script, pullProducts, will pull any release of larsoft.  
A link to this script, and any instructions particular to the release, will be found on the LArSoft release page.

- Download pullProducts from [SciSoft tools](https://scisoft.fnal.gov/scisoft/bundles/tools/)

- chmod +x pullProducts

    ./pullProducts [-f|-p] <product_topdir> <OS> <bundle-spec>-<version> <qual_set> <build-spec>
    Options:

      -f    Force pull of tarball if it already exists
      -h    This help.
      -l    Use a local manifest.  This is for development, not for production.
      -M    Download manifest only.
      -p    Only check for existing products in product_topdir
      -r    Remove tarballs after downloading and unwinding.
      -V    Print version and exit

    Arguments:

      product_topdir   Top directory for relocatable-UPS products area.

      OS               Supported os distributions: slf5, slf6, slf7, d13, d14, u14

      bundle-spec      Bundle name and version, e.g., larsoft-v03_04_04

      qual_set         Some possible qualifier sets
                       s15-e7
                       s30-e9

      build-spec       debug or prof.

- For instance:

    ./pullProducts /grid/fermiapp/products/larsoft slf6 larsoft-v04_08_00 s8-e7 prof

-   pullProducts will check to see if products are already installed in <product_topdir> and/or $PRODUCTS, and install only those products which are not already installed.
-   Notice that you do not need to run pullProducts in the product directory.
-   Tarballs for each product to be installed will be copied to the directory you are in when you run pullProducts.

## Old Download instructions

-   Download instructions are linked from the release notes for the release of interest. [LArSoft release list](releases/LArSoft_release_list)
-   [Full contents of LArSoft distribution directory](http://scisoft.fnal.gov/scisoft/bundles/larsoft)
