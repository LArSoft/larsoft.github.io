LArSoft License[¶](#LArSoft-License)
====================================

-   **Table of contents**
-   [LArSoft License](#LArSoft-License)
    -   [Products that larsoft depends on directly](#Products-that-larsoft-depends-on-directly)
        -   [LArSoft packages](#LArSoft-packages)
        -   [External packages](#External-packages)
        -   [Fermilab packages](#Fermilab-packages)
    -   [Products that nutools depends on directly](#Products-that-nutools-depends-on-directly)
        -   [External packages](#External-packages-2)
        -   [Fermilab packages](#Fermilab-packages-2)
    -   [The art framework](#The-art-framework)
        -   [Fermilab art framework packages](#Fermilab-art-framework-packages)
        -   [External packages](#External-packages-3)

LArSoft proposes using the [Apache v2](http://www.apache.org/licenses/LICENSE-2.0) license. This page contains a list of products that larsoft links against.


Products that larsoft depends on directly[¶](#Products-that-larsoft-depends-on-directly)
----------------------------------------------------------------------------------------


### LArSoft packages[¶](#LArSoft-packages)

1.  “larsoft” “v07\_06\_00”
2.  “lareventdisplay” “v07\_01\_04”
3.  “larreco” “v07\_04\_00”
4.  “larsim” “v07\_03\_00”
5.  “larevt” “v07\_00\_07”
6.  “lardata” “v07\_00\_07”
7.  “larcore” “v07\_00\_02”
8.  “larcorealg” “v07\_01\_01”
9.  “larcoreobj” “v07\_00\_01”
10. “lardataobj” “v07\_02\_02”
11. “lardataalg” “v07\_01\_00”
12. “larsoft\_data” “v1\_02\_01”
13. “larexamples” “v07\_00\_07”
14. “larana” “v07\_02\_00”
15. “larg4” “v07\_01\_02”
16. “larpandora” “v07\_01\_04”
17. “larpandoracontent” “v03\_14\_01”
18. “larwirecell” “v07\_01\_01”
19. “larsoftobj” “v07\_03\_00”


### External packages[¶](#External-packages)

-   “marley” “v1\_0\_0e”
    -   [https://github.com/sjgardiner/marley/](https://github.com/sjgardiner/marley/)
-   “tensorflow” “v1\_3\_0d”
    -   [https://www.tensorflow.org/](https://www.tensorflow.org/)
-   “protobuf” “v3\_5\_2”
    -   [https://github.com/protocolbuffers/protobuf](https://github.com/protocolbuffers/protobuf)
-   “eigen” “v3\_3\_4a”
    -   [https://bitbucket.org/eigen/eigen](https://bitbucket.org/eigen/eigen)
-   “pandora” “v03\_11\_01”
    -   [https://github.com/PandoraPFA/PandoraSDK](https://github.com/PandoraPFA/PandoraSDK)
    -   John Marshall \<[marshall@hep.phy.cam.ac.uk](mailto:marshall@hep.phy.cam.ac.uk)\>
-   “wirecell” “v0\_8\_0”
    -   [https://github.com/WireCell/wire-cell-build](https://github.com/WireCell/wire-cell-build)
    -   Brett Viren \<[bv@bnl.gov](mailto:bv@bnl.gov)\>
-   “jsoncpp” “v1\_7\_7c”
    -   [https://github.com/open-source-parsers/jsoncpp](https://github.com/open-source-parsers/jsoncpp)
-   “jsonnet” “v0\_11\_2”
    -   [https://github.com/google/jsonnet](https://github.com/google/jsonnet)


### Fermilab packages[¶](#Fermilab-packages)

-   “artg4tk” “v08\_01\_00”
    -   [https://cdcvs.fnal.gov/redmine/projects/artg4tk/wiki](https://cdcvs.fnal.gov/redmine/projects/artg4tk/wiki)
    -   Hans Wenzel \<[wenzel@fnal.gov](mailto:wenzel@fnal.gov)\>
-   “nutools” “v2\_24\_04”
    -   [https://cdcvs.fnal.gov/redmine/projects/nutools/wiki](https://cdcvs.fnal.gov/redmine/projects/nutools/wiki)
    -   no license
    -   Brian J. Rebel x8226 14112N \<[brebel@fnal.gov](mailto:brebel@fnal.gov)\>, Alexander I. Himmel \<[ahimmel@fnal.gov](mailto:ahimmel@fnal.gov)\>
-   “nusimdata” “v1\_14\_01”
    -   subsidiary of nutools, no license


Products that nutools depends on directly[¶](#Products-that-nutools-depends-on-directly)
----------------------------------------------------------------------------------------


### External packages[¶](#External-packages-2)

-   “genie” “v2\_12\_10c”
    -   [https://genie.hepforge.org/](https://genie.hepforge.org/)
    -   local contact: Robert W Hatcher \<[rhatcher@fnal.gov](mailto:rhatcher@fnal.gov)\>
-   “lhapdf” “v5\_9\_1k”
    -   [https://lhapdf.hepforge.org/](https://lhapdf.hepforge.org/)
    -   We are (thanks to GENIE), using the old Fortran lhapdf code, which may have a different license
    -   [https://lhapdf.hepforge.org/lhapdf5/](https://lhapdf.hepforge.org/lhapdf5/)
-   “log4cpp” “v1\_1\_3a”
    -   [https://sourceforge.net/projects/log4cpp/](https://sourceforge.net/projects/log4cpp/)
-   “cry” “v1\_7k”
    -   [https://nuclear.llnl.gov/simulation/](https://nuclear.llnl.gov/simulation/)
-   “geant4” “v4\_10\_3\_p03c”
    -   [http://geant4.web.cern.ch/](http://geant4.web.cern.ch/)
-   “xerces\_c” “v3\_2\_0a”
    -   [https://xerces.apache.org/](https://xerces.apache.org/)


### Fermilab packages[¶](#Fermilab-packages-2)

-   art
-   dk2nu (which we build as two separate packages)
    -   “dk2nudata” “v01\_06\_01b”
    -   “dk2nugenie” “v01\_06\_01f”
    -   [https://cdcvs.fnal.gov/redmine/projects/dk2nu/wiki](https://cdcvs.fnal.gov/redmine/projects/dk2nu/wiki)
    -   Robert W Hatcher \<[rhatcher@fnal.gov](mailto:rhatcher@fnal.gov)\>
-   ifdh packages
    -   [https://cdcvs.fnal.gov/redmine/projects/ifdhc/wiki](https://cdcvs.fnal.gov/redmine/projects/ifdhc/wiki)
    -   “ifdh\_art” “v2\_06\_07”
        -   [https://cdcvs.fnal.gov/redmine/projects/ifdh-art/wiki](https://cdcvs.fnal.gov/redmine/projects/ifdh-art/wiki)
        -   [https://cdcvs.fnal.gov/redmine/projects/ifdh-art/repository](https://cdcvs.fnal.gov/redmine/projects/ifdh-art/repository)
        -   Marc Mengel \<[mengel@fnal.gov](mailto:mengel@fnal.gov)\>, SciSoft team \<[scisoft-team@fnal.gov](mailto:scisoft-team@fnal.gov)\>
    -   “ifbeam” “v2\_2\_7” ’
        -   [https://cdcvs.fnal.gov/redmine/projects/ifdhc/repository/ifbeam](https://cdcvs.fnal.gov/redmine/projects/ifdhc/repository/ifbeam)
        -   Marc Mengel \<[mengel@fnal.gov](mailto:mengel@fnal.gov)\>
    -   “ifdhc” “v2\_3\_6”
        -   [https://cdcvs.fnal.gov/redmine/projects/ifdhc/repository](https://cdcvs.fnal.gov/redmine/projects/ifdhc/repository)
        -   Marc Mengel \<[mengel@fnal.gov](mailto:mengel@fnal.gov)\>
    -   “nucondb” “v2\_2\_7”
        -   [https://cdcvs.fnal.gov/redmine/projects/ifdhc/repository/nucondb](https://cdcvs.fnal.gov/redmine/projects/ifdhc/repository/nucondb)
        -   Marc Mengel \<[mengel@fnal.gov](mailto:mengel@fnal.gov)\>
    -   “libwda” “v2\_26\_0”
        -   [https://cdcvs.fnal.gov/redmine/projects/ifdhc/repository/libwda](https://cdcvs.fnal.gov/redmine/projects/ifdhc/repository/libwda)
        -   Vladimir Podstavkov \<[podstvkv@fnal.gov](mailto:podstvkv@fnal.gov)\>


The art framework[¶](#The-art-framework)
----------------------------------------

The art framework is under the [BSD license](https://cdcvs.fnal.gov/redmine/projects/art/repository/revisions/develop/entry/LICENSE)


### Fermilab art framework packages[¶](#Fermilab-art-framework-packages)

1.  “art” “v2\_11\_03”
2.  “cetpkgsupport” “v1\_14\_01”
3.  “canvas\_root\_io” “v1\_01\_08”
4.  “canvas” “v3\_03\_03”
5.  “messagefacility” “v2\_02\_04”
6.  “fhiclcpp” “v4\_06\_08”
7.  “cetlib” “v3\_03\_01”
8.  “cetlib\_except” “v1\_02\_01”
9.  “hep\_concurrency” “v1\_00\_03”
10. “gallery” “v1\_08\_03”


### External packages[¶](#External-packages-3)

-   “gcc” “v7\_3\_0”
    -   [https://gcc.gnu.org/](https://gcc.gnu.org/)
-   “clang” “v5\_0\_1”
    -   [http://llvm.org/](http://llvm.org/)
-   “boost” “v1\_66\_0a”
    -   [https://www.boost.org/](https://www.boost.org/)
-   “sqlite” “v3\_20\_01\_00”
    -   [https://www.sqlite.org/index.html](https://www.sqlite.org/index.html)
-   “python” “v2\_7\_14b”
    -   [https://www.python.org/](https://www.python.org/)
-   “tbb” “v2018\_2a”
    -   [https://github.com/01org/tbb/](https://github.com/01org/tbb/)
-   “cppunit” “v1\_13\_2c”
    -   [https://dev-www.libreoffice.org/src/cppunit/](https://dev-www.libreoffice.org/src/cppunit/)
-   “clhep” “v2\_3\_4\_6”
    -   [http://proj-clhep.web.cern.ch/proj-clhep/](http://proj-clhep.web.cern.ch/proj-clhep/)
-   “range” “v3\_0\_3\_0”
    -   [https://github.com/ericniebler/range-v3](https://github.com/ericniebler/range-v3)
-   “root” “v6\_12\_06a”
    -   [https://root.cern.ch/](https://root.cern.ch/)
-   “fftw” “v3\_3\_6\_pl2”
    -   [http://www.fftw.org/](http://www.fftw.org/)
-   “gsl” “v2\_4”
    -   [https://www.gnu.org/software/gsl/](https://www.gnu.org/software/gsl/)
-   “pythia” “v6\_4\_28k”
    -   [https://pythiasix.hepforge.org/](https://pythiasix.hepforge.org/)
-   “postgresql” “v9\_6\_6a”
    -   [https://www.postgresql.org/](https://www.postgresql.org/)
-   pyscopg
    -   [http://initd.org/psycopg/](http://initd.org/psycopg/)
-   “mysql\_client” “v5\_5\_58a”
    -   [https://www.mysql.com/](https://www.mysql.com/)
    -   [https://dev.mysql.com/downloads/mysql/](https://dev.mysql.com/downloads/mysql/)
-   “libxml2” “v2\_9\_5”
    -   [http://xmlsoft.org/](http://xmlsoft.org/)
-   “xrootd” “v4\_8\_0b”
    -   [http://xrootd.org/](http://xrootd.org/)
