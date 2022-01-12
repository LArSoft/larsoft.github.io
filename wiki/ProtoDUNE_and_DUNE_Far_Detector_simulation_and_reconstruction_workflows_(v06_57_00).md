ProtoDUNE and DUNE Far Detector simulation and reconstruction workflows (v06 57 00)
==========================================================================================================================================================================

A typical workflow for detector simulation and reconstruction (gen-g4-detsim-reco-ana)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

****ProtoDune (single particle)****

-   The following example runs one 6 GeV proton through ProtoDUNE-SP. Files are only a few MB for just one event.
     The second step, “g4” runs GEANT4, though all steps read in the geometry.
     The gdml file it uses: /cvmfs/dune.opensciencegrid.org/products/dune/dunetpc/v06_57_00/gdml/protodune_v3.gdml
     fcl location: /cvmfs/dune.opensciencegrid.org/products/dune/dunetpc/v06_57_00/source/fcl/protodune/mcc/mcc8

<!-- -->

    source /cvmfs/dune.opensciencegrid.org/products/dune/setup_dune.sh
    setup dunetpc v06_57_00 -f Linux64bit+2.6-2.12 -q e14:prof
    setup cmake   v3_9_2    -f Linux64bit+2.6-2.12

    lar -n 100 -c gen_protoDune_proton_6p0GeV_mono.fcl
    lar -c protoDune_g4_3ms.fcl gen_protoDune_proton_6p0GeV_mono.root
    lar -c protoDUNE_detsim.fcl gen_protoDune_proton_6p0GeV_mono_g4.root
    lar -c protoDUNE_reco.fcl gen_protoDune_proton_6p0GeV_mono_g4_detsim.root
    lar -c protoDUNE_ana.fcl gen_protoDune_proton_6p0GeV_mono_g4_detsim_reco.root

****ProtoDune (cosmic beams)****

-   The following example runs cosmic beams for LArSoft/protoDune (****mcc9 production****)
     Input files are from /pnfs/dune/persistent/users/mibass/corsika

<!-- -->

    lar -n 100 -c mcc9_gen_protoDune_beam_cosmics_p1GeV.fcl 
    lar -c protoDune_g4_3ms.fcl gen_protoDune_beam_p1GeV_cosmics.root
    lar -c protoDUNE_detsim.fcl gen_protoDune_beam_p1GeV_cosmics_g4.root
    lar -c protoDUNE_reco.fcl gen_protoDune_beam_p1GeV_cosmics_g4_detsim.root 
    lar -c protoDUNE_ana.fcl gen_protoDune_beam_p1GeV_cosmics_g4_detsim_reco.root 

****Dune-FD (gennie)****

-   Flux files are from /pnfs/dune/persistent/TaskForce_Flux/

<!-- -->

    fcl_src=/cvmfs/dune.opensciencegrid.org/products/dune/dunetpc/v06_59_00/source/fcl/dunefd
    cp ${fcl_src}/detsim/standard_detsim_dune10kt_1x2x6.fcl .
    cp ${fcl_src}/reco/standard_reco_dune10kt_1x2x6.fcl .
    cp ${fcl_src}/mergeana/standard_ana_dune10kt_1x2x6.fcl .

    lar -n 100 -c ${fcl_src}/gen/genie/prodgenie_nue_dune10kt_1x2x6.fcl 
    lar -c ${fcl_src}/g4/standard_g4_dune10kt_1x2x6.fcl prodgenie_nue_dune10kt_1x2x6_gen.root                 
    lar -c standard_detsim_dune10kt_1x2x6.fcl prodgenie_nue_dune10kt_1x2x6_gen_g4.root
    lar -c standard_reco_dune10kt_1x2x6.fcl prodgenie_nue_dune10kt_1x2x6_gen_g4_detsim.root       
    lar -c standard_ana_dune10kt_1x2x6.fcl prodgenie_nue_dune10kt_1x2x6_gen_g4_detsim_reco.root

