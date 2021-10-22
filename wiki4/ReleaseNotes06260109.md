LArSoft v06\_26\_01\_09 Release Notes[¶](#LArSoft-v06_26_01_09-Release-Notes)
=============================================================================

-   **Table of contents**
-   [LArSoft v06\_26\_01\_09 Release Notes](#LArSoft-v06_26_01_09-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_26\_01\_09](#larsoft-v06_26_01_09)
    -   [lareventdisplay v06\_02\_14\_09](#lareventdisplay-v06_02_14_09)
    -   [larexamples v06\_01\_15\_05](#larexamples-v06_01_15_05)
    -   [larpandora v06\_08\_00\_09](#larpandora-v06_08_00_09)
    -   [larwirecell v06\_00\_13\_07](#larwirecell-v06_00_13_07)
    -   [larana v06\_03\_18\_09](#larana-v06_03_18_09)
    -   [larreco v06\_20\_00\_09](#larreco-v06_20_00_09)
    -   [larsim v06\_13\_01\_05](#larsim-v06_13_01_05)
    -   [larevt v06\_07\_09\_05](#larevt-v06_07_09_05)
    -   [lardata v06\_14\_04\_04](#lardata-v06_14_04_04)
    -   [larcore v06\_05\_03\_02](#larcore-v06_05_03_02)
    -   [larpandoracontent v03\_07\_02\_05](#larpandoracontent-v03_07_02_05)
    -   [larsoftobj v1\_11\_00\_04](#larsoftobj-v1_11_00_04)
    -   [lardataobj v1\_11\_00\_04](#lardataobj-v1_11_00_04)
    -   [larcoreobj v1\_06\_02\_02](#larcoreobj-v1_06_02_02)
    -   [larbatch v01\_34\_02](#larbatch-v01_34_02)
    -   [larutils v1\_20\_02](#larutils-v1_20_02)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_26\_01\_09](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_26_01_09/larsoft-v06_26_01_09.html)\
Download instructions for [just larsoftobj v1\_11\_00\_04](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_11_00_04/larsoftobj-v1_11_00_04.html)


Purpose[¶](#Purpose)
--------------------

-   for MicroBooNE production


New features[¶](#New-features)
------------------------------


Bug fixes[¶](#Bug-fixes)
------------------------


Updated dependencies[¶](#Updated-dependencies)
----------------------------------------------

-   art v2\_05\_01
-   nutools v2\_10\_00\_01


Change List[¶](#Change-List)
============================


larsoft v06\_26\_01\_09[¶](#larsoft-v06_26_01_09)
-------------------------------------------------

-   2017-12-12 Lynn Garren : larsoft v06\_26\_01\_09
-   2017-12-12 Lynn Garren : update build scripts
-   2017-12-12 Lynn Garren : latest larbatch and larutils
-   2017-12-12 Lynn Garren : update products


lareventdisplay v06\_02\_14\_09[¶](#lareventdisplay-v06_02_14_09)
-----------------------------------------------------------------

-   2017-12-12 Lynn Garren : lareventdisplay v06\_02\_14\_09


larexamples v06\_01\_15\_05[¶](#larexamples-v06_01_15_05)
---------------------------------------------------------

-   2017-12-12 Lynn Garren : larexamples v06\_01\_15\_05


larpandora v06\_08\_00\_09[¶](#larpandora-v06_08_00_09)
-------------------------------------------------------

-   2017-12-12 Lynn Garren : larpandora v06\_08\_00\_09


larwirecell v06\_00\_13\_07[¶](#larwirecell-v06_00_13_07)
---------------------------------------------------------

-   2017-12-12 Lynn Garren : larwirecell v06\_00\_13\_07


larana v06\_03\_18\_09[¶](#larana-v06_03_18_09)
-----------------------------------------------

-   2017-12-12 Lynn Garren : add missing library
-   2017-12-12 Lynn Garren : larana v06\_03\_18\_09
-   2017-12-06 Herbert Greenlee : Merge branch ‘v06\_26\_01\_01\_branch’ of ssh://cdcvs.fnal.gov/cvs/projects/larana into v06\_26\_01\_01\_branch
-   2017-12-04 Tingjun Yang : Remove printout.
-   2017-12-04 Herbert Greenlee : Merge branch ‘v06\_26\_01\_01\_branch’ into feature/wketchum\_MCHitAssnsUbooneMCC8
-   2017-12-04 Tingjun Yang : Add option to calculate PIDA using median instead of mean. Set it to false by default.
-   2017-12-01 Yun-Tse Tsai : version bump
-   2017-11-30 Usher, Tracy L : Necessary fhicl parameters to support pseudo tools
-   2017-11-30 Usher, Tracy L : Convert the module to use the pseudo tools, allows this to switch between different methods
-   2017-11-30 Usher, Tracy L : Add pseudo tools to handle the creation of hit\<–\>particle associations depending on method to be employed…
-   2017-11-30 Usher, Tracy L : Formatting so I can read before attempting modification to handle hit removal and trajcluster modes
-   2017-11-20 Yun-Tse Tsai : make the MCParticle producer configurable
-   2017-11-16 Wesley Ketchum : fixes to the truth matching modules, and add option for copying hit/mcparticle assns in the CRHitRemoval code. that should likely be moved to the utility class, as others may want to use it …?
-   2017-11-15 Wesley Ketchum : add in standalone hit, track, and shower to particle matching modules (track and shower ones use the hit one as input)
-   2017-11-14 Wesley Ketchum : change loop to fix seg fault?
-   2017-11-07 Yun-Tse Tsai : synchronize with origin/feature/yuntse\_MCMatchHitAssn
-   2017-11-06 Yun-Tse Tsai : change the header from larcorealg to larcore
-   2017-11-06 Yun-Tse Tsai : checkout larana/T0Finder/MCTruthT0Matching\_module.cc from origin/feature/yuntse\_MCMatchHitAssn
-   2017-11-06 Wesley Ketchum : add small update/bug fix
-   2017-10-25 Andrzej Szelc : add updates from feature/wketchum\_MCMatchHitAssn to the MCC8.4 release of larana
-   2017-10-25 Wesley Ketchum : add hit assns to mctruth matching module


larreco v06\_20\_00\_09[¶](#larreco-v06_20_00_09)
-------------------------------------------------

-   2017-12-12 Lynn Garren : larreco v06\_20\_00\_09
-   2017-12-06 Herbert Greenlee : Merge branch ‘v06\_26\_01\_01\_branch’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into v06\_26\_01\_01\_branch
-   2017-12-04 Tingjun Yang : Fix typo.
-   2017-12-04 Herbert Greenlee : Merge remote-tracking branch ‘origin/feature/wketchum\_ReduceMC\_MCC8’ into v06\_26\_01\_01\_branch
-   2017-12-01 Yun-Tse Tsai : version bump
-   2017-12-01 Tingjun Yang : Add tag to turn on/off lifetime correction in calorimetryalg.
-   2017-11-28 Tingjun Yang : Fix bug. Do not continue if hit is associated to an invalid point.


larsim v06\_13\_01\_05[¶](#larsim-v06_13_01_05)
-----------------------------------------------

-   2017-12-12 Lynn Garren : larsim v06\_13\_01\_05
-   2017-11-06 Yun-Tse Tsai : checkout the header from origin/feature/yuntse\_trackide
-   2017-11-06 Yun-Tse Tsai : add one variable for number of electrons collected at a wire for TrackIDE


larevt v06\_07\_09\_05[¶](#larevt-v06_07_09_05)
-----------------------------------------------

-   2017-12-12 Lynn Garren : larevt v06\_07\_09\_05


lardata v06\_14\_04\_04[¶](#lardata-v06_14_04_04)
-------------------------------------------------

-   2017-12-12 Lynn Garren : lardata v06\_14\_04\_04


larcore v06\_05\_03\_02[¶](#larcore-v06_05_03_02)
-------------------------------------------------

-   2017-12-12 Lynn Garren : larcore v06\_05\_03\_02


larpandoracontent v03\_07\_02\_05[¶](#larpandoracontent-v03_07_02_05)
---------------------------------------------------------------------


larsoftobj v1\_11\_00\_04[¶](#larsoftobj-v1_11_00_04)
-----------------------------------------------------

-   2017-12-12 Lynn Garren : larsoftobj v1\_11\_00\_04


lardataobj v1\_11\_00\_04[¶](#lardataobj-v1_11_00_04)
-----------------------------------------------------

-   2017-12-12 Lynn Garren : lardataobj v1\_11\_00\_04
-   2017-11-06 Yun-Tse Tsai : include a new checksum
-   2017-11-06 Yun-Tse Tsai : checkout from origin/feature/yuntse\_trackide
-   2017-11-06 Wesley Ketchum : include header guards
-   2017-10-25 Usher, Tracy L : Working on fixing the issue where the bytes written are not the expected bytes on readback, current suspect is the bool
-   2017-10-25 Usher, Tracy L : Forgot to define containers for the auxiliary class
-   2017-10-25 Usher, Tracy L : conflicts for xml resolved
-   2017-10-25 Usher, Tracy L : fix typo
-   2017-10-25 Usher, Tracy L : Add reference to the new association between hits and MCParticles
-   2017-10-25 Wesley Ketchum : add hit assns to mctruth matching module


larcoreobj v1\_06\_02\_02[¶](#larcoreobj-v1_06_02_02)
-----------------------------------------------------

-   2017-12-12 Lynn Garren : larcoreobj v1\_06\_02\_02


larbatch v01\_34\_02[¶](#larbatch-v01_34_02)
--------------------------------------------

-   2017-12-06 Lynn Garren : larbatch v01\_34\_02 for larsoft v06\_59\_00
-   2017-12-06 Herbert Greenlee : Tweak multistage data selection.
-   2017-12-04 Herbert Greenlee : Fix memory override bug.
-   2017-11-29 Lynn Garren : larbatch v01\_34\_01 for larsoft v06\_58\_00
-   2017-11-27 Herbert Greenlee : Allow \<previousstage\> to work sensibly with base stage.
-   2017-11-21 Lynn Garren : larbatch v01\_34\_00 for larsoft v06\_57\_00
-   2017-11-21 Herbert Greenlee : Add \<role\> project element.
-   2017-11-21 Herbert Greenlee : Add xml stage configuration overrides (issue 16469).
-   2017-11-17 Herbert Greenlee : Use batch metadata if available.
-   2017-11-17 Herbert Greenlee : Fix bug due to ProjectDef change.
-   2017-11-16 Herbert Greenlee : Add initializer.
-   2017-11-14 Herbert Greenlee : Add –recur option.


larutils v1\_20\_02[¶](#larutils-v1_20_02)
------------------------------------------

-   2017-12-06 Lynn Garren : larutils v1\_20\_02 for larsoft v06\_59\_00
-   2017-12-06 Thomas Junk : remove .upsfiles once we’re done with them
-   2017-12-06 Thomas Junk : fix missing \_FQ in a loop test
-   2017-12-06 Thomas Junk : put back .upsfiles/dbconfig so ups declare works as expected
-   2017-12-06 Thomas Junk : change definition of DUNEPDSPRCE\_DIR to point to the top level (so source and include make sense), and define a new DUNEPDSPRCE\_FQ\_DIR
-   2017-12-05 Thomas Junk : redo the sed ~~i -~~ gave an extra copy of the table file on mac before replacement of the string
-   2017-12-05 Thomas Junk : don’t make .upsfiles
-   2017-12-01 Thomas Junk : replace the qualifier in the table file – some symbols need to be translated, others not
-   2017-12-01 Thomas Junk : disable parameter substitution in the table file here document
-   2017-12-01 Thomas Junk : tar up the upsfiles directory too
-   2017-12-01 Thomas Junk : follow more symlinks
-   2017-12-01 Thomas Junk : clean up, and restore some link-following options to the copy of header files
-   2017-11-30 Thomas Junk : remove recursive readlink – not allowed on mac
-   2017-11-30 Thomas Junk : capture stderr too
-   2017-11-29 Thomas Junk : print out g++ version
-   2017-11-29 Thomas Junk : mac doesn’t like cp -r -L though linux does
-   2017-11-29 Thomas Junk : Jenkins build script for JJ Russell’s access class
