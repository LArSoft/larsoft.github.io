

# EventDisplay

The package maintainer is Brian Rebel Brian Rebel. This package is an exception to the rule of LArSofters being able to edit code in any package. No changes should be made to the event display without first consulting the package maintainer. The reason for this exception is that event display code becomes very confusing very quickly without a great deal of oversight.

## Organization

The event display is organized into 4 classes of objects.

1.  Drawers - These objects contain the code to draw different categories of information. For example, the RawDataDrawer knows how to access the raw data information from the data file and display it, while the RecoBaseDrawer is the object that knows how to display reconstruction objects. Data products should only be accessed through the Drawers. This requirement ensures that we do not have an event display littered with code to access data products in a haphazard way.
2.  Options - These objects are edm::Services that are used to define options for the different Drawers.
3.  Pads - These objects are defined to display a single type of information. For example, the TWirePad displays the ADC information from each channel in TDC vs Wire number. Pads own a collection of Drawers and only interact with them through various Draw methods.
4.  Views - These objects contain a collection of pads to build up an actual window that the user would interact with.

## Running the Event Display

The event display is called using the lar executable and requires a job control script to be supplied as well

    % lar -c job/evd_XXX.fcl file.root

Here the _XXX can be either t962 (for ArgoNeuT), ub (for MicroBooNE), or lbne (for LBNE).

**NB** The MicroBooNE and LBNE versions are identical for the time being to reflect the fact that the full simulation chain cannot yet be run for LBNE.

All options can be specified from the source:trunk/EventDisplay/evdservices.fcl file or they can be edited at run time using the Job-\>Edit Config menu. Some of the more popular ones are

1.  Drawing of reconstructed objects - see the .fcl file or dialog box for the appropriate parameters
2.  Number of TDC ticks to use in each point represented by the raw digits, one can increase the speed of drawing by increasing this value

## Main View

The main view for interpreting events in LArSoft is the TWQProjectionView. It has a pad for each plane in the TPC. It shows every wire on every plane with the size of the displayed boxes corresponding to a user defined number of TDC ticks. The color of the box corresponds to the average ADC value in the user defined TDC window. It is possible to zoom on a region of each of these planes by clicking the left mouse button and dragging a rectangle around the selected region.

The box to the side of each plane pad shows the color scale distribution of ADC values. The scale is fixed by the event display, with the zero point indicated by a black line.

The pad at the bottom of the display shows the ADC vs TDC histogram for the wire chosen by the values in the Wire and Plane number entry boxes at the bottom of the window. To change the wire that is being displayed, simply edit the number in the boxes or click on the desired wire in one of the plane pads. Additionally, the user can set the threshold for adc values to draw in the TDC vs wire views with the ADC Threshold entry box.

A gray scale can be chosen to display the data using the labeled tick box.

The decision to draw raw information vs reconstructed information vs both can be made with the radio buttons at the bottom of the frame.

A pad containing the Monte Carlo interaction information is displayed directly above the ADC vs TDC pad when viewing simulated neutrino interactions. The MC truth information will be drawn if the MC Truth tick box is selected. Vectors representing the particle momenta are drawn in the Time vs Wire views. The vectors are color coded with the information in the interaction description. Neutral particles are indicated by dashed lines. The vectors are scaled such that each GeV/c of momentum represents 10 cm of linear distance. The color of the text in the box corresponds to the color of the arrows shown in the view.

Here is an example event display showing the raw data and MC truth information:

![exampledisplay.png](/assets/img/larsoft/exampledisplay.png)

Here is an example event display showing the reconstructed showers (1 color per shower):

![exampledisplay_reco.png](/assets/img/larsoft/exampledisplay_reco.png)

The hits not associated with a shower are indicated by black boxes centered on the peak time of the hit. The ADC vs TDC view for the chosen wire also shows the signal for the recob::Wire as a blue histogram and the found hits are indicated by red boxes that span from the hit start time to the hit end time.

Here is an example showing both raw data and reconstructed information:

![exampledisplay_both.png](/assets/img/larsoft/exampledisplay_both.png)

### Optional functions in the Main View (Zoom, and XYZ point calculation)

By setting the evdlayoutopt::ShowSidebar = 1 in the evdservices.fcl file the user has the option to use optional features. At this time these are:

