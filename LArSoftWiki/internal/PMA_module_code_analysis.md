# PMA module code analysis Report

June 2016 [report from pattern matching analysis](https://cd-docdb.fnal.gov/cgi-bin/RetrieveFile?docid=5766&amp;filename=ReportfromPatternMatchingAlgorithmCodeAnalysis.pdf&amp;version=1)

## PMA Code Analysis Background

PMA Code and Documentation Links

https://indico.fnal.gov/getFile.py/access?contribId=62&amp;sessionId=40&amp;resId=1&amp;materialId=slides&amp;confId=10276

Aaron Higuera is maintaining systematic efficiency tests and writes code for it. Here is the last development, for the proton decay / atmospheric neutrino [events](https://indico.fnal.gov/getFile.py/access?contribId=2&amp;resId=0&amp;materialId=slides&amp;confId=12005) (note that PMA here is used together with Cluster Crawler for 2D clusters reconstruction)

Similar test are done for beam neutrinos, I expect that soon we'll have update on this using recent releases of reconstruction algorithms.

Redmine links for [code](https://github.com/LArSoft/larreco/blob/develop/larreco/TrackFinder/PMAlgTrackMaker_module.cc)

Vertexing functionality is collected [here](https://github.com/LArSoft/larreco/blob/develop/larreco/RecoAlg/PMAlgVertexing.h)

The most basic functions for building, testing, extending tracks are [here](https://github.com/LArSoft/larreco/blob/develop/larreco/RecoAlg/ProjectionMatchingAlg.h)

And all the building blocks for the track and vertex optimization are in the [PMAlg directory](https://github.com/LArSoft/larreco/blob/develop/larreco/RecoAlg/PMAlg)

The cost of computations is mostly due to trajectory node optimization, done with finite-difference calculations of the gradient of the objective function with respect to the node position. If you'd like to have a look, the code is [here](https://github.com/LArSoft/larreco/blob/develop/larreco/RecoAlg/PMAlg/PmaNode3D.h#L92)

-   void Optimize(float penaltyValue, float endSegWeight);

and functions:

-   double Pi(float endSegWeight, bool doAsymm) const;
-   double Penalty(float endSegWeight) const;
-   double Mse(void) const;
-   double MakeGradient(float penaltyValue, float endSegWeight);
-   double StepWithGradient(float alfa, float tol, float penalty, float weight);

The complexity on the higher level comes from scoring the tracks made of various (possible) matching of clusters in complementary 2D projections, this is done more or less [here](https://github.com/LArSoft/larreco/blob/develop/larreco/TrackFinder/PMAlgTrackMaker_module.cc#L1851)

## Working session materials

Valgrind callgraph output attached to this page

Sample jobs

-   Configuration: /pnfs/dune/persistent/users/rnd/pma_code_review/test_input/fcl/
    -   protoDUNE_pmtrack_reco.fcl

<!-- -->

-   Data: /pnfs/dune/persistent/users/rnd/pma_code_review/test_input/data
    -   protoDune_kaon_1GeV_mono_linecluster.root
    -   protoDune_proton_1GeV_mono_linecluster.root

1.  Check out dunetpc
2.  Run lar -c fcl/protoDUNE_pmtrack_reco.fcl <input> -o output.root
3.  lar -c evd_protoDUNE.fcl reconstructed.root

“The two files in data dir are 1GeV protons and kaons from the recent MCC6. I usually use for tests 2GeV pions, since they are producing moderately complicated topologies and are of the interest for many analyses we are preparing. I'll add such file before our session, I just need to prepare it in the same way as two other files, which is:

“single particle gun -\> g4 propagation in LAr -\> detsim making raw digits on readout channels -\> partial reconstruction (deconvolution, hit finding, linecluster) that is in the reco chain before PMA”
