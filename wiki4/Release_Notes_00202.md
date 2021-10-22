LArSoft suite Release Notes 0.02.02 (2014/15/14)[¶](#LArSoft-suite-Release-Notes-00202-20141514)
================================================================================================

Previous version’s release notes: ([Release Notes 0.02.01](Release_Notes_00201))\
[Link to download instructions](http://oink.fnal.gov/distro/larsoft/larsoft-v0_02_02.html)\
[Link to binary download script](http://oink.fnal.gov/distro/larsoft/downloadLArSoft-v0_02_02.sh) \
[Link to source download script](http://oink.fnal.gov/distro/larsoft/downloadLArSource-v0_02_02.sh)


LArSoft 0.02.02 (link to roadmap for the release)[¶](#LArSoft-00202-link-to-roadmap-for-the-release)
----------------------------------------------------------------------------------------------------


### Purpose[¶](#Purpose)

Beta release of git + cmake-based LArSoft release for general public testing of full LArSoft functionality, tool functionality, tool and documentation adequacy. Includes all bug fixes to v0.02.01 to date. Based on a snapshot of svn LArSoft on Nov 26, 2013.


### New features[¶](#New-features)


### Bug fixes[¶](#Bug-fixes)

See the [LArSoft (beta) issue tracker](https://cdcvs.fnal.gov/redmine/projects/larsoft/issues)


### Known issues[¶](#Known-issues)

Issue [\#5213](/redmine/issues/5213 "Bug: GENIE not running in MicroBooNE envt (Closed)"): GENIE not running

-   Problem will be fixed in the next release
-   Work-around: after setting up the larsoft and \<expt\>code products:\

        unsetup nutools
        setup nutools v1_01_04
        setup genie_xsec R-2_8_0 -q+default
        setup genie_phyopt R-2_8_0 -q+dkcharmtau

See the [LArSoft (beta) issue tracker](https://cdcvs.fnal.gov/redmine/projects/larsoft/issues)


### List of product dependencies[¶](#List-of-product-dependencies)

\<under construction…\>

-   For art, these are links to the top-level release notes pages for each of the changed products.
-   Each product listed has “new version”, etc, to indicate what is new
-   Prefer the full list with notations as to “new version”, “new product”, etc.
