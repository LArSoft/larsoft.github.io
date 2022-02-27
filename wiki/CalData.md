# CalData

The aim of the modules in this package is to take raw::RawDigit objects, apply calibrations to the information stored in those objects and create recob::Wire objects that can then be used to create recob::Hit objects.

Each experiment is expected to create its own module to apply calibrations to the raw data.
