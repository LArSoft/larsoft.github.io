

# Creating GDML

This material is under development.

For a given detector, LArSoft maintains its detector-geometry description in a GDML file. The concepts behind GDML (such as the hierarchy of shapes, materials, and physical volumes) will be familiar to anyone who's worked with other physics modeling packages, such as Geant4 or GeoModel. In LArSoft, the use of GDML is affected by the need to preserve geometry files associated with existing detectors and some limitations with ROOT. The ability to create new GDML files is provided for detector optimization studies, i.e. changing wire spacings, number of planes, etc. Altering the number of volumes in the GDML files may have unknown consequences on the running of the code that depends on the geometry.

The [GDML](http://gdml.web.cern.ch/GDML) files describe the geometry of the different LAr TPC detectors in LArSoft. May want to start by looking at the GDML manual at: http://lcgapp.cern.ch/project/simu/framework/GDML/doc/GDMLmanual.pdf

There exist two toolkit bindings for GDML, the Geant4 binding and the ROOT binding, both integrated within the respective frameworks. Both bindings support reading and writing GDML files.

For a simple example, set up a ROOT installation, taking special care of using the —enable-gdml option when compiling. You may want to example root's web catalog on how to load a gdml file using the TGeoManager class:  
https://root.cern.ch/doc/master/classTGeoManager.html

    The simplest way is:
    {
    gSystem->Load("libGeom");
    gSystem->Load("libGdml");
    TGeoManager::Import("myfile.gdml");
    gGeoManager->FindVolumeFast("volWorld")->Draw("ogl");
    }

This will display your geometry onscreen, supposing your World Volume is named volWorld.

\*NOTE: the rest of this was copied from the legacy site: https://cdcvs.fnal.gov/redmine/projects/larsoftsvn/wiki/Creating_GDML_  
It needs major updating.\*  
Look inside the geometry service to see what information it keys on to navigate the geometry.  
May also want to look at perl scripts.

You should **not** alter the number of volumes in the GDML files as that may have unknown consequences on the running of the code that depends on the geometry. If you think you need to do that for some reason, please contact the SciSoft Team to see if an alternate solution is possible.

The key scripts are source:trunk/Geometry/gdml/generate_gdml.pl and source:trun/Geometry/gdml/make_gdml.pl. Try running each script with the -h option to see what the options are.

## Quick start

Each experiment/detector will want to develop a system similar to that of MicroBooNE.

### For MicroBooNE

The key file is microboone-gdml-parameters.xml; read the comments in the file.

    # cp microboone-gdml-parameters.xml generate-gdml.pl make-gdml.pl <your-directory>
    # cd <your-directory>
    Edit microboone-gdml-parameters.xml
    # ./generate_gdml.pl -i microboone-gdml-parameters.xml | ./make_gdml.pl -o microboone.gdml

For multiple versions, e.g., detector-design studies:

    # version=<some version tag>
    # cp microboone-gdml-parameters.xml microboone-gdml-parameters-${version}.xml
    Edit microboone-gdml-parameters-${version}.xml
    # ./generate_gdml.pl -i microboone-gdml-parameters-${version}.xml -s ${version} | ./make_gdml.pl -o microboone-${version}.gdml

### For Bo and ArgoNeut geometries

Edit \*.gdml files in the appropriate sub-directory. Then:

    # ./make-gdml.pl -i bo-gdml-fragments.xml -o bo.gdml

or

    # ./make-gdml.pl -i argoneut-gdml-fragments.xml -o argoneut.gdml

## The details

### Volume hierarchy and naming conventions

All volumes in the GDML file are part of a specific hierarchy and need to have a name that follows the following conventions in order for the source:trunk/Geometry/Geometry.h service to function properly. The volume hierarchy is shown in the following block diagram:

![geometry_volumes.png](/assets/img/larsoft/geometry_volumes.png)

As seen in the picture, the names of all the volumes have the prefix “vol”. Also, the number in the “()” after the volume names indicates the number of those volumes that can exist in the geometry. For example, there can be only one volWorld volume and one volDetEnclosure volume, which is the hall where the detector resides, but many “(n)” volCryostat volumes in the volDetEnclosure. The “XXX” after some of the volume names indicates that there is freedom to add extra information at the end of the specified name. For example, detector planes with vertical wires could be named “volTPCPlaneVert”, but only the “volTPCPlane” portion of the name is used to indicated to the service that it found a plane volume.

The highest level volume is the volWorld. It contains all elements of the geometry that is to be accounted for in the simulation and should be sized adequately to account for any features of the detector surroundings that are important for the simulation. For example, if there is a huge mass of rock near the detector that could alter the cosmic ray flux from that direction, it should be simulated. The world volume contains the detector enclosure volume, volDetEnclosure. Again, there is only one world volume and only one detector enclosure volume. The volDetEnclosure can contain many volCryostat volumes, which in turn can each contain many volTPC volumes. Each volTPC contains only one volTPCActive, which defines the active volume of liquid argon that is read out by the detector. Any liquid argon that is outside of the drift field would not be part of volTPCActive. Moreover, it is assumed that volTPCActive is simply a volume, ie a box, of liquid argon with no subvolumes in it. The volTPC volume also contains many volTPCPlaneXXX volumes that describe the wire planes. The volTPCPlaneXXX volume contains many volTPCWireXXX volumes that each describe a wire in the detector.

### Procedure

For a given detector, LArSoft maintains its detector-geometry description in a [GDML](http://gdml.web.cern.ch/GDML/) file; here's the [language manual](http://lcgapp.cern.ch/project/simu/framework/GDML/doc/GDMLmanual.pdf). The concepts behind GDML (such as the hierarchy of shapes, materials, and physical volumes) will be familiar to anyone who's worked with other physics modeling packages, such as [Geant4](http://geant4.web.cern.ch/geant4/), ROOT's [TGeo](http://root.cern.ch/download/doc/18Geometry.pdf), or [GeoModel](http://atlas.web.cern.ch/Atlas/GROUPS/DATABASE/detector_description/Geometry_Kernel_Classes.pdf).

In LArSoft, the use of GDML is affected by the need to preserve geometry files associated with existing detectors and some limitations with ROOT, as discussed below. As a result, it's a two-step procedure to create a GDML file that describes the MicroBooNE detector:

1\) The Perl script source:trunk/Geometry/gdml/generate_gdml.pl reads an XML file containing the geometry and material parameters associated with the MicroBooNE detector. It writes several files:

\* a file of GDML <constant> statements, normally contained within a GDML <define> block;  
\* several GDML sub-files, each file describing a hierarchical level of the detector (e.g., a file for the cryostat, a file for the TPC, etc.);  
\* an XML file (the “fragments” file) with the names of the above files.

2\) The Perl script source:trunk/Geometry/gdml/make_gdml.pl does the following:

