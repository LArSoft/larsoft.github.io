# Installation procedures

Each release of LArSoft has a release page on [SciSoft](https://scisoft.fnal.gov/scisoft/bundles/larsoft/)

```
https://scisoft.fnal.gov/scisoft/bundles/larsoft/<version>/larsoft-<version>.html
```

## Installing a binary distribution

The pull script, pullProducts, will pull any release of larsoft.  
A link to this script, and any instructions particular to the release, will be found on the LArSoft release page.

- Download [pullProducts](https://scisoft.fnal.gov/scisoft/bundles/tools/pullProducts) from [SciSoft tools](https://scisoft.fnal.gov/scisoft/bundles/tools/)

- chmod +x pullProducts

```
./pullProducts -h
    
Options:

  -d    Debug network operations for tarball downloads.
  -f    Force pull of tarball if it already exists.
  -h    This help.
  -l    Use a local manifest.  This is for development, not for production.
  -M    Download manifest only.
  -p    Only check for existing products in product_topdir.
  -r    Remove tarballs after downloading and unwinding.
  -s    Stream tarballs instead of downloading (mutually incompatible with -r).
  -V    Print version and exit.

  -S <spack_topdir>  Top directory for spack buildcache installation
                     Must NOT be the same as product_topdir.

Arguments:

  product_topdir   Top directory for relocatable-UPS products area.
  
  OS               Supported os distributions: 
                   slf7
 
  bundle-spec      Bundle name and version, e.g., art-v1_12_04
 
  qual_set         Some possible qualifier sets: 
		           e20
                   s117-c7
		   
  build-spec       debug or prof
```
    
    `./pullProducts [-f|-p|-S] <product_topdir> <OS> <bundle-spec>-<version> <qual_set> <build-spec>`


- For instance:

    `./pullProducts /grid/fermiapp/products/larsoft slf6 larsoft-v04_08_00 s8-e7 prof`

-   pullProducts will check to see if products are already installed in <product_topdir> and/or $PRODUCTS, and install only those products which are not already installed.
-   Notice that you do not need to run pullProducts in the product directory.
-   Tarballs for each product to be installed will be copied to the directory you are in when you run pullProducts.
-   Tensorflow requires a few spack packages.  See the [tensorflow v2_6_0](https://github.com/LArSoft/larrecodnn/wiki/tensorflow_v2_6_0) page for more.
    - Note that installation of spack packages only needs to happen once.  You can safely ignore -S once they are in place.

## Old Download instructions

-   Download instructions are linked from the release notes for the release of interest. [LArSoft release list](releases/LArSoft_release_list)
-   [Full contents of LArSoft distribution directory](https://scisoft.fnal.gov/scisoft/bundles/larsoft)
