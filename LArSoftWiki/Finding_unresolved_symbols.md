# Finding Unresolved Symbols

How to use `find_global_symbol.sh` to find unresolved symbols


## How to know what library is needed to resolve a linking problem

How often have you encountered an error such as: `` undefined reference to `typeinfo for simb::MCParticle' ``?  
Where do you start looking for this? There are hundreds of libraries, it could be in any one of them.

Here's a solution: setup the `larutils` UPS product ( \> v1_20_08 ) (or down load the script below) and use:

    find_global_symbol.sh [-d] [-f] [-a] [-u] [-v] [-t] [-h] <symbol>

This will search all the libraries in your `${LD_LIBRARY_PATH}` for the symbol and report places that it referenced or defined.

For example:

    $ find_global_symbol.sh -f -d "typeinfo for simb::MCParticle"
    Searching for demangled symbol typeinfo for simb::MCParticle
    Found in path /cvmfs/fermilab.opensciencegrid.org/products/larsoft/nusimdata/v1_09_01/slf6.x86_64.e15.debug/lib/...
        Found in libnusimdata_SimulationBase.so
            Entry: 1144:0000000000238078 V typeinfo for simb::MCParticle
            Translates to 0000000000238078 V _ZTIN4simb10MCParticleE

    Note that  U         <symbol>    means the symbol is undefined (required) here
               T, W or V <symbol>    is defined here

    For a full list of codes type

        find_global_symbol.sh -h

## Command line options

    $  find_global_symbol.sh -h 
      find_global_symbol finds mangled or demangled symbols in libraries
      within LD_LIBRARY_PATH.  Invocation:-

         find_global_symbol.sh options name

       where options are none or more of the following:-

       -a    All libs: search all libs.
             Default:  exclude /usr/lib

       -d    Demangled: Force name to be treated as demangled
             Default:  treat name as mangled unless it contains a (

       -f    Fragment search: name is a fragment, match any symbol that
             contains name.
             Default:  symbol must exactly match name.

       -u    Print all references, including undefined symbols.
             Default:  only print symbol types T, W or V

       -v    Increase verbosity.
             -v prints each directory path as searched.
             -v -v for debugging.

       -t    Print list of symbol types (may not exactly match nm)

       -h    Print this help message.

## Symbol types (per “nm”)

    For Linux:
           ·   The symbol type.  At least the following types are used; others are, as well, depending on the object file format.  If lowercase, the
               symbol is local; if uppercase, the symbol is global (external).

               "A" The symbol’s value is absolute, and will not be changed by further linking.

               "B"
               "b" The symbol is in the uninitialized data section (known as BSS).

               "C" The symbol is common.  Common symbols are uninitialized data.  When linking, multiple common symbols may appear with the same name.
                   If the symbol is defined anywhere, the common symbols are treated as undefined references.

               "D"
               "d" The symbol is in the initialized data section.

               "G"
               "g" The symbol is in an initialized data section for small objects.  Some object file formats permit more efficient access to small data
                   objects, such as a global int variable as opposed to a large global array.

               "i" For PE format files this indicates that the symbol is in a section specific to the implementation of DLLs.  For ELF format files this
                   indicates that the symbol is an indirect function.  This is a GNU extension to the standard set of ELF symbol types.  It indicates a
                   symbol which if referenced by a relocation does not evaluate to its address, but instead must be invoked at runtime.  The runtime
                   execution will then return the value to be used in the relocation.

               "N" The symbol is a debugging symbol.

               "p" The symbols is in a stack unwind section.

               "R"
               "r" The symbol is in a read only data section.

               "S"
               "s" The symbol is in an uninitialized data section for small objects.

               "T"
               "t" The symbol is in the text (code) section.

               "U" The symbol is undefined.

               "u" The symbol is a unique global symbol.  This is a GNU extension to the standard set of ELF symbol bindings.  For such a symbol the
                   dynamic linker will make sure that in the entire process there is just one symbol with this name and type in use.

               "V"
               "v" The symbol is a weak object.  When a weak defined symbol is linked with a normal defined symbol, the normal defined symbol is used
                   with no error.  When a weak undefined symbol is linked and the symbol is not defined, the value of the weak symbol becomes zero with
                   no error.  On some systems, uppercase indicates that a default value has been specified.

               "W"
               "w" The symbol is a weak symbol that has not been specifically tagged as a weak object symbol.  When a weak defined symbol is linked with
                   a normal defined symbol, the normal defined symbol is used with no error.  When a weak undefined symbol is linked and the symbol is
                   not defined, the value of the symbol is determined in a system-specific manner without error.  On some systems, uppercase indicates
                   that a default value has been specified.

               "-" The symbol is a stabs symbol in an a.out object file.  In this case, the next values printed are the stabs other field, the stabs
                   desc field, and the stab type.  Stabs symbols are used to hold debugging information.

               "?" The symbol type is unknown, or object file format specific.

    For Mac OS X:
       U (undefined)
       A (absolute)
       T (text section symbol)
       D (data section symbol)
       B (bss section symbol)
       C (common symbol)
       - (for debugger  symbol  table  entries; see -a below)
       S (symbol in a section other than those above), or
       I (indirect symbol).
      If the symbol is local (non-external), the symbol's type is instead
      represented by the corresponding lowercase letter.  A lower case u
      in a dynamic shared library indicates a undefined reference to a
       private external in  another module in the same library.
