Geometry configuration check breaking change documentation
==========================================================================================================================

Originally in [https://github.com/LArSoft/larcore/pull/6](https://github.com/LArSoft/larcore/pull/6)

The LArSoft changes are in LArSoft/larcoreobj\#9, LArSoft/larcorealg\#12, LArSoft/lardataalg\#18, LArSoft/lardata\#12, LArSoft/larevt\#10, LArSoft/larsim\#56, LArSoft/larreco\#24, LArSoft/larexamples\#5 and LArSoft/lareventdisplay\#10\
The branches offered for evaluation to the experiments, all named feature/gp\_issue24328, are in the following repositories:

-   ArgoNeuT: argoneutcode
-   DUNE: dunetpc
-   ICARUS: sbncode, icarusalg, icaruscode
-   SBND: sbncode, sbndcode
-   MicroBooNE: uboonecode, ubana, ubcrt, ubcv, ubevt, ublite, ubraw, ubreco, ubsim

This is the resolution of Redmine issue [\#24328](/redmine/issues/24328 "Bug: Fix Geometry service feature reloading the geometry at begin of run (Closed)").

A refresher of how the solution is deployed is in the new documentation of geo::Geometry class. That text is the reference design of the solution.

The feature has been “manually” tested by providing crafted inputs to configurations all including Geometry service and, unless otherwise specified, GeometryConfigurationWriter service:

-   no input file (source: EmptyEvent): geometry information added to output file
-   empty input file, with a job not including the new GeometryConfigurationWriter service: configuration error
-   empty input file: geometry information added to output file
-   input file with sumdata::RunData data product compatible with current Geometry: geometry information added to output file
-   input file with sumdata::RunData data product not compatible with current Geometry: exception showing the different configurations
-   input file with sumdata::GeometryConfigurationInfo data product compatible with current Geometry: data product declared but not put; but the job still succeeds as required
-   input file with sumdata::GeometryConfigurationInfo data product not compatible with current Geometry: exception showing the different configurations

Further action is needed to address the data product declared but not put (because one already existed). I have discussed with [Kyle Knoepfel](/redmine/users/1308) who confirmed that art is currently not enforcing the insertion of a declared data product in the context that this feature uses, and that we can go along with that and fix it in an unlikely future where this check becomes enforced.\
Breaking change and resolution

The new feature requires the experiments to run GeometryConfigurationWriter service when an input file which has never seen Geometry service is processed with a job that sets Geometry service up. The easiest (and safe) way to do that is to configure GeometryConfigurationWriter together with Geometry and ExptGeoHelperInterface, and run it every time.\
The recommended way to configure the geometry was something like:\

    experiment_geometry_services: {
      Geometry:               @local::experiment_geometry
      ExptGeoHelperInterface: @local::experiment_geometry_helper
    }

\
with the user configurations including something like:\

    services: {
      @table::experiment_geometry_services
      # ...
    }

\
In this scenario, the configuration fix is to change the experiment\_geometry\_services configuration table as follows:\

    experiment_geometry_services: {
      Geometry:               @local::experiment_geometry
      ExptGeoHelperInterface: @local::experiment_geometry_helper
      GeometryConfigurationWriter: {}
    }

\
In the cases where a geometry configuration bundle is not used, the line services.GeometryConfigurationWriter: {} or equivalent must be added to the configuration.

If there are reasons to wish to skip the check, Geometry service can be instructed to do so, with an option like:\

    services.Geometry.SkipConfigurationCheck: true

Note: the service GeometryConfigurationWriter must be configured even if the check is skipped with SkipConfigurationCheck set to true.
