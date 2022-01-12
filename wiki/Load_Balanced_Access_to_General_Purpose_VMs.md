Load Balanced Access to General Purpose VMs
============================================================================================

The following material is provided as a base, but the specifics depend on your experiment.

Computing Division uses a simple method of load balancing on the virtual machines used by the Intensity Frontier experiments. This means that in order to log into a LArSoft interactive VM, users can ssh to uboonevm.fnal.gov and the load balancer will direct the users to the machine with the smallest load. (This also means that when VMs are added to the cluster, users will automatically be directed to those nodes instead of having to stay abreast of VM expansion.)

Normally, ssh requires specific matching between the IP address of the node returned from the DNS and the node responding to the ssh request. Since the name in the ssh command (“ssh uboonevm.fnal.gov”) does not match the node resonding to the ssh request (e.g. “uboonegpvm01.fnal.gov”), ssh will by default terminate the connection. So you must configure your ssh client to trust the DNS server for the load balanced LArSoft interactive VMs.

Users should create or edit their personal ssh configuration file (“\~/.ssh/config”) and place an entry for the each load balancing LArSoft interactive VM telling it to trust the DNS. Here is an example for uboonevm.fnal.gov:

Host uboonevm\*
Hostname uboonevm.fnal.gov
User \<uid\>
GSSAPITrustDNS yes
GSSAPIAuthentication yes

Then repeat for the other load balancing LArSoft interactive VMs. (e.g. argoneutvm.fnal.gov, lbnevm.fnal.gov). Note that the \* in the “Host” entry means that any host starting with “uboonevm” will be exempt from the strict DNS matching. This is convenient if you have a default search domain setup on your laptop (i.e. you normally only type “ssh uboonevm” without the “.fnal.gov”).

The options may be slightly different depending on your OpenSSH client.

As an alternative to the above method, you can also manually modify your \~/.ssh/known\_hosts file to have several entries for uboonevm.fnal.gov. You would accomplish this by explicitly logging into uboonegpvm01, 02, and 03, and in each case confirming that OpenSSH should commit the RSA key fingerprint to the known\_hosts file. Then edit the known\_hosts file, changing the hostnames from uboonegpvmXX.fnal.gov to uboonevm.fnal.gov.
