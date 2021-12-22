LArSoft v04\_06\_00 Release Notes(#LArSoft-v04_06_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v04\_06\_00 Release Notes](#LArSoft-v04_06_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04\_06\_00](#larsoft-v04_06_00)
    -   [lareventdisplay v04\_04\_00](#lareventdisplay-v04_04_00)
    -   [larexamples v04\_04\_00](#larexamples-v04_04_00)
    -   [larpandora v04\_04\_00](#larpandora-v04_04_00)
    -   [larana v04\_05\_00](#larana-v04_05_00)
    -   [larreco v04\_04\_00](#larreco-v04_04_00)
    -   [larsim v04\_05\_00](#larsim-v04_05_00)
    -   [larevt v04\_05\_00](#larevt-v04_05_00)
    -   [lardata v04\_05\_00](#lardata-v04_05_00)
    -   [larcore v04\_05\_00](#larcore-v04_05_00)
    -   [larbatch v01\_06\_00](#larbatch-v01_06_00)
    -   [larutils v1\_00\_08](#larutils-v1_00_08)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_06_00/larsoft-v04_06_00.html)

Purpose(#Purpose)
--------------------

Migrate to art v1\_13\_02 and pick up postgresql v9\_3\_6.

New features(#New-features)
------------------------------

-   CalibrationDBI is enabled in larevt
-   larpandora has been rewritten for pandora v01\_01\_00a
-   This release is built with art v1\_13\_02
-   The distribution qualifer set is now s8-e7 [AboutQualifiers](/redmine/projects/cet-is-public/wiki/AboutQualifiers)

Bug fixes(#Bug-fixes)
------------------------

-   [Art v1\_13\_02 Release Notes](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_11302)

Updated dependencies(#Updated-dependencies)
----------------------------------------------

  --------------- -------------- ------------------ -----------------------
  Product         Version        Qualifier          Notes
  artdaq\_core    v1\_04\_11     e7:nu:s8           
  nutools         v1\_09\_02     e7 and e7:noifdh   
  genie           v2\_8\_6a      e7                 
  dk2nu           v01\_01\_03a   e7                 
  pandora         v01\_01\_00a   e7:nu              
  postgresql      v9\_3\_6       p279               
  artextensions   v1\_01\_03     e7:nu:s8           
  ifdh\_art       v1\_09\_00     e7:nu:s8           not available for OSX
  nucondb         v1\_4\_9       e7:p279            not available for OSX
  ifbeam          v1\_4\_9       e7:p279            not available for OSX
  ifdhc           v1\_8\_2       e7:p279            not available for OSX
  libwda          v2\_21\_0                         works on OSX
  art             v1\_13\_02     e7:nu              
  root            v5\_34\_25a    e7:nu              
  cetbuildtools   v4\_09\_02                        
  cetpkgsupport   v1\_08\_05                        
  cmake           v3\_2\_1                          
  ups             v5\_1\_4                          
  --------------- -------------- ------------------ -----------------------

Change List(#Change-List)
============================

larsoft v04\_06\_00(#larsoft-v04_06_00)
------------------------------------------

-   2015-04-23 Lynn Garren : Merge branch ‘release/v04\_06\_00’
-   2015-04-23 Lynn Garren : larutils v1\_00\_08
-   2015-04-23 Lynn Garren : larsoft v04\_06\_00 for larsoft v04\_06\_00
-   2015-04-23 Lynn Garren : new products for art v1\_13\_02
-   2015-04-23 Lynn Garren : update releaseDB/base\_dependency\_database

lareventdisplay v04\_04\_00(#lareventdisplay-v04_04_00)
----------------------------------------------------------

-   2015-04-23 Lynn Garren : lareventdisplay v04\_04\_00 for larsoft v04\_06\_00

larexamples v04\_04\_00(#larexamples-v04_04_00)
--------------------------------------------------

-   2015-04-23 Lynn Garren : larexamples v04\_04\_00 for larsoft v04\_06\_00

larpandora v04\_04\_00(#larpandora-v04_04_00)
------------------------------------------------

-   2015-04-23 Lynn Garren : larpandora v04\_04\_00 for larsoft v04\_06\_00
-   2015-04-23 Lynn Garren : Merge branch ‘feature/blake\_pandora\_v1\_0\_0’ into release/v04\_06\_00
-   2015-04-23 Lynn Garren : larpandora v04\_04\_00 for larsoft v04\_06\_00
-   2015-03-13 Andrew Blake : Modifying cmake scripts to use external Pandoa version, and adding full paths to header files in LArPandoraInterface.
-   2015-03-13 Andrew Blake : Removing LArPandoraAlgorithms from larpandora repository

larana v04\_05\_00(#larana-v04_05_00)
----------------------------------------

-   2015-04-23 Lynn Garren : larana v04\_05\_00 for larsoft v04\_06\_00
-   2015-04-21 Alex Himmel : Bug fix to prevent attempts to use invalid handles. Occurs when all labels in the input array do not actually exist in the event. Fixes crashes in uboone cosmic MCC reconstruction.
-   2015-04-18 Alex Himmel : Don’t double count QE for Microboone (not currently an issues since uboone does not use opdetresponse in the digitizer).
-   2015-04-18 Alex Himmel : Only use input labels to the flash finder which have data on them. Already fixed in uboone production fcl files, but fix here also just in case.

larreco v04\_04\_00(#larreco-v04_04_00)
------------------------------------------

-   2015-04-23 Lynn Garren : larreco v04\_04\_00 for larsoft v04\_06\_00
-   2015-04-20 Tingjun Yang : Add protection.
-   2015-04-17 Gianluca Petrillo : ClusterCrawlerAlg: fixed a bug in sorting hits by index
-   2015-04-15 Tingjun Yang : change wirehitrange from short to int
-   2015-04-23 Tingjun Yang : Make the sizes of trkPos and trkDir equal.
-   2015-04-22 Tingjun Yang : Change unsigned short to unsigned int since size of matcomb can exceed 65534.
-   2015-04-19 Tingjun Yang : Check trk[itr].nDtr is less than 20 (the array size).
-   2015-04-16 Kalousis Leonidas : Add a separate MCS muon LLHD function

larsim v04\_05\_00(#larsim-v04_05_00)
----------------------------------------

-   2015-04-23 Lynn Garren : larsim v04\_05\_00 for larsoft v04\_06\_00

larevt v04\_05\_00(#larevt-v04_05_00)
----------------------------------------

-   2015-04-23 Lynn Garren : larevt v04\_05\_00 for larsoft v04\_06\_00
-   2015-04-23 Lynn Garren : minimum release libwda v2\_21\_0
-   2015-04-23 Lynn Garren : Merge branch ‘feature/eberly\_calibdb’ into release/v04\_06\_00
-   2015-04-23 Lynn Garren : larevt v04\_05\_00 for larsoft v04\_06\_00
-   2015-04-15 Lynn Garren : use find\_library to get the correct library name on all supported platforms
-   2015-04-15 Lynn Garren : libwda v2\_21\_0\_rc1 is available for all supported platforms
-   2015-04-15 Lynn Garren : use find\_ups\_product(libwda)

lardata v04\_05\_00(#lardata-v04_05_00)
------------------------------------------

-   2015-04-23 Lynn Garren : lardata v04\_05\_00 for larsoft v04\_06\_00

larcore v04\_05\_00(#larcore-v04_05_00)
------------------------------------------

-   2015-04-23 Lynn Garren : larcore v04\_05\_00 for larsoft v04\_06\_00

larbatch v01\_06\_00(#larbatch-v01_06_00)
--------------------------------------------

-   2015-04-23 Lynn Garren : larbatch v01\_06\_00 for larsoft v04\_06\_00
-   2015-04-23 Herbert Greenlee : Fix randomized name of analysis files.
-   2015-04-21 Herbert Greenlee : Set subrun for makeup generation jobs.
-   2015-04-21 Mike Kirby : Made modifications to larbatch to allow for sending only once file as input to each job. This adds “–nfiles \<maxfilesperjob\>” to the condor\_lar.sh command line options.

larutils v1\_00\_08(#larutils-v1_00_08)
------------------------------------------

-   2015-04-23 Lynn Garren : Merge branch ‘release/v04\_06\_00’
-   2015-04-23 Lynn Garren : larutils v1\_00\_08
-   2015-04-23 Lynn Garren : add s8 for art v1\_13\_02
