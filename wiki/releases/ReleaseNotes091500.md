LArSoft v09_15_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v09_15_00 Release Notes](#LArSoft-v09_15_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09_15_00](#larsoft-v09_15_00)
    -   [lareventdisplay v09_00_20](#lareventdisplay-v09_00_20)
    -   [larexamples v09_00_19](#larexamples-v09_00_19)
    -   [larpandora v09_04_01](#larpandora-v09_04_01)
    -   [larsimrad v09_00_19](#larsimrad-v09_00_19)
    -   [larrecodnn v09_04_01](#larrecodnn-v09_04_01)
    -   [larwirecell v09_01_12](#larwirecell-v09_01_12)
    -   [larana v09_00_20](#larana-v09_00_20)
    -   [larreco v09_04_10](#larreco-v09_04_10)
    -   [larsim v09_08_00](#larsim-v09_08_00)
    -   [larg4 v09_02_03](#larg4-v09_02_03)
    -   [larevt v09_01_06](#larevt-v09_01_06)
    -   [lardata v09_01_09](#lardata-v09_01_09)
    -   [larcore v09_01_00](#larcore-v09_01_00)
    -   [larpandoracontent v03_22_04](#larpandoracontent-v03_22_04)
    -   [larsoftobj v09_04_02](#larsoftobj-v09_04_02)
    -   [lardataobj v09_00_07](#lardataobj-v09_00_07)
    -   [lardataalg v09_03_06](#lardataalg-v09_03_06)
    -   [larcorealg v09_00_02](#larcorealg-v09_00_02)
    -   [larcoreobj v09_01_00](#larcoreobj-v09_01_00)
    -   [webevd v09_02_00](#webevd-v09_02_00)
    -   [larbatch v01_54_01](#larbatch-v01_54_01)
    -   [larutils v1_27_04](#larutils-v1_27_04)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v09_15_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_15_00/larsoft-v09_15_00.html)
Download instructions for [just larsoftobj v09_04_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_04_02/larsoftobj-v09_04_02.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

-   larg4 PR 21
    -   Link the new artg4tk custom physics lists to make them available in larg4.
-   larg4 PR 20
    -   Add a fhicl wih the standard configuration of the larg4Main module
    -   For use in downstream fhicls, since it appears to be completely generic. Also, update the larg4 example to use it.
-   webevd PR 19
    -   This branch splits up the data to be transferred into several properly-formed json files, rather than one large .js file. The server generates these jsons when requested by the client, and not before. The server also now generates the image files on-demand rather than up-front. The result of all this is that navigation between events is substantially faster.
-   larsim PR 59
    -   Reconfigure PDFastSimPAR to remove the PhotonVisibilityService and LArG4Parameters services. Allows multiple instances with different optical property configurations to run in the same job. As a bonus, this moves us one step closer to eliminating the PVS entirely and to enabling multi-threading. Remaining services in this module are geometry, NuRandom, and LArProperties. The latter is only used to get the attenuation of the LAr, and could also potentially be moved to a fhicl parameter of this module.

Bug fixes
------------------------

-   lardataalg PR 21
    -   Fix larproperties.fcl
    -   Current FastScintEnergies and SlowScintEnergies seem to correspond to Kr (emission peak at \~8.5 eV -\> 146 nm) instead of Argon (emission peak at \~9.7 eV -\> 128 nm). There is no need to change the shape of the spectra (FastScintSpectrum/SlowScintSpectrum) but energies need to be shifted in \~1.2 eV to larger values.

Updated dependencies
----------------------------------------------

-   artg4tk v10_00_03
    -   custom physics list added to artg4tk and placed in a new directory **artg4tk/artg4tk/lists**
    -   This custom physics list (under the name **MyQGSP_BERT_ArHP**) is registered as an option and can be selected within the PhysicsList service configuration. The custom list was added to acommodate a request from the UC Davis working group in order to base the neutron capture gammas on the latest NNDC data for Ar40.

Change List
============================

larsoft v09_15_00
------------------------------------------

-   2021-01-27 Lynn Garren : larsoft v09_15_00 for larsoft v09_15_00
-   2021-01-27 Lynn Garren : product versions

lareventdisplay v09_00_20
----------------------------------------------------------

-   2021-01-27 Lynn Garren : lareventdisplay v09_00_20 for larsoft v09_15_00

larexamples v09_00_19
--------------------------------------------------

-   2021-01-27 Lynn Garren : larexamples v09_00_19 for larsoft v09_15_00

larpandora v09_04_01
------------------------------------------------

-   2021-01-27 Lynn Garren : larpandora v09_04_01 for larsoft v09_15_00

larsimrad v09_00_19
----------------------------------------------

-   2021-01-27 Lynn Garren : larsimrad v09_00_19 for larsoft v09_15_00

larrecodnn v09_04_01
------------------------------------------------

-   2021-01-27 Lynn Garren : larrecodnn v09_04_01 for larsoft v09_15_00

larwirecell v09_01_12
--------------------------------------------------

-   2021-01-27 Lynn Garren : larwirecell v09_01_12 for larsoft v09_15_00

larana v09_00_20
----------------------------------------

-   2021-01-27 Lynn Garren : larana v09_00_20 for larsoft v09_15_00

larreco v09_04_10
------------------------------------------

-   2021-01-27 Lynn Garren : larreco v09_04_10 for larsoft v09_15_00

larsim v09_08_00
----------------------------------------

-   2021-01-27 Lynn Garren : larsim v09_08_00 for larsoft v09_15_00
-   2021-01-26 Lynn Garren : Merge pull request [\#59](/redmine/issues/59 "Idea: Write a tool to transform our data formats to cachegrind format. (New)") from aihimmel/develop
-   2021-01-15 Alex Himmel : Reconfigure to remove the PhotonVisibilityService and LArG4Parameters services. Allows multiple instances with different optical property configurations to run in the same job.

larg4 v09_02_03
--------------------------------------

-   2021-01-27 Lynn Garren : larg4 v09_02_03 for larsoft v09_15_00
-   2021-01-27 Lynn Garren : artg4tk v10_00_03
-   2021-01-27 Lynn Garren : Merge branch ‘feature/drivera_custom_artg4tk_physicslists’ into release/v09_15_00
-   2021-01-26 Lynn Garren : Merge pull request \#20 from aihimmel/develop
-   2021-01-24 David Rivera : Merge branch ‘develop’ of github.com:drivera-fnal/larg4 into feature/drivera_custom_artg4tk_physicslists to pull in changes for LARSOFT_SUITE v09_14_00
-   2021-01-24 David Rivera : Link arg4tk custom physics lists library to make them available in larg4.
-   2021-01-15 Alex Himmel : Add a fhicl wih the standard configuration of the larg4Main module, and update the example to use it.

larevt v09_01_06
----------------------------------------

-   2021-01-27 Lynn Garren : larevt v09_01_06 for larsoft v09_15_00

lardata v09_01_09
------------------------------------------

-   2021-01-27 Lynn Garren : lardata v09_01_09 for larsoft v09_15_00

larcore v09_01_00
------------------------------------------

larpandoracontent v03_22_04
--------------------------------------------------------------

larsoftobj v09_04_02
------------------------------------------------

-   2021-01-27 Lynn Garren : larsoftobj v09_04_02 for larsoft v09_15_00
-   2021-01-27 Lynn Garren : product versions

lardataobj v09_00_07
------------------------------------------------

lardataalg v09_03_06
------------------------------------------------

-   2021-01-27 Lynn Garren : lardataalg v09_03_06 for larsoft v09_15_00
-   2021-01-26 Lynn Garren : Merge pull request \#21 from ggamezdiego/patch-1
-   2021-01-21 ggamezdiego : Fix larproperties.fcl

larcorealg v09_00_02
------------------------------------------------

larcoreobj v09_01_00
------------------------------------------------

webevd v09_02_00
----------------------------------------

-   2021-01-27 Lynn Garren : webevd v09_02_00 for larsoft v09_15_00
-   2021-01-26 Lynn Garren : Merge pull request \#19 from cjbackhouse/feature/split_jsons
-   2021-01-22 Christopher Backhouse : NoView function also needed to be updated for new layers enumeration.
-   2021-01-22 Christopher Backhouse : Fix APA positioning that was accidentally using the drift direction and center after all the code movement.
-   2021-01-22 Christopher Backhouse : Merge branch ‘develop’ into feature/split_jsons
-   2021-01-22 Christopher Backhouse : Use async/await a couple of places it makes sense.
-   2021-01-22 Christopher Backhouse : Only fetch the textures (digits or wires) we need right now, rather than both sorts unconditionally.
-   2021-01-22 Christopher Backhouse : Load digits and wires seperately instead of having to wait for both.
-   2021-01-22 Christopher Backhouse : Remove plane-drawing parts that don’t depend on digits/wires from those blocks, so that the plane outlines show up faster in the display.
-   2021-01-21 Christopher Backhouse : Fill images on-demand rather than up-front. This speeds up navigation to a new event.
-   2021-01-21 Christopher Backhouse : Split the digit and wire arenas and protect the png serving against bad file names.
-   2021-01-21 Christopher Backhouse : No need to thread maxTicks through, the information is available locally.
-   2021-01-20 Christopher Backhouse : Fix a couple of residual hardcoded view numbers which have been wrong since VD support was added.
-   2021-01-20 Christopher Backhouse : It’s also easy to generate hits on-demand
-   2021-01-20 Christopher Backhouse : Generate many of the jsons on-demand. However, the most complicated/expensive ones are still currently up-front.
-   2021-01-20 Christopher Backhouse : coords.js is now completely gone, with the implementation of evtid.json
-   2021-01-20 Christopher Backhouse : Planes are now included in the geometry json and loaded asynchronously
-   2021-01-19 Christopher Backhouse : Make the remaining coords.js more json-y
-   2021-01-19 Christopher Backhouse : Serve some parts of the geometry as proper json.
-   2021-01-19 Christopher Backhouse : Add reco_vtxs to the set of things transferred asynchronously
-   2021-01-19 Christopher Backhouse : Remove some cruft
-   2021-01-19 Christopher Backhouse : Refactor responding with in-memory files.
-   2021-01-19 Christopher Backhouse : Ensure that things are immediately visible once they’ve loaded.
-   2021-01-19 Christopher Backhouse : Merge branch ‘develop’ into feature/split_jsons
-   2020-08-14 Christopher Backhouse : Load mipmap levels in a deterministic order. This makes the logic simpler, and guarantees the user sees something sooner.
-   2020-08-04 Christopher Backhouse : Speed up switching to a new event. Split coords.js into several proper JSONs and load them with promises.

larbatch v01_54_01
--------------------------------------------

larutils v1_27_04
------------------------------------------
