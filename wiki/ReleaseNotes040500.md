LArSoft v04\_05\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v04\_05\_00 Release Notes](#LArSoft-v04_05_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04\_05\_00](#larsoft-v04_05_00)
    -   [lareventdisplay v04\_03\_05](#lareventdisplay-v04_03_05)
    -   [larexamples v04\_03\_05](#larexamples-v04_03_05)
    -   [larpandora v04\_03\_05](#larpandora-v04_03_05)
    -   [larana v04\_04\_01](#larana-v04_04_01)
    -   [larreco v04\_03\_05](#larreco-v04_03_05)
    -   [larsim v04\_04\_00](#larsim-v04_04_00)
    -   [larevt v04\_04\_01](#larevt-v04_04_01)
    -   [lardata v04\_04\_00](#lardata-v04_04_00)
    -   [larcore v04\_04\_00](#larcore-v04_04_00)
    -   [larbatch v01\_05\_01](#larbatch-v01_05_01)
    -   [larutils v1\_00\_07](#larutils-v1_00_07)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_05_00/larsoft-v04_05_00.html)

Purpose
--------------------

[Changes approved April 14, 2015](https://indico.fnal.gov/getFile.py/access?contribId=3&resId=0&materialId=slides&confId=9819)

New features
------------------------------

-   larcore:
    -   feature/wallbank\_NewOpticalChannelMap
-   lardata:
    -   feature/ahimmel\_scintPreScale
    -   feature/SharedOpticalRawDigit
-   larsim:
    -   feature/ahimmel\_NewOpticalChannelMap
    -   feature/ahimmel\_scintPreScale
-   larana:
    -   feature/ahimmel\_NewOpticalChannelMap
    -   feature/ahimmel\_scintPreScale
    -   feature/SharedOpticalRawDigit
-   lbnecode:
    -   feature/ahimmel\_scintPreScale
    -   feature/wallbank\_NewOpticalChannelMap
-   uboonecode:
    -   feature/ahimmel\_scintPreScale
    -   feature/ahimmel\_SharedOpticalRawDigit

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   mrb v1\_04\_04

Change List
============================

larsoft v04\_05\_00
------------------------------------------

-   2015-04-16 Lynn Garren : larsoft v04\_05\_00 for larsoft v04\_05\_00
-   2015-04-16 Lynn Garren : product versions
-   2015-04-16 Lynn Garren : releaseDB/base\_dependency\_database for v04\_05\_00

lareventdisplay v04\_03\_05
----------------------------------------------------------

-   2015-04-16 Lynn Garren : lareventdisplay v04\_03\_05 for larsoft v04\_05\_00

larexamples v04\_03\_05
--------------------------------------------------

-   2015-04-16 Lynn Garren : larexamples v04\_03\_05 for larsoft v04\_05\_00

larpandora v04\_03\_05
------------------------------------------------

-   2015-04-16 Lynn Garren : larpandora v04\_03\_05 for larsoft v04\_05\_00

larana v04\_04\_01
----------------------------------------

-   2015-04-16 Lynn Garren : larana v04\_04\_01 for larsoft v04\_05\_00
-   2015-04-16 Lynn Garren : Merge branch ‘feature/ahimmel\_scintPreScale’ into release/v04\_05\_00
-   2015-04-16 Lynn Garren : Merge branch ‘feature/ahimmel\_NewOpticalChannelMap’ into release/v04\_05\_00
-   2015-04-14 Alex Himmel : Replace getManyByType with an explicit list of labels.
-   2015-04-14 Alex Himmel : Merge remote-tracking branch ‘origin/develop’ into feature/ahimmel\_NewOpticalChannelMap
-   2015-04-14 Alex Himmel : Merge remote-tracking branch ‘origin/develop’ into feature/ahimmel\_scintPreScale
-   2015-04-14 Alex Himmel : Merge remote-tracking branch ‘origin/develop’ into feature/SharedOpticalRawDigit
-   2015-04-14 Wesley Ketchum : add extra check to avoid seg fault
-   2015-04-10 Alex Himmel : Remove use of opdetresponse interface. This was only being used for channel mapping, which will now be taken care of by the geometry.
-   2015-04-10 Alex Himmel : Remove use of opdetresponse interface. This was only being used for channel mapping, which will now be taken care of by the geometry.
-   2015-04-10 Wesley Ketchum : accessor for pida values and errors
-   2015-04-07 Alex Himmel : Adapt to new geometry interface. Adjust for OpDet not being the same as OpChannel.
-   2015-04-05 Alex Himmel : Use geometry service for optical detector channel mapping.
-   2015-02-06 Alex Himmel : Print out an error in the default opdetresponse if prescaling is applied but no quantum efficiency is applied to correct it with.
-   2015-02-06 Alex Himmel : Implement quantum efficiency into Microboone opdetresponse service, corrected by the scintillation prescale.
-   2015-04-03 Alex Himmel : Remove some printouts used for debugging.
-   2015-04-03 Alex Himmel : Put back the late light removal - commented out for testing.
-   2015-04-03 Alex Himmel : Merge remote-tracking branch ‘origin/develop’ into feature/SharedOpticalRawDigit
-   2015-04-03 Alex Himmel : Store hit and flash Frame information in the matching tree.
-   2015-04-03 Alex Himmel : More removal of electronics clock information, now hits and flashes are a perfect match with the previous data product version. - Now bin width is specified in microseconds and accumulators are filled based on time, not tick (which was causing later frames to be placed on top of one another). - Accumulators now automatically resize based on the times in the event, so readout window does not need to be known a priori.
-   2015-04-02 Alex Himmel : Merge origin/develop into feature/SharedOpticalRawDigit
-   2015-04-02 Alex Himmel : Merge remote-tracking branch ‘origin/develop’ into feature/SharedOpticalRawDigit
-   2015-04-01 Alex Himmel : Fix the making of associations in OpFlashFinder\_module. Previously no associations were made, now they appear to be working correctly. Add an additional tree to the OpFlashAna\_module which makes available at the root analysis level all the hits associated with a flash.
-   2015-03-31 Alex Himmel : Extract electronics time from the actual time so functionality remains the same.
-   2015-03-31 Alex Himmel : Got the flash finder working with identical hit results and very similar flash results using the new raw data format.
-   2015-03-31 Alex Himmel : Comment out Gleb’s bug fixes while we validate. Plan to re-introduce them later.
-   2015-03-30 Alex Himmel : Fix bug in call to getMany. Now compiles.
-   2015-03-27 Gleb Sinev : The reconstruction code compiles at last.
-   2015-03-26 Alex Himmel : Handle different OpDetWaveform collections in the simplest possible way at the module level. FlashFinder algorithm may or may not work correctly.
-   2015-03-26 Gleb Sinev : Merge branch ‘feature/gvsinev\_LBNEOpFlashFinder’ into feature/SharedOpticalRawDigit
-   2015-03-26 Gleb Sinev : Preparing to switch branches.
-   2015-03-25 Alex Himmel : Write a reformatter for OpticalRawDigits -\> raw::OpDetWaveform objects.
-   2015-03-25 Alex Himmel : Revert “Make OpFlashAlg work for both OpticalRawDigit and FIFOChannel. Thanks Gianluca for the C++ lecture again!”
-   2015-03-11 Gleb Sinev : Using pointers to PMTPulseRecoBase instead of pointers to AlgoThreshold in OpFlashAlg.
-   2015-03-11 Gleb Sinev : Adding LBNE-specific hit finding algorithm.
-   2015-03-03 Gleb Sinev : Now OpFlashFinder works for LBNE 35t.
-   2015-02-20 Gleb Sinev : Editing the flash finder module and OpFlashAlg to make them work for LBNE.
-   2015-03-23 Alex Himmel : Merge remote-tracking branch ‘origin/develop’ into feature/SharedOpticalRawDigit
-   2015-03-17 Tingjun Yang : Merge branch ‘develop’ into feature/SharedOpticalRawDigit
-   2015-03-17 Tingjun Yang : Make OpFlashAlg work for both OpticalRawDigit and FIFOChannel. Thanks Gianluca for the C++ lecture again!

larreco v04\_03\_05
------------------------------------------

-   2015-04-16 Lynn Garren : larreco v04\_03\_05 for larsoft v04\_05\_00
-   2015-04-15 Tracy Usher : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-04-15 Tracy Usher : Fix crash discovered by Tingjun, should have been in place with similar fixes some time ago! doh!
-   2015-04-15 Bruce Baller : Fix vertex indexing error
-   2015-04-15 Bruce Baller : Fix indexing error in FindMaybeVertices.
-   2015-04-10 Kalousis Leonidas : fix issue with segmentation steps

larsim v04\_04\_00
----------------------------------------

-   2015-04-16 Lynn Garren : Merge branch ‘feature/ahimmel\_NewOpticalChannelMap’ into release/v04\_05\_00
-   2015-04-16 Alex Himmel : Remove reference to OpDetResponseInterface to avoid a circular dependence.
-   2015-04-16 Lynn Garren : larsim v04\_04\_00 for larsoft v04\_05\_00
-   2015-04-16 Lynn Garren : Merge branch ‘feature/ahimmel\_scintPreScale’ into release/v04\_05\_00
-   2015-04-14 Alex Himmel : Merge remote-tracking branch ‘origin/develop’ into feature/ahimmel\_NewOpticalChannelMap
-   2015-04-14 Alex Himmel : Merge remote-tracking branch ‘origin/develop’ into feature/ahimmel\_scintPreScale
-   2015-04-07 Alex Himmel : Adapt to having OpChannel and OpDet not being the same thing, and new geometry interface.
-   2015-04-05 Alex Himmel : Change photon library loading to determine \# channels from the photon library, since the library may or may not have the same number of channels as are at the end of OpDetResponseInterface.
-   2015-02-06 Alex Himmel : Get scintillation yields that have had prescales applied.

larevt v04\_04\_01
----------------------------------------

-   2015-04-16 Lynn Garren : larevt v04\_04\_01 for larsoft v04\_05\_00
-   2015-04-16 Lynn Garren : larevt v04\_04\_01 for larsoft v04\_05\_00

lardata v04\_04\_00
------------------------------------------

-   2015-04-16 Lynn Garren : lardata v04\_04\_00 for larsoft v04\_05\_00
-   2015-04-16 Lynn Garren : Merge branch ‘feature/ahimmel\_scintPreScale’ into release/v04\_05\_00
-   2015-04-14 Alex Himmel : Merge remote-tracking branch ‘origin/develop’ into feature/ahimmel\_scintPreScale
-   2015-04-14 Alex Himmel : Merge remote-tracking branch ‘origin/develop’ into feature/SharedOpticalRawDigit
-   2015-02-06 Alex Himmel : Add a prescale for scintillation to LArProperties, ScintPreScale, used to apply a coarse QE-like scaling ahead of time to reduce memory usage during simulation. Now the getter functions for the scintillation yield take an argument, prescale, which if true returns the scintillation yield modified by this prescale factor. By default this argument is false so that the existing behavior is not changed by default and the actual yield is returned.
-   2015-04-02 Alex Himmel : Merge remote-tracking branch ‘origin/develop’ into feature/SharedOpticalRawDigit
-   2015-03-25 Alex Himmel : Add the checksum to the classes\_def.xml file.
-   2015-03-25 Alex Himmel : Add this new data product to the dictionary, modify as necessary to place nice with ROOT.
-   2015-03-25 Alex Himmel : Rename for (slightly) less verbosity.
-   2015-03-23 Gleb Sinev : this -\> \*this in Waveform() in RawOpDetWaveform.h.
-   2015-03-23 Gleb Sinev : Merge branch ‘feature/SharedOpticalRawDigit’ of [http://cdcvs.fnal.gov/projects/lardata](http://cdcvs.fnal.gov/projects/lardata) into feature/SharedOpticalRawDigit
-   2015-03-23 Alex Himmel : Reverse order of constructor arguments to better match pre-existing object.
-   2015-03-23 Alex Himmel : Use a double to store absolute time in us, which is unambiguous across experiments.
-   2015-03-23 Gleb Sinev : Merge branch ‘feature/SharedOpticalRawDigit’ of [http://cdcvs.fnal.gov/projects/lardata](http://cdcvs.fnal.gov/projects/lardata) into feature/SharedOpticalRawDigit
-   2015-03-23 Alex Himmel : Bugfix.
-   2015-03-23 Gleb Sinev : Merge branch ‘feature/SharedOpticalRawDigit’ of [http://cdcvs.fnal.gov/projects/lardata](http://cdcvs.fnal.gov/projects/lardata) into feature/SharedOpticalRawDigit
-   2015-03-23 Alex Himmel : Add a new data product to store raw optical waveforms.
-   2015-03-23 Alex Himmel : Revert “Update classes\_def.xml.”
-   2015-03-23 Alex Himmel : Revert “A first attempt at re-designing the OpticalRawDigit to be less uboone-specific.”
-   2015-03-23 Gleb Sinev : Merge branch ‘feature/SharedOpticalRawDigit’ of [http://cdcvs.fnal.gov/projects/lardata](http://cdcvs.fnal.gov/projects/lardata) into feature/SharedOpticalRawDigit
-   2015-03-23 Alex Himmel : Merge remote-tracking branch ‘origin/develop’ into feature/SharedOpticalRawDigit
-   2015-03-17 Tingjun Yang : Update classes\_def.xml.
-   2015-03-17 Tingjun Yang : Merge branch ‘develop’ into feature/SharedOpticalRawDigit
-   2015-03-13 Alex Himmel : Restore original definition of TimeSlice\_t
-   2015-03-13 Alex Himmel : Merge tag v04\_00\_03 into feature/SharedOpticalRawDigit.
-   2015-03-04 Gleb Sinev : Merge branch ‘feature/SharedOpticalRawDigit’ of [http://cdcvs.fnal.gov/projects/lardata](http://cdcvs.fnal.gov/projects/lardata) into feature/SharedOpticalRawDigit
-   2015-03-04 Alex Himmel : Merge remote-tracking branch ‘origin/develop’ into feature/SharedOpticalRawDigit
-   2015-02-20 Gleb Sinev : Merge branch ‘feature/SharedOpticalRawDigit’ of [http://cdcvs.fnal.gov/projects/lardata](http://cdcvs.fnal.gov/projects/lardata) into feature/SharedOpticalRawDigit
-   2015-01-30 Alex Himmel : A first attempt at re-designing the OpticalRawDigit to be less uboone-specific. - Inverted the inheritance so now FIFOChannel is derived from OpticalRawDigit. - OpticalRawDigit now has just a time, a channel, and the waveform. - A Frame() function which just returns zero is kept for now so that algorithms which expect multiple frames can still be used. May want to deprecate this out in the future as algorithms are developed. - TimeSlice\_t was made an unsigned long so it can hold the 64 bit NOvA-type time stamp used in the LBNE electronics.
-   2015-01-30 Alex Himmel : A first attempt at re-designing the OpticalRawDigit to be less uboone-specific. - Inverted the inheritance so now FIFOChannel is derived from OpticalRawDigit. - OpticalRawDigit now has just a time, a channel, and the waveform. - A Frame() function which just returns zero is kept for now so that algorithms which expect multiple frames can still be used. May want to deprecate this out in the future as algorithms are developed. - TimeSlice\_t was made an unsigned long so it can hold the 64 bit NOvA-type time stamp used in the LBNE electronics.

larcore v04\_04\_00
------------------------------------------

-   2015-04-16 Lynn Garren : larcore v04\_04\_00 for larsoft v04\_05\_00
-   2015-04-15 Alex Himmel : Consistently use unsigned ints.
-   2015-04-14 Alex Himmel : Add IsValidOpChannel() check which checks range of channel number, optical detector, and hardware channel number. If these functions are designed correctly in inherited classes, reimplementation of this function probably not necessary for every geometry.
-   2015-04-14 Alex Himmel : Rename NHardwareChannel -\> NOpHardwareChannels
-   2015-04-14 Alex Himmel : Merge remote-tracking branch ‘origin/develop’ into feature/wallbank\_NewOpticalChannelMap
-   2015-04-07 Alex Himmel : More renaming, encapsulate access to OpDetGeo.
-   2015-04-05 Alex Himmel : Add NHardwareChannels to give number of hardware channels per optical detector.
-   2015-04-05 Alex Himmel : Renaming for increased clarity. Set up ChannelMapAlg to take the number of optical detectors to avoid a circular dependence.
-   2015-04-04 Alex Himmel : Fix default return values.
-   2015-04-04 Mike Wallbank : Changes to the geometry services to include functionality for optical channel mapping

larbatch v01\_05\_01
--------------------------------------------

-   2015-04-16 Lynn Garren : larbatch v01\_05\_01 for larsoft v04\_05\_00
-   2015-04-13 Herbert Greenlee : Add remaining sam functions for analysis files.
-   2015-04-10 Herbert Greenlee : Add more toolbar style buttons.
-   2015-04-10 Herbert Greenlee : Add SAM analysis functions.
-   2015-04-10 Herbert Greenlee : Improved error message (from Kirby).

larutils v1\_00\_07
------------------------------------------
