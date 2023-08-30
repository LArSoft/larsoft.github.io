# Updating code for e26 and c14

Starting with *art* 3.12, code can be compiled with `e26` (GCC 12.1.0) and `c14` (Clang 14.0.6).
As expected, the newer compilers find more infelicities in the code, some of which indicate a need for code review.

## Issues found by e26

- may be used uninitialized
```
/cvmfs/larsoft.opensciencegrid.org/products/gcc/v12_1_0/Linux64bit+3.10-2.17/include/c++/12.1.0/bits/std_abs.h:76:31: error: 'dir_y_prime' may be used uninitialized [-Werror=maybe-uninitialized]
   76 |   { return __builtin_fabsf(__x); }
      |                               ^
/home/garren/scratch/larsoft/uboone/dev5/srcs/ubana/ubana/searchingfornues/Selection/CommonDefs/Geometry.h In function 'std::vector<float, std::allocator<float> > searchingfornues::polarAngles(float, float, float, size_t, size_t)':
/home/garren/scratch/larsoft/uboone/dev5/srcs/ubana/ubana/searchingfornues/Selection/CommonDefs/Geometry.h:110:11: note: 'dir_y_prime' was declared here
  110 |     float dir_y_prime, dir_z_prime;
      |           ^~~~~~~~~~~
```
**Any such code should be reviewed by the authors.**
However, a temporary workaround is to use `-Wno-maybe-uninitialized`.  
Note that `-Wno-maybe-uninitialized` is valid for GNU, not Clang.  Use the following in `cet_set_compiler_flags`:
```
$<$<CXX_COMPILER_ID:GNU>:-Wno-maybe-uninitialized>
```

- copies and references
```
/home/garren/scratch/larsoft/uboone/dev5/srcs/ubana/ubana/Filters/NumuCCinclDumper/NumuCCinklRun3_module.cc: In member function 'void NumuCCana::fillMCInfo(const art::Event&)':
/home/garren/scratch/larsoft/uboone/dev5/srcs/ubana/ubana/Filters/NumuCCinclDumper/NumuCCinklRun3_module.cc:814:25: error: loop variable 'evt_weight' creates a copy from type 'const std::pair<const std::__cxx11::basic_string<char>, std::vector<double, std::allocator<double> > >' [-Werror=range-loop-construct]
  814 |         for (auto const evt_weight : evtwgt_map){
      |                         ^~~~~~~~~~
/home/garren/scratch/larsoft/uboone/dev5/srcs/ubana/ubana/Filters/NumuCCinclDumper/NumuCCinklRun3_module.cc:814:25: note: use reference type to prevent copying
  814 |         for (auto const evt_weight : evtwgt_map){
      |                         ^~~~~~~~~~
      |                         &
```
Apply the suggested fix.
```
-        for (auto const evt_weight : evtwgt_map){
+        for (auto const& evt_weight : evtwgt_map){
```

- array bounds
```
In member function 'virtual void ub::LowLevelNueFilter::analyze(const art::Event&)':
/home/garren/scratch/larsoft/uboone/dev5/srcs/ubana/ubana/TPCNeutrinoIDFilter/LowLevelNueFilter_module.cc:1224:163: error: array subscript 1 is outside array bounds of 'double [1]' [-Werror=array-bounds]
 1224 |               std::cout<<"pfparticle reco pdgcode "<<pdgcode<<" associated vertex ID is"<<PrimaryVertexID<<" XYZ= ["<<PrimaryVertexXYZ[0]<<","<<PrimaryVertexXYZ[1]<<","<<PrimaryVertexXYZ[2]<<"] !!!!!"<<std::endl;
      |
```
**Any such code should be reviewed by the author.**
However, a temporary fix is to use the `-Wno-array-bounds` flag.  This flag is valid for GNU only.
