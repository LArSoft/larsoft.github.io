# Tips on updating your code after LArSoft release



LArSoft releases happen often, and code that worked fine with one version might even not work on the next.  
Here is some tips on updating your code so that it's back and rocking.

## Updating an existing MRB area

There are a few steps.

1.  Log in to a fresh session.
2.  Set up the latest version of `larsoft` with the qualifiers you want to use (e.g. `debug` or `prof`).
3.  Move to your local development area.
4.  Create a new local products area:
        mrb newDev -p
5.  (Optional) delete the old product area. This is not required, but if you keep it around it may confuse `mrbslp`.
6.  Setup the new product area
        source localProducts*/setup
7.  Update all of your checked out repositories to head:
        cd srcs/<repo1>
        git pull
        cd ../<repo2>
        git pull
        ...
8.  Do a clean build
        mrb z
        mrbsetenv
        mrb i <your favorite options>

For a detailed example (from a particular project, so there is some project-specific information), look at [sbndcode:Upgrade_to_LArSoft_6](https://cdcvs.fnal.gov/redmine/projects/sbndcode/wiki/Upgrade_to_LArSoft_6)

## Dealing with breaking changes

If you're unsure what a breaking change is, read the [description of breaking changes](Getting_new_code_into_a_LArSoft_release)

To help in fixing, there is important information in the [Breaking Changes](releases/Breaking_Changes) wiki page.

## Specific code updates

-   how to update [Adopting new ROOT vector and matrix classes](from ROOT vectors (TVector3) to ROOT GenVector)
