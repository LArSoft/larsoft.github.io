# Release Notes 1.01.00

This is the first build with art v1_09_02. The code used for the v1_01_00 tag is identical to the code used for the v1_00_08 tag, with the exception of ups/product_deps in each package.

## Comments

This release is built with gcc 4.8.2 and cmake 2.8.12.2. The combination of new gcc and cmake is required for the Mavericks build. Many other packages have been updated as well. However, there are no changes required to the code. The build simply uses the new set of products.

This cmake warning is ignorable: Obsolete function cet_check_gcc called — NOP.

## Product Comparison

In many cases, only the build changed. In other cases, picking up the latest release solved OSX build problems.

|                 |                |                |                                                                                                                   |
|-----------------|----------------|----------------|-------------------------------------------------------------------------------------------------------------------|
| **Product**     | **v1_00_08**   | **v1_01_00**   | **notes**                                                                                                         |
| ups             | v5_0_4        | v5_0_5        |                                                                                                                   |
| cmake           | v2_8_8        | v2_8_12_2     | improved OSX and compiler support                                                                                 |
| gcc             | v4_8_1        | v4_8_2        | new qualifiers e5 and gcc482                                                                                      |
| boost           | v1_53_0        | v1_55_0        | https://www.boost.org/users/history/version_1_55_0.html                                                           |
| fftw            | v3_3_3        | v3_3_3        |                                                                                                                   |
| sqlite          | v3_08_00_02    | v3_08_03_00    | https://www.sqlite.org/releaselog/3_8_3.html                                                                      |
| python          | v2_7_5c       | v2_7_6        |                                                                                                                   |
| cppunit         | v1_12_1        | v1_12_1        |                                                                                                                   |
| gccxml          | v0_9_20130621 | v0_9_20131217 |                                                                                                                   |
| clhep           | v2_1_3_1      | v2_1_4_1      | https://svnweb.cern.ch/world/wsvn/clhep/tags/CLHEP_2_1_4_1/ChangeLog                                             |
| libxml2         | v2_9_1        | v2_9_1        |                                                                                                                   |
| tbb             | v4_1_3        | v4_2_3        | https://software.intel.com/sites/default/files/release_notes_tbb_4.2_update3.txt                                  |
| xrootd          | v3_3_4        | v3_3_6a       | build protection against accidental inclusion of non-system libevent2                                             |
| xerces_c        | v3_1_1        | v3_1_1a       | table file cleanup - only support gcc 4.8.1 and 4.8.2                                                             |
| cry             | v1_7           | v1_7a          | table file cleanup - only support e4 and e5                                                                       |
| lhapdf          | v5_9_1        | v5_9_1        |                                                                                                                   |
| log4cpp         | v1_1           | v1_1_1        |                                                                                                                   |
| mysql_client    | v5_5_27       | v5_5_36       |                                                                                                                   |
| postgresql      | v9_1_5b       | v9_1_12       |                                                                                                                   |
| pythia          | v6_4_28       | v6_4_28a      | add e5 support                                                                                                    |
| geant4          | v4_9_6_p02    | v4_9_6_p02b   | backported correction to PENELOPE code from Krzysztof Genser                                                      |
| gsl             | v1_16          | v1_16          |                                                                                                                   |
| root            | v5_34_12       | v5_34_18       | https://root.cern.ch/drupal/content/root-version-v5-34-00-patch-release-notes                                      |
| pandora         | v00_13a        | v00_13b        | uses root v5_34_18                                                                                                |
| genie           | v2_8_0d       | v2_8_0e       | uses root v5_34_18, pythia v6_4_28a, and log4cpp v1_1_1                                                         |
| cstxsd          | v3_3_0_p02a   | v3_3_0_p02b   | uses Boost 1.55.0 and xerces_c v3_1_1a                                                                           |
| cetpkgsupport   | v1_05_03       | v1_05_03       |                                                                                                                   |
| cetbuildtools   | v3_07_11       | v3_10_01       | changes required to use cmake 2.8.12.2 (https://cdcvs.fnal.gov/redmine/projects/cetbuildtools/wiki/Release_Notes) |
| cpp0x           | v1_03_25       | v1_04_03       |                                                                                                                   |
| cetlib          | v1_03_25       | v1_04_03       |                                                                                                                   |
| fhiclcpp        | v2_17_12       | v2_18_03       |                                                                                                                   |
| messagefacility | v1_10_26       | v1_11_03       |                                                                                                                   |
| art             | v1_08_10       | v1_09_02       | https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_10902                                              |
| nutools         | v1_01_05       | v1_02_00       | use art v1_09_02                                                                                                  |
| pdfsets         | v5_9_1        | v5_9_1        |                                                                                                                   |
| g4emlow         | v6_32          | v6_32          |                                                                                                                   |
| g4neutron       | v4_2           | v4_2           |                                                                                                                   |
| g4neutronxs     | v1_2           | v1_2           |                                                                                                                   |
| g4nucleonxs     | v1_1           | v1_1           |                                                                                                                   |
| g4photon        | v2_3           | v3_0           | superset of v2_3 with new files needed for geant4 v4_9_6_p02b                                                    |
| g4pii           | v1_3           | v1_3           |                                                                                                                   |
| g4radiative     | v3_6           | v4_0           | superset of v3_6 with new files needed for geant4 v4_9_6_p02b                                                    |
| g4surface       | v1_0           | v1_0           |                                                                                                                   |
| genie_phyopt    | R-2_8_0       | R-2_8_0       |                                                                                                                   |
| genie_xsec      | R-2_8_0       | R-2_8_0       |                                                                                                                   |
| libwda          | v2_9_5        | v2_9_5        |                                                                                                                   |
| ifdhc           | v1_4_1        | v1_4_1        |                                                                                                                   |
| ifbeam          | v1_4_1        | v1_4_1        |                                                                                                                   |
| nucondb         | v1_4_1        | v1_4_1        |                                                                                                                   |
| ifdh_art        | v1_4_1        | v1_4_1a       | use art v1_09_02                                                                                                  |
| larcore         | v1_00_08       | v1_01_00       | use art v1_09_02                                                                                                  |
| lardata         | v1_00_08       | v1_01_00       | use art v1_09_02                                                                                                  |
| larevt          | v1_00_08       | v1_01_00       | use art v1_09_02                                                                                                  |
| larsim          | v1_00_08       | v1_01_00       | use art v1_09_02                                                                                                  |
| larreco         | v1_00_08       | v1_01_00       | use art v1_09_02                                                                                                  |
| larana          | v1_00_08       | v1_01_00       | use art v1_09_02                                                                                                  |
| larpandora      | v1_00_08       | v1_01_00       | use art v1_09_02                                                                                                  |
| larexamples     | v1_00_08       | v1_01_00       | use art v1_09_02                                                                                                  |
| lareventdisplay | v1_00_08       | v1_01_00       | use art v1_09_02                                                                                                  |
| larsoft         | v1_00_08       | v1_01_00       | use art v1_09_02                                                                                                  |
| larsoft_data    | v0_00_04       | v0_00_04       |                                                                                                                   |
| git             | v1_8_5_3      | v1_8_5_3      |                                                                                                                   |
| gitflow         | v0_4_2_pre    | v0_4_2_pre    |                                                                                                                   |
| mrb             | v0_08_01       | v0_08_02       | https://cdcvs.fnal.gov/redmine/projects/mrb/wiki/Mrb_beta_v0_08_02                                                |
