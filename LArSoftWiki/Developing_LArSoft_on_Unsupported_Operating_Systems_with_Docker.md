

# Developing LArSoft on Unsupported Operating Systems with Docker

## Introduction

Please note that Docker licensing terms for Docker Desktop (since 2022) requires paid licenses for Docker Desktop used for government-funded research. Docker Desktop can be used with a personal email, but not a Fermilab account. If you are currently using Docker Desktop for work, there are free alternatives available:

[https://podman-desktop.io/](https://podman-desktop.io/)

[https://rancherdesktop.io/](https://rancherdesktop.io/)



The SciSoft team has dropped native MacOS from art suite 3.06 due to the significant and unsustainable development effort required, and SLF6 due to lack of support for modern Python (\>3.6). Also, to date (June 2023) we have not received an official request from an experiment or collaboration to support Ubuntu 20.04 LTS (Focal Fossa) or CentOS 8.

Individuals, however, do have several possible reasons for wishing to develop on an unsupported OS:

-   Familiarity with local editors or IDEs.
-   Lack of access or bandwidth to systems running a supported OS.
-   To leverage otherwise unusable resources.

For them, Docker provides a way to development on unsupported operating systems.



## A Suggested Scheme for LarSoft Development With Docker

We recommend:

1.  Hosting UPS products *within* a Docker container.
2.  Hosting source code *outside* the Docker container.
3.  Building and debugging code *inside* the Docker container.
4.  Interacting with git and / or GitHub *inside* the Docker container (although doing this outside the container is as simple as having suitable native versions of git and / or hub).

## Overview: Quick Start

1.  Satisfy [prerequisites](Developing_LArSoft_on_Unsupported_Operating_Systems_with_Docker#Prerequisites).
2.  [Create and populate the UPS products volume](Developing_LArSoft_on_Unsupported_Operating_Systems_with_Docker#Create-and-Populate-the-External-UPS-Products-Volume).
3.  [Ensure GitHub credentials for the hub utility](Developing_LArSoft_on_Unsupported_Operating_Systems_with_Docker#Initialize-Hubs-GitHub-Credentials).
4.  [Create the source area on the host](Developing_LArSoft_on_Unsupported_Operating_Systems_with_Docker#Create-the-Source-Area-on-the-Host).
5.  [Initialize MRB](Developing_LArSoft_on_Unsupported_Operating_Systems_with_Docker#Initialization).
6.  [Daily development operations](Developing_LArSoft_on_Unsupported_Operating_Systems_with_Docker#Daily-Development-Operations).

## Relevant Docker Concepts and Components

One is encouraged to read as much of the [guides](https://docs.docker.com/guides/), [manuals](https://docs.docker.com/engine/), and [reference material](https://docs.docker.com/reference/) as required to obtain the best overall picture of Docker and its associated tools and how to use them. However, we present a short introduction to the most important concepts here. The major conceptual components of a Docker system from the point of view of the task at hand are:

### The Image

The **image** is the equivalent of a C class *i.e.* the description of everything required by the running system: OS, auxiliary applications and files, and initial commands to be run at startup. Continuing the analogy, the vast majority of the data in this class will be static in the C sense, not contributing to the size of an instance. An image is created according to a `Dockerfile` via `docker build`, and may be hierarchical—building upon lower-level layers such as a base operating system.

### The Container

The **container** is an instance of an image: an actual running system, with such external mounts and other configuration as determined by the `docker run` command. Multiple containers corresponding to a particular image may exist at any time, sharing any image data that remain unmodified.

### The Volume

Docker containers in themselves are processes that do not affect the outside environment: without volumes, a Docker container is isolated from the host system, and changes made to files inside it do not affect the host. Under normal circumstances, once the container exits those changes are inaccessible: a new `docker run` invocation from the same image will not include any changes made in previous containers from the same image. This isolation can be relaxed, however, by use of mounts of which there are two categories, the host-based, “bind” mount, and the self-contained “Docker Volume.” The former allows directories or even individual files on the host to be visible in a container. The latter is a self-contained entity which may be mounted (simultaneously if desired) from multiple containers, and is generally not accessible from the host. In both cases, changes will persist automatically beyond the lifetime of any individual container.

### An Analogy Linking the Components

To settle the different components and concepts together in one's mind, one could consider:

1.  The `Dockerfile` as a cake recipe,
2.  Each volume as a box of ingredients,
3.  The image as a special ingredient box where most of the ingredients don't appear until they are needed, also containing a magical instructional video, the viewing of which will actually create a real cake you can eat, and
4.  The container as a particular cake—iced, decorated and with extra required and / or optional ingredients described by specific `docker run` command-line options.

## Developing LArSoft with MRB and Docker: Which Bits Go Where?

We can think of a specific LArSoft development environment as consisting of several components:

1.  The **<span id="base_os">base operating system and system-level prerequisites</span>**.
2.  **<span id="external_ups">External UPS products</span>** required by the code under development, not themselves to be developed (tools, dependencies, or parts of LArSoft not requiring changes for the current task).
3.  The overall **<span id="mrb_top">MRB directory structure</span>**.
    1.  **<span id="local_ups">Local UPS products</span>** built from the packages being developed.
    2.  The **<span id="mrb_build">build area(s)</span>**.
    3.  The **<span id="pkg_source">source code</span>** for the packages being developed.
    4.  The **<span id="CMakeLists_txt">`CMakeLists.txt`</span>** file representing the sources to be built by MRB.
4.  Any **<span id="user_config">user configuration</span>** files for tools or system operations.
5.  Any **<span id="env_vars">environment variables</span>** required to pass information from the host to the container.

### The Image

The base operating system and system-level prerequisites are already available as a [FNAL Docker image](https://hub.docker.com/repository/docker/fnalart/os_base), based on a specific tagged, official [CentOS](https://hub.docker.com/_/centos?tab=tags&amp;page=1&amp;name=7.8.2003) image from [Docker Hub](https://hub.docker.com). This image contains, in addition to the relatively minimal OS installation provided by the base image:

-   The latest updates available at the time the image was produced.
-   The LSB utilities for system introspection (`lsb_release`, *et al.*).
-   Kerberos software, libraries and configuration necessary for interacting with FNAL services and interactive machines.
-   Terminal multiplexers:
    -   [screen](https://en.wikipedia.org/wiki/GNU_Screen)
    -   [tmux](https://github.com/tmux/tmux/wiki)
-   Common and popular editors, including:
    -   [vim](https://www.vim.org/)
    -   [neovim](https://neovim.io/)
    -   [emacs](https://www.gnu.org/software/emacs/)
    -   [nedit](https://sourceforge.net/projects/nedit/)
-   All the system-level prerequisites necessary to build art, LArSoft and all their dependencies.

### Self-Contained Volumes

We recommend (and provide instructions for) having the [external UPS products](Developing_LArSoft_on_Unsupported_Operating_Systems_with_Docker#external_ups) be part of their own volume. Whether one makes one volume per release that one develops against or one “omnibus” volume updated as necessary is a decision that developers can make based on their particular needs, but we recommend that any given development container connect to only one such volume, and that each such volume contain products for only one [primary qualifier](https://cdcvs.fnal.gov/redmine/projects/cet-is-public/wiki/AboutQualifiers#Primary-Qualifiers). The host does not need to see or interact with these products, and separate volumes per primary qualifier should keep them at a reasonable size.

We recommend that the [MRB build](Developing_LArSoft_on_Unsupported_Operating_Systems_with_Docker#mrb_build) and [local products areas](Developing_LArSoft_on_Unsupported_Operating_Systems_with_Docker#local_ups) be put together in the same self-contained volume, distinct from the external UPS products and dependencies.

If one is in the habit of building the same code under different primary qualifiers, one could:

1.  have a single volume containing the [top-level MRB directory](Developing_LArSoft_on_Unsupported_Operating_Systems_with_Docker#mrb_top) and all [build](Developing_LArSoft_on_Unsupported_Operating_Systems_with_Docker#mrb_build) and [local product](Developing_LArSoft_on_Unsupported_Operating_Systems_with_Docker#local_ups) areas using MRB's `-T` option (see [the instructions below](Developing_LArSoft_on_Unsupported_Operating_Systems_with_Docker#Create-and-Use-a-Simple-MRB-Area-in-One-Volume)), **or**
2.  create the [top-level MRB directory](Developing_LArSoft_on_Unsupported_Operating_Systems_with_Docker#mrb_top) directly in the container and have each qualifier set's [build](Developing_LArSoft_on_Unsupported_Operating_Systems_with_Docker#mrb_build) and [local](Developing_LArSoft_on_Unsupported_Operating_Systems_with_Docker#local_ups) areas in a separate volume for each qualifier set, mounted only as needed: see the link to the appropriate [Advanced Topic](Developing_LArSoft_on_Unsupported_Operating_Systems_with_Docker#alt_mrb_layouts) below.

We recommend the former layout for most circumstances, although the latter might be more attractive to a power user wanting to factor out the build products from several qualifier combinations.

### Host Mounts

In any configuration scenario described above, we recommend the [MRB srcs/ directory](Developing_LArSoft_on_Unsupported_Operating_Systems_with_Docker#pkg_source) be based on the host (including the [CMakeLists.txt](Developing_LArSoft_on_Unsupported_Operating_Systems_with_Docker#CMakeLists_txt) file), and mounted to each container. This enables the source to be examined and edited easily from the host, and any changes thereto to be backed-up without pushing to a remote repository. It also enables the sources to be shared between multiple containers. With a some change to the construction of volumes and the invocation of the container, one could utilize a given source area with different sets of packages under development vs being obtained from external UPS packages by localizing the `CMakeLists.txt` file.

### Runtime Container Configuration

Any [environment settings](Developing_LArSoft_on_Unsupported_Operating_Systems_with_Docker#env_vars) or [user configuration files](Developing_LArSoft_on_Unsupported_Operating_Systems_with_Docker#user_config) from the host—such as the hub configuration file containing one's GitHub credentials, or a socket file containing X connection data and an associated value of the DISPLAY environment variable—should be specified at container runtime via suitable `--mount` or `-e` options to the `docker run` comand as appropriate.

## Setting up a Development Environment

### Conventions

We use the following conventions while demonstrating command input or output:

```python

    (host) $ # Command-line prompt on host machine
    # Output...
    (-dc-) $ # Command-line prompt within running container
    # Output...
```
<a name="Prerequisites"></a>
### Prerequisites

-   As much read-write storage space as required for the development to be undertaken (often 10-15 GiB or more), plus a few hundred MiB.
-   The ability to install software (or have it installed) on the host system.
-   [Install Docker](https://cdcvs.fnal.gov/redmine/projects/vms-and-containers/wiki/Using_Docker).
-   An understanding of the terms image, container, and volume is necessary for productive use of this approach and adaption to one's own preferred workflow and environment.
-   A suitable choice of base image from which to create containers. We recommend using `fnalart/os_base:centos7` as referenced above, as it should already be configured with all system-level library, tool and development packages to support developing LArSoft.

### Image Retrieval

An explicit command to obtain the base image is not *necessary*: the first `docker run` command referencing an image not currently installed will trigger an attempt to obtain it from DockerHub. At any time one can check what images are available on the local system with (*e.g.*):

```python
    (host) $ docker images | grep fnalart
    fnalart/os_base     centos7             398e2b29aca9        2 years ago         712MB
    ...
```

However, we *recommend* regular use of an explicit `docker pull` command prior to instantiating a container with `docker run` in order to ensure the latest available image is being used:

```python
    (host) $ docker pull fnalart/os_base:centos7
```
<a name="Create-and-Populate-the-External-UPS-Products-Volume"></a>

### Create and Populate the External UPS Products Volume

-   Create the Docker volume:
```python
        (host) $ docker volume create ups-products
        (host) $ docker run —-rm -it \
        --mount source=ups-products,target=/products fnalart/os_base:centos7
```
-   Populate it with the desired release (*e.g.*):
```python
        (-dc-) $ curl -O https://scisoft.fnal.gov/scisoft/bundles/tools/pullProducts
        (-dc-) $ chmod +x pullProducts
        (-dc-) $ ./pullProducts -r /products slf7 larsoft-v08_54_00 s97-e19 prof
        # Now make sure we always know our flavor.
        (-dc-) $ cd /products
        (-dc-) $ sed -Ei -e '/^[[:space:]]*setenv[[:space:]]+UPS_OVERRIDE/ d' /products/setups_layout
        (-dc-) $ echo 'setenv UPS_OVERRIDE "-H Linux64bit+3.10-2.17-cl7"' > /products/setup.initial
        (-dc-) $ echo 's_setenv UPS_OVERRIDE="-H Linux64bit+3.10-2.17-cl7"' >> /products/setups_layout
        # Done.
        (-dc-) $ exit
```
<a name="Initialize-Hubs-GitHub-Credentials"></a>

### Initialize Hub's GitHub Credentials

```python

    (host) $ touch $HOME/.config/hub # if hub not previously used
    (host) $ docker run --rm -it \
    --mount type=bind,source=$HOME/.config/hub,target=/root/.config/hub \
    --mount source=ups-products,target=/products fnalart/os_base:centos7

    (-dc-) $ . /products/setup 
    (-dc-) $ setup hub
    (-dc-) $ hub api # Follow the prompts and provide the expected information.
    (-dc-) $ exit
```

<a name="Create-the-Source-Area-on-the-Host"></a>

### Create the Source Area on the Host

*e.g.*:

```python
    (host) $ mkdir ~/work/mrb-larsoft/srcs
```

### Create and Use a Simple MRB Area in One Volume

For other, more complex configurations that might be more suited to your needs, see [Advanced Topics](Developing_LArSoft_on_Unsupported_Operating_Systems_with_Docker#Advanced-Topics), below.

<a name="Initialization"></a>

#### Initialization

```python
    (host) $ docker volume create mrb-larsoft
    (host) $ docker run --rm -it \
    --mount type=bind,source=$HOME/.config/hub,target=/root/.config/hub \
    --mount source=ups-products,target=/products \
    --mount source=mrb-larsoft,target=/work/mrb-larsoft \
    -w /work/mrb-larsoft \
    --mount type=bind,target=/work/mrb-larsoft/srcs,source=<full-host-path-to-srcs> \
    fnalart/os_base:centos7

    (-dc-) $ . /products/setup
    (-dc-) $ setup mrb
    (-dc-) $ export MRB_PROJECT=larsoft
    (-dc-) $ mrb newDev -vv08_54_00 -q e19:prof -T e19-prof -f
    (-dc-) $ . e19-prof/localProducts_larsoft_v08_54_00_e19_prof/setup
    (-dc-) $ mrb g [--fork] larsoft
    (-dc-) $ exit
```
<a name="Daily-Development-Operations"></a>

#### Daily Development Operations

```python
    (host) <shell-1> $ docker run --rm -it \
    --mount type=bind,source=$HOME/.config/hub,target=/root/.config/hub \
    --mount source=ups-products,target=/products \
    --mount source=mrb-larsoft,target=/work/mrb-larsoft \
    --mount type=bind,target=/work/mrb-larsoft/srcs,source=<full-host-path-to-srcs> \
    -w /work/mrb-larsoft \
    fnalart/os_base:centos7

    (-dc-) $ . /products/setup
    (-dc-) $ setup mrb
    (-dc-) $ . e19-prof/localProducts_larsoft_v08_54_00_e19_prof/setup

    (host) <shell-2> $ # Edit sources as necessary.

    (-dc-) $ mrbsetenv
    (-dc-) $ # Continue normal development...
```
<a name="Advanced_Topics"></a>

## Advanced Topics

-   [Using Hub &amp; Git from the host](Developing_LArSoft_With_Docker_-_Advanced_Topics#Using-Hub-amp-Git-From-the-Host).
-   <span id="alt_mrb_layouts">[Alternative MRB layouts](Developing_LArSoft_With_Docker_-_Advanced_Topics#Alternative-MRB-Layouts)</span>.
-   [Running GUI applications in Docker](Developing_LArSoft_With_Docker_-_Advanced_Topics#Running-GUI-Applications-in-Docker).
