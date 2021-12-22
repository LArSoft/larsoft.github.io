LArSoft v06\_34\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06\_34\_00 Release Notes](#LArSoft-v06_34_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_34\_00](#larsoft-v06_34_00)
    -   [lareventdisplay v06\_05\_02](#lareventdisplay-v06_05_02)
    -   [larexamples v06\_03\_02](#larexamples-v06_03_02)
    -   [larpandora v06\_10\_02](#larpandora-v06_10_02)
    -   [larwirecell v06\_04\_02](#larwirecell-v06_04_02)
    -   [larana v06\_05\_02](#larana-v06_05_02)
    -   [larreco v06\_26\_00](#larreco-v06_26_00)
    -   [larsim v06\_20\_00](#larsim-v06_20_00)
    -   [larevt v06\_13\_00](#larevt-v06_13_00)
    -   [lardata v06\_20\_01](#lardata-v06_20_01)
    -   [larcore v06\_09\_01](#larcore-v06_09_01)
    -   [larpandoracontent v03\_04\_00](#larpandoracontent-v03_04_00)
    -   [larsoftobj v1\_19\_01](#larsoftobj-v1_19_01)
    -   [lardataobj v1\_15\_02](#lardataobj-v1_15_02)
    -   [larcoreobj v1\_13\_01](#larcoreobj-v1_13_01)
    -   [larbatch v01\_31\_00](#larbatch-v01_31_00)
    -   [larutils v1\_12\_04](#larutils-v1_12_04)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_34\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_34_00/larsoft-v06_34_00.html)\
Download instructions for [just larsoftobj v1\_19\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_19_01/larsoftobj-v1_19_01.html)

Purpose
--------------------

-   changes to develop since v06\_34\_00
-   approved feature branches

New features
------------------------------

-   larreco feature/usher\_gaushit\_icarus
    -   fix the cluster3d deprecated warning
    -   fixes for gaushit finder which reconcile the interchanged use of “plane” and “view”
-   larevt and uboonecode feature/eberly\_fwsearchpath
    -   the default Single-IOV calibration providers have been modified to look for calibration files using a relative search path, FW\_SEARCH\_PATH, so that this option can be used for production jobs.

Bug fixes
------------------------

-   Scintillation By Particle Type bug [\#16344](/redmine/issues/16344 "Bug: Scintillation By Particle Type bug (Closed)")
-   Changes to improve the doxygen reference manual

Updated dependencies
----------------------------------------------

  ----------- ------------ ------------ --------------------------------------------------------------------------------------------------
  Product     Version      Qualifiers   Notes
  nutools     v2\_12\_01   e14          [NuTools\_Release\_Notes](/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_12_01)
  ifdhc       v2\_0\_5     e14:p2713d   
  libwda      v2\_23\_0                 
  ifdh\_art   v2\_01\_03   e14:nu:s48   
  ----------- ------------ ------------ --------------------------------------------------------------------------------------------------

Change List
============================

larsoft v06\_34\_00
------------------------------------------

-   2017-04-27 Lynn Garren : larsoft v06\_34\_00 for larsoft v06\_34\_00
-   2017-04-27 Lynn Garren : update product versions
-   2017-04-20 Lynn Garren : took out too much

lareventdisplay v06\_05\_02
----------------------------------------------------------

-   2017-04-27 Lynn Garren : lareventdisplay v06\_05\_02 for larsoft v06\_34\_00
-   2017-04-21 Gianluca Petrillo : Re-enable zooming abilities for the event display.
-   2017-04-19 Gianluca Petrillo : Removed CVS \$Id\$ tag from the comments (not supported by GIT).
-   2017-04-19 Gianluca Petrillo : Fixed source file name for Doxygen documentation.

larexamples v06\_03\_02
--------------------------------------------------

-   2017-04-27 Lynn Garren : larexamples v06\_03\_02 for larsoft v06\_34\_00

larpandora v06\_10\_02
------------------------------------------------

-   2017-04-27 Lynn Garren : larpandora v06\_10\_02 for larsoft v06\_34\_00
-   2017-04-20 Gianluca Petrillo : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larpandora into develop
-   2017-04-19 Gianluca Petrillo : Fixed source file name for Doxygen documentation.

larwirecell v06\_04\_02
--------------------------------------------------

-   2017-04-27 Lynn Garren : larwirecell v06\_04\_02 for larsoft v06\_34\_00

larana v06\_05\_02
----------------------------------------

-   2017-04-27 Lynn Garren : larana v06\_05\_02 for larsoft v06\_34\_00
-   2017-04-20 Gianluca Petrillo : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larana into develop
-   2017-04-19 Gianluca Petrillo : Removed CVS \$Id\$ tag from the comments (not supported by GIT).
-   2017-04-19 Gianluca Petrillo : Fixed source file name for Doxygen documentation.

larreco v06\_26\_00
------------------------------------------

-   2017-04-27 Lynn Garren : larreco v06\_26\_00 for larsoft v06\_34\_00
-   2017-04-27 Lynn Garren : Merge branch ‘feature/usher\_guashit\_icarus’ into release/v06\_34\_00
-   2017-04-26 Tingjun Yang : Patch ClusterCrawlerAlg in case NearestWire throws.
-   2017-04-26 Tingjun Yang : Patch EMShowerAlg.
-   2017-04-26 Tingjun Yang : Suppress comments.
-   2017-04-26 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/reddypg\_ShowerEfficiency
-   2017-04-26 Robert Sulej : fix image making for amiguous events in induction planes
-   2017-04-26 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/reddypg\_ShowerEfficiency
-   2017-04-26 Robert Sulej : only typo in comments
-   2017-04-26 Robert Sulej : fix wrong condition in applyBlur function
-   2017-04-25 Usher, Tracy L : Fix the auto ptr thingy
-   2017-04-24 Usher, Tracy L : Merge branch ‘develop’ into feature/usher\_guashit\_icarus
-   2017-04-24 Robert Sulej : copy track tag in Split()
-   2017-04-23 Robert Sulej : add reading from root files to scripts
-   2017-04-22 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-04-22 Robert Sulej : option to save data dumps to root histos so it can go through pyroot and root\_numpy to the rest of usual training scripts
-   2017-04-22 Robert Sulej : add tests of coherent noise
-   2017-04-21 Gianluca Petrillo : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-04-21 Tingjun Yang : Add code to evaluate cnn track shower separation.
-   2017-04-21 Dorota Stefan : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-04-21 Dorota Stefan : add cropping of image for neutrinos
-   2017-04-21 Robert Sulej : reorganize data preparation class (patch params and functions moved to PointIdAlg), added blur(cross-induction) and noise testing
-   2017-04-20 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/reddypg\_ShowerEfficiency
-   2017-04-20 Gianluca Petrillo : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-04-19 Gianluca Petrillo : Removed CVS \$Id\$ tag from the comments (not supported by GIT).
-   2017-04-19 Gianluca Petrillo : Fixed source file name for Doxygen documentation.
-   2017-04-17 Tingjun Yang : Fix indentation.
-   2017-04-17 Tingjun Yang : Merge branch ‘develop’ into feature/reddypg\_ShowerEfficiency
-   2017-04-17 Usher, Tracy L : Merge branch ‘develop’ into feature/usher\_guashit\_icarus
-   2017-04-17 Usher, Tracy L : remove output lines
-   2017-04-11 Reddy Pratap Gandrajula : dEdx studies for various particle showers
-   2017-04-09 Usher, Tracy L : Modifications to replace view with plane for use with ICARUS
-   2017-03-30 Reddy Pratap Gandrajula : NueCC signal selection, sompleteness, and purity studies
-   2017-03-22 Reddy Pratap Gandrajula : Added the shower completeness calculation, and the efficiency now requires the completeness\>70% inaddition to the shower purity\>70%, ✦

larsim v06\_20\_00
----------------------------------------

-   2017-04-27 Lynn Garren : larsim v06\_20\_00 for larsoft v06\_34\_00
-   2017-04-27 Lynn Garren : Merge branch ‘v06\_13\_01\_optical\_patch’ into release/v06\_34\_00
-   2017-04-26 drinkingkazu : 0) eliminate bug if statement that checks always-nullptr-is-nullptr-or-not, 1) ISCalculation.h to return ‘mean’ ionization electron and photon counts, and 2) avoid integer casting in OpFastScintillation.cxx where unnecessarily applied and caused both underestimation of photons and artificial increase in photon count resolution
-   2017-04-20 Gianluca Petrillo : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into develop
-   2017-04-19 Gianluca Petrillo : Removed CVS \$Id\$ tag from the comments (not supported by GIT).
-   2017-04-19 Gianluca Petrillo : Fixed source file name for Doxygen documentation.

larevt v06\_13\_00
----------------------------------------

-   2017-04-27 Lynn Garren : larevt v06\_13\_00 for larsoft v06\_34\_00
-   2017-04-25 Brandon Eberly : Use FW\_SEARCH\_PATH to find calibration files when using the UseFile option
-   2017-04-20 Gianluca Petrillo : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larevt into develop
-   2017-04-19 Gianluca Petrillo : Removed CVS \$Id\$ tag from the comments (not supported by GIT).

lardata v06\_20\_01
------------------------------------------

-   2017-04-27 Lynn Garren : lardata v06\_20\_01 for larsoft v06\_34\_00
-   2017-04-20 Gianluca Petrillo : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/lardata into develop
-   2017-04-19 Gianluca Petrillo : Removed CVS \$Id\$ tag from the comments (not supported by GIT).
-   2017-04-19 Gianluca Petrillo : Fixed source file name for Doxygen documentation.

larcore v06\_09\_01
------------------------------------------

-   2017-04-27 Lynn Garren : larcore v06\_09\_01 for larsoft v06\_34\_00
-   2017-04-20 Gianluca Petrillo : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larcore into develop
-   2017-04-19 Gianluca Petrillo : Removed CVS \$Id\$ tag from the comments (not supported by GIT).

larpandoracontent v03\_04\_00
--------------------------------------------------------------

larsoftobj v1\_19\_01
----------------------------------------------

-   2017-04-27 Lynn Garren : larsoftobj v1\_19\_01 for larsoft v06\_34\_00
-   2017-04-27 Lynn Garren : update product versions

lardataobj v1\_15\_02
----------------------------------------------

-   2017-04-27 Lynn Garren : lardataobj v1\_15\_02 for larsoft v06\_34\_00
-   2017-04-24 Gianluca Petrillo : Added \`recob::PFParticle::Daughter()\` implementation.
-   2017-04-20 Gianluca Petrillo : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/lardataobj into develop
-   2017-04-19 Gianluca Petrillo : Removed CVS \$Id\$ tag from the comments (not supported by GIT).
-   2017-04-19 Gianluca Petrillo : Fixed source file name for Doxygen documentation.
-   2017-04-19 Gianluca Petrillo : Fixed two Doxygen formula tags.

larcoreobj v1\_13\_01
----------------------------------------------

-   2017-04-27 Lynn Garren : larcoreobj v1\_13\_01 for larsoft v06\_34\_00
-   2017-04-20 Gianluca Petrillo : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larcoreobj into develop
-   2017-04-19 Gianluca Petrillo : Removed CVS \$Id\$ tag from the comments (not supported by GIT).

larbatch v01\_31\_00
--------------------------------------------

-   2017-04-27 Lynn Garren : larbatch v01\_31\_00 for larsoft v06\_34\_00
-   2017-04-26 Herbert Greenlee : Quiet some errors.
-   2017-04-26 Herbert Greenlee : Allow \<check\> and \<copy\> to be specified in stage (as well as project) configuration. Make \<maxfilesperjob\> work with file lists (as well as sam input).
-   2017-04-21 Herbert Greenlee : Tweak setting up ifdhc.

larutils v1\_12\_04
------------------------------------------