Profiling memory and CPU performance
------------------------------------------------------------------------------

### IgProf ([http://igprof.org/](http://igprof.org/))

-   installation: see [http://igprof.org/install.html](http://igprof.org/install.html)

-   setup

        G4P_IGPROF_DIR=/g4/g4p/dune/igprof
        export PATH=${PATH}:${G4P_IGPROF_DIR}/bin
        export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${G4P_IGPROF_DIR}/lib

-   measurement: (example for the Dune-FD workflow)

        IGPROF_MP="igprof -d -mp -z -t lar" 

        fcl_src=/cvmfs/dune.opensciencegrid.org/products/dune/dunetpc/v06_57_00/source/fcl/dunefd
        cp /g4/g4p/dune/farDetector/fcl/*fcl .

        ${IGPROF_MP} -o IgProf_nue_dune10kt_gen.gz    $exe -n 100 -c ${fcl_src}/gen/genie/prodgenie_nue_dune10kt_1x2x6.fcl 
        ${IGPROF_MP} -o IgProf_nue_dune10kt_g4.gz     $exe -n 100 -c ${fcl_src}/g4/standard_g4_dune10kt_1x2x6.fcl prodgenie_nue_dune10kt_1x2x6_gen.root     
        ${IGPROF_MP} -o IgProf_nue_dune10kt_detsim.gz $exe -n 100 -c standard_detsim_dune10kt_1x2x6.fcl prodgenie_nue_dune10kt_1x2x6_gen_g4.root          
        ${IGPROF_MP} -o IgProf_nue_dune10kt_reco.gz   $exe -n 100 -c standard_reco_dune10kt_1x2x6.fcl prodgenie_nue_dune10kt_1x2x6_gen_g4_detsim.root   
        ${IGPROF_MP} -o IgProf_nue_dune10kt_ana.gz    $exe -n 100 -c standard_ana_dune10kt_1x2x6.fcl prodgenie_nue_dune10kt_1x2x6_gen_g4_detsim_reco.root    

-   analysis (example for MEM_TOTAL MEM_LIVE MEM_MAX)

        export IGPROF_DIR="/g4/g4p/dune/farDetector/igprof" 
        export IGPROF_ANAL="igprof-analyse --sqlite -d -v -g -r" 

        for xtask in gen g4 detsim reco ana ; do
        for xmode in MEM_TOTAL MEM_LIVE MEM_MAX ; do
        ${IGPROF_ANAL} ${xmode} ${IGPROF_DIR}/IgProf_nue_dune10kt_${xtask}.gz \
        | sqlite3 IgProf_nue_dune10kt_${xtask}_${xmode}.sql3  
        done
        done

-   results: see [https://g4cpt.fnal.gov/larsoft/dunetpc_v06_57_00/igprof.html](https://g4cpt.fnal.gov/larsoft/dunetpc_v06_57_00/igprof.html)

### HPCToolkit ([http://hpctoolkit.org/index.html](http://hpctoolkit.org/index.html))

-   installation: [http://hpctoolkit.org/software-instructions.html](http://hpctoolkit.org/software-instructions.html)

-   setup:

        export PATH=/g4/g4p/dune/hpctoolkit/bin:${PATH}
        export LD_LIBRARY_PATH=/g4/g4p/dune/hpctoolkit/lib:${LD_LIBRARY_PATH}

        export PATH=/g4/g4p/dune/hpcviewer:${PATH}
        export LD_LIBRARY_PATH=/g4/g4p/dune/hpcviewer:${LD_LIBRARY_PATH}

-   measurement: example of the wallclock (CPU) profiling.

        hpcrun_cmd="hpcrun -e WALLCLOCK@5000" 
        fcl_src=/cvmfs/dune.opensciencegrid.org/products/dune/dunetpc/v06_57_00/source/fcl/dunefd
        exe=`which lar`

        # gen
        cp /g4/g4p/dune/farDetector/fcl/*fcl .
        ${hpcrun_cmd} $exe --notrace -n 100 -c ${fcl_src}/gen/genie/prodgenie_nue_dune10kt_1x2x6.fcl
        hpcstruct $exe 
        out_gen=`ls -l | grep drw | grep hpctoolkit-lar-measurements |awk '{print $9}'`
        hpcprof -S lar.hpcstruct \
        -I /cvmfs/fermilab.opensciencegrid.org/products/larsoft/art/v2_08_04/source/art/'*' \
        -I /cvmfs/dune.opensciencegrid.org/products/dune/dunetpc/v06_57_00/source/dune/'*' \
        -I $GEANT4_DIR/source/geant4.10.03.p01/source/'*' ${out_gen}

        # g4
        cp /g4/g4p/dune/farDetector/fcl/*fcl .
        ${hpcrun_cmd} $exe --notrace -n 100 -c ${fcl_src}/g4/standard_g4_dune10kt_1x2x6.fcl \
        ${OUTPUT_DIR}/gen/prodgenie_nue_dune10kt_1x2x6_gen.root 
        hpcstruct $exe 
        out_g4=`ls -l | grep drw | grep hpctoolkit-lar-measurements |awk '{print $9}'`
        hpcprof -S lar.hpcstruct \
        -I /cvmfs/fermilab.opensciencegrid.org/products/larsoft/art/v2_08_04/source/art/'*' \
        -I /cvmfs/dune.opensciencegrid.org/products/dune/dunetpc/v06_57_00/source/dune/'*' \
        -I $GEANT4_DIR/source/geant4.10.03.p01/source/'*' ${out_g4}

        # detsim
        cp /g4/g4p/dune/farDetector/fcl/*fcl .
        ${hpcrun_cmd} $exe --notrace -n 100 -c standard_detsim_dune10kt_1x2x6.fcl \
        ${OUTPUT_DIR}/g4/prodgenie_nue_dune10kt_1x2x6_gen_g4.root 
        hpcstruct $exe 
        out_detsim=`ls -l | grep drw | grep hpctoolkit-lar-measurements |awk '{print $9}'`
        hpcprof -S lar.hpcstruct \
        -I /cvmfs/fermilab.opensciencegrid.org/products/larsoft/art/v2_08_04/source/art/'*' \
        -I /cvmfs/dune.opensciencegrid.org/products/dune/dunetpc/v06_57_00/source/dune/'*' \
        -I $GEANT4_DIR/source/geant4.10.03.p01/source/'*' ${out_detsim}

        # reco 
        cp /g4/g4p/dune/farDetector/fcl/*fcl .
        ${hpcrun_cmd} $exe --notrace -n 100 -c standard_reco_dune10kt_1x2x6.fcl \
        ${OUTPUT_DIR}/detsim/prodgenie_nue_dune10kt_1x2x6_gen_g4_detsim.root 
        hpcstruct $exe 
        out_reco=`ls -l | grep drw | grep hpctoolkit-lar-measurements |awk '{print $9}'`
        hpcprof -S lar.hpcstruct \
        -I /cvmfs/fermilab.opensciencegrid.org/products/larsoft/art/v2_08_04/source/art/'*' \
        -I /cvmfs/dune.opensciencegrid.org/products/dune/dunetpc/v06_57_00/source/dune/'*' \
        -I $GEANT4_DIR/source/geant4.10.03.p01/source/'*' ${out_reco}

        # ana
        cp /g4/g4p/dune/farDetector/fcl/*fcl .
        ${hpcrun_cmd} $exe --notrace -n 100 -c standard_ana_dune10kt_1x2x6.fcl \
        ${OUTPUT_DIR}/reco/prodgenie_nue_dune10kt_1x2x6_gen_g4_detsim_reco.root 
        hpcstruct $exe 
        out_ana=`ls -l | grep drw | grep hpctoolkit-lar-measurements |awk '{print $9}'`
        hpcprof -S lar.hpcstruct \
        -I /cvmfs/fermilab.opensciencegrid.org/products/larsoft/art/v2_08_04/source/art/'*' \
        -I /cvmfs/dune.opensciencegrid.org/products/dune/dunetpc/v06_57_00/source/dune/'*' \
        -I $GEANT4_DIR/source/geant4.10.03.p01/source/'*' ${out_ana}

    Replace hpcrun PAPI options for other hardware counters measurement as shown below
     hpcrun_cmd=“hpcrun -e PAPI_TOT_CYC@1000000 -e PAPI_TOT_INS”
     hpcrun_cmd=“hpcrun -e PAPI_FP_OPS -e PAPI_LD_INS -e PAPI_SR_INS”

-   analysis with hpcviewer on a hpctoolkit db file (hpctoolkit-lar-database)
    -   hpcviewer hpctoolkit-lar-database
    -   select View - Calling (topdown call paths), Callers (bottom up call paths), or Flat
    -   navigate metrics with control buttons

-   results: see [https://g4cpt.fnal.gov/larsoft/dunetpc_v06_57_00/hpctoolkit.html](https://g4cpt.fnal.gov/larsoft/dunetpc_v06_57_00/hpctoolkit.html)

### Open|Speedshop ([https://openspeedshop.org/](https://openspeedshop.org/))

-   installation: see [https://openspeedshop.org/documentation/](https://openspeedshop.org/documentation/)

-   setup oss for protodune

        export KRELL_ROOT_DIR=/g4/g4p/protodune/krellroot_v2.2
        export OPENSS_ROOT_DIR=/g4/g4p/protodune/openspeedshop_v2.2

        export PATH=${KRELL_ROOT_DIR}/bin:${PATH}
        export LD_LIBRARY_PATH=${KRELL_ROOT_DIR}/lib64:${LD_LIBRARY_PATH}
        export LD_LIBRARY_PATH=${KRELL_ROOT_DIR}/lib:${LD_LIBRARY_PATH}
        export DYNINSTAPI_RT_LIB=${KRELL_ROOT_DIR}/lib64/libdyninstAPI_RT.so

        export PATH=${OPENSS_ROOT_DIR}/bin:${PATH}
        export LD_LIBRARY_PATH=${OPENSS_ROOT_DIR}/lib64:${LD_LIBRARY_PATH}
        export LD_LIBRARY_PATH=${OPENSS_ROOT_DIR}/lib:${LD_LIBRARY_PATH}

-   to run osspcsamp

        export WORK_DIR=/g4/g4p/protodune
        export OPENSS_RAWDATA_DIR=${WORK_DIR}/raw
        export OPENSS_DB_DIR=${WORK_DIR}/db

        #run oss for detector simulation
        export exe=/cvmfs/fermilab.opensciencegrid.org/products/larsoft/art/v2_05_00/slf6.x86_64.e10.nu.prof/bin/lar
        export xfcl=/cvmfs/dune.opensciencegrid.org/products/dune/dunetpc/v06_27_00/source/fcl/protodune/detsim/protoDUNE_detsim.fcl
        osspcsamp "$exe -c $xfcl gen_protoDune_proton_6p0GeV_mono_g4.root" 
        #run oss for reconstruction
        export rfcl=/cvmfs/dune.opensciencegrid.org/products/dune/dunetpc/v06_27_00/source/fcl/protodune/reco/protoDUNE_reco.fcl
        osspcsamp "$exe -c $rfcl gen_protoDune_proton_6p0GeV_mono_g4_detsim.root" 

-   NOTE: At this moment, there is an issue to run Open|Speedshop on LArSoft/(proton)DUNE.
     The problem was reported to OSS developers (Jim Galarowicz@Krell), but it has not been resolved yet.
     [https://groups.google.com/a/krellinst.org/forum/?fromgroups\#!topic/oss-questions/g_wNYLmiKbY](https://groups.google.com/a/krellinst.org/forum/?fromgroups#!topic/oss-questions/g_wNYLmiKbY)

### Support: contact 
