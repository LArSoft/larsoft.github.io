LArSoft v04_27_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v04_27_00 Release Notes](#LArSoft-v04_27_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04_27_00](#larsoft-v04_27_00)
    -   [lareventdisplay v04_11_00](#lareventdisplay-v04_11_00)
    -   [larexamples v04_06_00](#larexamples-v04_06_00)
    -   [larpandora v04_08_00](#larpandora-v04_08_00)
    -   [larana v04_15_00](#larana-v04_15_00)
    -   [larreco v04_20_00](#larreco-v04_20_00)
    -   [larsim v04_13_00](#larsim-v04_13_00)
    -   [larevt v04_13_00](#larevt-v04_13_00)
    -   [lardata v04_16_00](#lardata-v04_16_00)
    -   [larcore v04_18_00](#larcore-v04_18_00)
    -   [larbatch v01_18_00](#larbatch-v01_18_00)
    -   [larutils v1_04_00](#larutils-v1_04_00)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_27_00/larsoft-v04_27_00.html)

Purpose
--------------------

-   use art v1_16_02
    -   [Release_Notes_11602](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_11602)
    -   changes to gcc, python, root, and other products
    -   [presentation](https://indico.fnal.gov/getFile.py/access?contribId=11&resId=1&materialId=slides&confId=10545)
-   except for required changes, the code is identical to v04_26_02

New features
------------------------------

-   built with art v1_16_02 (s18) and gcc v4_9_3 (e9)
-   OSX builds on XCode 7.x require a patch that is in gcc v4_9_3
-   see feature/for_art_v1_16_02 for argoneutcode, dunetpc, duneutil, uboonecode, ubutil

Bug fixes
------------------------

-   dealt with a few new unused variable reports

Updated dependencies
----------------------------------------------

Product

larsoft v04_26_02

larsoft v04_27_00

Notes

ups

v5_2_0

v5_2_0

upd

v5_0_1

v5_0_1

cmake

v3_0_1

drop older cmake releases

cmake

v3_1_2

v3_2_1

cmake

v3_2_1

**v3_3_2**

gcc

v4_9_2

**v4_9_3**

gdb

v7_9

v7_9

valgrind

**v3_11_0**

getopt

v1_1_6

v1_1_6

OSX only

git

v2_4_6

v2_4_6

gitflow

v1_8_0

**v1_8_0a**

setup getopt on OSX

boost

v1_57_0

**v1_57_0a**

fftw

v3_3_4

v3_3_4

sqlite

v3_08_08_02

**v3_08_10_02**

python

v2_7_9

**v2_7_10**

cppunit

v1_12_1b

**v1_12_1c**

gccxml

v0_9_20140718a

**v0_9_20150423**

ninja

**v1_6_0a**

needs to build with python v2_7_10

clhep

v2_2_0_5

**v2_2_0_8**

libxml2

v2_9_2

v2_9_2

tbb

v4_3_5

**v4_4_0**

xrootd

v3_3_4c

**v3_3_4d**

xerces_c

v3_1_1d

**v3_1_2**

cry

v1_7d

**v1_7e**

lhapdf

v5_9_1c

**v5_9_1d**

log4cpp

v1_1_1c

**v1_1_1d**

mysql_client

v5_5_42

**v5_5_45**

postgresql

v9_3_6

**v9_3_9**

pythia

v6_4_28c

**v6_4_28d**

gsl

v1_16

**v1_16a**

root

v5_34_30

**v5_34_32**

genie

v2_8_6c

**v2_8_6d**

dk2nu

v01_01_03c

**v01_02_00**

per NOvA request

cstxsd

v4_0_0c

**v4_0_0d**

qt

v5_4_2

**v5_4_2a**

geant4

v4_9_6_p04b

**v4_9_6_p04c**

pdfsets

v5_9_1b

v5_9_1b

g4emlow

v6_32

v6_32

g4neutron

v4_2

v4_2

g4neutronxs

v1_2

v1_2

g4nucleonxs

v1_1

v1_1

g4photon

v3_0

v3_0

g4pii

v1_3

v1_3

g4radiative

v4_0

v4_0

g4surface

v1_0

v1_0

genie_phyopt

v2_8_6

v2_8_6

genie_xsec

v2_8_6a

v2_8_6a

libwda

v2_22_0

v2_22_0

ifdhc

v1_8_7

v1_8_7

ifbeam

v1_4_15

v1_4_15

nucondb

v1_4_14

v1_4_15

ifdh_art

v1_12_06

**v1_13_02**

artdaq_core

v1_04_17

**v1_04_18**

cetpkgsupport

v1_08_06

**v1_08_07**

cetbuildtools

v4_14_01

**v4_14_02**

bug fix for ALLOW_DEPRECATIONS

cpp0x

v1_04_10

**v1_04_12**

cetlib

v1_12_02

**v1_15_01**

fhiclcpp

v3_06_01

**v3_12_04**

messagefacility

v1_14_07

**v1_16_05**

art

v1_15_02

**v1_16_02**

artdaq_core

v1_04_17

**v1_04_19**

nutools

v1_14_05

**v1_15_02**

artextensions

v1_01_08

**v1_02_00**

pandora

v02_03_00

**v02_03_00a**

larpandoracontent

v02_03_00

**v02_03_00a**

larsoft_data

v0_05_00

v0_05_00

mrb

v1_05_03

v1_05_03

Change List
============================

larsoft v04_27_00
------------------------------------------

-   2015-10-16 Lynn Garren : larsoft v04_27_00 for larsoft v04_27_00
-   2015-10-16 Lynn Garren : fix product versions
-   2015-10-16 Lynn Garren : update dependency database
-   2015-10-16 Lynn Garren : Merge branch ‘develop’ into release/v04_27_00
-   2015-10-16 Lynn Garren : larsoft v04_26_02
-   2015-10-16 Lynn Garren : use larbase
-   2015-10-15 Lynn Garren : use art v1_16_02 and adding larbase distribution
-   2015-10-14 Lynn Garren : libwda v2_22_0 and ifdhc v1_8_7

lareventdisplay v04_11_00
----------------------------------------------------------

-   2015-10-16 Lynn Garren : lareventdisplay v04_11_00 for larsoft v04_27_00
-   2015-10-16 Lynn Garren : just draw the line

larexamples v04_06_00
--------------------------------------------------

-   2015-10-16 Lynn Garren : larexamples v04_06_00 for larsoft v04_27_00

larpandora v04_08_00
------------------------------------------------

-   2015-10-16 Lynn Garren : larpandora v04_08_00 for larsoft v04_27_00

larana v04_15_00
----------------------------------------

-   2015-10-16 Lynn Garren : larana v04_15_00 for larsoft v04_27_00

larreco v04_20_00
------------------------------------------

-   2015-10-16 Lynn Garren : larreco v04_20_00 for larsoft v04_27_00
-   2015-10-16 Lynn Garren : channelStatus is unused

larsim v04_13_00
----------------------------------------

-   2015-10-16 Lynn Garren : larsim v04_13_00 for larsoft v04_27_00

larevt v04_13_00
----------------------------------------

-   2015-10-16 Lynn Garren : larevt v04_13_00 for larsoft v04_27_00

lardata v04_16_00
------------------------------------------

-   2015-10-16 Lynn Garren : lardata v04_16_00 for larsoft v04_27_00
-   2015-10-15 Lynn Garren : use proper names for boost libraries

larcore v04_18_00
------------------------------------------

-   2015-10-16 Lynn Garren : larcore v04_18_00 for larsoft v04_27_00
-   2015-10-15 Lynn Garren : ignore unused variables for now

larbatch v01_18_00
--------------------------------------------

larutils v1_04_00
------------------------------------------
