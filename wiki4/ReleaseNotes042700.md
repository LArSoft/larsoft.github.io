LArSoft v04\_27\_00 Release Notes[¶](#LArSoft-v04_27_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v04\_27\_00 Release Notes](#LArSoft-v04_27_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04\_27\_00](#larsoft-v04_27_00)
    -   [lareventdisplay v04\_11\_00](#lareventdisplay-v04_11_00)
    -   [larexamples v04\_06\_00](#larexamples-v04_06_00)
    -   [larpandora v04\_08\_00](#larpandora-v04_08_00)
    -   [larana v04\_15\_00](#larana-v04_15_00)
    -   [larreco v04\_20\_00](#larreco-v04_20_00)
    -   [larsim v04\_13\_00](#larsim-v04_13_00)
    -   [larevt v04\_13\_00](#larevt-v04_13_00)
    -   [lardata v04\_16\_00](#lardata-v04_16_00)
    -   [larcore v04\_18\_00](#larcore-v04_18_00)
    -   [larbatch v01\_18\_00](#larbatch-v01_18_00)
    -   [larutils v1\_04\_00](#larutils-v1_04_00)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_27_00/larsoft-v04_27_00.html)


Purpose[¶](#Purpose)
--------------------

-   use art v1\_16\_02
    -   [Release\_Notes\_11602](/redmine/projects/art/wiki/Release_Notes_11602)
    -   changes to gcc, python, root, and other products
    -   [presentation](https://indico.fnal.gov/getFile.py/access?contribId=11&resId=1&materialId=slides&confId=10545)
-   except for required changes, the code is identical to v04\_26\_02


New features[¶](#New-features)
------------------------------

-   built with art v1\_16\_02 (s18) and gcc v4\_9\_3 (e9)
-   OSX builds on XCode 7.x require a patch that is in gcc v4\_9\_3
-   see feature/for\_art\_v1\_16\_02 for argoneutcode, dunetpc, duneutil, uboonecode, ubutil


Bug fixes[¶](#Bug-fixes)
------------------------

-   dealt with a few new unused variable reports


Updated dependencies[¶](#Updated-dependencies)
----------------------------------------------

Product

larsoft v04\_26\_02

larsoft v04\_27\_00

Notes

ups

v5\_2\_0

v5\_2\_0

upd

v5\_0\_1

v5\_0\_1

cmake

v3\_0\_1

drop older cmake releases

cmake

v3\_1\_2

v3\_2\_1

cmake

v3\_2\_1

**v3\_3\_2**

gcc

v4\_9\_2

**v4\_9\_3**

gdb

v7\_9

v7\_9

valgrind

**v3\_11\_0**

getopt

v1\_1\_6

v1\_1\_6

OSX only

git

v2\_4\_6

v2\_4\_6

gitflow

v1\_8\_0

**v1\_8\_0a**

setup getopt on OSX

boost

v1\_57\_0

**v1\_57\_0a**

fftw

v3\_3\_4

v3\_3\_4

sqlite

v3\_08\_08\_02

**v3\_08\_10\_02**

python

v2\_7\_9

**v2\_7\_10**

cppunit

v1\_12\_1b

**v1\_12\_1c**

gccxml

v0\_9\_20140718a

**v0\_9\_20150423**

ninja

**v1\_6\_0a**

needs to build with python v2\_7\_10

clhep

v2\_2\_0\_5

**v2\_2\_0\_8**

libxml2

v2\_9\_2

v2\_9\_2

tbb

v4\_3\_5

**v4\_4\_0**

xrootd

v3\_3\_4c

**v3\_3\_4d**

xerces\_c

v3\_1\_1d

**v3\_1\_2**

cry

v1\_7d

**v1\_7e**

lhapdf

v5\_9\_1c

**v5\_9\_1d**

log4cpp

v1\_1\_1c

**v1\_1\_1d**

mysql\_client

v5\_5\_42

**v5\_5\_45**

postgresql

v9\_3\_6

**v9\_3\_9**

pythia

v6\_4\_28c

**v6\_4\_28d**

gsl

v1\_16

**v1\_16a**

root

v5\_34\_30

**v5\_34\_32**

genie

v2\_8\_6c

**v2\_8\_6d**

dk2nu

v01\_01\_03c

**v01\_02\_00**

per NOvA request

cstxsd

v4\_0\_0c

**v4\_0\_0d**

qt

v5\_4\_2

**v5\_4\_2a**

geant4

v4\_9\_6\_p04b

**v4\_9\_6\_p04c**

pdfsets

v5\_9\_1b

v5\_9\_1b

g4emlow

v6\_32

v6\_32

g4neutron

v4\_2

v4\_2

g4neutronxs

v1\_2

v1\_2

g4nucleonxs

v1\_1

v1\_1

g4photon

v3\_0

v3\_0

g4pii

v1\_3

v1\_3

g4radiative

v4\_0

v4\_0

g4surface

v1\_0

v1\_0

genie\_phyopt

v2\_8\_6

v2\_8\_6

genie\_xsec

v2\_8\_6a

v2\_8\_6a

libwda

v2\_22\_0

v2\_22\_0

ifdhc

v1\_8\_7

v1\_8\_7

ifbeam

v1\_4\_15

v1\_4\_15

nucondb

v1\_4\_14

v1\_4\_15

ifdh\_art

v1\_12\_06

**v1\_13\_02**

artdaq\_core

v1\_04\_17

**v1\_04\_18**

cetpkgsupport

v1\_08\_06

**v1\_08\_07**

cetbuildtools

v4\_14\_01

**v4\_14\_02**

bug fix for ALLOW\_DEPRECATIONS

cpp0x

v1\_04\_10

**v1\_04\_12**

cetlib

v1\_12\_02

**v1\_15\_01**

fhiclcpp

v3\_06\_01

**v3\_12\_04**

messagefacility

v1\_14\_07

**v1\_16\_05**

art

v1\_15\_02

**v1\_16\_02**

artdaq\_core

v1\_04\_17

**v1\_04\_19**

nutools

v1\_14\_05

**v1\_15\_02**

artextensions

v1\_01\_08

**v1\_02\_00**

pandora

v02\_03\_00

**v02\_03\_00a**

larpandoracontent

v02\_03\_00

**v02\_03\_00a**

larsoft\_data

v0\_05\_00

v0\_05\_00

mrb

v1\_05\_03

v1\_05\_03


Change List[¶](#Change-List)
============================


larsoft v04\_27\_00[¶](#larsoft-v04_27_00)
------------------------------------------

-   2015-10-16 Lynn Garren : larsoft v04\_27\_00 for larsoft v04\_27\_00
-   2015-10-16 Lynn Garren : fix product versions
-   2015-10-16 Lynn Garren : update dependency database
-   2015-10-16 Lynn Garren : Merge branch ‘develop’ into release/v04\_27\_00
-   2015-10-16 Lynn Garren : larsoft v04\_26\_02
-   2015-10-16 Lynn Garren : use larbase
-   2015-10-15 Lynn Garren : use art v1\_16\_02 and adding larbase distribution
-   2015-10-14 Lynn Garren : libwda v2\_22\_0 and ifdhc v1\_8\_7


lareventdisplay v04\_11\_00[¶](#lareventdisplay-v04_11_00)
----------------------------------------------------------

-   2015-10-16 Lynn Garren : lareventdisplay v04\_11\_00 for larsoft v04\_27\_00
-   2015-10-16 Lynn Garren : just draw the line


larexamples v04\_06\_00[¶](#larexamples-v04_06_00)
--------------------------------------------------

-   2015-10-16 Lynn Garren : larexamples v04\_06\_00 for larsoft v04\_27\_00


larpandora v04\_08\_00[¶](#larpandora-v04_08_00)
------------------------------------------------

-   2015-10-16 Lynn Garren : larpandora v04\_08\_00 for larsoft v04\_27\_00


larana v04\_15\_00[¶](#larana-v04_15_00)
----------------------------------------

-   2015-10-16 Lynn Garren : larana v04\_15\_00 for larsoft v04\_27\_00


larreco v04\_20\_00[¶](#larreco-v04_20_00)
------------------------------------------

-   2015-10-16 Lynn Garren : larreco v04\_20\_00 for larsoft v04\_27\_00
-   2015-10-16 Lynn Garren : channelStatus is unused


larsim v04\_13\_00[¶](#larsim-v04_13_00)
----------------------------------------

-   2015-10-16 Lynn Garren : larsim v04\_13\_00 for larsoft v04\_27\_00


larevt v04\_13\_00[¶](#larevt-v04_13_00)
----------------------------------------

-   2015-10-16 Lynn Garren : larevt v04\_13\_00 for larsoft v04\_27\_00


lardata v04\_16\_00[¶](#lardata-v04_16_00)
------------------------------------------

-   2015-10-16 Lynn Garren : lardata v04\_16\_00 for larsoft v04\_27\_00
-   2015-10-15 Lynn Garren : use proper names for boost libraries


larcore v04\_18\_00[¶](#larcore-v04_18_00)
------------------------------------------

-   2015-10-16 Lynn Garren : larcore v04\_18\_00 for larsoft v04\_27\_00
-   2015-10-15 Lynn Garren : ignore unused variables for now


larbatch v01\_18\_00[¶](#larbatch-v01_18_00)
--------------------------------------------


larutils v1\_04\_00[¶](#larutils-v1_04_00)
------------------------------------------
