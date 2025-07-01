# Event Displays

Last updated November 24, 2020

The LArSoft event display strategy is to provide support for community developed and supported displays sufficient to allow running within LArSoft and gallery environments, such that community members can choose on their own. Here are the currently available options (Nov 2020):

1.  LArSoft Event Display (ROOT based)  
    In principle can display everything both in 2D and 3D  
    Very slow for large detectors.  
    Works for all detectors. Can display multiple data items and labels at once. It can be extended to display information within any data product and associations.  
    Runs in LArSoft only — not gallery  
    Redmine [EventDisplay](EventDisplay)
2.  TITUS (Qt based)  
    Combination of python (3) and C and is based on the PyQT5 interface.  
    Lead developer: Marco Del Tutto  
    Updated version (by Marco Del Tutto and Gianluca Petrillo) of the event display originally authored by Corey Adams (QT based) for MicroBooNE  
    Runs in gallery. The container solution (built to SLF7) will run on windows, OSX and linux in docker.  
    Being used by ICARUS. Works for MicroBooNE, ArguNeut and possibly DUNE.  
    Native 2D displays of low-level data. See  
    [titus event display html](https://sbnsoftware.github.io/icaruscode_wiki/EventDisplay/titus_event_display.html)  
    [TITUS Event Display wiki](https://cdcvs.fnal.gov/redmine/projects/sbndcode/wiki/TITUS_Event_Display) and  
    [TITUS Event Display paper](https://arxiv.org/abs/2007.06517) for more information.
3.  WebEVD (using three.js/WebGL for access to OpenGL)  
    Lead developer: Chris Backhouse  
    In use at ProtoDUNE. Has been updating based on feature requests.  
    Runs in LArSoft & Gallery.  
    2D display of the raw digits is provided by rotating to the correct angle and using an orthographic projection.  
    product distributed with LArSoft.  
    [Redmine page](https://cdcvs.fnal.gov/redmine/projects/dunetpc/wiki/Instructions_for_WebEVD)  
    From the CERN collaboration meeting in [January, 2020](https://cdcvs.fnal.gov/redmine/attachments/62229/webevd.pdf)
4.  EVE based for SBND  
    Lead developer: Umut Kose  
    3D Oriented,  
    Study about using EVE for event display started after SBN workshop in 2019 at Fermilab. It aims to provide the functions of 3D and 2D projection views, animations, interactive display for users.  
    Eve is a ROOT module based on experiment-independent part of the ALICE event display developed in cooperation between ALICE offline project and ROOT.  
    Runs in LArSoft.  
    [Paper](https://inspirehep.net/files/88d70fb20fb99b61a904acbe920aa9be)
5.  Bee event display (based on WebGL)  
    Developed by Chao Zhang for use with wire-cell.  
    3D oriented.  
    Uses three.js. Takes wire-cell data format as input, so requires a conversion step for art-root files.  
    Does not run in LArSoft or gallery.  
    [Documentation](https://bnlif.github.io/wire-cell-docs/viz/bee/)
6.  Phoenix event display  
    Lead developer: owned by HSF visualization group  
    Experiment-agnostic, browser-based display that relies on event serialization via JSON. It allows for a shared code base.  
    No known demonstration with LArSoft data.  
    Does not run in LArSoft or gallery.  
    [Presentation](https://indico.cern.ch/event/916410/contributions/3852667/attachments/2051044/3437881/Phoenix_HSF_04062020.pdf)

VNC provides a remote window to easily view GUIs from a remote machine with very little delayed response. Instructions are [available at](https://cdcvs.fnal.gov/redmine/projects/sbndcode/wiki/Viewing_events_remotely_with_VNC)