-   The “Zoom Interest” button, which zooms each of the planes to the smallest region containing points of interest (raw or calibrated wire signals above threshold in the Raw or Recontructed data displays, respectively ) and “Unzoom” buttons.
-   The Find XYZ region, which calculates the projected real world position of a given pair of wire,time points. To calculate, the user should hold the shift button and left mouse click on a point in a selected plane. A red marker will appear. The procedure should be repeated in another plane, making sure that the two points correspond to the same part of the real track. After pressing the “Find XYZ” button the calculated real world coordinates will appear in the text box. If there is a third plane the point position will projected onto it using a blue marker. The algorithm will display an error in the text box if there are not enough selected points, the selected points are too far apart in time coordinates to be the same point or if the wires on which they are found do not cross (a probable mismatch in selection). The sidebar and marked points should look like this:

![exampledisplay_with_xyz.png](/assets/img/larsoft/exampledisplay_with_xyz.png)

## 3D View

The 3D view is available for those RecoBase objects that correspond to 3D information, ie recob::Prong/Track/Shower, recob::Vertex, and recob::Event. The view is initiated by selecting the Display3DPad from the Window menu of the event display. The view shows the direction of the coordinate axes, however the axes are **not** drawn at the origin in order to avoid conflicts with event information. The grid shown has lines every 10 cm.

![3dview.png](/assets/img/larsoft/3dview.png)

## Configuration

### Job Configuration

The event display is currently implemented as an EDAnalyzer module. To run it, you need to specify a configuration file. The default job configuration to run the event dispaly is source:trunk/EventDisplay/evd.fcl. It produces and event display for ArgoNeuT. Experiments are welcome to create and commit their own default versions with appropriate names, ie evd_lbne.fcl and evd_ub.fcl.

```c

    #include "job/evdservices.fcl"
    #include "job/services.fcl"

    process_name: EVD

    services:
    {
      # Load the service that manages root files for histograms.
      TFileService: { fileName: "cosmics_hist.root" closeFileFast: false }
      Timing:       {}
      RandomNumberGenerator: {} #ART native random number generator
      message:      @local::evd_message
      user:         @local::argoneut_evd
    }

    # Define the services

    #Look at the input files
    source:
    {
      module_type: RootInput
      fileNames:  [ "data.root" ]
      maxEvents:   -1       # Number of events to create
    }

    outputs:{}

    # Define and configure some modules to do work on each event.
    # First modules are defined; they are scheduled later.
    # Modules are grouped by type.
    physics:
    {

     producers: {}

     filters:{}

     analyzers:
     {
      evdisp:{module_type: EVD}
     }

     #list the modules for this path, order matters, filters reject all following items
     evd: [ evdisp ] 

     #end_path are things that do not modify art::Event, includes analyzers 
     #and output modules. all items here can be run simultaneously
     end_paths: [evd]  
    }

```

### Service Configuration

Notice that starting at line 21 we have declared the various services needed to run the event display and select options for the display. Those services are included from the source:trunk/EventDisplay/evdservices.fcl configuration file:

