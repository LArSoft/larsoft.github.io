# Policy for including new packages in LArSoft

LArSoft's policy for including new external software packages in the LArSoft distribution:

-   An experiment makes an official request via redmine.
-   LArSoft verifies that it has permission to use the tool for research.
-   LArSoft verifies that the package will be be used by more than one experiment. Note: if only one experiment intends to use the package, the SciSoft team can help, but the end product would reside in the experiment’s code, not in LArSoft.
-   LArSoft has to be able to build the tool such that it has binary compatibility with other products which will be used at the same time. This means that any dependencies (e.g., python) must be the same as those used by the matching LArSoft distribution. In addition, if the product contains C or Fortran code, the product must be buildable with the same compiler used by the matching LArSoft release.
-   If the package is built into LArSoft code, it must not have a license that affects the license of the LArSoft code. We must be able to distribute our LArSoft code without having to add their license to our code or change the way we distribute LArSoft code with it in there. For a package that isn’t linked into any part of the main LArSoft distribution, such as an analysis tool, LArSoft still needs to have permission to use the package for research, but isn’t worried about the licensing affecting LArSoft code.
