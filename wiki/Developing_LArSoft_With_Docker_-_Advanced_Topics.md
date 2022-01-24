Developing LArSoft With Docker - Advanced Topics
====================================================================================================

Discussed below are some more advanced topics related to developing LArSoft software using Docker containerization. More basic information is available on the main page, [Developing LArSoft on Unsupported Operating Systems With Docker](Developing_LArSoft_on_Unsupported_Operating_Systems_With_Docker).

Using Hub & Git From the Host
------------------------------------------------------------------

This is relatively straightforward: one just needs to obtain recent versions of the Hub and / or Git utilities. On MacOS, the version of Git should be fine, depending on your OS / XCode versions, and Hub should be obtained through Homebrew, *viz.*: `brew install hub`. The credentials file is identically the same as that used from within the container due to the mount commands used therefor. On Linux, obtain them through your native packaging system if possible. Otherwise–or if either are too old to be of use–Git is available in [binary](https://git-scm.com/downloads) and [source](https://github.com/git/git/releases) forms, and Hub has [several binary packages](https://github.com/github/hub/releases/latest) available.

Alternative MRB Layouts
----------------------------------------------------

### Create and Use an MRB Area With One Volume Per Qualifier Set

#### Initialization

    (host) $ docker volume create mrb-larsoft-e19-prof
    (host) $ docker volume create mrb-larsoft-e20-prof
    (host) $ docker run --rm -it \
    --mount type=bind,source=$HOME/.config/hub,target=/root/.config/hub \
    --mount source=ups-products,target=/products \
    --mount source=mrb-larsoft-e19-prof,target=/work/mrb-larsoft/e19-prof \
    --mount source=mrb-larsoft-e20-prof,target=/work/mrb-larsoft/e20-prof \
    -w /work/mrb-larsoft \
    --mount type=bind,target=/work/mrb-larsoft/srcs,source=<host-path-to-srcs> \
    fnalart/os_base:centos7

    (-dc-) $ . /products/setup
    (-dc-) $ setup mrb
    (-dc-) $ export MRB_PROJECT=larsoft
    (-dc-) $ mrb newDev -vv08_54_00 -q s97:e19:prof -T e19-prof -f
    (-dc-) $ mrb newDev -vv08_54_00 -q s97:e20:prof -T e20-prof -f
    # (a)
    (-dc-) $ . e19-prof/localProducts_larsoft_v08_54_00_e19_s97_prof
    # OR (b)
    (-dc-) $ . e20-prof/localProducts_larsoft_v08_54_00_e20_s97_prof
    (-dc-) $ mrb g [--fork] larsoft
    (-dc-) $ exit

#### Daily Development Operations

    (host) <shell-1> $ docker run --rm -it \
    --mount type=bind,source=$HOME/.config/hub,target=/root/.config/hub \
    --mount source=ups-products,target=/products \
    --mount source=mrb-larsoft-e19-prof,target=/work/mrb-larsoft/e19-prof \
    --mount source=mrb-larsoft-e20-prof,target=/work/mrb-larsoft/e20-prof \
    -w /work/mrb-larsoft \
    --mount type=bind,target=/work/mrb-larsoft/srcs,source=<host-path-to-srcs> \
    fnalart/os_base:centos7

    (-dc-) $ . /products/setup
    (-dc-) $ setup mrb
    # (a)
    (-dc-) $ . e19-prof/localProducts_larsoft_v08_54_00_e19_s97_prof
    # OR (b)
    (-dc-) $ . e20-prof/localProducts_larsoft_v08_54_00_e20_s97_prof

    (host) <shell-2> $ # Edit sources as necessary.

    (-dc-) $ mrbsetenv
    (-dc-) $ # Continue normal development...

N.B. It is not necessary to mount all `mrb-larsoft-*` volumes, just those to be used in the upcoming session.

### A Common Source Area for Multiple MRB Areas.

#### Initialization

    (host) <shell-1> $ drun_args=(--rm -it \
    --mount type=bind,source=$HOME/.config/hub,target=/root/.config/hub \
    --mount source=ups-products,target=/products \
    --mount source=mrb-larsoft,target=/work/mrb-larsoft \
    -w /work/mrb-larsoft)
    (host) <shell-1> $ for pkg in larsim ...; do drun_args+=(--mount type=bind,target=/work/mrb-larsoft/srcs/$pkg,source=<path-to-srcs>/$pkg); done
    (host) <shell-1> $ docker run "${drun_args[@]}" fnalart/os_base:centos7

    (-dc-) $ . /products/setup
    (-dc-) $ setup mrb
    (-dc-) $ export MRB_PROJECT=larsoft
    (-dc-) $ mrb newDev -vv08_54_00 -q s97:e19:prof -T e19-prof -f
    (-dc-) $ . e19-prof/localProducts_larsoft_v08_54_00_s97_e19_prof
    (-dc-) $ mrb uc
    (-dc-) $ mrbsetenv
    (-dc-) $ mrb uc # Get the order right with respect to dependencies.
    (-dc-) $ exit

#### Daily Development Operations

Assuming the same `docker run` command as above:

    (-dc-) $ . /products/setup
    (-dc-) $ setup mrb
    (-dc-) $ export MRB_PROJECT=larsoft
    (-dc-) $ . e19-prof/localProducts_larsoft_v08_54_00_s97_e19_prof

    (host) <shell-2> $ # Edit sources as necessary.

    (-dc-) $ mrbsetenv
    (-dc-) $ # Continue normal development...

Running GUI Applications in Docker
--------------------------------------------------------------------------
