LArSoft v03\_00\_00 Release Notes(#LArSoft-v03_00_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v03\_00\_00 Release Notes](#LArSoft-v03_00_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [Updated dependencies](#Updated-dependencies)
    -   [Known issues](#Known-issues)
    -   [Updating code](#Updating-code)
        -   [Updating checked out larsoft code](#Updating-checked-out-larsoft-code)
        -   [Updating your own package](#Updating-your-own-package)
-   [Change List](#Change-List)
    -   [larsoft v03\_00\_00](#larsoft-v03_00_00)
    -   [lareventdisplay v03\_00\_00](#lareventdisplay-v03_00_00)
    -   [larexamples v03\_00\_00](#larexamples-v03_00_00)
    -   [larpandora v03\_00\_00](#larpandora-v03_00_00)
    -   [larana v03\_00\_00](#larana-v03_00_00)
    -   [larreco v03\_00\_00](#larreco-v03_00_00)
    -   [larsim v03\_00\_00](#larsim-v03_00_00)
    -   [larevt v03\_00\_00](#larevt-v03_00_00)
    -   [lardata v03\_00\_00](#lardata-v03_00_00)
    -   [larcore v03\_00\_00](#larcore-v03_00_00)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/projects/larsoft/v03_00_00/larsoft-v03_00_00.html)

Purpose(#Purpose)
--------------------

This is the first release with art v1\_12\_00 and gcc v4\_9\_1.\
With the exception of bug fixes found by the stricter compiler, the code in this release is identical to v02\_06\_02.

[art v1\_12\_00](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_11200) (new features, code improvements, root 5.34.21)\
[art v1\_11\_03](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_11103) (bug fix)\
[art v1\_11\_02](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_11102) (bug fix)\
[art v1\_11\_01](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_11101) (bug fix)\
[art v1\_11\_00](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_11100) (extensive notes)

Updated dependencies(#Updated-dependencies)
----------------------------------------------

  ----------------- ----------------- ---------- ------------------------------------
  artdaq\_core      v1\_03\_05        e6:nu:s5   now distributed with the release
  larsoft\_data     v0\_03\_00                   has new Radionuclides subdirectory
  nutools           v1\_06\_01        e6         for art v1\_12\_00
  libwda            v2\_20\_1                    
  ifdhc             v1\_4\_3b         e6         
  ifbeam            v1\_4\_4a         e6         
  nucondb           v1\_4\_4a         e6         
  ifdh\_art         v1\_5\_2          s5:nu:e6   for art v1\_12\_00
  pandora           v00\_16c          e6         
  genie             v2\_8\_0j         e6         
  cry               v1\_7b            e6         
  lhapdf            v5\_9\_1a         e6         
  pythia            v6\_4\_28b        e6         
  geant4            v4\_9\_6\_p03e    e6         
  xerces\_c         v3\_1\_1b         e6         
  log4cpp           v1\_1\_1a         e6         
  mysql\_client     v5\_5\_39         e6         
  postgresql        v9\_1\_14         e6         
  cstxsd            v4\_0\_0a                    
  art               v1\_12\_00        nu:e6      FindOne/FindMany improvements
  messagefacility   v1\_11\_15        e6         
  fhiclcpp          v3\_01\_02        e6         
  cetlib            v1\_07\_03        e6         
  cpp0x             v1\_04\_08        e6         
  root              v5\_34\_21        nu:e6      
  xrootd            v4\_0\_3          e6         
  boost             v1\_56\_0         e6         
  clhep             v2\_2\_0\_3       e6         
  cppunit           v1\_12\_1a        e6         
  fftw              v3\_3\_4          e6         
  gccxml            v0\_9\_20140718   e6         
  libxml2           v2\_9\_1a         e6         
  sqlite            v3\_08\_05\_00               
  python            v2\_7\_8                     
  tbb               v4\_2\_5          e6         
  gdb               v7\_8                        
  gcc               v4\_9\_1                     
  cmake             v3\_0\_1                     build time only
  cetbuildtools     v4\_02\_02                   build time only
  mrb               v1\_02\_00                   build time only
  ----------------- ----------------- ---------- ------------------------------------

Known issues(#Known-issues)
------------------------------

-   [\#7068](/redmine/issues/7068 "Bug: xrootd broken in art v1_12_00 (Closed)") - root still does not play nicely with newer releases of xrootd

Updating code(#Updating-code)
--------------------------------

### Updating checked out larsoft code(#Updating-checked-out-larsoft-code)

Wherever possible, we strongly suggest that you simply start with a clean checkout. The build system is designed to easily accommodate clean checkouts.

1.  first, update the master branch so you can use “git push” later
    -   git checkout master
    -   git pull

2.  second, update develop
    -   git checkout develop
    -   git pull
    -   resolve any conflicts

3.  third, update any feature branches
    -   git checkout feature/my\_feature\_branch
    -   git merge develop
    -   resolve any conflicts

### Updating your own package(#Updating-your-own-package)

To migrate your own package to larsoft v03\_00\_00, you will need to update the files in the ups subdirectory. Once that is done, you may find that gcc 4.9.1 finds problems in your code that need fixing. We mostly noticed complaints about type mismatches and about unused local functions (in anonymous namespace).

1.  With the advent of cetbuildtools 4.0.0, the structure of the product\_deps file has been enhanced, and there is a corresponding change to the setup\_for\_development file. You should not change one without changing the other, but since 4.0.1 either the old form or the new one is accepted. The old form is deprecated however, and support will be removed in the future. There is a script, migrate-package, that will upgrade the product\_deps and setup\_for\_development files in order to work best with newer cetbuildtools. Usage:\

        setup cetbuildtools v4_02_02 # (say)
        migrate-package <package-top-dir>

2.  update dependencies (larsoft, gcc, and any other package that is explicitly listed in ups/product\_deps)\

        mrb uv larsoft v03_00_00
        mrb uv gcc v4_9_1

Change List(#Change-List)
============================

larsoft v03\_00\_00(#larsoft-v03_00_00)
------------------------------------------

-   2014-09-23 Lynn Garren : larsoft v03\_00\_00 with art v1\_12\_00, ifdh\_art v1\_5\_2, larsoft\_data v0\_03\_00, and gcc v4\_9\_1
-   2014-09-23 Lynn Garren : new RecoAlg/RootMathFunctor.h wrapper
-   2014-09-23 Lynn Garren : use cetbuildtools v4\_02\_02

lareventdisplay v03\_00\_00(#lareventdisplay-v03_00_00)
----------------------------------------------------------

-   2014-09-23 Lynn Garren : lareventdisplay v03\_00\_00 with art v1\_12\_00 and gcc v4\_9\_1
-   2014-09-23 Lynn Garren : use cetbuildtools v4\_02\_02
-   2014-09-23 Lynn Garren : comment out unused functions

larexamples v03\_00\_00(#larexamples-v03_00_00)
--------------------------------------------------

-   2014-09-23 Lynn Garren : larexamples v03\_00\_00 with art v1\_12\_00 and gcc v4\_9\_1
-   2014-09-23 Lynn Garren : use cetbuildtools v4\_02\_02

larpandora v03\_00\_00(#larpandora-v03_00_00)
------------------------------------------------

-   2014-09-23 Lynn Garren : larpandora v03\_00\_00 with art v1\_12\_00, pandora v00\_16c, and gcc v4\_9\_1
-   2014-09-23 Lynn Garren : use cetbuildtools v4\_02\_02

larana v03\_00\_00(#larana-v03_00_00)
----------------------------------------

-   2014-09-23 Lynn Garren : larana v03\_00\_00 with art v1\_12\_00 and gcc v4\_9\_1
-   2014-09-23 Lynn Garren : use cetbuildtools v4\_02\_02
-   2014-09-23 Lynn Garren : make sure the units match

larreco v03\_00\_00(#larreco-v03_00_00)
------------------------------------------

-   2014-09-23 Lynn Garren : larreco v03\_00\_00 with art v1\_12\_00, nutools v1\_06\_01, and gcc v4\_9\_1
-   2014-09-23 Lynn Garren : use cetbuildtools v4\_02\_02
-   2014-09-23 Lynn Garren : make units match
-   2014-09-23 Lynn Garren : need a wrapper for Math/Functor.h
-   2014-09-23 Lynn Garren : comment out unused functions
-   2014-09-23 Lynn Garren : comment out unused functions
-   2014-09-23 Lynn Garren : need stdexcept header for std::runtime\_error

larsim v03\_00\_00(#larsim-v03_00_00)
----------------------------------------

-   2014-09-23 Lynn Garren : larsim v03\_00\_00 with art v1\_12\_00 and gcc v4\_9\_1
-   2014-09-23 Lynn Garren : use cetbuildtools v4\_02\_02

larevt v03\_00\_00(#larevt-v03_00_00)
----------------------------------------

-   2014-09-23 Lynn Garren : larevt v03\_00\_00 with art v1\_12\_00 and gcc v4\_9\_1
-   2014-09-23 Lynn Garren : use cetbuildtools v4\_02\_02

lardata v03\_00\_00(#lardata-v03_00_00)
------------------------------------------

-   2014-09-23 Lynn Garren : lardata v03\_00\_00 with art v1\_12\_00, nutools v1\_06\_01, and gcc v4\_9\_1
-   2014-09-23 Lynn Garren : use cetbuildtools v4\_02\_02
-   2014-09-23 Lynn Garren : set -fno-var-tracking for this dictionary
-   2014-09-23 Gianluca Petrillo : Interface fix and stricter qualification of signedness in tests.
-   2014-09-23 Lynn Garren : make units match and include iostream where necessary
-   2014-09-23 Lynn Garren : new class checksums

larcore v03\_00\_00(#larcore-v03_00_00)
------------------------------------------

-   2014-09-23 Lynn Garren : larcore v03\_00\_00 with art v1\_12\_00 and gcc v4\_9\_1
-   2014-09-23 Lynn Garren : use cetbuildtools v4\_02\_02
