Release Notes 1.01.00(#Release-Notes-10100)
==============================================

This is the first build with art v1\_09\_02. The code used for the v1\_01\_00 tag is identical to the code used for the v1\_00\_08 tag, with the exception of ups/product\_deps in each package.

Comments(#Comments)
----------------------

This release is built with gcc 4.8.2 and cmake 2.8.12.2. The combination of new gcc and cmake is required for the Mavericks build. Many other packages have been updated as well. However, there are no changes required to the code. The build simply uses the new set of products.

This cmake warning is ignorable: Obsolete function cet\_check\_gcc called – NOP.

Product Comparison(#Product-Comparison)
------------------------------------------

In many cases, only the build changed. In other cases, picking up the latest release solved OSX build problems.

  ----------------- ----------------- ----------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  **Product**       **v1\_00\_08**    **v1\_01\_00**    **notes**
  ups               v5\_0\_4          v5\_0\_5          
  cmake             v2\_8\_8          v2\_8\_12\_2      improved OSX and compiler support
  gcc               v4\_8\_1          v4\_8\_2          new qualifiers e5 and gcc482
  boost             v1\_53\_0         v1\_55\_0         [http://www.boost.org/users/history/version\_1\_55\_0.html](http://www.boost.org/users/history/version_1_55_0.html)
  fftw              v3\_3\_3          v3\_3\_3          
  sqlite            v3\_08\_00\_02    v3\_08\_03\_00    [http://www.sqlite.org/releaselog/3\_8\_3.html](http://www.sqlite.org/releaselog/3_8_3.html)
  python            v2\_7\_5c         v2\_7\_6          
  cppunit           v1\_12\_1         v1\_12\_1         
  gccxml            v0\_9\_20130621   v0\_9\_20131217   
  clhep             v2\_1\_3\_1       v2\_1\_4\_1       [http://svnweb.cern.ch/world/wsvn/clhep/tags/CLHEP\_2\_1\_4\_1/ChangeLog](http://svnweb.cern.ch/world/wsvn/clhep/tags/CLHEP_2_1_4_1/ChangeLog)
  libxml2           v2\_9\_1          v2\_9\_1          
  tbb               v4\_1\_3          v4\_2\_3          [https://software.intel.com/sites/default/files/release\_notes\_tbb\_4.2\_update3.txt](https://software.intel.com/sites/default/files/release_notes_tbb_4.2_update3.txt)
  xrootd            v3\_3\_4          v3\_3\_6a         build protection against accidental inclusion of non-system libevent2
  xerces\_c         v3\_1\_1          v3\_1\_1a         table file cleanup - only support gcc 4.8.1 and 4.8.2
  cry               v1\_7             v1\_7a            table file cleanup - only support e4 and e5
  lhapdf            v5\_9\_1          v5\_9\_1          
  log4cpp           v1\_1             v1\_1\_1          
  mysql\_client     v5\_5\_27         v5\_5\_36         
  postgresql        v9\_1\_5b         v9\_1\_12         
  pythia            v6\_4\_28         v6\_4\_28a        add e5 support
  geant4            v4\_9\_6\_p02     v4\_9\_6\_p02b    backported correction to PENELOPE code from Krzysztof Genser
  gsl               v1\_16            v1\_16            
  root              v5\_34\_12        v5\_34\_18        [http://root.cern.ch/drupal/content/root-version-v5-34-00-patch-release-notes](http://root.cern.ch/drupal/content/root-version-v5-34-00-patch-release-notes)
  pandora           v00\_13a          v00\_13b          uses root v5\_34\_18
  genie             v2\_8\_0d         v2\_8\_0e         uses root v5\_34\_18, pythia v6\_4\_28a, and log4cpp v1\_1\_1
  cstxsd            v3\_3\_0\_p02a    v3\_3\_0\_p02b    uses Boost 1.55.0 and xerces\_c v3\_1\_1a
  cetpkgsupport     v1\_05\_03        v1\_05\_03        
  cetbuildtools     v3\_07\_11        v3\_10\_01        changes required to use cmake 2.8.12.2 ([https://cdcvs.fnal.gov/redmine/projects/cetbuildtools/wiki/Release\_Notes](https://cdcvs.fnal.gov/redmine/projects/cetbuildtools/wiki/Release_Notes))
  cpp0x             v1\_03\_25        v1\_04\_03        
  cetlib            v1\_03\_25        v1\_04\_03        
  fhiclcpp          v2\_17\_12        v2\_18\_03        
  messagefacility   v1\_10\_26        v1\_11\_03        
  art               v1\_08\_10        v1\_09\_02        [https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release\_Notes\_10902](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_10902)
  nutools           v1\_01\_05        v1\_02\_00        use art v1\_09\_02
  pdfsets           v5\_9\_1          v5\_9\_1          
  g4emlow           v6\_32            v6\_32            
  g4neutron         v4\_2             v4\_2             
  g4neutronxs       v1\_2             v1\_2             
  g4nucleonxs       v1\_1             v1\_1             
  g4photon          v2\_3             v3\_0             superset of v2\_3 with new files needed for geant4 v4\_9\_6\_p02b
  g4pii             v1\_3             v1\_3             
  g4radiative       v3\_6             v4\_0             superset of v3\_6 with new files needed for geant4 v4\_9\_6\_p02b
  g4surface         v1\_0             v1\_0             
  genie\_phyopt     R-2\_8\_0         R-2\_8\_0         
  genie\_xsec       R-2\_8\_0         R-2\_8\_0         
  libwda            v2\_9\_5          v2\_9\_5          
  ifdhc             v1\_4\_1          v1\_4\_1          
  ifbeam            v1\_4\_1          v1\_4\_1          
  nucondb           v1\_4\_1          v1\_4\_1          
  ifdh\_art         v1\_4\_1          v1\_4\_1a         use art v1\_09\_02
  larcore           v1\_00\_08        v1\_01\_00        use art v1\_09\_02
  lardata           v1\_00\_08        v1\_01\_00        use art v1\_09\_02
  larevt            v1\_00\_08        v1\_01\_00        use art v1\_09\_02
  larsim            v1\_00\_08        v1\_01\_00        use art v1\_09\_02
  larreco           v1\_00\_08        v1\_01\_00        use art v1\_09\_02
  larana            v1\_00\_08        v1\_01\_00        use art v1\_09\_02
  larpandora        v1\_00\_08        v1\_01\_00        use art v1\_09\_02
  larexamples       v1\_00\_08        v1\_01\_00        use art v1\_09\_02
  lareventdisplay   v1\_00\_08        v1\_01\_00        use art v1\_09\_02
  larsoft           v1\_00\_08        v1\_01\_00        use art v1\_09\_02
  larsoft\_data     v0\_00\_04        v0\_00\_04        
  git               v1\_8\_5\_3       v1\_8\_5\_3       
  gitflow           v0\_4\_2\_pre     v0\_4\_2\_pre     
  mrb               v0\_08\_01        v0\_08\_02        [https://cdcvs.fnal.gov/redmine/projects/mrb/wiki/Mrb\_beta\_v0\_08\_02](https://cdcvs.fnal.gov/redmine/projects/mrb/wiki/Mrb_beta_v0_08_02)
  ----------------- ----------------- ----------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
