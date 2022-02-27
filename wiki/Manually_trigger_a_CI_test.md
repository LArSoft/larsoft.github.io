# Manually trigger a CI test

Whenever possible, it is best to use the github trigger build option. However, when a PR needs to be tested along with a feature branch in experiment code, the CI must be triggered manually.

## Trigger a CI build with experiment feature branches

the trigger option that handles LArSoft PRs and feature branches from experiment code is —revisions,  
a command example would look like:

    trigger --build-delay 0 --cert ${CI_CERT} --version develop --workflow default_wf --revisions
    "LArSoft/larreco#5,LArSoft/larcore#3,dunetpc@feature/bla1,uboonecode@feature/something1,ubreco@feature/something2"

    (the field separator can be either space or comma)

the options *—version develop* and *—workflow default_wf* in this example are using the default values.

To get the cert, it is enough to run the *kx509* command, then the cert path can be provided to the option *—cert* or pointed through an environment variable.

Eventually the trigger command can include the option to select the platform (slf6, slf7, both if omitted)

    --force-platform slf7

  
and to select qualifiers

    --quals e19:py2:prof (this is the default, for the slf7 the 'py2' is automatically removed from the qualifier)

### example

The certificate is generated in /tmp

    $ kx509
    Authorizing ...... authorized
    Fetching certificate ..... fetched
    Storing certificate in /tmp/x509up_u1147
    Your certificate is valid until: Wed Feb 26 12:58:18 2020

Get the environment:

    source /cvmfs/fermilab.opensciencegrid.org/products/common/etc/setups.sh
    setup lar_ci

Trigger a build:

    $ trigger --build-delay 0 --cert /tmp/x509up_u1147 --version develop --workflow default_wf --revisions "LArSoft/larsoft#8 LArSoft/larsim#6 dunetpc@feature/lg_LegacyLArG4"
    Checking if /tmp/x509up_u1147 can be reused ... yes
    Triggering CI build
    workflow: default_wf
    trigger attempt # 1/10
    trigger exit status: 0 
    trigger of CI build succeeded
