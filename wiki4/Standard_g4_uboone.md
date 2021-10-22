`standard_g4_uboone.fcl`[¶](#standard_g4_uboonefcl)
===================================================

**Purpose**: standard Geant4 simulation of a MC event\
**Package**: `ubfcl`\
**Full path**: `g4/standard_g4_uboone.fcl` (as seen in: `v2_0_1`)\
**Input**: any generated event (single particle, Genie, CRY…) [TBC]


input from: `prodgenie_bnb_nu_cosmic_3window_uboone.fcl` (speed)[¶](#input-from-prodgenie_bnb_nu_cosmic_3window_uboonefcl-speed)
--------------------------------------------------------------------------------------------------------------------------------

In `larsoft` version `v1_00_03` (before fixing the photon table memory leak), the most demanding parts (tested on 36 events), using `callgrind`:

-   `deflate` algorithm (`libz.so`): [ **11.5%**, \~10 calls/event] used when writing ROOT branches; the only way to speed it up is to have a faster `libz.so` (and one might pay in disk space)
-   `malloc` (`libc`) [ **6.0%**, 4G calls, via `new`]: about 80% of them come from `std::string` and/or the message facility
-   `free` (`libc`) [ **2.5%**, 4G calls, via `delete`]: mirror of `malloc`

All this fuss about the message facility hints to a non-optimized version of that library.

There is /some/ impact from the unnecessary use of `new` in `larsim/LArg4/OpFastScintillator.cc`.

The access to `G4MaterialPropertiesTable` also takes some toll. Maybe it can be optimized by not using string indices.

Some other timing information:

  function                   calls   time (%)
  -------------------------- ------- ----------
  `larg4::LArG4::produce`    36      70.7%
  `mf::LogDebug::LogDebug`   110M    40.7%

I think this is enough already…\
**Resolution**: disabled the debugging messages dispatch when in production builds, by defining `ML_NDEBUG` symbol (see issue [\#5589](/redmine/issues/5589 "Bug: Log of debugging messages is enabled in non-debugging builds (Closed)")).


input from: `prodgenie_bnb_nue_cosmic_3window_uboone.fcl` (memory)[¶](#input-from-prodgenie_bnb_nue_cosmic_3window_uboonefcl-memory)
------------------------------------------------------------------------------------------------------------------------------------

Specific input files cause the standard G4 job to be killed in the grid.\
The memory limit is 4GB (2GB of real memory + 2GB of swap).

Some peaks of memory have been identified and flattened by using prehemptive vector memory allocation (`std::vector::reserve`).\
The memory footprint remains very large. The following table mixes results with different runs, most based on `prodgenie_bnb_nue_cosmic_3window_uboone_15313320_49_gen.root`, an input file whose grid job crashed at

  Requester                                                       amount     source of this information
  --------------------------------------------------------------- ---------- -------------------------------
  total                                                           \~3.5 GB   O.S. `VSIZE`, sampled 0.1Hz
  total heap                                                      \~2.5 GB   `massif` peak (complete heap)
  \* dynamic library loading?                                     640 MB     `massif` peak (complete heap)
  - `art::RootDictionaryManager`                                  185 MB     `massif` peak (complete heap)
  - `art::ServicesManager`                                        159 MB     `massif` peak (complete heap)
  - untrackable                                                   226 MB     `massif` peak (complete heap)
  - untrackable                                                   226 MB     `massif` peak (complete heap)
  \* `mmap`                                                       1.7 GB     `massif` peak (complete heap)
                                                                  1.7 GB     `massif` peak
  - `TBuffer::Expand`                                             540 GB     `massif` peak (complete heap)
                                                                  700 GB     `massif` peak
  - `larg4::OpFastScintillation::RecordPhotonsProduced`           220 GB     `massif` peak (complete heap)
                                                                  325 GB     `massif` peak
  - `larg4::LArG4:produce` and `SimPhotons.h`                     150 GB     `massif` peak (complete heap)
                                                                  235 GB     `massif` peak
  - `phot::PhotonLibrary::LoadLibraryFromFile`                    325 GB     `massif` peak (complete heap)
                                                                  300 GB     `massif` peak
  - strings from `larg4::ParticleListAction::PreTrackingAction`   35 GB      `massif` peak (complete heap)
  - `larg4::ParticleListAction::SteppingAction`                   25 GB      `massif` peak (complete heap)
  - binary trees (`std::map`?)                                    85 GB      `massif` peak (complete heap)
  - `larg4::LArG4:produce` (`simb::MCParticle` vector)            67 GB      `massif` peak
  - ROOT (via `TStorage::ObjectAlloc`)                            25 GB      `massif` peak
  \* stack(s)                                                     \<1 MB     `massif`