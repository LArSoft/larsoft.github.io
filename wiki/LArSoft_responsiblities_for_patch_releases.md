# LArSoft responsiblities for patch releases

## Permissions

### Manager permissions for larsoft redmine projects

-   Add the requested users to the larsoft redmine “Larsoft Managers” group.
-   Remove users who no longer have patch release building responsibilities.
-   An email should be sent to Erica Snider requesting that the users be added or removed.

## Initial setup - one time steps for each set of patch releases

The LArSoft release manager will make the larsoft patch branches and do the housecleaning.

### Make branches for the release

-   If a release is named vaa_bb_cc, branches will be created for the larsoft/larsoftobj suite with the name vaa_bb_cc_br.
        (setup the latest larreltools)
        setup mrb
        export MRB_PROJECT=larsoft
        mrb newDev -v  vaa_bb_cc -q eN:prof 
        source local*/setup
        cd $MRB_SOURCE
        mrb g -t LARSOFT_SUITE_vAA_BB_CC larsoft_suite
        mrb g -t LARSOFT_SUITE_vAA_BB_CC larsoftobj_suite
        dogit branch (check that you are on the head of the tag)
        dogit "co -b vaa_bb_cc_br"
        dogit "push -u origin vaa_bb_cc_br"

    -   Note that some older patch releases may have used a slightly different branch naming scheme.
-   We do not make patches for larbatch, larutils, or larpandoracontent.
    -   larpandoracontent depends only on pandora.
    -   Any changes required in larpandoracontent are made by the UK pandora team.

### Housecleaning

-   cd $MRB_SOURCE/larsoft/releaseDB
-   Make sure that larutils, larbatch, and mrb are removed from the cfg scripts.
    -   We might streamline this by creating a small “larsoft extras” distribution that can be optionally included.
-   commit and push the change