```c

    #include "job/services.fcl"
    BEGIN_PROLOG

    standard_colordrawingopt:
    {
     ColorOrGrayScale:  1     # 0 = color, 1 = grayscale
     RawDiv:            100   # number of divisions to use for the color scale
     RawQLow:      -15.    # minimum raw ADC value used in determining colors
     RawQHigh:          15.   # maximum raw ADC value used in determining colors
     RecoDiv:           100   # number of divisions to use for the color scale
     RecoQLow:         -5.    # minimum calibrated ADC value used in determining colors
     RecoQHigh:         45.   # maximum calibrated ADC value used in determining colors
    }

    argoneut_colordrawingopt:   @local::standard_colordrawingopt
    microboone_colordrawingopt: @local::standard_colordrawingopt
    lbne_colordrawingopt:       @local::standard_colordrawingopt

    standard_rawdrawingopt:
    {
     DrawRawDataOrCalibWires: 0     # 0 = raw, 1 = calibrated signals, 2 = both for ADC vs TDC views
     TicksPerPoint:           1     # number of TDC ticks to combine for each point in the TDC vs Wire veiws
     ScaleDigitsByCharge:     0     # 0 = off, 1 = on
     MinimumSignal:           5.    # minimum ADC value to draw in TDC vs Wire views
     TotalTicks:              2048. # display TDC ticks 0 -> TotalTicks     
     AxisOrientation:         0     # 0 = TDC on y-axis, wire number on x-axis, 1 has that swapped
     RawDataLabel:            "daq" # label of module making the raw digits
    }

    argoneut_rawdrawingopt:                         @local::standard_rawdrawingopt
    argoneut_rawdrawingopt.DrawRawDataOrCalibWires: 1

    microboone_rawdrawingopt:            @local::standard_rawdrawingopt
    microboone_rawdrawingopt.TotalTicks: 4096

    lbne_rawdrawingopt:            @local::standard_rawdrawingopt
    lbne_rawdrawingopt.TotalTicks: 4096

    standard_recodrawingopt:
    {
     DrawHits:            1                  # 0 = off, 1 = on, will not draw if DrawRawDataOrCalibWires is set to 0
     DrawClusters:        2                  # set to 1 to draw outlines - not working yet, 2 to draw markers for each hit in the cluster, that is working
     DrawProngs:          0                  # 0 = off, 1 = on
     DrawTracks:          0          # 0 = off, 1 = on
     DrawShowers:         0          # 0 = off, 1 = on
     DrawVertices:        0          # 0 = off, 1 = on
     DrawProngHits:       0          # 0 = off, 1 = on
     WireModuleLabels:    ["caldata"]        # list of module labels in which to look for recob::Wires
     HitModuleLabels:     ["ffthit"]         # list of module labels in which to look for recob::Hits
     ProngModuleLabels:   [""]               # list of module labels in which to look for recob::Prongs
     ClusterModuleLabels: ["dbcluster"]      # list of module labels in which to look for recob::Clusters
     TrackModuleLabels:   [""]               # list of module labels in which to look for tracks
     ShowerModuleLabels:  [""]               # list of module labels in which to look for showers
     VertexModuleLabels:  [""]               # list of module labels in which to look for recob::Vertex
    }

    argoneut_recodrawingopt:   @local::standard_recodrawingopt
    microboone_recodrawingopt: @local::standard_recodrawingopt
    lbne_recodrawingopt:       @local::standard_recodrawingopt

    standard_simdrawingopt:
    {
     ShowMCTruthText:   true                 # toggle showing of MC interaction on or off
     ShowMCTruthHits:   true                 # toggle showing of MC truth energy deposits
    }

    argoneut_simdrawingopt:   @local::standard_simdrawingopt
    microboone_simdrawingopt: @local::standard_simdrawingopt
    lbne_simdrawingopt:       @local::standard_simdrawingopt

    standard_evdlayoutopt:
    {
     ShowSideBar:           1          # toggle extra sidebar visibility option
     AutoZoomInterest:      1          # toggle the auto zoom to interesting region option
     PrintTotalCharge:      1          # Print out the sum of collected charge 
     ShowEndPointSection:   1          # Show Sidebar section with EndPoint extrapolation
     ShowEndPointMarkers:   1          # toggle visbility of markers for EndPoint finding
    }


    argoneut_evdlayoutopt:                  @local::standard_evdlayoutopt
    argoneut_evdlayoutopt.ShowSideBar:      0
    argoneut_evdlayoutopt.AutoZoomInterest:    0
    argoneut_evdlayoutopt.PrintTotalCharge:    0
    argoneut_evdlayoutopt.ShowEndPointSection:         0    
    argoneut_evdlayoutopt.ShowEndPointMarkers:         0


    microboone_evdlayoutopt:                @local::standard_evdlayoutopt

    lbne_evdlayoutopt:                      @local::standard_evdlayoutopt



    standard_scanopt:
    {
     IncludeMCInfo:     false                # include MC information in scan file if true
     FileNameBase:      "ScanFile"           # base name for scan file
     Categories:        ["Neutrino",         # categories for collecting information
                 "Induction Plane", 
                 "Collection Plane", 
                 "Comments"]
     FieldLabels:       ["No_nu", "Possible_nu", "nu",  # fields for each category
                         "Tracks", "Showers", "Vertex_w", "Vertex_t",  
                         "Tracks", "Showers", "Vertex_w", "Vertex_t",  
                 "Comments"]
     FieldTypes:        ["RadioButton", "RadioButton", "RadioButton",  # type of each field
                 "Number", "Number", "Number", "Number",  
                 "Number", "Number", "Number", "Number",  
                 "Text"]
     FieldsPerCategory: [3, 4, 4, 1]          # number of fields for each category
    }

    argoneut_scanopt:   @local::standard_scanopt
    microboone_scanopt: @local::standard_scanopt
    lbne_scanopt:       @local::standard_scanopt

    standard_evd:
    {
     AutoAdvanceInterval: 1000
    }

    argoneut_evd:   @local::standard_evd
    microboone_evd: @local::standard_evd
    lbne_evd:       @local::standard_evd

    evd_message:
    {
     debugModules: "*"
     destinations:
     {
      Drawers:
      {
       type: "cerr"
       threshold: "WARNING"
       categories:
       {
        SimulationDrawer:
        {     
         limit:       5
         timespan:    100
        }
        RecoBaseDrawer:
        {     
         limit:       5
         timespan:    100
        }
        RawDataDrawer:
        {     
         limit:       5
         timespan:    100
        }
        ConfigurationChecker:
        {     
         limit:       5
         timespan:    100
        }
       }
      }
     }
    }

    argoneut_evd:
    {
     Geometry:                 @local::argoneut_geo 
     LArProperties:            @local::argoneut_properties
     DetectorProperties:       @local::argoneut_detproperties
     ColorDrawingOptions:      @local::argoneut_colordrawingopt
     SimulationDrawingOptions: @local::argoneut_simdrawingopt  
     RawDrawingOptions:        @local::argoneut_rawdrawingopt  
     RecoDrawingOptions:       @local::argoneut_recodrawingopt 
     EventDisplay:             @local::argoneut_evd            
    }

    microboone_evd:
    {
     Geometry:                 @local::microboone_geo 
     LArProperties:            @local::microboone_properties
     DetectorProperties:       @local::microboone_detproperties
     ColorDrawingOptions:      @local::microboone_colordrawingopt
     SimulationDrawingOptions: @local::microboone_simdrawingopt  
     RawDrawingOptions:        @local::microboone_rawdrawingopt  
     RecoDrawingOptions:       @local::microboone_recodrawingopt 
     EventDisplay:             @local::microboone_evd            
    }

    lbne_evd:
    {
     Geometry:                 @local::lbne_geo 
     LArProperties:            @local::lbne_properties
     DetectorProperties:       @local::lbne_detproperties
     ColorDrawingOptions:      @local::lbne_colordrawingopt
     SimulationDrawingOptions: @local::lbne_simdrawingopt  
     RawDrawingOptions:        @local::lbne_rawdrawingopt  
     RecoDrawingOptions:       @local::lbne_recodrawingopt 
     EventDisplay:             @local::lbne_evd            
    }

    END_PROLOG
```

