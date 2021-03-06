# LArSoft v08_29_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v08_29_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_29_00/larsoft-v08_29_00.html)  
Download instructions for [just larsoftobj v08_17_03](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_17_03/larsoftobj-v08_17_03.html)

## Purpose

-   approved feature branch

## New features

-   larreco feature/DomBarker_TRACSToDev
    -   We have cleaned up the branch and taken on board suggestions from the meeting. I have made a separate branch called: DomBarker_TRACSToDev. This contains the framework and the tools we want to push to develop. This branch does not require the dependancy on pandora.
    -   The framework can be found in ShowerFinder:
        -   TRACS_module.cc - The actual producer module. This loops through the pfparticles that are given as an input and runs the CalculateElement in each of the ShowerTools tools in a list given via fcl.
        -   ShowerElementHolder.hh - This holds data products calculated in the shower tools. The holder is passed through to the tools via the CalculateElement function and allows users to Set Elements to use in further tools, Get Elements from previous tools and Check Elements are set. Shower properties that make the recob::Shower are stored in here along with object that will be save in the art::event e.g. the Initial track stub (recob::Track). A user accesses the elements using a unique string. There is examples in ShowerFinder/ShowerTools/ShowerExampleTool_tool.cc (e.g. ShowerElementHolder.SetElement(product,”mydataproduct”).The ElementHolder is designed to be filled for every pfparticle and hold information for one shower.
        -   ShowerProduedPtrsHolder.hh - This holds the std::unique_ptr that are moved to the art::Event. The ProducedPtrHolder is filled at the end of the pfparticle analysis and reset at the start of the event. The holder holds unique ptrs to art::Assns and std::vector<T> objects and each object is given a std::string unique name. The std::vector<T> ptrs are filled with the object in the ShowerElementHolder with the same std::string unique name for every pfparticle. The holder also maintains the ptrmakers and has accessors so that user can easily maintain associations.
        -   ShowerTools/IShowerTool.h - This is the base tool that all shower tools derive from. Every tool must override the CalculateElement function. Also in the base tool are helper functions that help the user deal with the showerproducesptrHolder in easy way.
    -   All Shower Tool can be found in ShowerFinder/ShowerTools. I can give more detail on the ShowerTools again if people want but there is some information in the presentation I gave on Tuesday.
    -   We also have some algorithms which the tools use. These can be found in RecoAlg
        -   TRACSCheatingAlg.cxx
        -   TRACSAlg.cxx
    -   https://indico.fnal.gov/event/21478/contribution/2/material/slides/0.pdf

## Bug fixes

## Updated dependencies

# Change List

## larsoft v08_29_00

-   2019-08-21 Lynn Garren : larsoft v08_29_00 for larsoft v08_29_00
-   2019-08-21 Lynn Garren : product versions

## lareventdisplay v08_08_09

-   2019-08-21 Lynn Garren : lareventdisplay v08_08_09 for larsoft v08_29_00

## larexamples v08_02_15

## larg4 v08_03_13

## larpandora v08_07_13

-   2019-08-21 Lynn Garren : larpandora v08_07_13 for larsoft v08_29_00

## larwirecell v08_05_13

## larana v08_10_09

-   2019-08-21 Lynn Garren : larana v08_10_09 for larsoft v08_29_00

## larreco v08_17_00

-   2019-08-21 Lynn Garren : larreco v08_17_00 for larsoft v08_29_00
-   2019-08-16 Dominic Barker : Adding things to new branch
-   2019-08-15 Usher, Tracy L : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2019-08-15 Usher, Tracy L : Make sure to not try to write tuple output if not asking for tuple!

## larsim v08_12_01

## larevt v08_06_06

## lardata v08_07_04

## larcore v08_04_09

## larpandoracontent v03_15_03

## larsoftobj v08_17_03

## lardataobj v08_04_09

## lardataalg v08_08_04

## larcorealg v08_14_02

## larcoreobj v08_05_03

## larbatch v01_51_07

-   2019-08-21 Lynn Garren : larbatch v01_51_07 for larsoft v08_29_00
-   2019-08-19 Herbert Greenlee : Add diagnostic output.
-   2019-08-19 Herbert Greenlee : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larbatch into develop
-   2019-08-01 Herbert Greenlee : Fix up some mix file parentage logic.

## larutils v1_24_02

-   2019-08-21 Lynn Garren : larutils v1_24_02 for larsoft v08_29_00
-   2019-08-14 Lynn Garren : larsoft v08_28_01
-   2019-08-14 Lynn Garren : define lopt
-   2019-08-14 Lynn Garren : modernize
