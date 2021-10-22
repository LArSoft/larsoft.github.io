PMA module code analysis Report[¶](#PMA-module-code-analysis-Report)
====================================================================

[http://cd-docdb.fnal.gov/cgi-bin/RetrieveFile?docid=5766&filename=ReportfromPatternMatchingAlgorithmCodeAnalysis.pdf&version=1](http://cd-docdb.fnal.gov/cgi-bin/RetrieveFile?docid=5766&filename=ReportfromPatternMatchingAlgorithmCodeAnalysis.pdf&version=1)

h1 PMA Code Analysis Background

PMA Code and Documentation Links

[https://indico.fnal.gov/getFile.py/access?contribId=62&sessionId=40&resId=1&materialId=slides&confId=10276](https://indico.fnal.gov/getFile.py/access?contribId=62&sessionId=40&resId=1&materialId=slides&confId=10276)

Aaron Higuera is maintaining systematic efficiency tests and writes code for it. Here is the last development, for the proton decay / atmospheric neutrino events:\
[https://indico.fnal.gov/getFile.py/access?contribId=2&resId=0&materialId=slides&confId=12005](https://indico.fnal.gov/getFile.py/access?contribId=2&resId=0&materialId=slides&confId=12005) (note that PMA here is used together with Cluster Crawler for 2D clusters reconstruction)

Similar test are done for beam neutrinos, I expect that soon we’ll have update on this using recent releases of reconstruction algorithms.

Redmine links for code:\
[https://cdcvs.fnal.gov/redmine/projects/larreco/repository/revisions/develop/entry/larreco/TrackFinder/PMAlgTrackMaker\_module.cc](https://cdcvs.fnal.gov/redmine/projects/larreco/repository/revisions/develop/entry/larreco/TrackFinder/PMAlgTrackMaker_module.cc)

Vertexing functionality is collected here:\
[https://cdcvs.fnal.gov/redmine/projects/larreco/repository/revisions/develop/entry/larreco/RecoAlg/PMAlgVertexing.h](https://cdcvs.fnal.gov/redmine/projects/larreco/repository/revisions/develop/entry/larreco/RecoAlg/PMAlgVertexing.h)

The most basic functions for building, testing, extending tracks are here:\
[https://cdcvs.fnal.gov/redmine/projects/larreco/repository/revisions/develop/entry/larreco/RecoAlg/ProjectionMatchingAlg.h](https://cdcvs.fnal.gov/redmine/projects/larreco/repository/revisions/develop/entry/larreco/RecoAlg/ProjectionMatchingAlg.h)

And all the building blocks for the track and vertex optimization are in the directory:\
[https://cdcvs.fnal.gov/redmine/projects/larreco/repository/revisions/develop/show/larreco/RecoAlg/PMAlg](https://cdcvs.fnal.gov/redmine/projects/larreco/repository/revisions/develop/show/larreco/RecoAlg/PMAlg)

The cost of computations is mostly due to trajectory node optimization, done with finite-difference calculations of the gradient of the objective function with respect to the node position. If you’d like to have a look, the code is here:\
[https://cdcvs.fnal.gov/redmine/projects/larreco/repository/revisions/develop/entry/larreco/RecoAlg/PMAlg/PmaNode3D.h\#L92](https://cdcvs.fnal.gov/redmine/projects/larreco/repository/revisions/develop/entry/larreco/RecoAlg/PMAlg/PmaNode3D.h#L92)

void Optimize(float penaltyValue, float endSegWeight);

and functions:

double Pi(float endSegWeight, bool doAsymm) const;\
double Penalty(float endSegWeight) const;\
double Mse(void) const;\
double MakeGradient(float penaltyValue, float endSegWeight);\
double StepWithGradient(float alfa, float tol, float penalty, float weight);

The complexity on the higher level comes from scoring the tracks made of various (possible) matching of clusters in complementary 2D projections, this is done more or less here:\
[https://cdcvs.fnal.gov/redmine/projects/larreco/repository/revisions/develop/entry/larreco/TrackFinder/PMAlgTrackMaker\_module.cc\#L1851](https://cdcvs.fnal.gov/redmine/projects/larreco/repository/revisions/develop/entry/larreco/TrackFinder/PMAlgTrackMaker_module.cc#L1851)


Working session materials[¶](#Working-session-materials)
--------------------------------------------------------

Valgrind callgraph output attached to this page

Sample jobs

-   Configuration: /pnfs/dune/persistent/users/rnd/pma\_code\_review/test\_input/fcl/
    -   protoDUNE\_pmtrack\_reco.fcl

-   Data: /pnfs/dune/persistent/users/rnd/pma\_code\_review/test\_input/data
    -   protoDune\_kaon\_1GeV\_mono\_linecluster.root
    -   protoDune\_proton\_1GeV\_mono\_linecluster.root

1.  Check out dunetpc
2.  Run lar -c fcl/protoDUNE\_pmtrack\_reco.fcl \<input\> -o output.root
3.  lar -c evd\_protoDUNE.fcl reconstructed.root

"The two files in data dir are 1GeV protons and kaons from the recent MCC6. I usually use for tests 2GeV pions, since they are producing moderately complicated topologies and are of the interest for many analyses we are preparing. I’ll add such file before our session, I just need to prepare it in the same way as two other files, which is:

“single particle gun -\> g4 propagation in LAr -\> detsim making raw digits on readout channels -\> partial reconstruction (deconvolution, hit finding, linecluster) that is in the reco chain before PMA”
