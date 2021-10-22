Production transition checklist[¶](#Production-transition-checklist)
====================================================================

  -------------- ------------------------------------------------ ------------------------------------------------------------------------
  **Due Date**   **Task**                                         **Status / comments**

  Fri Jan 17     Transition dry run                               Finished Jan. 18

  Mon Jan 20     Update documentation                             

  Mon Jan 20     After 18:00 - copy and preserve copy\            Done.
                  of beta repositories                            

  Mon Jan 20     After above: delete contents of \                Done.
                  beta repositories                               

  Tue Jan 21     Test svn lockout script                          Done. To activate, cp start-commit.closed start-commit. check chmod +x

  Tue Jan 21     Deploy svn lockout                               Done.

  Tue Jan 21     Tag final svn release (Rebel/Church)             Done.

                 Create final svn build (Rebel/Church)            Done.

  Tue Jan 21     Begin svn to git (Garren) \                      Done. (Will fix re-factoring errors \
                  Assume that re-factoring into \                  in new releases.)
                  lbnecode and uboonecode is performed\           
                  in this process                                 

                 Rename “Larsoft (beta)” –\> “LArSoft” \          Done.
                  and make LArSoft-SVN a sub-project of LArSoft   

                 Copy lbnecode and uboonecode build \             Done.
                  files from preserved beta into new \            
                  lbnecode and uboonecode                         

                 Complete Geometry and include path changes       Done.

                 Create / build / install larsoft v1\_00\_00      v1\_00\_01 is released

  Thu Jan 23     Create / build / install lbnecode v1\_00\_00     v1\_00\_01 is released

  Thu Jan 23     Create / build / install uboonecode v1\_00\_00   v1\_00\_01 is released

                 Validate larsoft / lbnecode / uboonecode         Adequate for release

  Fri Jan 24     Nightly build operating for larsoft / \          Done.
                  lbnecode / uboonecode                           

  Fri Jan 24     By 7:00 am, change svn start-commit message      Released v1\_00\_01 at 14:00 CST, 24-Jan-2014.\
                                                                   svn access still open to managers.
  -------------- ------------------------------------------------ ------------------------------------------------------------------------
