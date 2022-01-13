# Testing various methods of moving wiki pages from redmine to github

## Things we need

* A Jekyll theme.  First pass is using the minimal theme.  Any theme we choose must allow us to display a logo. 
* We need a few site wide navigation links.  Either in the left sidebar from the minimal theme or across the top.  Can be done with css?
* Will play with themes.  Can only use one at a time.
  * so far, this minimal theme seems to be the only approved (safe) theme that also displays our logo
  * The other good thing about the minimal theme is the link at the top left to get back to the starting page.
* Investigation of the [SBN site code](https://github.com/SBNSoftware/SBNSoftware.github.io) is very helpful.  See, for instance, the [navigation header](https://github.com/SBNSoftware/SBNSoftware.github.io/blob/master/_data/navigation.yml)
* Helpful notes here about overriding theme defaults: https://jekyllrb.com/docs/themes/
* Breadcrumbs 
  * See https://github.com/wikimedia/mediawiki-extensions-BreadCrumbs - alas we are not a wikimedia site
  * These are more interesting: 
    * https://blog.benoitblanchon.fr/dead-simple-breadcrumbs-for-github-pages/
    * https://blog.benoitblanchon.fr/semi-automatic-breadcrumbs-for-github-pages/

## Test wiki conversion

Athough it is possible to upload the html and textile files directly,
this site asks you to save the file instead of showing a view.

We have used pandoc to convert files to markdown.
Pandoc does a distinctly better job of converting html than textile.
We have not yet looked for other conversion options.

The html files come with Redmine headers and footers.
It is possible to download the pages individually by hand,
but LArSoft has too many pages for this to be useful.
Instead, we are using a script.
* There is a controlling script with will run everything, including convert.pl:
  * [doit.sh](https://cdcvs.fnal.gov/redmine/projects/laradmin/repository/revisions/develop/entry/gitwiki/doit.sh)
  * doit.sh <new_directory_name>
* The latest work is with a perl script: [convert.pl](https://cdcvs.fnal.gov/redmine/projects/laradmin/repository/revisions/develop/entry/gitwiki/convert.pl)
  * This script has 3 parts:
    * process the html file from redmine
    * run pandoc
    * process the temporary file produced by pandoc