\* reads the fragments file;  
\* “zips” together the GDML sub-files into a single syntactically-correct GDML file;  
\* substitutes the numeric values for the constants wherever they're used in the GDML.

Steps (1) and (2) are separate because the geometry files for Bo and ArgoNeut are assembled only using the second Perl script; generate_gdml.pl is mainly for use with MicroBooNE.

make_gdml.pl substitutes numeric values for the constants because of a potential limitation within ROOT. An sequence like this is valid in GDML:

    <define>
       <constant name="xSize" value="3">
    </define>
    <solids>
       <box name="Panel" x="xSize" y="2*xSize" z="3*xSize" lunit="cm"/>
    </solids>

However, in ROOT 5.16, a formula like “2\*xSize” would cause an error, while the arithmetic expression “2\*3” would not. We continue to “play it safe” and do our own constant substitutions, until someone confirms that this is no longer a problem in the current versions of ROOT.

### Notes on the scripts

To see the full list of options available with either script, use the -h or —help option; e.g., generate_gdml.pl -h.

By default, generate_gdml.pl writes the fragments file to standard output (STDOUT), and make_gdml.pl reads the fragments file from standard input (STDIN). This means you can pipe the output of the first script to the second, as shown in the Quick Start above.

generate_gdml.pl writes several files to disk, and make_gdml.pl reads them. If you're doing detector-design studies, you may want to have several sets of these files; for example, you may want to have groups with different wire pitches. To support this, generate_gdml.pl has a -s option; generate_gdml.pl -s w1337 will add the suffix -w1337 to the names of the files it creates. Again, there is an example of this in the Quick Start section above.

### Recipes

In the case of MicroBooNE, if you want to make a minor change to a detector parameter:

\* create your own copy of microboone-gdml-parameters.xml  
\* edit your copy  
\* process the file with generate_gdml.pl; e.g., generate_gdml.pl -i my-parameters.xml -o my-gdml-fragments.xml  
\* create the final GDML description with make_gdml.pl; e.g., generate_gdml.pl -i my-gdml-fragments.xml -o my-detector.gdml  
\* copy/edit Geometry/microboone.xml with your GDML file's name

If you want to make a major change to the structure of the detector, one that is not currently parametrized in some way, then you'll have to copy and edit generate_gdml.pl. It's a long script, and perhaps cryptic if you're not familiar with Perl, but the sections that generate the GDML are fairly straight-forward. Another option would be to run generate_gdml.pl, then manually edit the GDML sub-files, or edit the fragments file to include a GDML file of your own with an extension to the detector's geometry (such as a phototube).

All the files read and written by these scripts are either valid XML or GDML. They can be edited directly with any text editor.

Other experiments will need to develop their own systems for making minor changes, although these systems can be very similar to that used by MicroBooNE.

### Visualization

The ROOT script <detector>_geo.C can be used to check and inspect the <detector> geometry. Invoke it through ROOT:

    root -l <detector>_geo.C

This will load the file <detector>.gdml, convert to ROOT's TGeo format, and run a check for overlapping geometries. You can then type in ROOT commands to view the geometry.

To display a given volume; e.g., “volWorld”:

    gGeoManager->FindVolumeFast("volWorld")->Draw()

You may find that using the OGL graphics library is more efficient or easier to use on your system. To select it, pass the option “ogl” to Draw():

To display a given volume; e.g., “volWorld”:

    gGeoManager->FindVolumeFast("volWorld")->Draw("ogl")

Experiment with dragging using the left and right mouse buttons.

To see which volumes you can draw and navigate the volume hierarchy, create a ROOT browser, e.g.:

    TBrowser tb

Double-click on the Geometry folder. Double-click on “Master volume” to see the sub-volumes within the world volume. At any point, you can right-click on a volume's folder and select “Draw” from the pop-up menu. If you want to use the OGL viewer, just type “ogl” in the dialog box; otherwise you can leave it blank and just click on “OK”.

### Installation notes

The Perl scripts generate_gdml.pl and make_gdml.pl require the package [perl-XML-LibXML](http://search.cpan.org/dist/XML-LibXML/) to parse the XML input files. It's available for almost all UNIX. flavors, but it may not be installed by default.

### Sensitive Optical Elements

Any element with a volume name containing “PMTSensitive” will be associated with a PMTSensitiveDetector in the LArSoft detector construction module. This means that only the only volume names containing this string should be those for the sensitive lenses of PMT detectors.
