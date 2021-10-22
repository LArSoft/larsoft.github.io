LArSoft v05\_11\_01 Release Notes[¶](#LArSoft-v05_11_01-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v05\_11\_01 Release Notes](#LArSoft-v05_11_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v05\_11\_01](#larsoft-v05_11_01)
    -   [lareventdisplay v05\_06\_07](#lareventdisplay-v05_06_07)
    -   [larexamples v05\_06\_07](#larexamples-v05_06_07)
    -   [larpandora v05\_09\_04](#larpandora-v05_09_04)
    -   [larana v05\_09\_01](#larana-v05_09_01)
    -   [larreco v05\_11\_01](#larreco-v05_11_01)
    -   [larsim v05\_11\_01](#larsim-v05_11_01)
    -   [larevt v05\_06\_07](#larevt-v05_06_07)
    -   [lardata v05\_08\_01](#lardata-v05_08_01)
    -   [larcore v05\_07\_02](#larcore-v05_07_02)
    -   [larbatch v01\_21\_04](#larbatch-v01_21_04)
    -   [larutils v1\_06\_01](#larutils-v1_06_01)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v05_11_01/larsoft-v05_11_01.html)


Purpose[¶](#Purpose)
--------------------

-   changes to develop since v05\_11\_00
-   use larpandoracontent v02\_07\_03
    -   dunetpc should merge feature/lg\_for\_larpandoracontent\_v02\_07\_03


New features[¶](#New-features)
------------------------------

-   genie\_xsec v2\_10\_6a -q effspec:tem is part of the distribution
    -   this release has developmental spline files
    -   genie\_xsec v2\_10\_6a -q defaultplusccmec remains the default
    -   to use genie\_xsec v2\_10\_6a -q effspec:tem\

            setup larsoft v05_11_01 -q xxx
            unsetup genie_xsec
            setup genie_xsec v2_10_6a -q effspec:tem


Bug fixes[¶](#Bug-fixes)
------------------------


Updated dependencies[¶](#Updated-dependencies)
----------------------------------------------

  ------------------- ------------- ------------ ---------------------------------------
  Product             Version       Qualifiers   Notes
  larpandoracontent   v02\_07\_03   e9:r5        using agreed upon directory structure
  mrb                 v1\_07\_00                 defines XXX\_INC when building
  ------------------- ------------- ------------ ---------------------------------------


Change List[¶](#Change-List)
============================


larsoft v05\_11\_01[¶](#larsoft-v05_11_01)
------------------------------------------

-   2016-05-11 Lynn Garren : larsoft v05\_11\_01 for larsoft v05\_11\_01
-   2016-05-11 Lynn Garren : update product versions
-   2016-05-11 Lynn Garren : also distribute genie\_xsec -q effspec:tem
-   2016-05-11 Lynn Garren : larpandoracontent v02\_07\_03 and mrb v1\_07\_00
-   2016-05-11 Lynn Garren : update dependency database


lareventdisplay v05\_06\_07[¶](#lareventdisplay-v05_06_07)
----------------------------------------------------------

-   2016-05-11 Lynn Garren : lareventdisplay v05\_06\_07 for larsoft v05\_11\_01


larexamples v05\_06\_07[¶](#larexamples-v05_06_07)
--------------------------------------------------

-   2016-05-11 Lynn Garren : larexamples v05\_06\_07 for larsoft v05\_11\_01


larpandora v05\_09\_04[¶](#larpandora-v05_09_04)
------------------------------------------------

-   2016-05-11 Lynn Garren : larpandora v05\_09\_04 for larsoft v05\_11\_01
-   2016-05-11 Lynn Garren : using larpandoracontent v02\_07\_03


larana v05\_09\_01[¶](#larana-v05_09_01)
----------------------------------------

-   2016-05-11 Lynn Garren : larana v05\_09\_01 for larsoft v05\_11\_01


larreco v05\_11\_01[¶](#larreco-v05_11_01)
------------------------------------------

-   2016-05-11 Lynn Garren : larreco v05\_11\_01 for larsoft v05\_11\_01
-   2016-05-10 Bruce Baller : Merge branch ‘feature/bb\_TrajCluster’ into develop
-   2016-05-10 Bruce Baller : Add UnitsPerTick to TjStuff.
-   2016-05-10 Bruce Baller : Add info message.
-   2016-05-10 Bruce Baller : Remove obsolete fMerge.
-   2016-05-10 Bruce Baller : Remove obsolete fMerge variable. Add checks for the validity of fPlane. Improve logic in Find3DVertices.
-   2016-05-10 Michael Wallbank : Changed the direction finding so it is slightly more natural (weight by charge instead of charge\^2 which I had no justification for other than in worked in certain specific cases\\!. Also made finding bad plane an option until I get chance to work on improving it a bit more
-   2016-05-06 Michael Wallbank : Added support for ignoring dead wires. Tried a couple of methods but don’t think I’ve found the optimum one yet. Will return to sort this out soon
-   2016-05-06 Michael Wallbank : Further improvements to the direction finding
-   2016-05-06 Michael Wallbank : Merge branch ‘develop’ into feature/wallbank\_EMShowerImprovements
-   2016-05-06 Michael Wallbank : Added new option for track-shower separation – use Pandora reconstruction to help distinugish between hits before applying the shower reconstruction
-   2016-05-05 Bruce Baller : Move fNumWires, fMaxTime, etc to DataStructs.h
-   2016-05-05 Bruce Baller : Add “All” option for fUseAlgs. Pass CTP to DeadWireCount. Ensure that a signal is present before making a 2D vertex. Revise FillWireCount.
-   2016-05-05 Bruce Baller : Changed MaxTime to MaxPos1. Add MaxPos0
-   2016-05-04 Bruce Baller : Moved NumWires and MaxTime into TjStuff
-   2016-05-04 Bruce Baller : Merge branch ‘develop’ into feature/bb\_TrajCluster
-   2016-05-04 Bruce Baller : Work on FillGetRange
-   2016-05-03 Bruce Baller : Move HitRange to Utils. Generalize algs to work with any traj (not just work). Unfinished improvements to Find3DVertices.
-   2016-05-03 Bruce Baller : Move HitRange to Utils. Generalize algs to work with any traj (not just work). Unfinished improvements to Find3DVertices.
-   2016-05-03 Bruce Baller : Move SignalPresent here from TrajCluster.
-   2016-05-03 Bruce Baller : Move SignalPresent here from TrajCluster. Comment out PrintTrajectory. Fix printing seed hit.
-   2016-05-03 Bruce Baller : Add HammerVx2. Add HitRange, etc to TjStuff.
-   2016-05-03 Bruce Baller : Add HammerVx2
-   2016-04-29 Michael Wallbank : Merge branch ‘develop’ into feature/wallbank\_EMShowerImprovements
-   2016-04-29 Michael Wallbank : Merge branch ‘feature/wallbank\_EMShowerImprovements’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/wallbank\_EMShowerImprovements
-   2016-04-29 Michael Wallbank : Lots of changes to the shower direction determination – use all the planes to recursively try to find the correct shower start point. This has hugely helped the efficiency of shower start finding
-   2016-04-21 Mike Wallbank : Merge branch ‘feature/wallbank\_EMShowerImprovements’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/wallbank\_EMShowerImprovements
-   2016-04-19 Michael Wallbank : Further shower improvements: check for isolated hits which ruin the shower start finding
-   2016-04-11 Mike Wallbank : Merge branch ‘feature/wallbank\_EMShowerImprovements’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/wallbank\_EMShowerImprovements
-   2016-04-11 Mike Wallbank : Merge branch ‘feature/wallbank\_EMShowerImprovements’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/wallbank\_EMShowerImprovements
-   2016-04-11 Mike Wallbank : Merge branch ‘develop’ into feature/wallbank\_EMShowerImprovements


larsim v05\_11\_01[¶](#larsim-v05_11_01)
----------------------------------------

-   2016-05-11 Lynn Garren : larsim v05\_11\_01 for larsoft v05\_11\_01


larevt v05\_06\_07[¶](#larevt-v05_06_07)
----------------------------------------

-   2016-05-11 Lynn Garren : larevt v05\_06\_07 for larsoft v05\_11\_01


lardata v05\_08\_01[¶](#lardata-v05_08_01)
------------------------------------------

-   2016-05-11 Lynn Garren : lardata v05\_08\_01 for larsoft v05\_11\_01
-   2016-05-11 mdhaigh : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/lardata into develop
-   2016-05-11 mdhaigh : Add MVAPID-Shower associations to dictionary files.


larcore v05\_07\_02[¶](#larcore-v05_07_02)
------------------------------------------

-   2016-05-11 Lynn Garren : larcore v05\_07\_02 for larsoft v05\_11\_01
-   2016-05-11 Christoph Rudolf von Rohr : Fixed a bug in the GetIntersections function in BoxBoundedGeo class, it is now const


larbatch v01\_21\_04[¶](#larbatch-v01_21_04)
--------------------------------------------

-   2016-05-11 Lynn Garren : larbatch v01\_21\_04 for larsoft v05\_11\_01
-   2016-05-11 Lynn Garren : larbatch v01\_21\_04 for larsoft v05\_11\_01
-   2016-05-10 Herbert Greenlee : Add variable submit timeout.
-   2016-05-10 Herbert Greenlee : Modify workflow to add fcl parameters for fetching genie flux files using ifdh.


larutils v1\_06\_01[¶](#larutils-v1_06_01)
------------------------------------------
