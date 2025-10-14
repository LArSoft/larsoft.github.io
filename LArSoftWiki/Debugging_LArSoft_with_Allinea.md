

# Debugging LArSoft with Allinea

This information is based on Dune's writeup

Allinea Forge is a commercially-available suite including a [debugger](https://www.allinea.com/sites/default/files/uploads/Datasheets/allinea_ddt.pdf) (`ddt`) and a [profiling tool](https://www.allinea.com/products/map/features) (`map`). The `ddt` debugger is a GUI frontend to the `gdb` debugging tool.

**Fermilab no longer has licenses available.**

Debugging videos demos and tutorials are [available](https://www.allinea.com/debugger-videos).

On the interactive GPVM machines at Fermilab, it is available as a pre-installed UPS product.  
There is no default version, so you have to specify the version on the setup line. It is generally deployed in `/grid/fermiapp/products/local`, which you may have to add to the `PRODUCTS` path if your experiment setup doesn't already (DUNE also deploys it in their own UPS repository). As an alternative, you can add the argument `-z /grid/fermiapp/products/local` to your UPS commands. These two commands will first have you discover the available versions, and then set one up:

    ups list -aK+ allinea
    setup allinea <version>

  
The above is obsolete. Now you just need to setup forge_tools:

    setup forge_tools

  
If you need to install Allinea forge on a computer that doesn't yet have it using `upd`, follow the instructions [here](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Getting_started_with_Allinea_MAP_and_DDT)

The debugger is called `ddt`, and it has built-in help for starting it

    ddt --help

  
in addition to the [web manual](https://www.allinea.com/user-guide/forge/userguide.html) (both `ddt` and `map`)

## Tips

### Multi-threading and MPI

DUNE found that starting it with `--nompi` works to get started if you get this error message,

    Allinea DDT detected you are using MPI, but could not detect which implementation.

There are a few things in *art* that are multi-threaded, such as the messaging system and interaction with the SQLite database when running time or memory profiling services, though your program should be able to run single-threaded as well. Feel free to experiment with it.

### Command line

You will have to specify the full path name to the executable, and arguments can be specified on the command line. The quickest way is to use `which` command directly within backticks:

    ddt --nompi `which lar` -c prodsingle.fcl &amp;

### Source code

It can be tricky to get `ddt` to find source code. Right-clicking in the Project Files window lets you add source directories. Subdirectories are searched for appropriate source, but you need to specify a full path including unique versions to get the source you want. The path to the source that was used to compile the program is stored along with the debug symbols, and Allinea checks to see if the source version matches that in the executable and shared libraries. Due to our installation procedure, this check will fail, and it is up to you to make sure that your source and executable match.

When you step into a file that Allinea does not find, it will show a button to allow you to search the source code. You can point it to the sources, that are (almost) always distributed with the UPS product. If, for example, you are trying to dig into ROOT, you want to check where ROOT source is by asking UPS:

    echo "$ROOT_DIR"

  
on the terminal you started `ddt` from, and then browse with Allinea to find the the `source` subdirectory of that directory.  
Fortunately, once Allinea is told for one file, it can figure out by itself for others in the same directory.

### Searching extra directories

If the executable or source files have been moved since compilation, the source files cannot be found automatically.

Extra directories to search for source files can be added by right-clicking whilst in the Project Files tab, and selecting Add/view Source Directory(s). You can also specify extra source directories on the command line using the —source-dirs command line argument (separate each directory with a colon).

Can add an individual file, by right-clicking in the Project Files tab and selecting the Add File option.

Any directories or files added are saved and restored when you use the Save Session and Load Session commands inside the File menu.

There doesn't seem to be a way to do a recursive check (e.g. by setting /products as the source dir), but ddt does remember the settings for a given executable from session to session. You may need to clear out the .allinea/autosaves directory if you change the version of a package you use.

Experiments can add to their environment setup the setting of an environment variable which turns all the XXX_DIR environment variables into a path-like variable with $XXXX_DIR/source/XXX, where that directory exists.

### Console output of the job

The output of the job goes to a window at the bottom selectable with the tab Input/Output.  
The messages in red are from standard error stream, and depending on your message facility configuration they might duplicate the ones in standard output (in black).

## Licenses

Fermilab has purchased a limited number of licenses for use of Allinea Forge. If you are declined access, it means that the maximum number of allowed users are already running it.

> Please make sure you don't leave an Allinea instance open, since that could prevent other people from using it.

If you are declined access, please provide feedback to your [computing division liaison](https://fermipoint.fnal.gov/organization/cs/scd/Lists/Experiment%20and%20Scientific%20Collaboration%20Liaison%20Li/AllItems.aspx). (Need your services account to access the link.) It may be a sign that more licenses should be purchased.