If the objects you are interested in viewing from the file are not in the default module labels, then you will need to edit those parameters. For example, if you want to look at Clusters produced by the DBcluster (ClusterFinder package) you set DrawClusters to 2. You also need to edit the ClusterModules parameter. The default is “dbcluster” but if in the job configuration fcl file you defined the module label for where the clusters are stored to be “cluster” then “cluster” is the module label you defined to run through reconstruction and store the clusters.

### Configuration from the Event Display

The module and services may also be configured while running the event display. To configure modules and services that are not related to event display options, select the Job-\>Configure Module menu.

![module_config.png](/assets/img/larsoft/module_config.png)

To configure services related to how the event display is drawn, select the Edit-\>Drawing Options menu.

![edit_menu.png](/assets/img/larsoft/edit_menu.png)

To update a parameter value, one has to press “enter/return” after changing the value. At that point, the new value will change color to be black rather than grey indicating that the change has been acknowledged. Then you must press the “Apply” button for the event to be reloaded with the new parameter.

String-valued parameters will need to be enclosed in double quotation marks if they contain colons. For example, if you need to specify a module label and an instance as an input tag, you provide it with “modulelabel:instance” (quotes included), otherwise there will be a FHiCL parse error.

## Hand Scan dialog box

It is possible to define a hand scan by setting the fields in the ScanOptions service from within a .fcl file. The ScanOptions service has 5 fields that must be supplied:

1.  IncludeMCInfo: bool, Set to True(False) if the MC information is (not) desired in the output file
2.  FileNameBase: std::string, Base name for the output file. The username will be appended to this base to tag who created the output.
3.  Categories: std::vector<std::string>, Collection of categories for grouping information from the scan.
4.  FieldLabels: std::vector<std::string>, Collection of labels for each field specified in the scan.
5.  FieldTypes: std::vector<std::string>, Collection of types for each field in the scan. Options include: RadioButton, CheckButton, Number, and Text.
6.  FieldsPerCategory: std::vector<unsigned int>, Number of fields in each category, used to separate the FieldLabels and FieldTypes collections into their categories.

The scan dialog box is started by clicking on the “Window” menu of the event display and selecting Scan Window. The code then interprets the options from the service and produces a dialog box with the fields laid out by category.

The screen shot below is from an ArgoNeuT defined scan. The “Prev” and “Next” buttons navigate through events in the input file, while the “Record” button saves entries in the dialog box to the output file and then advances to the next event in the file.

![scanbox.gif](/assets/img/larsoft/scanbox.gif)

## Known Issues/Suggested Improvements

1.  Resizing a Scan Window causes the layout to get messed up
