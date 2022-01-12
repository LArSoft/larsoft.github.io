Policy for development from a tagged production release
====================================================================================================================

There are times when an experiment needs to continue development, but cannot integrate changes on the main develop branch. For example, the experiment may need to continue algorithm development to make physics goals, but needs to wait before adopting and integrating new dependencies, such as a new version of GEANT4, Root, etc.

The solution, in this case, is for the experiment to base development on a branch forked directly from the desired tagged production release. Changes to the code in the tagged release will be merged into this new branch, which then forms the basis of any subsequent integration or production releases based on the original tagged release. In effect, this new branch serves as an alternate ‘develop’ branch.

It is important to note that changes on this fork are ***not*** in general merged into the main line ‘develop’ branch. New features, bug fixes or other changes that need to go into the main line develop branch must be sync’ed by hand. In some situations, it may need to be reimplemented. For this reason, it is strongly recommended that this approach be adopted only when absolutely necessary and that such a branch is **temporary**.

Procedure for developing from a tagged release
--------------------------------------------------------------------------------------------------

1.  The experiments’ software coordinator should put in a request to specifying the tagged release vxx_yy_zz.
2.  **Only** the LArSoft code manager will create a branch named vxx_yy_zz_br in each of the core larsoft repositories (excluding larbatch, larutils, and larpandoracontent).
3.  “Feature branches” are then rooted on a new feature_vxx_yy_zz branch feature_vxx_yy_zz/\<my_branch_name\>.
4.  Changes are then merged into vxx_yy_zz_br according to the [Getting new code into a LArSoft release](Getting_new_code_into_a_LArSoft_release) guidelines.

Note, larbatch and larutils should always be the most recent release. Also note that larpandoracontent is controlled by the Pandora team and will not be updated as part of a patch release.

Branch vxx_yy_zz_br will be used to create tagged releases vxx_yy_zz_mm, per the release naming policy. See [How to tag and build a LArSoft patch release](How_to_tag_and_build_a_LArSoft_patch_release)

See the [LArSoft git Guidelines](LArSoft_git_Guidelines) for notes about working with these special branches.

Why hotfix doesn’t work here
-------------------------------------------------------------

The ‘hotfix’ branch structure supported by ‘git flow’ is not appropriate in some situations, since hotfixes presume that only one person at a time is working on the tagged release. If the work to be done is a simple one-off fix, then using git flow to create a hotfix branch is still appropriate.
