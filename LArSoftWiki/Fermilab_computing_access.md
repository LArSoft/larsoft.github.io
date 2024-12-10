# Fermilab Computing Access

**For up-to-date information, 
please consult the knowledge base at [The Fermilab Service Desk](https://fermi.servicenowservices.com/wp). This requires logging in with your Services account and searching for "kerberos". 
The following is just for your convenience.**

Users must have a valid kerberos ticket to access Fermilab computing at the time of an attempt to log into a Fermilab machine. The ticket is obtained by executing the following command at a terminal prompt:

    $ kinit <principal>@FNAL.GOV

  
where <principal> is the user's kerberos principal (i.e., username or uid). If a user is attempting to access the repository from a non-Fermilab machine, the following lines must be in the user's .ssh/config:

    Host *.fnal.gov
    ForwardAgent yes
    ForwardX11 yes
    ForwardX11Trusted yes
    GSSAPIAuthentication yes
    GSSAPIDelegateCredentials yes

In case of trouble when connecting via ssh (permission denied error) the reason can be in the OpenSSH client, the following client is compatible with Fermilab Kerberos authentification:  
OpenSSH_4.3p2, OpenSSL 0.9.8e-fips-rhel5 01 Jul 2008

One also needs to be sure to have the correct configuration for the /etc/krb5.conf file. Make sure that this file has its read permission bits turned on (<code>chmod +r /etc/krb5.conf</code>) if they are not.

Depending on whether you are behind a NAT translation service, you may need “addressless” tickets. Experiment with the options -a and -A in kinit if you get a permission denied error when ssh'ing in.

Tip for Macintosh users using MacPorts: It has been seen that MacPorts will install a version of Kerberos in  
/opt/local/bin that differs from the one that comes with Mac OS X and put it ahead of the sytem one in the user's path. This version will run kinit and give you tickets that look fine with klist, but which will not work when ssh'ing in to Fermilab computers. Use the Kerberos utilities that come with Mac OS X instead, in /usr/bin/.
